import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/services/tts_service.dart';
import '../../core/theme/app_theme.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_rhymes_bank.dart';

class _Strings {
  _Strings._();

  static String play(String lc) => lc == 'my' ? 'ဖွင့်ပါ' : 'Play';
  static String playAgain(String lc) =>
      lc == 'my' ? 'ထပ်ဖွင့်ပါ' : 'Play again';
  static String tapLines(String lc) => lc == 'my'
      ? 'သီချင်းကို ဖွင့်ရန် သို့မဟုတ် လိုင်းများကို တို့ရန်'
      : 'Press play, or tap a line yourself';
}

/// Singing/Rhymes: a karaoke-style sing-along. "Play" auto-advances through
/// every [RhymeLine], speaking each one via `TtsService` and highlighting
/// it in turn; a child can also tap any line directly to hear just that
/// one. Reaching the end of an auto-play run shows the completion overlay.
///
/// Line timing during auto-play is a fixed per-word estimate rather than a
/// `TtsService` completion callback -- `flutter_tts`'s `speak()` future
/// resolves on "started speaking" on some platforms, not "finished", so
/// timing off it directly risks the screen racing ahead of (or lagging
/// behind) the actual audio. A simple word-count estimate reads close
/// enough for these short nursery-rhyme lines and never depends on
/// platform-specific completion behavior.
class NurseryRhymesScreen extends StatefulWidget {
  const NurseryRhymesScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_rhymes_bank.dart`. Falls back to a
  /// small hardcoded rhyme when null so this screen never dead-ends.
  final NurseryRhymeDef? def;

  @override
  State<NurseryRhymesScreen> createState() => _NurseryRhymesScreenState();
}

class _NurseryRhymesScreenState extends State<NurseryRhymesScreen> {
  late final List<RhymeLine> _lines = widget.def?.lines ?? fallbackRhymeLines;
  final TtsService _tts = TtsService();

  int _highlightedIndex = -1;
  bool _playing = false;
  bool _finishedOnce = false;
  int _playRunId = 0;

  @override
  void dispose() {
    _tts.dispose();
    super.dispose();
  }

  Duration _durationFor(String text) {
    final wordCount = text.trim().split(RegExp(r'\s+')).length;
    final millis = (wordCount * 420).clamp(1100, 5000);
    return Duration(milliseconds: millis);
  }

  Future<void> _playAll() async {
    final lc = Localizations.localeOf(context).languageCode;
    final runId = ++_playRunId;
    setState(() => _playing = true);

    for (var i = 0; i < _lines.length; i++) {
      if (runId != _playRunId || !mounted) return;
      setState(() => _highlightedIndex = i);
      unawaited(_tts.speak(_lines[i].text(lc), languageCode: lc));
      await Future.delayed(_durationFor(_lines[i].text(lc)));
    }

    if (runId != _playRunId || !mounted) return;
    setState(() {
      _playing = false;
      _finishedOnce = true;
    });
  }

  void _tapLine(int index) {
    if (_playing) return;
    final lc = Localizations.localeOf(context).languageCode;
    setState(() => _highlightedIndex = index);
    _tts.speak(_lines[index].text(lc), languageCode: lc);
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final title = widget.def == null
        ? null
        : (lc == 'my' ? widget.def!.titleMy : widget.def!.titleEn);
    final emoji = widget.def?.emoji ?? '🎵';

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
                  const SizedBox(height: 4),
                  Text(emoji, style: const TextStyle(fontSize: 56)),
                  const SizedBox(height: 4),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      _Strings.tapLines(lc),
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: Colors.white.withValues(alpha: 0.85),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                      child: Column(
                        children: [
                          for (var i = 0; i < _lines.length; i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: _RhymeLineTile(
                                line: _lines[i],
                                languageCode: lc,
                                highlighted: i == _highlightedIndex,
                                onTap: () => _tapLine(i),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: _playing ? null : _playAll,
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.secondary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        icon: Icon(
                          _playing
                              ? Icons.graphic_eq_rounded
                              : Icons.play_arrow_rounded,
                        ),
                        label: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            _finishedOnce
                                ? _Strings.playAgain(lc)
                                : _Strings.play(lc),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (_finishedOnce && !_playing)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: widget.def?.starsReward ?? _lines.length,
                  titleEn: 'What a Song!',
                  titleMy: 'သီချင်းလေး ကောင်းလိုက်တာ!',
                  subtitleEn: 'You sang the whole rhyme!',
                  subtitleMy: 'ကဗျာတစ်ပုဒ်လုံးကို သီဆိုပြီးပါပြီ!',
                  onDone: () => Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RhymeLineTile extends StatelessWidget {
  const _RhymeLineTile({
    required this.line,
    required this.languageCode,
    required this.highlighted,
    required this.onTap,
  });

  final RhymeLine line;
  final String languageCode;
  final bool highlighted;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: highlighted
              ? Colors.white
              : Colors.white.withValues(alpha: 0.25),
          borderRadius: BorderRadius.circular(20),
          boxShadow: highlighted
              ? AppShadows.floating(AppColors.secondary)
              : null,
        ),
        child: Row(
          children: [
            Text(line.emoji, style: const TextStyle(fontSize: 26)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                line.text(languageCode),
                style: TextStyle(
                  color: highlighted ? AppColors.primary : Colors.white,
                  fontWeight: highlighted ? FontWeight.w800 : FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
