import 'dart:async';

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
import 'mock_quiz_data.dart';

/// Bilingual UI-chrome copy for [ReadingScreen], following the same
/// `*En`/`*My` paired-field convention as the sibling lesson screens'
/// `_t()` helpers.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [ReadingScreen]. Mirrors
/// `SortingArgs`: [moduleId] is required since reading passages only exist
/// as course-pathway daily lessons so far.
class ReadingArgs {
  const ReadingArgs({
    required this.title,
    required this.moduleId,
    this.stars = 10,
  });

  final String title;
  final String moduleId;
  final int stars;
}

/// The "Oxford Reading Buddy"-style interactive reading flow: read a short
/// passage, then answer comprehension questions about it one at a time.
/// Reuses [McqQuizScreen]'s simple tap-to-select/auto-advance question
/// mechanics via a lighter local option-tile (not that screen's full
/// custom animation stack, which is file-private) to stay visually
/// consistent without duplicating hundreds of lines.
class ReadingScreen extends ConsumerStatefulWidget {
  const ReadingScreen({super.key, required this.args});

  final ReadingArgs args;

  @override
  ConsumerState<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends ConsumerState<ReadingScreen> {
  late final ReadingPassageModel? _passage = courseDailyLessonById(
    widget.args.moduleId,
  )?.readingPassage;

  bool _passageRead = false;
  int _currentIndex = 0;
  int _score = 0;
  int? _selectedIndex;
  bool _answered = false;
  bool _finished = false;
  Timer? _advanceTimer;

  @override
  void dispose() {
    _advanceTimer?.cancel();
    super.dispose();
  }

  List<QuizQuestion> get _questions =>
      _passage?.comprehensionQuestions ?? const [];

  void _selectOption(int index) {
    if (_answered) return;
    final question = _questions[_currentIndex];
    setState(() {
      _selectedIndex = index;
      _answered = true;
      if (index == question.correctIndex) _score++;
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
    if (_questions.isEmpty) return widget.args.stars;
    return (_score / _questions.length * widget.args.stars).round();
  }

  /// Persists this lesson's completion, same fire-and-forget/skip-when-no-
  /// student rationale as `McqQuizScreen._recordCompletion` -- see that
  /// method's doc comment for the full explanation.
  Future<void> _recordCompletion() async {
    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: widget.args.moduleId,
        starsEarned: _starsEarned,
      );
    } catch (e, st) {
      debugPrint('[ReadingScreen] markModuleCompleted FAILED: $e');
      debugPrint('[ReadingScreen] stack trace:\n$st');
    }

    try {
      await recordLessonAttempt(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        lessonId: widget.args.moduleId,
        kind: 'reading',
        correctCount: _score,
        totalCount: _questions.length,
      );
    } catch (e) {
      debugPrint('[ReadingScreen] recordLessonAttempt FAILED: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lc = Localizations.localeOf(context).languageCode;
    final passage = _passage;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.args.title),
        actions: const [LanguageToggleButton()],
      ),
      body: SafeArea(
        child: passage == null
            ? Center(
                child: Text(
                  _t(
                    context,
                    'No reading content available yet.',
                    'ဖတ်ရန် အကြောင်းအရာ မရှိသေးပါ။',
                  ),
                  style: theme.textTheme.titleMedium,
                ),
              )
            : _finished
            ? _ReadingResults(
                score: _score,
                total: _questions.length,
                starsEarned: _starsEarned,
                onFinish: () => Navigator.of(context).pop(),
              )
            : !_passageRead
            ? _PassageView(
                passage: passage,
                languageCode: lc,
                onContinue: () => setState(() => _passageRead = true),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                    const SizedBox(height: 16),
                    Expanded(
                      child: _ComprehensionQuestionView(
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

/// The read-the-passage phase, shown before any comprehension question.
class _PassageView extends StatelessWidget {
  const _PassageView({
    required this.passage,
    required this.languageCode,
    required this.onContinue,
  });

  final ReadingPassageModel passage;
  final String languageCode;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = languageCode == 'my' ? passage.titleMy : passage.titleEn;
    final body = languageCode == 'my' ? passage.passageMy : passage.passageEn;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: CandyBevelSurface(
                faceColor: theme.colorScheme.surfaceContainerHigh,
                bevelDepth: CandyBevelDepth.secondary,
                borderRadius: AppTheme.radiusLarge,
                padding: const EdgeInsets.all(22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.auto_stories_rounded,
                          color: AppColors.candyPrimary,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            title,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      body,
                      style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: onContinue,
            child: Text(
              _t(
                context,
                "I've Read This — Let's Go!",
                'ဖတ်ပြီးပါပြီ — စတင်ကြရအောင်!',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A lighter-weight comprehension question tile: tap to select, immediate
/// correct/incorrect color feedback, no bespoke pop/shake animation stack
/// (that lives in `McqQuizScreen`'s file-private `_OptionCard`) -- keeps
/// this screen visually consistent (same tokens/surfaces) without
/// duplicating that machinery.
class _ComprehensionQuestionView extends StatelessWidget {
  const _ComprehensionQuestionView({
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
    final lc = Localizations.localeOf(context).languageCode;
    final questionText = lc == 'my' ? question.questionMy : question.questionEn;
    final options = lc == 'my' ? question.optionsMy : question.optionsEn;

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
            child: _ComprehensionOptionTile(
              label: options[i],
              state: !answered
                  ? _TileState.idle
                  : i == question.correctIndex
                  ? _TileState.correct
                  : i == selectedIndex
                  ? _TileState.incorrect
                  : _TileState.disabled,
              onTap: () => onSelect(i),
            ),
          ),
      ],
    );
  }
}

enum _TileState { idle, correct, incorrect, disabled }

class _ComprehensionOptionTile extends StatelessWidget {
  const _ComprehensionOptionTile({
    required this.label,
    required this.state,
    required this.onTap,
  });

  final String label;
  final _TileState state;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Color borderColor;
    final Color? faceColor;
    switch (state) {
      case _TileState.idle:
        borderColor = theme.colorScheme.outlineVariant;
        faceColor = theme.colorScheme.surfaceContainerHigh;
      case _TileState.correct:
        borderColor = AppColors.secondary;
        faceColor = AppColors.secondary.withValues(alpha: 0.16);
      case _TileState.incorrect:
        borderColor = AppColors.cherryCrush;
        faceColor = AppColors.cherryCrush.withValues(alpha: 0.16);
      case _TileState.disabled:
        borderColor = theme.colorScheme.outlineVariant;
        faceColor = theme.colorScheme.surfaceContainerHigh;
    }

    return Opacity(
      opacity: state == _TileState.disabled ? 0.5 : 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        onTap: state == _TileState.idle ? onTap : null,
        child: CandyBevelSurface(
          faceColor: faceColor,
          bevelDepth: CandyBevelDepth.quiz,
          borderRadius: AppTheme.radiusLarge,
          border: Border.all(color: borderColor, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              if (state == _TileState.correct)
                const Icon(
                  Icons.check_circle_rounded,
                  color: AppColors.secondary,
                )
              else if (state == _TileState.incorrect)
                const Icon(Icons.cancel_rounded, color: AppColors.cherryCrush),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReadingResults extends StatelessWidget {
  const _ReadingResults({
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
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
            Text(
              _t(context, 'Great Reading!', 'ကောင်းစွာ ဖတ်ရှုပါပြီ!'),
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              total == 0
                  ? _t(
                      context,
                      'Passage complete',
                      'ဆောင်းပါးဖတ်ရှုမှု ပြီးဆုံးပါပြီ',
                    )
                  : _t(
                      context,
                      '$score / $total correct',
                      'မှန်ကန်မှု $score / $total',
                    ),
              style: theme.textTheme.titleMedium,
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
                  '+$starsEarned XP',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: onFinish,
              child: Text(_t(context, 'Continue', 'ဆက်လုပ်ရန်')),
            ),
          ],
        ),
      ),
    );
  }
}
