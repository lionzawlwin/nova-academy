import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/glossy_badge.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/learning_module_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/learning_module_providers.dart';
import '../../routing/app_router.dart';
import '../lessons/mcq_quiz_screen.dart';
import 'home_shared_widgets.dart';

/// Candy Core pushes the shared [AppColors.primaryPalette] 15-20% more
/// saturated for the Year 1-6 learning path, per the design spec's
/// "Primary-tier accent" palette row. `primaryPalette` has no other call
/// sites today (see the grep-before-touching check in the Mission 6 plan's
/// Task 5), but this file boosts its own copy at load time rather than
/// mutating the shared token in place, so a future second call site never
/// silently inherits this tier's saturation bump.
final List<Color> _candyPrimaryPalette = AppColors.primaryPalette
    .map((color) {
      final hsl = HSLColor.fromColor(color);
      return hsl
          .withSaturation((hsl.saturation + 0.18).clamp(0.0, 1.0))
          .toColor();
    })
    .toList(growable: false);

/// One stop on the Primary (Year 1-6) learning path.
class _PathNodeData {
  const _PathNodeData({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.stars,
    required this.module,
    required this.subjectKey,
  });

  final String title;
  final String? description;
  final IconData icon;
  final Color color;
  final int stars;
  final LearningModuleModel? module;

  /// Lowercase subject key passed to [quizQuestionsForSubject] when the
  /// learner starts this node's quiz -- either the originating
  /// [LearningModuleModel.subject], or a reasonable placeholder key when no
  /// module has been seeded yet for this grade (see [_buildNodes]).
  final String subjectKey;
}

/// The Year 1-6 student home: a scrollable, gamified path of module
/// "stops" (Duolingo-style), a live star counter, and playful-but-legible
/// typography.
class PrimaryHomeScreen extends ConsumerWidget {
  const PrimaryHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final activeProfile = ref.watch(activeProfileProvider);
    final child = activeProfile is StudentProfile ? activeProfile.child : null;
    final modulesAsync = ref.watch(learningModulesProvider);
    final locale = Localizations.localeOf(context).languageCode;

    final nodes = _buildNodes(
      l10n,
      locale,
      child?.currentGrade,
      modulesAsync.valueOrNull,
    );

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _HeroHeader(
                childName: child?.aliasName,
                stars: child?.totalStars ?? 0,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 4),
                child: Text(
                  l10n.homeYourLearningPath,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: _LearningPath(
                  nodes: nodes,
                  onTapNode: (node) => _showNodeSheet(context, node),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                child: const GatekeeperEntryButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<_PathNodeData> _buildNodes(
    AppLocalizations l10n,
    String locale,
    Grade? grade,
    List<LearningModuleModel>? allModules,
  ) {
    final gradeModules = (allModules ?? const <LearningModuleModel>[])
        .where((m) => grade == null || m.grade == grade)
        .toList();

    if (gradeModules.isNotEmpty) {
      return [
        for (var i = 0; i < gradeModules.length; i++)
          _PathNodeData(
            title: locale == 'my'
                ? gradeModules[i].titleMy
                : gradeModules[i].titleEn,
            description: locale == 'my'
                ? gradeModules[i].descriptionMy
                : gradeModules[i].descriptionEn,
            icon: _iconForSubject(gradeModules[i].subject),
            color: _candyPrimaryPalette[i % _candyPrimaryPalette.length],
            stars: gradeModules[i].starsReward,
            module: gradeModules[i],
            subjectKey: gradeModules[i].subject.toLowerCase(),
          ),
      ];
    }

    // No LearningModules seeded yet for this grade -- fall back to a
    // subject-only placeholder path so the screen never looks broken or
    // empty while the catalog is still being populated. The third tuple
    // element is the lowercase subject key handed to `quizQuestionsForSubject`
    // -- picked to match `mock_quiz_data.dart`'s banks where one exists, and
    // falling back to that helper's generic bank otherwise (it never throws
    // on an unrecognized key).
    final placeholders = <(String, IconData, String)>[
      (l10n.subjectMath, Icons.calculate_rounded, 'math'),
      (l10n.subjectEnglish, Icons.menu_book_rounded, 'english'),
      (l10n.subjectScience, Icons.science_rounded, 'science'),
      (l10n.subjectMyanmar, Icons.translate_rounded, 'generalknowledge'),
      (l10n.subjectReading, Icons.auto_stories_rounded, 'english'),
      (l10n.subjectWriting, Icons.edit_note_rounded, 'english'),
    ];
    return [
      for (var i = 0; i < placeholders.length; i++)
        _PathNodeData(
          title: placeholders[i].$1,
          description: null,
          icon: placeholders[i].$2,
          color: _candyPrimaryPalette[i % _candyPrimaryPalette.length],
          stars: 0,
          module: null,
          subjectKey: placeholders[i].$3,
        ),
    ];
  }

  IconData _iconForSubject(String subject) {
    switch (subject.toLowerCase()) {
      case 'math':
      case 'fractions':
      case 'geometry':
      case 'algebra':
        return Icons.calculate_rounded;
      case 'english':
      case 'reading':
        return Icons.menu_book_rounded;
      case 'writing':
        return Icons.edit_note_rounded;
      case 'science':
        return Icons.science_rounded;
      case 'physics':
        return Icons.bolt_rounded;
      case 'chemistry':
        return Icons.biotech_rounded;
      case 'biology':
        return Icons.eco_rounded;
      case 'myanmar':
        return Icons.translate_rounded;
      case 'socialstudies':
      case 'social_studies':
        return Icons.public_rounded;
      case 'ict':
      case 'stem':
        return Icons.memory_rounded;
      case 'coding':
        return Icons.code_rounded;
      case 'engineering':
        return Icons.precision_manufacturing_rounded;
      case 'art':
        return Icons.palette_rounded;
      case 'phonics':
        return Icons.abc_rounded;
      default:
        return Icons.auto_stories_rounded;
    }
  }

  Future<void> _showNodeSheet(BuildContext context, _PathNodeData node) async {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    await showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: node.color,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(node.icon, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      node.title,
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (node.description != null && node.description!.isNotEmpty) ...[
                const SizedBox(height: 14),
                Text(node.description!, style: theme.textTheme.bodyMedium),
              ],
              const SizedBox(height: 18),
              Row(
                children: [
                  const Icon(Icons.star_rounded, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text(
                    '${node.stars}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // The learning path's "hero" call-to-action -- the same
              // press-and-spring `CandyBevelSurface` treatment as the path
              // nodes above it, at the shared `CandyBevelDepth.primary`
              // preset (its doc comment names this exact CTA). Restyle-only:
              // the `onTap` body below is byte-for-byte the same
              // navigation/pop logic the old `FilledButton.icon` ran.
              SizedBox(
                width: double.infinity,
                child: CandyBevelSurface(
                  faceColor: AppColors.candyPrimary,
                  bevelDepth: CandyBevelDepth.primary,
                  borderRadius: AppTheme.radiusLarge,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  onTap: () {
                    Navigator.of(sheetContext).pop();
                    context.push(
                      AppRoutes.lessonPrimaryQuiz,
                      extra: McqQuizArgs(
                        title: node.title,
                        subject: node.subjectKey,
                        stars: node.stars > 0 ? node.stars : 10,
                        moduleId: node.module?.id,
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.play_arrow_rounded, color: Colors.white),
                      const SizedBox(width: 8),
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            l10n.actionStart,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeroHeader extends StatelessWidget {
  const _HeroHeader({required this.childName, required this.stars});

  final String? childName;
  final int stars;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: AppGradients.hero(theme.colorScheme),
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.floating(theme.colorScheme.primary),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    SwitchProfileButton(color: Colors.white),
                    LanguageToggleButton(color: Colors.white),
                  ],
                ),
                const SizedBox(height: 4),
                Flexible(
                  child: Text(
                    l10n.dashboardWelcomeMessage(childName ?? l10n.appName),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(18),
            ),
            child: AnimatedStarBadge(
              stars: stars,
              // Candy Core's `AnimatedStarBadge` now renders the digit count
              // centered *inside* the `GlossyBadge`'s Gold Medal face
              // (previously it sat beside a small star icon on this header's
              // own indigo gradient, where white text was fine) -- white on
              // Gold Medal measures ~1.5:1 contrast, badly failing WCAG AA
              // (the exact risk flagged in the Mission 6 design spec's
              // "Known risks" section). Dark ink text matches every other
              // gold-badge digit count restyled this mission (see
              // `_PathNode`'s node badge below and `mcq_quiz_screen.dart`'s
              // results badge) and measures ~10.5:1.
              textColor: AppColors.charcoalNavy,
              iconSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}

/// A vertically scrollable, hand-drawn-feeling path of [nodes], each one
/// offset left/right along a sine curve so the whole thing reads as a
/// winding trail rather than a plain list.
class _LearningPath extends StatelessWidget {
  const _LearningPath({required this.nodes, required this.onTapNode});

  final List<_PathNodeData> nodes;
  final void Function(_PathNodeData node) onTapNode;

  static const double _rowHeight = 148;

  double _xFor(int index) => sin(index * 1.3) * 0.62;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final totalHeight = nodes.length * _rowHeight;

    return SizedBox(
      height: totalHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: _DashedPathPainter(
                color: theme.colorScheme.outlineVariant,
              ),
            ),
          ),
          for (var i = 0; i < nodes.length; i++)
            Positioned(
              top: i * _rowHeight,
              left: 0,
              right: 0,
              height: _rowHeight,
              child: Align(
                alignment: Alignment(_xFor(i), 0),
                child: _PathNode(
                  data: nodes[i],
                  index: i,
                  onTap: () => onTapNode(nodes[i]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _DashedPathPainter extends CustomPainter {
  const _DashedPathPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    const dashHeight = 10.0;
    const gap = 8.0;
    final x = size.width / 2;
    var y = 0.0;
    while (y < size.height) {
      canvas.drawLine(Offset(x, y), Offset(x, y + dashHeight), paint);
      y += dashHeight + gap;
    }
  }

  @override
  bool shouldRepaint(covariant _DashedPathPainter oldDelegate) =>
      oldDelegate.color != color;
}

/// One winding-path stop, rebuilt on [CandyBevelSurface] per the design
/// spec's Primary per-tier note ("every path node becomes a true 3D button
/// ... rather than a flat circular icon avatar"): the sine-wave *position*
/// this node is placed at (owned by [_LearningPath]) and the dashed
/// connector line underneath it (`_DashedPathPainter`) are untouched --
/// only this node's own surface changes.
///
/// Also wires the spec's "newly-unlocked path nodes ... 'drop and bounce'
/// entrance" motion: since this build has no unlock/lock state to key off
/// of yet (out of scope for this visual-only mission, see the spec's
/// Non-goals), every node plays the entrance once on first load, staggered
/// 60ms apart by [index] -- the literal "on first load" case the spec
/// describes.
class _PathNode extends StatefulWidget {
  const _PathNode({
    required this.data,
    required this.index,
    required this.onTap,
  });

  final _PathNodeData data;
  final int index;
  final VoidCallback onTap;

  @override
  State<_PathNode> createState() => _PathNodeState();
}

class _PathNodeState extends State<_PathNode>
    with SingleTickerProviderStateMixin {
  static const double _faceSize = 84;
  static const _entranceDuration = Duration(milliseconds: 600);
  static const _staggerStep = Duration(milliseconds: 60);

  late final AnimationController _entranceController = AnimationController(
    vsync: this,
    duration: _entranceDuration,
  );
  late final Animation<double> _drop = CurvedAnimation(
    parent: _entranceController,
    curve: Curves.elasticOut,
  );

  // The spec's "1.0 -> 1.1 -> 1.0 scale pop" -- a plain linear split of the
  // same controller drives this (independent of `_drop`'s elastic overshoot
  // curve, which only governs the translateY "drop").
  static final Animatable<double> _scalePop = TweenSequence<double>([
    TweenSequenceItem(
      weight: 50,
      tween: Tween(
        begin: 1.0,
        end: 1.1,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 50,
      tween: Tween(
        begin: 1.1,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.easeIn)),
    ),
  ]);

  @override
  void initState() {
    super.initState();
    Future.delayed(_staggerStep * widget.index, () {
      if (mounted) _entranceController.forward();
    });
  }

  @override
  void dispose() {
    _entranceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final data = widget.data;

    return AnimatedBuilder(
      animation: _entranceController,
      builder: (context, child) {
        final dropOffset = -20 * (1 - _drop.value);
        return Transform.translate(
          offset: Offset(0, dropOffset),
          child: Transform.scale(
            scale: _scalePop.evaluate(_entranceController),
            child: child,
          ),
        );
      },
      child: SizedBox(
        width: 128,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CandyBevelSurface(
                  faceColor: data.color,
                  bevelDepth: CandyBevelDepth.primary,
                  borderRadius: _faceSize / 2,
                  width: _faceSize,
                  height: _faceSize,
                  padding: EdgeInsets.zero,
                  border: Border.all(
                    color: theme.colorScheme.surface,
                    width: 4,
                  ),
                  onTap: widget.onTap,
                  child: Center(
                    child: Icon(data.icon, color: Colors.white, size: 36),
                  ),
                ),
                // Per the spec's Primary per-tier note: "star-count badges
                // on nodes use the full GlossyBadge treatment". Positioned
                // off the *face* layer's bottom-right corner -- the face
                // sits `CandyBevelDepth.primary` above this surface's own
                // bottom edge at rest (the bevel-depth's worth of shadow
                // peeking out below it), so the badge's `bottom` offset
                // accounts for that gap to land in the same visual spot the
                // old flat-avatar badge sat in.
                if (data.stars > 0)
                  Positioned(
                    right: -4,
                    bottom: CandyBevelDepth.primary + 4,
                    child: GlossyBadge(
                      size: 30,
                      faceColor: AppColors.goldMedal,
                      value: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${data.stars}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: AppColors.charcoalNavy,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            // A separate tap target for the label -- `CandyBevelSurface`
            // above already handles taps (and its press animation) on the
            // node itself; this just keeps the whole column tappable like
            // the original single `InkWell` did.
            GestureDetector(
              onTap: widget.onTap,
              behavior: HitTestBehavior.opaque,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.title,
                  maxLines: 1,
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
