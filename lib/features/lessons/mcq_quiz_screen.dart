import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/glossy_badge.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../models/child_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/lesson_attempt_providers.dart';
import 'achievement_share_card.dart';
import 'mock_quiz_data.dart';
import 'primary_curriculum_bank.dart';

/// Bilingual UI-chrome copy for [McqQuizScreen], following the same
/// `*En`/`*My` paired-field convention as [LearningModuleModel] content.
/// Deliberately kept local to this file instead of the ARB files -- this
/// screen ships in parallel with other work touching the shared ARB/router
/// files.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [McqQuizScreen].
///
/// * [title] -- the lesson/module title to show as the quiz header (already
///   localized by the caller, e.g. picked from
///   `LearningModuleModel.titleEn`/`titleMy`).
/// * [subject] -- lowercase subject key (matches
///   `primary_home_screen.dart`'s `_iconForSubject`/`LearningModuleModel.subject`
///   convention, e.g. `'math'`, `'fractions'`, `'science'`), used as the
///   fallback question bank when [moduleId] doesn't resolve to a specific
///   module via [quizQuestionsForModule].
/// * [stars] -- the max number of stars obtainable from a perfect run.
/// * [moduleId] -- optional id of the originating `LearningModuleModel`,
///   used by [quizQuestionsForModule] to look up that module's own
///   question set (see `primary_curriculum_bank.dart`).
class McqQuizArgs {
  const McqQuizArgs({
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

/// The shared interactive multiple-choice quiz flow, used by both Primary
/// (Year 1-6) and Secondary/IGCSE grade tiers: a progress bar, one
/// question at a time with large tappable option cards that immediately
/// reveal correct/incorrect, auto-advance, and a final results summary
/// with stars earned.
///
/// Pushed by the "Start" action on a Primary learning-path node (see
/// `primary_home_screen.dart`'s `_showNodeSheet`). Pops itself via
/// `Navigator.of(context).pop()` when the learner taps the finish button,
/// returning control to whatever pushed it.
class McqQuizScreen extends ConsumerStatefulWidget {
  const McqQuizScreen({super.key, required this.args});

  final McqQuizArgs args;

  @override
  ConsumerState<McqQuizScreen> createState() => _McqQuizScreenState();
}

class _McqQuizScreenState extends ConsumerState<McqQuizScreen> {
  late final List<QuizQuestion> _questions;

  int _currentIndex = 0;
  int _score = 0;
  int? _selectedIndex;
  bool _answered = false;
  bool _finished = false;
  Timer? _advanceTimer;

  /// Indices tapped and found wrong for the *current* question -- each is
  /// permanently eliminated (rendered `_OptionState.incorrect` and, via
  /// `_OptionCard`'s existing `onTap: state == idle ? onTap : null`,
  /// untappable) until `_advance` clears this for the next question.
  final Set<int> _triedWrong = {};

  /// How many of the current question's `hintsEn`/`hintsMy` have been
  /// revealed so far -- one per wrong tap, capped at `hintsEn.length`.
  int _hintsRevealed = 0;

  /// The active student, captured by [_recordCompletion] once it confirms a
  /// real [StudentProfile] is active -- `null` for a self-profile preview
  /// (no child to credit) or before that lookup has happened yet. Threaded
  /// down to [_QuizResults] purely to populate [AchievementShareCard]'s
  /// alias-name/streak fields; nothing else reads it.
  ChildModel? _resultChild;

  /// Identifies the [AchievementShareCard]'s `RepaintBoundary` so
  /// [shareAchievementCard] can capture it -- lives on this State (not
  /// `_QuizResults`) purely so it survives `_QuizResults` rebuilds.
  final GlobalKey _shareCardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _questions = quizQuestionsForModule(
      widget.args.moduleId,
      widget.args.subject,
    ).map(_shuffled).toList();
  }

  /// Returns a copy of [q] with its options shuffled into a random order
  /// (English/Burmese kept in lockstep, per the bilingual convention) and
  /// [QuizQuestion.correctIndex] remapped to match.
  ///
  /// Almost every authored question in the curriculum banks happens to list
  /// the correct answer first (an authoring artifact, not by design), which
  /// made "always tap option A" a winning strategy. Shuffling once per
  /// question load -- not per rebuild -- fixes that regardless of how the
  /// underlying mock data is ordered.
  static QuizQuestion _shuffled(QuizQuestion q) {
    final order = List<int>.generate(q.optionsEn.length, (i) => i)..shuffle();
    return QuizQuestion(
      questionEn: q.questionEn,
      questionMy: q.questionMy,
      optionsEn: [for (final i in order) q.optionsEn[i]],
      optionsMy: [for (final i in order) q.optionsMy[i]],
      correctIndex: order.indexOf(q.correctIndex),
      // Carried through unchanged -- these don't index into the shuffled
      // options, so there's nothing to remap. Without forwarding them here,
      // every question would silently lose its hints (fall back to the
      // `const []` default) the moment it's shuffled.
      hintsEn: q.hintsEn,
      hintsMy: q.hintsMy,
    );
  }

  @override
  void dispose() {
    _advanceTimer?.cancel();
    super.dispose();
  }

  void _selectOption(int index) {
    // A stray tap on an already-eliminated tile does nothing.
    if (_answered || _triedWrong.contains(index)) return;
    final question = _questions[_currentIndex];
    final isCorrect = index == question.correctIndex;

    if (isCorrect) {
      // A hint-assisted correct answer still counts as correct: the
      // student still reasoned their way to the right answer -- hints are
      // scaffolding, not disqualification.
      setState(() {
        _selectedIndex = index;
        _answered = true;
        _score++;
      });
      _advanceTimer = Timer(const Duration(milliseconds: 850), _advance);
      return;
    }

    // Wrong tap: this tile is eliminated for the rest of this question
    // regardless of what happens next.
    if (_hintsRevealed < question.hintsEn.length) {
      // A hint is still available -- reveal it and let the student try a
      // different remaining option. The question stays open: don't set
      // `_answered` and don't start the advance timer. (For a zero-hint
      // question this branch is never taken: `_hintsRevealed` starts at 0
      // and `hintsEn.length` is also 0, so `0 < 0` is false and this falls
      // straight through to the branch below, exactly like today.)
      setState(() {
        _triedWrong.add(index);
        _selectedIndex = index;
        _hintsRevealed++;
      });
      return;
    }

    // No hints left (or none ever existed): finalize the question exactly
    // as before. Only use the longer post-hint delay when a hint was
    // actually shown this question -- the true zero-hint case keeps
    // today's exact 850ms so it's byte-for-byte unchanged in timing.
    setState(() {
      _triedWrong.add(index);
      _selectedIndex = index;
      _answered = true;
    });
    _advanceTimer = Timer(
      Duration(milliseconds: _hintsRevealed > 0 ? 1400 : 850),
      _advance,
    );
  }

  void _advance() {
    if (!mounted) return;
    if (_currentIndex >= _questions.length - 1) {
      setState(() => _finished = true);
      unawaited(_recordCompletion());
      return;
    }
    setState(() {
      _currentIndex++;
      _selectedIndex = null;
      _answered = false;
      _triedWrong.clear();
      _hintsRevealed = 0;
    });
  }

  int get _starsEarned {
    if (_questions.isEmpty) return 0;
    return (_score / _questions.length * widget.args.stars).round();
  }

  /// Persists this quiz completion to the active student's `Children` doc
  /// (stars earned + completed-module id, via [markModuleCompleted]).
  ///
  /// Skipped entirely -- not just a no-op write -- when there's no real
  /// student/module to record against: a parent/teacher/owner previewing
  /// content in [SelfProfile] mode has no child to credit, and placeholder
  /// content with no seeded [McqQuizArgs.moduleId] has nothing to mark
  /// complete. Fire-and-forget from [_advance] (via `unawaited`) so the
  /// results-screen transition never blocks on a network write; failures
  /// are still logged rather than silently swallowed, matching
  /// `curriculum_sync_provider.dart`'s `curriculumAutoSyncProvider` style.
  Future<void> _recordCompletion() async {
    final moduleId = widget.args.moduleId;
    if (moduleId == null) return;

    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;
    if (mounted) setState(() => _resultChild = activeProfile.child);

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: moduleId,
        starsEarned: _starsEarned,
        currentChild: activeProfile.child,
      );
    } catch (e, st) {
      debugPrint('[McqQuizScreen] markModuleCompleted FAILED: $e');
      debugPrint('[McqQuizScreen] stack trace:\n$st');
    }

    try {
      await recordLessonAttempt(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        lessonId: moduleId,
        kind: 'quiz',
        correctCount: _score,
        totalCount: _questions.length,
      );
    } catch (e) {
      debugPrint('[McqQuizScreen] recordLessonAttempt FAILED: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.args.title),
        actions: const [LanguageToggleButton()],
      ),
      body: SafeArea(
        child: _finished || _questions.isEmpty
            ? _QuizResults(
                score: _score,
                total: _questions.length,
                starsEarned: _starsEarned,
                onFinish: () => Navigator.of(context).pop(),
                shareCardKey: _shareCardKey,
                childAliasName: _resultChild?.aliasName,
                currentStreakDays: _resultChild?.currentStreakDays ?? 0,
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _SegmentedProgressBar(
                      total: _questions.length,
                      current: _currentIndex,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      _t(
                        context,
                        'Question ${_currentIndex + 1} of ${_questions.length}',
                        'မေးခွန်း ${_currentIndex + 1} / ${_questions.length}',
                      ),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: _QuestionView(
                        question: _questions[_currentIndex],
                        selectedIndex: _selectedIndex,
                        answered: _answered,
                        onSelect: _selectOption,
                        triedWrong: _triedWrong,
                        hintsRevealed: _hintsRevealed,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

/// A row of rounded segments showing quiz progress, restyled per the
/// design spec's "progress bars" component: a chunky *inset* (carved-in)
/// track for the not-yet-reached segments -- the bevel technique in
/// reverse, so it never competes visually with the popped-out quiz option
/// tiles below it -- filled by a glossy rounded-cap bar with a subtle
/// top-edge highlight line for completed/current segments.
class _SegmentedProgressBar extends StatelessWidget {
  const _SegmentedProgressBar({required this.total, required this.current});

  final int total;
  final int current;

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
                  color: i <= current ? null : carvedTrack,
                  gradient: i <= current
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
                  // Carved-in look for the un-reached track: a soft inner
                  // shadow hugging the top edge reads as "dug in" rather
                  // than "popped out".
                  boxShadow: i <= current
                      ? null
                      : [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.22),
                            blurRadius: 3,
                            offset: const Offset(0, 1.5),
                          ),
                        ],
                ),
                child: i <= current
                    ? Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: const EdgeInsets.only(top: 1.5),
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.55),
                            borderRadius: BorderRadius.circular(999),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          ),
      ],
    );
  }
}

class _QuestionView extends StatelessWidget {
  const _QuestionView({
    required this.question,
    required this.selectedIndex,
    required this.answered,
    required this.onSelect,
    required this.triedWrong,
    required this.hintsRevealed,
  });

  final QuizQuestion question;
  final int? selectedIndex;
  final bool answered;
  final ValueChanged<int> onSelect;

  /// Indices already tapped and found wrong for this question -- rendered
  /// (and kept) as `_OptionState.incorrect` regardless of `answered`.
  final Set<int> triedWrong;

  /// How many of `question.hintsEn`/`hintsMy` to reveal right now.
  final int hintsRevealed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final questionText = locale == 'my'
        ? question.questionMy
        : question.questionEn;
    final options = locale == 'my' ? question.optionsMy : question.optionsEn;
    final hints = locale == 'my' ? question.hintsMy : question.hintsEn;

    return ListView(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: AppGradients.hero(theme.colorScheme),
            borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
            boxShadow: AppShadows.floating(
              theme.colorScheme.primary,
              brightness: theme.brightness,
            ),
          ),
          child: Text(
            questionText,
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        const SizedBox(height: 20),
        if (hintsRevealed > 0) ...[
          _HintPanel(hints: hints, hintsRevealed: hintsRevealed),
          const SizedBox(height: 16),
        ],
        for (var i = 0; i < options.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _OptionCard(
              index: i,
              label: options[i],
              state: _optionState(i),
              onTap: () => onSelect(i),
            ),
          ),
      ],
    );
  }

  _OptionState _optionState(int index) {
    if (triedWrong.contains(index)) return _OptionState.incorrect;
    if (!answered) return _OptionState.idle;
    if (index == question.correctIndex) return _OptionState.correct;
    if (index == selectedIndex) return _OptionState.incorrect;
    return _OptionState.disabled;
  }
}

/// A compact hint banner shown once at least one hint has been revealed for
/// the current question: a lightbulb icon, a short bilingual header, and
/// each hint revealed so far as a numbered list. Deliberately simple (a
/// static fade-in, no scale-pop/shake/confetti) -- this pass is about
/// correct state logic, not new motion design.
class _HintPanel extends StatelessWidget {
  const _HintPanel({required this.hints, required this.hintsRevealed});

  /// The active-locale hint strings for the current question (already
  /// locale-selected by the caller).
  final List<String> hints;

  /// How many of [hints], in order, to actually show.
  final int hintsRevealed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final shown = hints.take(hintsRevealed).toList();
    if (shown.isEmpty) return const SizedBox.shrink();

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 250),
      opacity: 1,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.goldMedal.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          border: Border.all(
            color: AppColors.goldMedal.withValues(alpha: 0.4),
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.lightbulb_rounded,
                  color: AppColors.goldMedal,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  _t(context, 'Hint', 'အကြံပြုချက်'),
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: AppColors.bevelShadowFor(AppColors.goldMedal),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            for (var i = 0; i < shown.length; i++)
              Padding(
                padding: EdgeInsets.only(top: i == 0 ? 0 : 6),
                child: Text(
                  '${i + 1}. ${shown[i]}',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

enum _OptionState { idle, correct, incorrect, disabled }

/// The quiz answer tile -- the design spec's fully-specified "sample
/// component" (see the spec's "Sample component: quiz answer tile"
/// section). Full-width pill-shaped [CandyBevelSurface] at the spec's
/// fixed 6dp `CandyBevelDepth.quiz` bevel (shared unchanged across Primary
/// and Secondary, since `McqQuizScreen` is one tier-neutral component).
///
/// This widget owns only the extra *feedback* motion the spec calls for on
/// top of [CandyBevelSurface]'s built-in press/spring mechanics -- the
/// correct-answer scale-pop + glossy sweep, and the incorrect-answer
/// horizontal shake -- plus the hover lift/gap-grow treatment and the
/// leading letter (A/B/C/D) badge. The idle/correct/incorrect/disabled
/// *state machine* itself (which option is selected, when answers lock)
/// still lives entirely in `_QuestionView`/`McqQuizScreen` -- unchanged
/// from before this restyle.
class _OptionCard extends StatefulWidget {
  const _OptionCard({
    required this.index,
    required this.label,
    required this.state,
    required this.onTap,
  });

  final int index;
  final String label;
  final _OptionState state;
  final VoidCallback onTap;

  @override
  State<_OptionCard> createState() => _OptionCardState();
}

class _OptionCardState extends State<_OptionCard>
    with TickerProviderStateMixin {
  static const _feedbackDuration = Duration(milliseconds: 300);
  static const _shakeDuration = Duration(milliseconds: 250);

  static final Animatable<double> _scalePop = TweenSequence<double>([
    TweenSequenceItem(
      weight: 40,
      tween: Tween(
        begin: 1.0,
        end: 1.06,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 60,
      tween: Tween(
        begin: 1.06,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.elasticOut)),
    ),
  ]);

  late final AnimationController _feedbackController = AnimationController(
    vsync: this,
    duration: _feedbackDuration,
  );
  late final AnimationController _shakeController = AnimationController(
    vsync: this,
    duration: _shakeDuration,
  );

  bool _hovering = false;

  String get _letter => String.fromCharCode(0x41 + widget.index);

  @override
  void didUpdateWidget(covariant _OptionCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state == widget.state) return;
    if (widget.state == _OptionState.correct) {
      _feedbackController.forward(from: 0);
      HapticFeedback.lightImpact();
    } else if (widget.state == _OptionState.incorrect) {
      _shakeController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    _shakeController.dispose();
    super.dispose();
  }

  Widget _letterBadge(Color textColor) {
    final theme = Theme.of(context);
    final isIdle = widget.state == _OptionState.idle;
    final background = switch (widget.state) {
      _OptionState.idle => AppColors.candyPrimary.withValues(alpha: 0.12),
      _OptionState.disabled => textColor.withValues(alpha: 0.1),
      _OptionState.correct ||
      _OptionState.incorrect => Colors.white.withValues(alpha: 0.3),
    };
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: background, shape: BoxShape.circle),
      child: Text(
        _letter,
        style: theme.textTheme.labelLarge?.copyWith(
          color: isIdle ? AppColors.candyPrimary : textColor,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    const radius = 20.0;

    final borderColor = switch (widget.state) {
      _OptionState.idle =>
        _hovering
            ? AppColors.candyPrimary.withValues(alpha: 0.4)
            : scheme.outlineVariant,
      _OptionState.correct => AppColors.bevelShadowFor(AppColors.goldMedal),
      _OptionState.incorrect => AppColors.cherryCrush,
      _OptionState.disabled => Colors.transparent,
    };
    final foregroundColor = switch (widget.state) {
      _OptionState.idle => scheme.onSurface,
      _OptionState.correct => AppColors.charcoalNavy,
      // White-on-Cherry-Crush measures ~3.2:1 -- passes the 3:1 large-text
      // threshold but fails the 4.5:1 normal-text one this option label
      // actually needs (titleMedium/16sp doesn't qualify as "large text"
      // even at w700). Charcoal Navy matches the correct-state ink-on-candy
      // treatment above and measures ~5.0:1, comfortably passing AA.
      _OptionState.incorrect => AppColors.charcoalNavy,
      _OptionState.disabled => scheme.onSurfaceVariant.withValues(alpha: 0.6),
    };
    final bevelState = switch (widget.state) {
      _OptionState.idle => CandyBevelState.idle,
      _OptionState.correct => CandyBevelState.correct,
      _OptionState.incorrect => CandyBevelState.incorrect,
      _OptionState.disabled => CandyBevelState.disabled,
    };
    // Hover/focus (desktop/web): face lifts slightly and the shadow gap
    // grows to 7dp, signalling "liftable" before the mechanical press.
    final isHoverLift = widget.state == _OptionState.idle && _hovering;
    final bevelDepth = isHoverLift
        ? CandyBevelDepth.quiz + 1
        : CandyBevelDepth.quiz;
    final liftY = isHoverLift ? -1.0 : 0.0;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedBuilder(
        animation: Listenable.merge([_feedbackController, _shakeController]),
        builder: (context, _) {
          final scale = widget.state == _OptionState.correct
              ? _scalePop.evaluate(_feedbackController)
              : 1.0;
          final shakeT = _shakeController.value;
          final shakeDx = widget.state == _OptionState.incorrect
              ? math.sin(shakeT * math.pi * 6) * 6 * (1 - shakeT)
              : 0.0;

          return Transform.translate(
            offset: Offset(shakeDx, liftY),
            child: Transform.scale(
              scale: scale,
              child: Stack(
                children: [
                  CandyBevelSurface(
                    faceColor: scheme.surfaceContainerHigh,
                    bevelDepth: bevelDepth,
                    borderRadius: radius,
                    state: bevelState,
                    correctColor: AppColors.goldMedal,
                    incorrectColor: AppColors.cherryCrush,
                    correctIcon: const Icon(
                      Icons.check_circle_rounded,
                      color: AppColors.charcoalNavy,
                      size: 24,
                    ),
                    // Matches `foregroundColor`'s Charcoal Navy ink above --
                    // see that pairing's comment for the contrast-audit
                    // rationale (white-on-Cherry-Crush fails 4.5:1).
                    incorrectIcon: const Icon(
                      Icons.cancel_rounded,
                      color: AppColors.charcoalNavy,
                      size: 24,
                    ),
                    border: Border.all(color: borderColor, width: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 16,
                    ),
                    onTap: widget.state == _OptionState.idle
                        ? widget.onTap
                        : null,
                    child: Row(
                      children: [
                        _letterBadge(foregroundColor),
                        const SizedBox(width: 14),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              widget.label,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: foregroundColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (widget.state == _OptionState.correct)
                    Positioned.fill(
                      child: IgnorePointer(
                        child: _GlossySweep(
                          progress: _feedbackController.value,
                          borderRadius: radius,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

/// The correct-answer "glossy sweep": a fixed 45-degree diagonal
/// white-to-transparent gradient clipped to the top-left third, per the
/// spec's badge/medal treatment reused here for the correct-answer flash.
/// [progress] drives it sliding in from off-screen-left to its resting
/// position over the same 300ms window the scale-pop uses.
class _GlossySweep extends StatelessWidget {
  const _GlossySweep({required this.progress, required this.borderRadius});

  final double progress;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final t = progress.clamp(0.0, 1.0);
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Opacity(
        opacity: t,
        child: Transform.translate(
          offset: Offset(-24 * (1 - t), 0),
          child: ClipPath(
            clipper: _SheenTriangleClipper(),
            child: const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0x99FFFFFF), Color(0x00FFFFFF)],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SheenTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.55, 0)
      ..lineTo(0, size.height * 0.9)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

/// The end-of-quiz results summary: score, stars earned, and a primary
/// button that pops the screen.
class _QuizResults extends StatelessWidget {
  const _QuizResults({
    required this.score,
    required this.total,
    required this.starsEarned,
    required this.onFinish,
    required this.shareCardKey,
    this.childAliasName,
    this.currentStreakDays = 0,
  });

  final int score;
  final int total;
  final int starsEarned;
  final VoidCallback onFinish;

  /// Identifies the [AchievementShareCard]'s `RepaintBoundary` -- owned by
  /// `_McqQuizScreenState` (not this stateless widget) so it survives
  /// rebuilds; see that field's doc comment.
  final GlobalKey shareCardKey;

  /// The active student's alias name (`ChildModel.aliasName`), threaded down
  /// for [AchievementShareCard] -- `null` for a self-profile preview.
  final String? childAliasName;

  /// The active student's current streak (`ChildModel.currentStreakDays`),
  /// threaded down for [AchievementShareCard].
  final int currentStreakDays;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPerfect = total > 0 && score == total;

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            child: Icon(
              isPerfect
                  ? Icons.emoji_events_rounded
                  : Icons.celebration_rounded,
              color: Colors.white,
              size: 48,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            _t(context, 'Your Score', 'သင်၏ ရမှတ်'),
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _t(
              context,
              '$score / $total correct',
              '$score / $total မှန်ကန်သည်',
            ),
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              boxShadow: AppShadows.card(theme.brightness),
            ),
            child: _ResultsStarBadge(stars: starsEarned),
          ),
          if (isPerfect) ...[
            const SizedBox(height: 24),
            AchievementShareCard(
              repaintKey: shareCardKey,
              starsEarned: starsEarned,
              childAliasName: childAliasName,
              currentStreakDays: currentStreakDays,
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: () => shareAchievementCard(
                shareCardKey,
                shareText: _t(
                  context,
                  'I just aced a lesson on Nova Academy! '
                      'https://nova-academy-alpha.vercel.app',
                  'ကျွန်တော်/ကျွန်မ Nova Academy မှာ သင်ခန်းစာတစ်ခုကို '
                      'အမှတ်အပြည့်ရခဲ့ပါတယ်! '
                      'https://nova-academy-alpha.vercel.app',
                ),
              ),
              icon: const Icon(Icons.ios_share_rounded),
              label: Text(_t(context, 'Share', 'မျှဝေရန်')),
            ),
            const SizedBox(height: 12),
          ] else
            const SizedBox(height: 36),
          SizedBox(
            width: double.infinity,
            child: CandyBevelSurface(
              faceColor: AppColors.candyPrimary,
              bevelDepth: CandyBevelDepth.primary,
              borderRadius: AppTheme.radiusLarge,
              padding: const EdgeInsets.symmetric(vertical: 16),
              onTap: onFinish,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _t(context, 'Finish', 'ပြီးပါပြီ'),
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
    );
  }
}

/// The end-of-quiz stars-earned badge: a [GlossyBadge] face that counts up
/// digit-by-digit, bounce-overshoots on the final digit landing, then fires
/// a small confetti burst -- per the spec's "Star/XP counters" motion
/// section. Purely decorative/celebratory; owns no quiz state itself.
class _ResultsStarBadge extends StatefulWidget {
  const _ResultsStarBadge({required this.stars});

  final int stars;

  @override
  State<_ResultsStarBadge> createState() => _ResultsStarBadgeState();
}

class _ResultsStarBadgeState extends State<_ResultsStarBadge>
    with TickerProviderStateMixin {
  late final AnimationController _countController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  );
  late final AnimationController _bounceController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );
  late final AnimationController _confettiController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );
  late final Animation<int> _countAnim = IntTween(begin: 0, end: widget.stars)
      .animate(
        CurvedAnimation(parent: _countController, curve: Curves.easeOutCubic),
      );
  static final Animatable<double> _bouncePop = TweenSequence<double>([
    TweenSequenceItem(
      weight: 40,
      tween: Tween(
        begin: 1.0,
        end: 1.25,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 60,
      tween: Tween(
        begin: 1.25,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.elasticOut)),
    ),
  ]);

  @override
  void initState() {
    super.initState();
    _countController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _bounceController.forward(from: 0);
        _confettiController.forward(from: 0);
      }
    });
    _countController.forward();
  }

  @override
  void dispose() {
    _countController.dispose();
    _bounceController.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: Listenable.merge([
        _countAnim,
        _bounceController,
        _confettiController,
      ]),
      builder: (context, _) {
        return SizedBox(
          width: 96,
          height: 96,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              _ConfettiBurst(progress: _confettiController.value),
              Transform.scale(
                scale: _bouncePop.evaluate(_bounceController),
                child: GlossyBadge(
                  size: 64,
                  faceColor: AppColors.goldMedal,
                  value: Text(
                    '${_countAnim.value}',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: AppColors.charcoalNavy,
                      fontWeight: FontWeight.w900,
                      fontFeatures: const [FontFeature.tabularFigures()],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// A small celebratory confetti burst -- 8 colored squares radiating from
/// the badge's center, falling + fading out over [progress] `0 -> 1`, per
/// the spec's "Star/XP counters" motion section.
class _ConfettiBurst extends StatelessWidget {
  const _ConfettiBurst({required this.progress});

  final double progress;

  static const _colors = [
    AppColors.goldMedal,
    AppColors.cherryCrush,
    AppColors.candyPrimary,
    AppColors.deepCobalt,
    AppColors.pathOrange,
    Color(0xFF4ED87A),
  ];

  @override
  Widget build(BuildContext context) {
    if (progress <= 0) return const SizedBox.shrink();
    final t = progress.clamp(0.0, 1.0);
    final opacity = (1 - t).clamp(0.0, 1.0);

    return IgnorePointer(
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (var i = 0; i < 8; i++)
            Builder(
              builder: (context) {
                final angle = (i / 8) * 2 * math.pi;
                final dx = math.cos(angle) * 48 * t;
                final dy = math.sin(angle) * 20 * t + 46 * t * t;
                return Transform.translate(
                  offset: Offset(dx, dy),
                  child: Opacity(
                    opacity: opacity,
                    child: Transform.rotate(
                      angle: angle * t * 2,
                      child: Container(
                        width: 7,
                        height: 7,
                        color: _colors[i % _colors.length],
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
