import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/services/tts_service.dart';
import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/lesson_attempt_providers.dart';
import 'course_pathway_bank.dart';
import 'interactive_content_models.dart';
import 'photo_guess_bank.dart';

/// Bilingual UI-chrome copy, following the same `*En`/`*My` local-`_t()`
/// convention as the sibling lesson screens.
String _t(BuildContext context, String en, String my) =>
    Localizations.localeOf(context).languageCode == 'my' ? my : en;

/// Arguments the router should pass when pushing [PhotoGuessScreen].
/// Mirrors `ReadingArgs`: [moduleId] is required since "Guess the Photo"
/// rounds only exist as course-pathway daily lessons.
class PhotoGuessArgs {
  const PhotoGuessArgs({
    required this.title,
    required this.moduleId,
    this.stars = 10,
  });

  final String title;
  final String moduleId;
  final int stars;
}

/// Task 6's "Guess the Photo" flow: one bundled image at a time with a
/// multiple-choice prompt about it, tap-to-select/auto-advance/results --
/// the same interaction shape as [McqQuizScreen] (`mcq_quiz_screen.dart`),
/// with an image hero in place of the gradient question-text hero and no
/// hint system (a first, leaner version of this newer lesson kind).
class PhotoGuessScreen extends ConsumerStatefulWidget {
  const PhotoGuessScreen({super.key, required this.args});

  final PhotoGuessArgs args;

  @override
  ConsumerState<PhotoGuessScreen> createState() => _PhotoGuessScreenState();
}

class _PhotoGuessScreenState extends ConsumerState<PhotoGuessScreen> {
  late final List<PhotoGuessQuestion> _questions =
      (courseDailyLessonById(widget.args.moduleId)?.photoGuessQuestions ??
              photoGuessQuestionsForSetId(widget.args.moduleId) ??
              const [])
          .map(_shuffled)
          .toList();

  /// Returns a copy of [q] with its options shuffled into a random order
  /// and [PhotoGuessQuestion.correctIndex] remapped to match -- the exact
  /// same once-per-question-load shuffle pattern `McqQuizScreen._shuffled`,
  /// `FillBlankScreen._shuffled`, and `ReadingScreen._shuffled` use (see
  /// those methods' doc comments). Every `photo_guess_bank.dart` entry
  /// authored so far happens to list the correct answer first, which would
  /// make "always tap option A" a winning strategy here too without this.
  static PhotoGuessQuestion _shuffled(PhotoGuessQuestion q) {
    final order = List<int>.generate(q.optionsEn.length, (i) => i)..shuffle();
    return PhotoGuessQuestion(
      id: q.id,
      imageAssetPath: q.imageAssetPath,
      imagePlaceholderUrl: q.imagePlaceholderUrl,
      promptEn: q.promptEn,
      promptMy: q.promptMy,
      optionsEn: [for (final i in order) q.optionsEn[i]],
      optionsMy: [for (final i in order) q.optionsMy[i]],
      correctIndex: order.indexOf(q.correctIndex),
      // Carried through unchanged -- these don't index into the shuffled
      // options, so there's nothing to remap.
      attributionEn: q.attributionEn,
      attributionMy: q.attributionMy,
    );
  }

  int _currentIndex = 0;
  int _score = 0;
  int? _selectedIndex;
  bool _answered = false;
  bool _finished = false;
  Timer? _advanceTimer;

  /// Reads the prompt/option text aloud on tap -- same bare
  /// per-screen-owned wrapper `McqQuizScreen`/`FillBlankScreen`/
  /// `ReadingScreen` already use (see `TtsService`'s own doc comment for
  /// the Burmese-voice fallback rationale).
  final TtsService _tts = TtsService();

  void _speak(String text) {
    final lc = Localizations.localeOf(context).languageCode;
    unawaited(_tts.speak(text, languageCode: lc));
  }

  @override
  void dispose() {
    _advanceTimer?.cancel();
    _tts.dispose();
    super.dispose();
  }

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
    unawaited(_tts.stop());
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

  /// Same fire-and-forget/skip-when-no-student contract as
  /// `McqQuizScreen._recordCompletion` -- see that method's doc comment.
  Future<void> _recordCompletion() async {
    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: widget.args.moduleId,
        starsEarned: _starsEarned,
        currentChild: activeProfile.child,
      );
    } catch (e, st) {
      debugPrint('[PhotoGuessScreen] markModuleCompleted FAILED: $e');
      debugPrint('[PhotoGuessScreen] stack trace:\n$st');
    }

    try {
      await recordLessonAttempt(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        lessonId: widget.args.moduleId,
        kind: 'photoGuess',
        correctCount: _score,
        totalCount: _questions.length,
      );
    } catch (e) {
      debugPrint('[PhotoGuessScreen] recordLessonAttempt FAILED: $e');
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
        child: _questions.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    _t(
                      context,
                      'No photo rounds available yet.',
                      'ဓာတ်ပုံပဟေဠိများ မရှိသေးပါ။',
                    ),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              )
            : _finished
            ? _PhotoGuessResults(
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
                    Text(
                      _t(
                        context,
                        'Round ${_currentIndex + 1} of ${_questions.length}',
                        'ပတ် ${_currentIndex + 1} / ${_questions.length}',
                      ),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: _PhotoGuessQuestionView(
                        question: _questions[_currentIndex],
                        selectedIndex: _selectedIndex,
                        answered: _answered,
                        onSelect: _selectOption,
                        onSpeak: _speak,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class _PhotoGuessQuestionView extends StatelessWidget {
  const _PhotoGuessQuestionView({
    required this.question,
    required this.selectedIndex,
    required this.answered,
    required this.onSelect,
    required this.onSpeak,
  });

  final PhotoGuessQuestion question;
  final int? selectedIndex;
  final bool answered;
  final ValueChanged<int> onSelect;
  final ValueChanged<String> onSpeak;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lc = Localizations.localeOf(context).languageCode;
    final options = lc == 'my' ? question.optionsMy : question.optionsEn;
    final attribution = question.attribution(lc);
    final promptText = question.prompt(lc);

    return ListView(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          child: AspectRatio(
            aspectRatio: 4 / 3,
            // A missing/unbundled asset or failed network fetch must never
            // crash the lesson -- both branches fall back to the same
            // placeholder tile so the round stays playable from the
            // prompt/options text alone.
            child: question.imagePlaceholderUrl != null
                ? Image.network(
                    question.imagePlaceholderUrl!,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) =>
                        progress == null
                        ? child
                        : Container(
                            color: theme.colorScheme.surfaceContainerHigh,
                            alignment: Alignment.center,
                            child: const CircularProgressIndicator(),
                          ),
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: theme.colorScheme.surfaceContainerHigh,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.image_not_supported_rounded,
                        size: 48,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  )
                : Image.asset(
                    question.imageAssetPath!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: theme.colorScheme.surfaceContainerHigh,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.image_not_supported_rounded,
                        size: 48,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
          ),
        ),
        if (attribution != null && attribution.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            attribution,
            style: theme.textTheme.labelSmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                promptText,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            _PhotoGuessSpeakerButton(
              onTap: () => onSpeak(promptText),
              iconColor: theme.colorScheme.onSurfaceVariant,
            ),
          ],
        ),
        const SizedBox(height: 16),
        for (var i = 0; i < options.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _PhotoGuessOptionTile(
              label: options[i],
              state: !answered
                  ? _TileState.idle
                  : i == question.correctIndex
                  ? _TileState.correct
                  : i == selectedIndex
                  ? _TileState.incorrect
                  : _TileState.disabled,
              onTap: () => onSelect(i),
              onSpeak: () => onSpeak(options[i]),
            ),
          ),
      ],
    );
  }
}

enum _TileState { idle, correct, incorrect, disabled }

/// Same gold-correct/red-incorrect tile treatment as
/// `reading_screen.dart`'s `_ComprehensionOptionTile` (post its Task-1/2
/// fix) -- kept consistent across every lighter-weight lesson screen that
/// doesn't need `McqQuizScreen`'s full bevel/shake/hint machinery.
class _PhotoGuessOptionTile extends StatelessWidget {
  const _PhotoGuessOptionTile({
    required this.label,
    required this.state,
    required this.onTap,
    required this.onSpeak,
  });

  final String label;
  final _TileState state;
  final VoidCallback onTap;
  final VoidCallback onSpeak;

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
        borderColor = AppColors.bevelShadowFor(AppColors.goldMedal);
        faceColor = AppColors.goldMedal.withValues(alpha: 0.16);
      case _TileState.incorrect:
        borderColor = AppColors.cherryCrush;
        faceColor = AppColors.cherryCrush.withValues(alpha: 0.16);
      case _TileState.disabled:
        borderColor = theme.colorScheme.outlineVariant;
        faceColor = theme.colorScheme.surfaceContainerHigh;
    }

    return Opacity(
      opacity: state == _TileState.disabled ? 0.5 : 1,
      child: CandyBevelSurface(
        onTap: state == _TileState.idle ? onTap : null,
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
            _PhotoGuessSpeakerButton(
              onTap: onSpeak,
              iconColor: theme.colorScheme.onSurfaceVariant,
            ),
            if (state == _TileState.correct)
              const Icon(
                Icons.check_circle_rounded,
                color: AppColors.charcoalNavy,
              )
            else if (state == _TileState.incorrect)
              const Icon(Icons.cancel_rounded, color: AppColors.cherryCrush),
          ],
        ),
      ),
    );
  }
}

/// A small "read this aloud" tap target -- its own [IconButton] so a tap
/// on the speaker is consumed there and never falls through to whatever
/// tappable surface it's layered on (the prompt row, an
/// [_PhotoGuessOptionTile]'s [CandyBevelSurface]). Mirrors
/// `McqQuizScreen`'s private `_SpeakerButton` widget of the same shape.
class _PhotoGuessSpeakerButton extends StatelessWidget {
  const _PhotoGuessSpeakerButton({required this.onTap, required this.iconColor});

  final VoidCallback onTap;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(Icons.volume_up_rounded, color: iconColor),
      tooltip: _t(context, 'Read aloud', 'အသံထွက်ဖတ်ရန်'),
      visualDensity: VisualDensity.compact,
    );
  }
}

class _PhotoGuessResults extends StatelessWidget {
  const _PhotoGuessResults({
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
              _t(context, 'Great Guessing!', 'ကောင်းစွာ ခန့်မှန်းနိုင်ပါပြီ!'),
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              total == 0
                  ? _t(context, 'Round complete', 'ပတ် ပြီးဆုံးပါပြီ')
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
