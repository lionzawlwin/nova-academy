import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/services/tts_service.dart';
import '../../core/theme/app_theme.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_listening_bank.dart';

class _Strings {
  _Strings._();

  static String listenAgain(String lc) =>
      lc == 'my' ? 'ထပ်နားထောင်ရန် တို့ပါ' : 'Tap to listen again';
}

/// Listening Comprehension: an audio-driven activity. `TtsService` speaks
/// the passage aloud (auto-played once on entry, replayable via the big
/// speaker button); the child then taps one of a few emoji/label choices to
/// answer a simple comprehension question. Every choice also carries
/// visible text/emoji, so the activity still works if TTS silently fails
/// to initialize on a given platform (see `TtsService`'s doc comment).
class NurseryListeningScreen extends StatefulWidget {
  const NurseryListeningScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_listening_bank.dart`. Falls back to a
  /// small hardcoded story when null so this screen never dead-ends.
  final NurseryListeningDef? def;

  @override
  State<NurseryListeningScreen> createState() => _NurseryListeningScreenState();
}

class _NurseryListeningScreenState extends State<NurseryListeningScreen> {
  late final NurseryListeningDef _content =
      widget.def ?? nurseryKgListeningBank.first;
  final TtsService _tts = TtsService();

  String? _selectedChoiceId;
  bool _answeredCorrectly = false;
  int _shakeSeed = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _playPassage());
  }

  @override
  void dispose() {
    _tts.dispose();
    super.dispose();
  }

  void _playPassage() {
    final lc = Localizations.localeOf(context).languageCode;
    _tts.speak(_content.passage(lc), languageCode: lc);
  }

  void _onChoiceTap(ListeningChoice choice) {
    if (_answeredCorrectly) return;
    setState(() => _selectedChoiceId = choice.id);
    if (choice.isCorrect) {
      setState(() => _answeredCorrectly = true);
    } else {
      setState(() => _shakeSeed++);
    }
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final title = lc == 'my' ? _content.titleMy : _content.titleEn;

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppGradients.nurserySky),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  NurseryLessonTopBar(
                    subjectLabel: widget.subjectLabel ?? title,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                      child: Column(
                        children: [
                          _SpeakerButton(
                            emoji: _content.emoji,
                            onTap: _playPassage,
                          ),
                          const SizedBox(height: 8),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              _Strings.listenAgain(lc),
                              style: theme.textTheme.labelLarge?.copyWith(
                                color: Colors.white.withValues(alpha: 0.85),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              _content.question(lc),
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                shadows: const [
                                  Shadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 18,
                            runSpacing: 18,
                            children: [
                              for (final choice in _content.choices)
                                _Shaker(
                                  trigger: choice.id == _selectedChoiceId
                                      ? _shakeSeed
                                      : 0,
                                  child: _ChoiceTile(
                                    choice: choice,
                                    languageCode: lc,
                                    selected: choice.id == _selectedChoiceId,
                                    revealCorrect: _answeredCorrectly,
                                    onTap: () => _onChoiceTap(choice),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              if (_answeredCorrectly)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: _content.starsReward,
                  titleEn: 'Great Listening!',
                  titleMy: 'ကောင်းစွာ နားထောင်ခဲ့ပါတယ်!',
                  onDone: () => Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SpeakerButton extends StatelessWidget {
  const _SpeakerButton({required this.emoji, required this.onTap});

  final String emoji;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.9),
          boxShadow: AppShadows.floating(Colors.white),
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(emoji, style: const TextStyle(fontSize: 72)),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.secondary,
                ),
                child: const Icon(
                  Icons.volume_up_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChoiceTile extends StatelessWidget {
  const _ChoiceTile({
    required this.choice,
    required this.languageCode,
    required this.selected,
    required this.revealCorrect,
    required this.onTap,
  });

  final ListeningChoice choice;
  final String languageCode;
  final bool selected;
  final bool revealCorrect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = Color(choice.colorValue);
    final isWinner = revealCorrect && choice.isCorrect;
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 120,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 108,
              height: 108,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [color, color.withValues(alpha: 0.7)],
                ),
                borderRadius: BorderRadius.circular(28),
                border: isWinner
                    ? Border.all(color: Colors.white, width: 4)
                    : null,
                boxShadow: isWinner
                    ? AppShadows.floating(AppColors.secondary)
                    : AppShadows.card(Brightness.light),
              ),
              alignment: Alignment.center,
              child: isWinner
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: Colors.white,
                      size: 44,
                    )
                  : Text(choice.emoji, style: const TextStyle(fontSize: 48)),
            ),
            const SizedBox(height: 6),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                choice.label(languageCode),
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Same decaying side-to-side wiggle as `nursery_lesson_screen.dart`'s
/// private `_Shaker` -- a local copy per that file's own "small enough to
/// duplicate" convention rather than a shared import.
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
        final dx = sin(t * pi * 6) * (1 - t) * 12;
        return Transform.translate(offset: Offset(dx, 0), child: child);
      },
      child: widget.child,
    );
  }
}
