import 'package:flutter/material.dart';

import '../../core/services/tts_service.dart';
import '../../core/theme/app_theme.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_storytelling_bank.dart';

class _Strings {
  _Strings._();

  static String tapToContinue(String lc) =>
      lc == 'my' ? 'ဆက်ရန် တို့ပါ' : 'Tap to continue';

  static String finish(String lc) => lc == 'my' ? 'ပြီးပါပြီ' : 'The End';
}

/// Interactive Storytelling: a tap-through illustrated storybook. Each page
/// shows one big representative emoji "illustration" and a short line of
/// narration, spoken aloud via `TtsService` as the page opens. The child
/// taps anywhere (or the arrow button) to turn the page; reaching the last
/// page shows the completion overlay.
class NurseryStorytellingScreen extends StatefulWidget {
  const NurseryStorytellingScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_storytelling_bank.dart`. Falls back to
  /// a small hardcoded story when null so this screen never dead-ends.
  final NurseryStoryDef? def;

  @override
  State<NurseryStorytellingScreen> createState() =>
      _NurseryStorytellingScreenState();
}

class _NurseryStorytellingScreenState extends State<NurseryStorytellingScreen> {
  late final List<StoryPage> _pages = widget.def?.pages ?? fallbackStoryPages;
  final TtsService _tts = TtsService();

  int _index = 0;
  bool _finished = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _speakCurrentPage());
  }

  @override
  void dispose() {
    _tts.dispose();
    super.dispose();
  }

  void _speakCurrentPage() {
    final lc = Localizations.localeOf(context).languageCode;
    _tts.speak(_pages[_index].text(lc), languageCode: lc);
  }

  void _advance() {
    if (_index == _pages.length - 1) {
      setState(() => _finished = true);
      return;
    }
    setState(() => _index++);
    _speakCurrentPage();
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final title = widget.def == null
        ? null
        : (lc == 'my' ? widget.def!.titleMy : widget.def!.titleEn);
    final page = _pages[_index];
    final isLastPage = _index == _pages.length - 1;

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
                  _ProgressPips(total: _pages.length, current: _index),
                  Expanded(
                    child: GestureDetector(
                      onTap: _advance,
                      behavior: HitTestBehavior.opaque,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 320),
                        transitionBuilder: (child, animation) => FadeTransition(
                          opacity: animation,
                          child: ScaleTransition(
                            scale: Tween(
                              begin: 0.92,
                              end: 1.0,
                            ).animate(animation),
                            child: child,
                          ),
                        ),
                        child: Padding(
                          key: ValueKey(_index),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 220,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.9),
                                  shape: BoxShape.circle,
                                  boxShadow: AppShadows.floating(Colors.white),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  page.emoji,
                                  style: const TextStyle(fontSize: 108),
                                ),
                              ),
                              const SizedBox(height: 28),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    AppTheme.radiusLarge,
                                  ),
                                  boxShadow: AppShadows.card(Brightness.light),
                                ),
                                child: Text(
                                  page.text(lc),
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: _advance,
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.secondary,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        icon: Icon(
                          isLastPage
                              ? Icons.emoji_events_rounded
                              : Icons.arrow_forward_rounded,
                        ),
                        label: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            isLastPage
                                ? _Strings.finish(lc)
                                : _Strings.tapToContinue(lc),
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
              if (_finished)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: widget.def?.starsReward ?? _pages.length,
                  titleEn: 'The End!',
                  titleMy: 'ပြီးပါပြီ!',
                  subtitleEn: 'You read the whole story!',
                  subtitleMy: 'ပုံပြင်တစ်ခုလုံးကို ဖတ်ပြီးပါပြီ!',
                  onDone: () => Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressPips extends StatelessWidget {
  const _ProgressPips({required this.total, required this.current});

  final int total;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < total; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: i <= current ? 24 : 14,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: i <= current
                      ? Colors.white
                      : Colors.white.withValues(alpha: 0.4),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
