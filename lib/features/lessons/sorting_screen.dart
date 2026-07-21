import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/lesson_attempt_providers.dart';
import 'course_pathway_bank.dart';
import 'interactive_content_models.dart';

/// Bilingual UI-chrome copy for [SortingScreen], following the same
/// `*En`/`*My` paired-field convention as the sibling lesson screens'
/// `_t()` helpers.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [SortingScreen]. Mirrors
/// `DragMatchArgs`/`McqQuizArgs` field-for-field, except [moduleId] is
/// required here (sorting activities only exist as course-pathway daily
/// lessons so far -- there's no subject-only fallback bank to fall back
/// to).
class SortingArgs {
  const SortingArgs({
    required this.title,
    required this.moduleId,
    this.stars = 10,
  });

  final String title;
  final String moduleId;
  final int stars;
}

/// The "sort into buckets" interactive lesson flow: drag each item chip
/// into its correct labeled bucket. Reuses [DragMatchScreen]'s proven
/// Draggable/DragTarget/shake-on-miss mechanics, adapted for a small fixed
/// set of shared buckets (rather than one unique drop target per item).
class SortingScreen extends ConsumerStatefulWidget {
  const SortingScreen({super.key, required this.args});

  final SortingArgs args;

  @override
  ConsumerState<SortingScreen> createState() => _SortingScreenState();
}

class _SortingScreenState extends ConsumerState<SortingScreen> {
  late final SortingActivity? _activity = courseDailyLessonById(
    widget.args.moduleId,
  )?.sortingActivity;

  final Map<String, String> _placedBucketEn = {}; // itemId -> bucketEn
  final Map<String, int> _missShakeSeed = {};

  bool get _allSorted {
    final activity = _activity;
    if (activity == null || activity.items.isEmpty) return false;
    return _placedBucketEn.length == activity.items.length;
  }

  void _handleDrop(SortingItem item, String bucketEn) {
    if (_placedBucketEn.containsKey(item.id)) return;
    if (bucketEn != item.correctBucketEn) {
      setState(() {
        _missShakeSeed[item.id] = (_missShakeSeed[item.id] ?? 0) + 1;
      });
      return;
    }
    setState(() => _placedBucketEn[item.id] = bucketEn);
    if (_allSorted) unawaited(_recordCompletion());
  }

  /// Persists this lesson's completion to the active student's `Children`
  /// doc, same fire-and-forget/skip-when-no-student rationale as
  /// `DragMatchScreen._recordCompletion` -- see that method's doc comment
  /// for the full explanation.
  Future<void> _recordCompletion() async {
    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: widget.args.moduleId,
        starsEarned: widget.args.stars,
        currentChild: activeProfile.child,
      );
    } catch (e, st) {
      debugPrint('[SortingScreen] markModuleCompleted FAILED: $e');
      debugPrint('[SortingScreen] stack trace:\n$st');
    }

    try {
      final itemCount = _activity?.items.length ?? 0;
      await recordLessonAttempt(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        lessonId: widget.args.moduleId,
        kind: 'sorting',
        correctCount: itemCount,
        totalCount: itemCount,
      );
    } catch (e) {
      debugPrint('[SortingScreen] recordLessonAttempt FAILED: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lc = Localizations.localeOf(context).languageCode;
    final activity = _activity;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.args.title),
        actions: const [LanguageToggleButton()],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              child: activity == null || activity.items.isEmpty
                  ? Center(
                      child: Text(
                        _t(
                          context,
                          'No sorting content available yet.',
                          'ခွဲခြားစီရန် အကြောင်းအရာ မရှိသေးပါ။',
                        ),
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleMedium,
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        _SortProgressBar(
                          total: activity.items.length,
                          sorted: _placedBucketEn.length,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _t(
                            context,
                            'Drag each item into its correct bucket!',
                            'ပစ္စည်းတစ်ခုစီကို မှန်ကန်သော အစုအဝေးထဲသို့ ဆွဲထည့်ပါ!',
                          ),
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (var i = 0; i < activity.bucketsEn.length; i++)
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: i == activity.bucketsEn.length - 1
                                        ? 0
                                        : 10,
                                  ),
                                  child: _BucketColumn(
                                    label: activity.bucket(i, lc),
                                    bucketEn: activity.bucketsEn[i],
                                    placedItems: [
                                      for (final item in activity.items)
                                        if (_placedBucketEn[item.id] ==
                                            activity.bucketsEn[i])
                                          item,
                                    ],
                                    languageCode: lc,
                                    onAccept: (item) => _handleDrop(
                                      item,
                                      activity.bucketsEn[i],
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 28),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 12,
                              runSpacing: 12,
                              children: [
                                for (final item in activity.items)
                                  if (!_placedBucketEn.containsKey(item.id))
                                    _SortItemChip(
                                      item: item,
                                      shakeSeed: _missShakeSeed[item.id] ?? 0,
                                      languageCode: lc,
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            if (_allSorted)
              _SortCompletionOverlay(
                languageCode: lc,
                stars: widget.args.stars,
                onDone: () => Navigator.of(context).pop(),
              ),
          ],
        ),
      ),
    );
  }
}

class _SortProgressBar extends StatelessWidget {
  const _SortProgressBar({required this.total, required this.sorted});

  final int total;
  final int sorted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (total == 0) return const SizedBox.shrink();

    final fillColor = theme.colorScheme.primary;
    final carvedTrack = theme.brightness == Brightness.light
        ? AppColors.charcoalNavy.withValues(alpha: 0.1)
        : Colors.black.withValues(alpha: 0.35);

    return Row(
      children: [
        for (var i = 0; i < total; i++)
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: i == total - 1 ? 0 : 6),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 12,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: i < sorted ? null : carvedTrack,
                  gradient: i < sorted
                      ? LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            fillColor.withValues(alpha: 0.85),
                            fillColor,
                          ],
                        )
                      : null,
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// A fixed drop-target bucket, showing every item already correctly
/// placed into it as a small checked chip.
class _BucketColumn extends StatelessWidget {
  const _BucketColumn({
    required this.label,
    required this.bucketEn,
    required this.placedItems,
    required this.languageCode,
    required this.onAccept,
  });

  final String label;
  final String bucketEn;
  final List<SortingItem> placedItems;
  final String languageCode;
  final ValueChanged<SortingItem> onAccept;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DragTarget<SortingItem>(
      onWillAcceptWithDetails: (details) => true,
      onAcceptWithDetails: (details) => onAccept(details.data),
      builder: (context, candidateData, rejectedData) {
        final hovering = candidateData.isNotEmpty;
        return CandyBevelSurface(
          faceColor: theme.colorScheme.surfaceContainerHigh,
          bevelDepth: CandyBevelDepth.secondary,
          borderRadius: 16,
          border: Border.all(
            color: hovering
                ? AppColors.candyPrimary
                : theme.colorScheme.outlineVariant,
            width: hovering ? 3 : 1.5,
          ),
          padding: const EdgeInsets.all(12),
          child: ConstrainedBox(
            constraints: const BoxConstraints(minHeight: 140),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final item in placedItems)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.goldMedal.withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.check_rounded,
                              size: 14,
                              color: AppColors.secondary,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              item.label(languageCode),
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// One draggable item chip waiting to be sorted. Shakes and snaps back on
/// a wrong drop, same feedback convention as `DragMatchScreen`'s
/// `_DragTermTile`.
class _SortItemChip extends StatelessWidget {
  const _SortItemChip({
    required this.item,
    required this.shakeSeed,
    required this.languageCode,
  });

  final SortingItem item;
  final int shakeSeed;
  final String languageCode;

  Widget _chip(BuildContext context) {
    final theme = Theme.of(context);
    return CandyBevelSurface(
      faceColor: theme.colorScheme.surfaceContainerHigh,
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: 14,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(
        item.label(languageCode),
        style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _SortShaker(
      trigger: shakeSeed,
      child: Draggable<SortingItem>(
        data: item,
        feedback: Material(
          color: Colors.transparent,
          child: Transform.scale(scale: 1.06, child: _chip(context)),
        ),
        childWhenDragging: Opacity(opacity: 0.35, child: _chip(context)),
        child: _chip(context),
      ),
    );
  }
}

/// Gentle decaying side-to-side wiggle replaying on every [trigger] change
/// -- duplicated locally from `DragMatchScreen._Shaker` (file-private
/// there), same rationale as that file's own doc comment.
class _SortShaker extends StatefulWidget {
  const _SortShaker({required this.trigger, required this.child});

  final int trigger;
  final Widget child;

  @override
  State<_SortShaker> createState() => _SortShakerState();
}

class _SortShakerState extends State<_SortShaker>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 420),
  );

  @override
  void didUpdateWidget(covariant _SortShaker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.trigger != oldWidget.trigger && widget.trigger != 0) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = _controller.value;
        final offset = math.sin(t * math.pi * 6) * (1 - t) * 8;
        return Transform.translate(offset: Offset(offset, 0), child: child);
      },
      child: widget.child,
    );
  }
}

class _SortCompletionOverlay extends StatelessWidget {
  const _SortCompletionOverlay({
    required this.languageCode,
    required this.stars,
    required this.onDone,
  });

  final String languageCode;
  final int stars;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned.fill(
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutBack,
        builder: (context, t, child) {
          final clamped = t.clamp(0.0, 1.0);
          return Opacity(
            opacity: clamped,
            child: Transform.scale(scale: 0.85 + 0.15 * clamped, child: child),
          );
        },
        child: Container(
          color: Colors.black.withValues(alpha: 0.45),
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              boxShadow: AppShadows.floating(
                theme.colorScheme.primary,
                brightness: theme.brightness,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    gradient: AppGradients.hero(theme.colorScheme),
                    shape: BoxShape.circle,
                    boxShadow: AppShadows.floating(
                      theme.colorScheme.primary,
                      brightness: theme.brightness,
                    ),
                  ),
                  child: const Icon(
                    Icons.emoji_events_rounded,
                    color: Colors.white,
                    size: 44,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  _t(context, 'All Sorted!', 'ခွဲခြားစီပြီးပါပြီ!'),
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: AppColors.goldMedal,
                      size: 22,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '+$stars XP',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: onDone,
                  child: Text(_t(context, 'Continue', 'ဆက်လုပ်ရန်')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
