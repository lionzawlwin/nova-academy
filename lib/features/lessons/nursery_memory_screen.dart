import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_memory_bank.dart';

class _Strings {
  _Strings._();

  static String instruction(String lc) => lc == 'my'
      ? 'တွဲစုံကတ်များကို ရှာဖို့ ကတ်နှစ်ကတ်ကို လှန်ကြည့်ပါ!'
      : 'Flip two cards to find a matching pair!';
}

/// One face-down/face-up card instance in the deck. Two instances always
/// share the same [pairId]; matching them wins that pair. [instanceIndex]
/// keeps the two instances distinct after shuffling (a plain `Set<String>`
/// keyed only by `pairId` couldn't tell them apart).
class _CardInstance {
  const _CardInstance({required this.pairId, required this.instanceIndex});

  final String pairId;
  final int instanceIndex;

  String get cardId => '$pairId-$instanceIndex';
}

/// Memory Challenge: a classic card-flip concentration game. Tap two
/// face-down cards to reveal them; a match locks both face-up, a miss
/// flips them back after a short pause so the child can study the board.
/// Pure Flutter -- the "flip" is a hand-rolled 3D Y-axis rotation
/// ([Matrix4.rotateY]), same "no external animation/confetti package"
/// convention as `nursery_lesson_screen.dart`.
class NurseryMemoryScreen extends StatefulWidget {
  const NurseryMemoryScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_memory_bank.dart`. Falls back to a
  /// small hardcoded set when null so this screen never dead-ends.
  final NurseryMemoryDef? def;

  @override
  State<NurseryMemoryScreen> createState() => _NurseryMemoryScreenState();
}

class _NurseryMemoryScreenState extends State<NurseryMemoryScreen> {
  late final List<MemoryPairItem> _pairs =
      widget.def?.pairs ?? fallbackMemoryPairs;
  late final Color _accent = widget.def != null
      ? Color(_pairs.first.colorValue)
      : AppColors.nurseryPalette[2];

  late final List<_CardInstance> _cards = _buildShuffledDeck();

  final Set<String> _revealedIds = {};
  final Set<String> _matchedPairIds = {};
  final List<_CardInstance> _selected = [];
  bool _busy = false;

  bool get _allMatched => _matchedPairIds.length == _pairs.length;

  List<_CardInstance> _buildShuffledDeck() {
    final deck = <_CardInstance>[
      for (final pair in _pairs) ...[
        _CardInstance(pairId: pair.id, instanceIndex: 0),
        _CardInstance(pairId: pair.id, instanceIndex: 1),
      ],
    ];
    deck.shuffle(Random());
    return deck;
  }

  MemoryPairItem _itemFor(String pairId) =>
      _pairs.firstWhere((p) => p.id == pairId);

  void _onCardTap(_CardInstance card) {
    if (_busy) return;
    if (_revealedIds.contains(card.cardId)) return;
    if (_matchedPairIds.contains(card.pairId)) return;

    setState(() {
      _revealedIds.add(card.cardId);
      _selected.add(card);
    });

    if (_selected.length < 2) return;

    final first = _selected[0];
    final second = _selected[1];
    if (first.pairId == second.pairId) {
      setState(() {
        _matchedPairIds.add(first.pairId);
        _selected.clear();
      });
      return;
    }

    _busy = true;
    Future.delayed(const Duration(milliseconds: 700), () {
      if (!mounted) return;
      setState(() {
        _revealedIds
          ..remove(first.cardId)
          ..remove(second.cardId);
        _selected.clear();
        _busy = false;
      });
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
                  const SizedBox(height: 8),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 14,
                              mainAxisSpacing: 14,
                              childAspectRatio: 0.85,
                            ),
                        itemCount: _cards.length,
                        itemBuilder: (context, index) {
                          final card = _cards[index];
                          final item = _itemFor(card.pairId);
                          final matched = _matchedPairIds.contains(card.pairId);
                          return _FlipCard(
                            revealed: _revealedIds.contains(card.cardId),
                            matched: matched,
                            accent: _accent,
                            item: item,
                            languageCode: lc,
                            onTap: () => _onCardTap(card),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              if (_allMatched)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: widget.def?.starsReward ?? _pairs.length,
                  onDone: () => Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A single card that flips between a plain patterned back and its item
/// face using a hand-rolled 3D Y-axis rotation, split into two 0-90°
/// half-turns so the front content is never rendered mirrored.
class _FlipCard extends StatefulWidget {
  const _FlipCard({
    required this.revealed,
    required this.matched,
    required this.accent,
    required this.item,
    required this.languageCode,
    required this.onTap,
  });

  final bool revealed;
  final bool matched;
  final Color accent;
  final MemoryPairItem item;
  final String languageCode;
  final VoidCallback onTap;

  @override
  State<_FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<_FlipCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 320),
    value: widget.revealed ? 1 : 0,
  );

  @override
  void didUpdateWidget(covariant _FlipCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.revealed != oldWidget.revealed) {
      widget.revealed ? _controller.forward() : _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _back() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.primary.withValues(alpha: 0.7)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppShadows.card(Brightness.light),
      ),
      alignment: Alignment.center,
      child: const Icon(Icons.help_rounded, color: Colors.white70, size: 34),
    );
  }

  Widget _front() {
    final color = Color(widget.item.colorValue);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color, color.withValues(alpha: 0.7)],
        ),
        borderRadius: BorderRadius.circular(20),
        border: widget.matched
            ? Border.all(color: AppColors.secondary, width: 3)
            : null,
        boxShadow: AppShadows.floating(color),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.item.emoji, style: const TextStyle(fontSize: 34)),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              widget.item.label(widget.languageCode),
              maxLines: 1,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.matched ? null : widget.onTap,
      child: Opacity(
        opacity: widget.matched ? 0.55 : 1,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final angle = _controller.value * pi;
            final showFront = angle > pi / 2;
            final displayAngle = showFront ? angle - pi : angle;
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(displayAngle),
              child: showFront ? _front() : _back(),
            );
          },
        ),
      ),
    );
  }
}
