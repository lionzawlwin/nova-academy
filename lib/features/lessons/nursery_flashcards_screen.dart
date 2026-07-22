import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_flashcards_bank.dart';

class _Strings {
  _Strings._();

  static String instruction(String lc) => lc == 'my'
      ? 'ကတ်ကို လှန်ကြည့်ရန် တို့ပါ၊ နောက်ကတ်သို့ ဆွဲပါ!'
      : 'Tap the card to flip it, swipe for the next one!';
}

/// Digital Flashcards: a swipeable deck of two-sided cards. Tapping a card
/// flips it (front = current app language, back = the other language, see
/// `FlashcardItem`); swiping moves to the next card. Reaching the last card
/// marks the deck "reviewed" and shows the completion overlay.
class NurseryFlashcardsScreen extends StatefulWidget {
  const NurseryFlashcardsScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_flashcards_bank.dart`. Falls back to a
  /// small hardcoded colours deck when null so this screen never dead-ends.
  final NurseryFlashcardsDef? def;

  @override
  State<NurseryFlashcardsScreen> createState() =>
      _NurseryFlashcardsScreenState();
}

class _NurseryFlashcardsScreenState extends State<NurseryFlashcardsScreen> {
  late final List<FlashcardItem> _cards =
      widget.def?.cards ?? fallbackFlashcards;
  late final Color _accent = Color(_cards.first.colorValue);
  final PageController _pageController = PageController();

  int _index = 0;
  bool _reviewedAll = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _index = index;
      if (index == _cards.length - 1) _reviewedAll = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final title = widget.def == null
        ? null
        : (lc == 'my' ? widget.def!.titleMy : widget.def!.titleEn);

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _Strings.instruction(lc),
                        textAlign: TextAlign.center,
                        maxLines: 2,
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
                  ),
                  const SizedBox(height: 12),
                  _ProgressPips(
                    total: _cards.length,
                    current: _index,
                    color: _accent,
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      itemCount: _cards.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 24,
                          ),
                          child: _FlashcardWidget(
                            item: _cards[i],
                            languageCode: lc,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
              if (_reviewedAll)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: widget.def?.starsReward ?? _cards.length,
                  titleEn: 'Deck Complete!',
                  titleMy: 'ကတ်အစုံ ပြီးပါပြီ!',
                  subtitleEn: 'You reviewed every flashcard!',
                  subtitleMy: 'ကတ်တိုင်းကို လေ့လာပြီးပါပြီ!',
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
  const _ProgressPips({
    required this.total,
    required this.current,
    required this.color,
  });

  final int total;
  final int current;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < total; i++)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOutBack,
              width: i == current ? 18 : 12,
              height: i == current ? 18 : 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: i <= current
                    ? color
                    : Colors.white.withValues(alpha: 0.5),
              ),
            ),
          ),
      ],
    );
  }
}

/// One tap-to-flip card. Uses the same hand-rolled 3D Y-axis rotation as
/// `nursery_memory_screen.dart`'s `_FlipCard`; kept as a local, larger-format
/// copy rather than sharing that widget since this one's face content
/// (front word / back translation, no "back design") is a different shape.
class _FlashcardWidget extends StatefulWidget {
  const _FlashcardWidget({required this.item, required this.languageCode});

  final FlashcardItem item;
  final String languageCode;

  @override
  State<_FlashcardWidget> createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<_FlashcardWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 380),
  );
  bool _flipped = false;

  @override
  void didUpdateWidget(covariant _FlashcardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.item.id != oldWidget.item.id) {
      _flipped = false;
      _controller.value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() => _flipped = !_flipped);
    _flipped ? _controller.forward() : _controller.reverse();
  }

  Widget _face({
    required String emoji,
    required String label,
    required bool isBack,
  }) {
    final color = Color(widget.item.colorValue);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isBack
              ? [Colors.white, Colors.white.withValues(alpha: 0.9)]
              : [color, color.withValues(alpha: 0.7)],
        ),
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.floating(color),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 88)),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              label,
              maxLines: 1,
              style: TextStyle(
                color: isBack ? color : Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Icon(
            Icons.touch_app_rounded,
            color: (isBack ? color : Colors.white).withValues(alpha: 0.5),
            size: 22,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final angle = _controller.value * pi;
          final showBack = angle > pi / 2;
          final displayAngle = showBack ? angle - pi : angle;
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(displayAngle),
            child: showBack
                ? _face(
                    emoji: widget.item.emoji,
                    label: widget.item.backLabel(widget.languageCode),
                    isBack: true,
                  )
                : _face(
                    emoji: widget.item.emoji,
                    label: widget.item.frontLabel(widget.languageCode),
                    isBack: false,
                  ),
          );
        },
      ),
    );
  }
}
