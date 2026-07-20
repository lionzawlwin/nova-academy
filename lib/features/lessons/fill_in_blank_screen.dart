import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../home/home_shared_widgets.dart';
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
    );
  }

  @override
  void dispose() {
    _advanceTimer?.cancel();
    super.dispose();
  }

  void _selectOption(int index) {
    if (_answered) return;
    final question = _questions[_currentIndex];
    final isCorrect = index == question.correctIndex;

    setState(() {
      _selectedIndex = index;
      _answered = true;
      if (isCorrect) _score++;
    });

    _advanceTimer = Timer(const Duration(milliseconds: 850), _advance);
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

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: moduleId,
        starsEarned: _starsEarned,
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
  });

  final FillBlankQuestion question;
  final int? selectedIndex;
  final bool answered;
  final ValueChanged<int> onSelect;

  static const _blankToken = '___';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final sentence = locale == 'my' ? question.sentenceMy : question.sentenceEn;
    final options = locale == 'my' ? question.optionsMy : question.optionsEn;

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
    if (!answered) return _OptionState.idle;
    if (index == question.correctIndex) return _OptionState.correct;
    if (index == selectedIndex) return _OptionState.incorrect;
    return _OptionState.disabled;
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
  });

  final int score;
  final int total;
  final int starsEarned;
  final VoidCallback onFinish;

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
