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
import '../home/home_shared_widgets.dart';
import 'drag_match_bank.dart';
import 'interactive_content_models.dart';

/// Bilingual UI-chrome copy for [DragMatchScreen], following the same
/// `*En`/`*My` paired-field convention as [LearningModuleModel] content and
/// the sibling `McqQuizScreen`/`FillInTheBlankScreen`'s `_t()` helper.
/// Deliberately kept local to this file rather than the ARB files, same as
/// those screens.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [DragMatchScreen]. Mirrors
/// `McqQuizArgs`/`FillBlankArgs` field-for-field.
///
/// * [title] -- the lesson/module title shown as the header.
/// * [subject] -- lowercase subject key, used as the fallback pair bank
///   when [moduleId] doesn't resolve to a specific module via
///   [dragMatchPairsForModule].
/// * [stars] -- the stars awarded once every pair is matched (this activity
///   has unlimited retries -- a miss just shakes and snaps back -- so
///   there's no partial-credit scoring to prorate against, unlike the quiz
///   and fill-in-the-blank flows).
/// * [moduleId] -- optional id of the originating `LearningModuleModel`.
class DragMatchArgs {
  const DragMatchArgs({
    required this.title,
    required this.subject,
    this.stars = 10,
    this.moduleId,
  });

  final String title;
  final String subject;
  final int stars;
  final String? moduleId;
}

/// The drag-to-match interactive lesson flow for Primary (Year 1-6) and
/// Secondary/IGCSE: drag each vocabulary term onto its matching definition
/// tile. Reuses `NurseryLessonScreen`'s (`nursery_lesson_screen.dart`)
/// proven Draggable/DragTarget/shake-on-miss/bounce+confetti-on-match/
/// completion-overlay mechanics, but every visual surface is rebuilt on
/// [CandyBevelSurface] in the app's standard Primary/Secondary palette --
/// text-only tiles, no emoji, no nursery sky gradient -- so this screen
/// reads as a sibling of `McqQuizScreen`/`FillInTheBlankScreen` rather than
/// a re-skin of the nursery game.
class DragMatchScreen extends ConsumerStatefulWidget {
  const DragMatchScreen({super.key, required this.args});

  final DragMatchArgs args;

  @override
  ConsumerState<DragMatchScreen> createState() => _DragMatchScreenState();
}

class _DragMatchScreenState extends ConsumerState<DragMatchScreen> {
  late final List<DragMatchPair> _pairs = dragMatchPairsForModule(
    widget.args.moduleId,
    widget.args.subject,
  );
  late final List<DragMatchPair> _shuffledTerms = List.of(_pairs)
    ..shuffle(math.Random());

  final Set<String> _matchedIds = {};
  final Map<String, int> _missShakeSeed = {};
  final Map<String, int> _matchBounceSeed = {};
  final Set<String> _confettiPlayed = {};

  bool get _allMatched =>
      _pairs.isNotEmpty && _matchedIds.length == _pairs.length;

  void _handleCorrectDrop(DragMatchPair pair) {
    if (_matchedIds.contains(pair.id)) return;
    setState(() {
      _matchedIds.add(pair.id);
      _matchBounceSeed[pair.id] = (_matchBounceSeed[pair.id] ?? 0) + 1;
      _confettiPlayed.add(pair.id);
    });
    if (_allMatched) unawaited(_recordCompletion());
  }

  /// Persists this lesson's completion to the active student's `Children`
  /// doc (full [DragMatchArgs.stars] award + completed-module id, via
  /// [markModuleCompleted]) -- same fire-and-forget/skip-when-no-student-or-
  /// module rationale as `McqQuizScreen._recordCompletion`
  /// (`mcq_quiz_screen.dart`); see that method's doc comment for the full
  /// explanation. Unlike the quiz/fill-blank flows there's no partial
  /// credit to compute -- every pair must be matched to reach this point at
  /// all -- so the full [DragMatchArgs.stars] is always what's earned.
  Future<void> _recordCompletion() async {
    final moduleId = widget.args.moduleId;
    if (moduleId == null) return;

    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: moduleId,
        starsEarned: widget.args.stars,
        currentChild: activeProfile.child,
      );
    } catch (e, st) {
      debugPrint('[DragMatchScreen] markModuleCompleted FAILED: $e');
      debugPrint('[DragMatchScreen] stack trace:\n$st');
    }

    try {
      await recordLessonAttempt(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        lessonId: moduleId,
        kind: 'dragMatch',
        correctCount: _pairs.length,
        totalCount: _pairs.length,
      );
    } catch (e) {
      debugPrint('[DragMatchScreen] recordLessonAttempt FAILED: $e');
    }
  }

  void _handleMiss(DragMatchPair pair) {
    setState(() {
      _missShakeSeed[pair.id] = (_missShakeSeed[pair.id] ?? 0) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lc = Localizations.localeOf(context).languageCode;

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _MatchProgressBar(
                    total: _pairs.length,
                    matched: _matchedIds.length,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _t(
                      context,
                      'Drag each term to its match!',
                      'စကားလုံးတစ်ခုစီကို ၎င်း၏အဓိပ္ပာယ်နှင့် ဆွဲယူတွဲစပ်ပါ!',
                    ),
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: _pairs.isEmpty
                        ? Center(
                            child: Text(
                              _t(
                                context,
                                'No matching content available yet.',
                                'ယခုအခါ ဆွဲယူတွဲစပ်ရန် အကြောင်းအရာ မရှိသေးပါ။',
                              ),
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleMedium,
                            ),
                          )
                        : SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Text(
                                  _t(context, 'Match to:', 'ဆွဲထည့်ရန် -'),
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  spacing: 14,
                                  runSpacing: 14,
                                  children: [
                                    for (final pair in _pairs)
                                      _MatchTargetTile(
                                        pair: pair,
                                        matched: _matchedIds.contains(pair.id),
                                        playConfetti: _confettiPlayed.contains(
                                          pair.id,
                                        ),
                                        bounceSeed:
                                            _matchBounceSeed[pair.id] ?? 0,
                                        languageCode: lc,
                                        onAcceptItem: (id) {
                                          if (id == pair.id) {
                                            _handleCorrectDrop(pair);
                                          }
                                        },
                                      ),
                                  ],
                                ),
                                const SizedBox(height: 32),
                                Text(
                                  _t(
                                    context,
                                    'Drag from here:',
                                    'ဤနေရာမှ ဆွဲယူပါ -',
                                  ),
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  alignment: WrapAlignment.center,
                                  spacing: 14,
                                  runSpacing: 14,
                                  children: [
                                    for (final pair in _shuffledTerms)
                                      _DragTermTile(
                                        pair: pair,
                                        matched: _matchedIds.contains(pair.id),
                                        shakeSeed: _missShakeSeed[pair.id] ?? 0,
                                        languageCode: lc,
                                        onMiss: () => _handleMiss(pair),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ),
                ],
              ),
            ),
            if (_allMatched)
              _CompletionOverlay(
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

/// A row of rounded segments showing match progress, filled cumulatively as
/// pairs lock in -- the same carved-track/glossy-fill visual language as
/// `McqQuizScreen`/`FillInTheBlankScreen`'s `_SegmentedProgressBar`, just
/// driven by "how many matched" instead of "which question index".
class _MatchProgressBar extends StatelessWidget {
  const _MatchProgressBar({required this.total, required this.matched});

  final int total;
  final int matched;

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
                  color: i < matched ? null : carvedTrack,
                  gradient: i < matched
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
                  boxShadow: i < matched
                      ? null
                      : [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.22),
                            blurRadius: 3,
                            offset: const Offset(0, 1.5),
                          ),
                        ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

/// One draggable vocabulary-term tile. Huge-enough touch target, restyled
/// on [CandyBevelSurface] with a thin accent border in
/// [DragMatchPair.colorValue] rather than the nursery tile's fully
/// colored/emoji face. Shakes and snaps back (Flutter's default
/// [Draggable] behavior on a rejected drop) on a wrong drop; once matched
/// it's replaced with a locked, dimmed, checked tile.
class _DragTermTile extends StatelessWidget {
  const _DragTermTile({
    required this.pair,
    required this.matched,
    required this.shakeSeed,
    required this.languageCode,
    required this.onMiss,
  });

  final DragMatchPair pair;
  final bool matched;
  final int shakeSeed;
  final String languageCode;
  final VoidCallback onMiss;

  static const double _minWidth = 120;

  Widget _tile(BuildContext context, {required bool dimmed}) {
    final theme = Theme.of(context);
    final accent = Color(pair.colorValue);
    return CandyBevelSurface(
      faceColor: theme.colorScheme.surfaceContainerHigh,
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: 16,
      border: Border.all(
        color: accent.withValues(alpha: dimmed ? 0.25 : 0.7),
        width: 2,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: _minWidth),
        child: Opacity(
          opacity: dimmed ? 0.35 : 1,
          child: Text(
            pair.term(languageCode),
            textAlign: TextAlign.center,
            style: theme.textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (matched) {
      return Opacity(
        opacity: 0.4,
        child: Container(
          constraints: const BoxConstraints(minWidth: _minWidth),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.check_rounded,
            color: AppColors.secondary,
            size: 22,
          ),
        ),
      );
    }

    return _Shaker(
      trigger: shakeSeed,
      child: Draggable<String>(
        data: pair.id,
        feedback: Material(
          color: Colors.transparent,
          child: Transform.scale(
            scale: 1.06,
            child: _tile(context, dimmed: false),
          ),
        ),
        childWhenDragging: _tile(context, dimmed: true),
        onDragEnd: (details) {
          if (!details.wasAccepted) onMiss();
        },
        child: _tile(context, dimmed: false),
      ),
    );
  }
}

/// One drop-target definition tile. Highlights while a compatible term
/// hovers, flashes cherry while a wrong term hovers, bounces + bursts
/// confetti on a correct drop (via [CandyBevelState.correct]'s gold
/// face/check-icon treatment), then locks in as a "done" state -- restyled
/// on [CandyBevelSurface] in the app's standard palette rather than the
/// nursery basket's colored-fill look.
class _MatchTargetTile extends StatelessWidget {
  const _MatchTargetTile({
    required this.pair,
    required this.matched,
    required this.playConfetti,
    required this.bounceSeed,
    required this.languageCode,
    required this.onAcceptItem,
  });

  final DragMatchPair pair;
  final bool matched;
  final bool playConfetti;
  final int bounceSeed;
  final String languageCode;
  final ValueChanged<String> onAcceptItem;

  static const double _minWidth = 140;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = Color(pair.colorValue);

    return _Bouncer(
      trigger: bounceSeed,
      child: DragTarget<String>(
        onWillAcceptWithDetails: (details) =>
            !matched && details.data == pair.id,
        onAcceptWithDetails: (details) => onAcceptItem(details.data),
        builder: (context, candidateData, rejectedData) {
          final hovering = candidateData.isNotEmpty;
          final rejecting = !matched && rejectedData.isNotEmpty;
          final borderColor = matched
              ? AppColors.bevelShadowFor(AppColors.goldMedal)
              : (rejecting
                    ? AppColors.cherryCrush
                    : (hovering
                          ? AppColors.candyPrimary
                          : accent.withValues(alpha: 0.6)));

          return Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              CandyBevelSurface(
                faceColor: theme.colorScheme.surfaceContainerHigh,
                bevelDepth: CandyBevelDepth.secondary,
                borderRadius: 16,
                state: matched ? CandyBevelState.correct : CandyBevelState.idle,
                correctColor: AppColors.goldMedal,
                correctIcon: const Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.charcoalNavy,
                  size: 20,
                ),
                border: Border.all(
                  color: borderColor,
                  width: hovering || rejecting ? 3 : 2,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(minWidth: _minWidth),
                  child: Text(
                    pair.match(languageCode),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: matched
                          ? AppColors.charcoalNavy
                          : theme.colorScheme.onSurface,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              if (playConfetti)
                IgnorePointer(
                  child: _ConfettiBurst(
                    colors: const [
                      AppColors.candyPrimary,
                      AppColors.secondary,
                      AppColors.goldMedal,
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// Wraps [child] with a gentle decaying side-to-side wiggle that (re)plays
/// every time [trigger] changes -- the same "not quite" feedback
/// `NurseryLessonScreen`'s private `_Shaker` uses, duplicated locally since
/// that one is file-private and `nursery_lesson_screen.dart` is owned by
/// another agent.
class _Shaker extends StatefulWidget {
  const _Shaker({required this.trigger, required this.child});

  final int trigger;
  final Widget child;

  @override
  State<_Shaker> createState() => _ShakerState();
}

class _ShakerState extends State<_Shaker> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 420),
  );

  @override
  void didUpdateWidget(covariant _Shaker oldWidget) {
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
        final dx = math.sin(t * math.pi * 6) * (1 - t) * 12;
        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
      child: widget.child,
    );
  }
}

/// Wraps [child] with a bouncy pop (scale up then elastic-settle) that
/// (re)plays every time [trigger] changes -- celebrates a correct match.
/// Same mechanics as `NurseryLessonScreen`'s private `_Bouncer`, duplicated
/// locally for the same file-private reason as [_Shaker].
class _Bouncer extends StatefulWidget {
  const _Bouncer({required this.trigger, required this.child});

  final int trigger;
  final Widget child;

  @override
  State<_Bouncer> createState() => _BouncerState();
}

class _BouncerState extends State<_Bouncer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 550),
  );
  late final Animation<double> _scale = TweenSequence<double>([
    TweenSequenceItem(
      weight: 40,
      tween: Tween(
        begin: 1.0,
        end: 1.28,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 60,
      tween: Tween(
        begin: 1.28,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.elasticOut)),
    ),
  ]).animate(_controller);

  @override
  void didUpdateWidget(covariant _Bouncer oldWidget) {
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
      animation: _scale,
      builder: (context, child) =>
          Transform.scale(scale: _scale.value, child: child),
      child: widget.child,
    );
  }
}

class _ConfettiParticle {
  const _ConfettiParticle({
    required this.angle,
    required this.distance,
    required this.size,
    required this.color,
  });

  final double angle;
  final double distance;
  final double size;
  final Color color;
}

/// A lightweight, pure-Flutter confetti/particle burst -- a handful of
/// small colored squares flying outward from center and fading, driven by
/// a single [AnimationController], no external confetti package. Plays
/// once on mount. Same mechanics as `NurseryLessonScreen`'s private
/// `_ConfettiBurst`, duplicated locally for the same file-private reason as
/// [_Shaker]/[_Bouncer].
class _ConfettiBurst extends StatefulWidget {
  const _ConfettiBurst({required this.colors});

  static const _particleCount = 14;

  final List<Color> colors;

  @override
  State<_ConfettiBurst> createState() => _ConfettiBurstState();
}

class _ConfettiBurstState extends State<_ConfettiBurst>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..forward();
  late final List<_ConfettiParticle> _particles = _generateParticles();

  List<_ConfettiParticle> _generateParticles() {
    final random = math.Random();
    return List.generate(_ConfettiBurst._particleCount, (i) {
      final baseAngle = (2 * math.pi / _ConfettiBurst._particleCount) * i;
      final angle = baseAngle + (random.nextDouble() - 0.5) * 0.6;
      final distance = 42.0 + random.nextDouble() * 40;
      final size = 6.0 + random.nextDouble() * 8;
      final color = widget.colors[random.nextInt(widget.colors.length)];
      return _ConfettiParticle(
        angle: angle,
        distance: distance,
        size: size,
        color: color,
      );
    });
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
      builder: (context, _) {
        final t = Curves.easeOut.transform(_controller.value);
        final fade = (1 - t).clamp(0.0, 1.0);
        return Stack(
          alignment: Alignment.center,
          children: [
            for (final particle in _particles)
              Opacity(
                opacity: fade,
                child: Transform.translate(
                  offset: Offset(
                    math.cos(particle.angle) * particle.distance * t,
                    math.sin(particle.angle) * particle.distance * t,
                  ),
                  child: Transform.scale(
                    scale: (1 - t * 0.35).clamp(0.0, 1.0),
                    child: Container(
                      width: particle.size,
                      height: particle.size,
                      decoration: BoxDecoration(
                        color: particle.color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

/// Full-screen completion state shown once every pair is matched -- the
/// same trophy-icon/confetti/[AnimatedStarBadge]/single-button shape as
/// `NurseryLessonScreen`'s private `_CompletionOverlay`, but every surface
/// is rebuilt with the app's standard hero gradient, themed surface color,
/// and [CandyBevelSurface] button instead of that overlay's flat white
/// card, so it reads as a sibling of `McqQuizScreen`/
/// `FillInTheBlankScreen`'s results screens.
class _CompletionOverlay extends StatelessWidget {
  const _CompletionOverlay({
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
                  width: 96,
                  height: 96,
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
                    size: 48,
                  ),
                ),
                const SizedBox(height: 20),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _t(context, 'Great Job!', 'တော်လိုက်တာ!'),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _t(
                      context,
                      'You matched them all!',
                      'အားလုံးကို မှန်အောင် တွဲပြီးပါပြီ။',
                    ),
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                AnimatedStarBadge(stars: stars),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  child: CandyBevelSurface(
                    faceColor: AppColors.candyPrimary,
                    bevelDepth: CandyBevelDepth.primary,
                    borderRadius: AppTheme.radiusLarge,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    onTap: onDone,
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          _t(context, 'Done', 'ပြီးပါပြီ'),
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
