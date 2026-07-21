import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../models/child_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../home/home_shared_widgets.dart';
import 'achievement_share_card.dart';
import 'fill_in_blank_bank.dart';
import 'interactive_content_models.dart';

/// Bilingual UI-chrome copy for [FillInTheBlankScreen], following the same
/// `*En`/`*My` paired-field convention as [LearningModuleModel] content and
/// the sibling `McqQuizScreen`'s `_t()` helper (`mcq_quiz_screen.dart`).
/// Deliberately kept local to this file rather than the ARB files, same as
/// that screen.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [FillInTheBlankScreen].
/// Mirrors `McqQuizArgs` (`mcq_quiz_screen.dart`) field-for-field.
///
/// * [title] -- the lesson/module title shown as the header.
/// * [subject] -- lowercase subject key, used as the fallback question bank
///   when [moduleId] doesn't resolve to a specific module via
///   [fillBlankQuestionsForModule].
/// * [stars] -- the max number of stars obtainable from a perfect run.
/// * [moduleId] -- optional id of the originating `LearningModuleModel`.
class FillBlankArgs {
  const FillBlankArgs({
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

/// The fill-in-the-blank interactive lesson flow for Primary (Year 1-6) and
/// Secondary/IGCSE: one sentence at a time with the blank rendered inline,
/// a tappable word-bank of options below it, instant correct/incorrect
/// feedback, auto-advance, and a final results summary with stars earned --
/// structurally and visually the sibling of `McqQuizScreen`, reusing its
/// `_SegmentedProgressBar`/results/star-badge pattern rather than inventing
/// a new one.
class FillInTheBlankScreen extends ConsumerStatefulWidget {
  const FillInTheBlankScreen({super.key, required this.args});

  final FillBlankArgs args;

  @override
  ConsumerState<FillInTheBlankScreen> createState() =>
      _FillInTheBlankScreenState();
}

class _FillInTheBlankScreenState extends ConsumerState<FillInTheBlankScreen> {
  late final List<FillBlankQuestion> _questions;

  int _currentIndex = 0;
  int _score = 0;
  int? _selectedIndex;
  bool _answered = false;
  bool _finished = false;
  Timer? _advanceTimer;

  /// Indices tapped and found wrong for the *current* question -- each is
  /// permanently eliminated (rendered `_OptionState.incorrect` and, via
  /// `_WordChip`'s existing `onTap: state == idle ? onTap : null`,
  /// untappable) until `_advance` clears this for the next question.
  final Set<int> _triedWrong = {};

  /// How many of the current question's `hintsEn`/`hintsMy` have been
  /// revealed so far -- one per wrong tap, capped at `hintsEn.length`.
  int _hintsRevealed = 0;

  /// The active student, captured by [_recordCompletion] once it confirms a
  /// real [StudentProfile] is active -- `null` for a self-profile preview
  /// (no child to credit) or before that lookup has happened yet. Threaded
  /// down to [_FillBlankResults] purely to populate
  /// [AchievementShareCard]'s alias-name/streak fields; nothing else reads
  /// it -- same rationale as `McqQuizScreen._resultChild`
  /// (`mcq_quiz_screen.dart`).
  ChildModel? _resultChild;

  /// Identifies the [AchievementShareCard]'s `RepaintBoundary` so
  /// [shareAchievementCard] can capture it -- lives on this State (not
  /// `_FillBlankResults`) purely so it survives `_FillBlankResults`
  /// rebuilds.
  final GlobalKey _shareCardKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _questions = fillBlankQuestionsForModule(
      widget.args.moduleId,
      widget.args.subject,
    ).map(_shuffled).toList();
  }

  /// Returns a copy of [q] with its word-bank options shuffled into a
  /// random order (English/Burmese kept in lockstep, per the bilingual
  /// convention) and [FillBlankQuestion.correctIndex] remapped to match --
  /// the exact same once-per-question-load shuffle pattern
  /// `McqQuizScreen._shuffled` uses (see that method's doc comment), so
  /// this screen never ships with an "always tap option A" bug.
  static FillBlankQuestion _shuffled(FillBlankQuestion q) {
    final order = List<int>.generate(q.optionsEn.length, (i) => i)..shuffle();
    return FillBlankQuestion(
      sentenceEn: q.sentenceEn,
      sentenceMy: q.sentenceMy,
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

  /// Persists this lesson's completion to the active student's `Children`
  /// doc (stars earned + completed-module id, via [markModuleCompleted]) --
  /// same fire-and-forget/skip-when-no-student-or-module rationale as
  /// `McqQuizScreen._recordCompletion` (`mcq_quiz_screen.dart`); see that
  /// method's doc comment for the full explanation.
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
      debugPrint('[FillInTheBlankScreen] markModuleCompleted FAILED: $e');
      debugPrint('[FillInTheBlankScreen] stack trace:\n$st');
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
            ? _FillBlankResults(
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
                      child: _FillBlankQuestionView(
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

/// A row of rounded segments showing quiz progress -- byte-for-byte the
/// same widget as `McqQuizScreen`'s private `_SegmentedProgressBar`
/// (`mcq_quiz_screen.dart`), duplicated locally since that one is
/// file-private and `mcq_quiz_screen.dart` is owned by another agent. See
/// that file's copy for the full design-spec rationale in its doc comment.
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

/// The idle/correct/incorrect/disabled visual state of one word-bank chip
/// -- same shape as `McqQuizScreen`'s private `_OptionState` enum, kept as
/// a local copy since it's file-private there too.
enum _OptionState { idle, correct, incorrect, disabled }

/// Renders the current question's sentence (with the blank shown inline as
/// a [_BlankSlot]) in a hero gradient card, followed by the tappable
/// word-bank options.
class _FillBlankQuestionView extends StatelessWidget {
  const _FillBlankQuestionView({
    required this.question,
    required this.selectedIndex,
    required this.answered,
    required this.onSelect,
    required this.triedWrong,
    required this.hintsRevealed,
  });

  final FillBlankQuestion question;
  final int? selectedIndex;
  final bool answered;
  final ValueChanged<int> onSelect;

  /// Indices already tapped and found wrong for this question -- rendered
  /// (and kept) as `_OptionState.incorrect` regardless of `answered`.
  final Set<int> triedWrong;

  /// How many of `question.hintsEn`/`hintsMy` to reveal right now.
  final int hintsRevealed;

  static const _blankToken = '___';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final sentence = locale == 'my' ? question.sentenceMy : question.sentenceEn;
    final options = locale == 'my' ? question.optionsMy : question.optionsEn;
    final hints = locale == 'my' ? question.hintsMy : question.hintsEn;

    final blankIndex = sentence.indexOf(_blankToken);
    final before = blankIndex >= 0
        ? sentence.substring(0, blankIndex)
        : sentence;
    final after = blankIndex >= 0
        ? sentence.substring(blankIndex + _blankToken.length)
        : '';

    final filledWord = answered && selectedIndex != null
        ? options[selectedIndex!]
        : null;
    final isCorrect = selectedIndex == question.correctIndex;

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
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (before.isNotEmpty)
                Text(
                  before,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              _BlankSlot(
                word: filledWord,
                isCorrect: answered ? isCorrect : null,
              ),
              if (after.isNotEmpty)
                Text(
                  after,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        if (hintsRevealed > 0) ...[
          _HintPanel(hints: hints, hintsRevealed: hintsRevealed),
          const SizedBox(height: 16),
        ],
        Text(
          _t(
            context,
            'Tap the word that fits:',
            'ကိုက်ညီသော စကားလုံးကို နှိပ်ပါ -',
          ),
          style: theme.textTheme.labelLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            for (var i = 0; i < options.length; i++)
              _WordChip(
                label: options[i],
                state: _optionState(i),
                onTap: () => onSelect(i),
              ),
          ],
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
/// the current question -- byte-for-byte the same widget as
/// `McqQuizScreen`'s private `_HintPanel` (`mcq_quiz_screen.dart`),
/// duplicated locally per this file pair's existing per-file-duplication
/// convention for shared-shape private widgets (see `_SegmentedProgressBar`
/// above). A lightbulb icon, a short bilingual header, and each hint
/// revealed so far as a numbered list. Deliberately simple (a static
/// fade-in, no scale-pop/shake/confetti) -- this pass is about correct
/// state logic, not new motion design.
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

/// The inline blank in the question sentence: an empty dashed-underline box
/// before an answer is picked, then fills with the tapped word tinted
/// gold/cherry to match whether it was correct -- the same correct/
/// incorrect color language `_WordChip`/`McqQuizScreen`'s option tiles use.
class _BlankSlot extends StatelessWidget {
  const _BlankSlot({required this.word, required this.isCorrect});

  final String? word;

  /// `null` while unanswered; otherwise whether [word] was the correct one.
  final bool? isCorrect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final showsAnswer = word != null;
    final fillColor = !showsAnswer
        ? Colors.white.withValues(alpha: 0.22)
        : (isCorrect == true ? AppColors.goldMedal : AppColors.cherryCrush);
    final textColor = !showsAnswer ? Colors.white70 : AppColors.charcoalNavy;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      constraints: const BoxConstraints(minWidth: 72),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(10),
        border: showsAnswer
            ? null
            : const Border(bottom: BorderSide(color: Colors.white70, width: 2)),
      ),
      alignment: Alignment.center,
      child: Text(
        word ?? '_____',
        textAlign: TextAlign.center,
        style: theme.textTheme.titleLarge?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

/// One tappable word-bank chip -- the fill-in-the-blank counterpart of
/// `McqQuizScreen`'s private `_OptionCard`, restyled as a compact `Wrap`
/// chip (no lettered A/B/C/D badge, since the word bank isn't an ordered
/// list of full answers) but reusing the exact same
/// `CandyBevelSurface`/scale-pop/shake feedback mechanics so this screen
/// reads as that screen's sibling rather than a different component
/// system.
class _WordChip extends StatefulWidget {
  const _WordChip({
    required this.label,
    required this.state,
    required this.onTap,
  });

  final String label;
  final _OptionState state;
  final VoidCallback onTap;

  @override
  State<_WordChip> createState() => _WordChipState();
}

class _WordChipState extends State<_WordChip> with TickerProviderStateMixin {
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

  @override
  void didUpdateWidget(covariant _WordChip oldWidget) {
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    const radius = 18.0;

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
      _OptionState.incorrect => AppColors.charcoalNavy,
      _OptionState.disabled => scheme.onSurfaceVariant.withValues(alpha: 0.6),
    };
    final bevelState = switch (widget.state) {
      _OptionState.idle => CandyBevelState.idle,
      _OptionState.correct => CandyBevelState.correct,
      _OptionState.incorrect => CandyBevelState.incorrect,
      _OptionState.disabled => CandyBevelState.disabled,
    };
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
              child: CandyBevelSurface(
                faceColor: scheme.surfaceContainerHigh,
                bevelDepth: bevelDepth,
                borderRadius: radius,
                state: bevelState,
                correctColor: AppColors.goldMedal,
                incorrectColor: AppColors.cherryCrush,
                correctIcon: const Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.charcoalNavy,
                  size: 20,
                ),
                incorrectIcon: const Icon(
                  Icons.cancel_rounded,
                  color: AppColors.charcoalNavy,
                  size: 20,
                ),
                border: Border.all(color: borderColor, width: 2),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                onTap: widget.state == _OptionState.idle ? widget.onTap : null,
                child: Text(
                  widget.label,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: foregroundColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/// The end-of-lesson results summary: score, stars earned (via the shared
/// [AnimatedStarBadge] -- the same count-up/bounce/confetti motion
/// `McqQuizScreen`'s private `_ResultsStarBadge` renders, generalized in
/// `home_shared_widgets.dart` so this screen reuses it instead of
/// duplicating that animation), and a primary button that pops the screen.
class _FillBlankResults extends StatelessWidget {
  const _FillBlankResults({
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
  /// `_FillInTheBlankScreenState` (not this stateless widget) so it survives
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
            child: AnimatedStarBadge(stars: starsEarned),
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
