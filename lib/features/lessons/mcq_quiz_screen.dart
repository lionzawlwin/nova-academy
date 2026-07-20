import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../home/home_shared_widgets.dart';
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

  @override
  void initState() {
    super.initState();
    _questions = quizQuestionsForModule(
      widget.args.moduleId,
      widget.args.subject,
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
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

/// A row of rounded segments showing quiz progress -- filled solid for
/// completed questions, tinted for the current one, and muted for the rest.
class _SegmentedProgressBar extends StatelessWidget {
  const _SegmentedProgressBar({required this.total, required this.current});

  final int total;
  final int current;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (total == 0) return const SizedBox.shrink();

    return Row(
      children: [
        for (var i = 0; i < total; i++)
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: i == total - 1 ? 0 : 6),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 10,
                decoration: BoxDecoration(
                  color: i <= current
                      ? theme.colorScheme.primary
                      : theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(999),
                ),
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
  });

  final QuizQuestion question;
  final int? selectedIndex;
  final bool answered;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).languageCode;
    final questionText = locale == 'my'
        ? question.questionMy
        : question.questionEn;
    final options = locale == 'my' ? question.optionsMy : question.optionsEn;

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
        for (var i = 0; i < options.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _OptionCard(
              label: options[i],
              state: _optionState(i),
              onTap: () => onSelect(i),
            ),
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

enum _OptionState { idle, correct, incorrect, disabled }

class _OptionCard extends StatelessWidget {
  const _OptionCard({
    required this.label,
    required this.state,
    required this.onTap,
  });

  final String label;
  final _OptionState state;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    Color background;
    Color border;
    Color foreground;
    Widget? trailing;

    switch (state) {
      case _OptionState.idle:
        background = scheme.surfaceContainerHigh;
        border = scheme.outlineVariant;
        foreground = scheme.onSurface;
      case _OptionState.correct:
        background = AppColors.secondary.withValues(alpha: 0.16);
        border = AppColors.secondary;
        foreground = AppColors.secondary;
        trailing = const Icon(
          Icons.check_circle_rounded,
          color: AppColors.secondary,
        );
      case _OptionState.incorrect:
        background = scheme.error.withValues(alpha: 0.14);
        border = scheme.error;
        foreground = scheme.error;
        trailing = Icon(Icons.cancel_rounded, color: scheme.error);
      case _OptionState.disabled:
        background = scheme.surfaceContainerHighest.withValues(alpha: 0.5);
        border = Colors.transparent;
        foreground = scheme.onSurfaceVariant;
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: border, width: 2),
        boxShadow: state == _OptionState.idle
            ? AppShadows.card(theme.brightness)
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        child: InkWell(
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          onTap: state == _OptionState.idle ? onTap : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: foreground,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ?trailing,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// The end-of-quiz results summary: score, stars earned, and a primary
/// button that pops the screen.
class _QuizResults extends StatelessWidget {
  const _QuizResults({
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              boxShadow: AppShadows.card(theme.brightness),
            ),
            child: AnimatedStarBadge(stars: starsEarned, iconSize: 30),
          ),
          const SizedBox(height: 36),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onFinish,
              child: Text(_t(context, 'Finish', 'ပြီးပါပြီ')),
            ),
          ),
        ],
      ),
    );
  }
}
