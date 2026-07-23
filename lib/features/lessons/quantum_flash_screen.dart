import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import 'nursery_completion_overlay.dart';
import 'nursery_kg_quantum_flash_bank.dart';

class _Strings {
  _Strings._();

  static String flashInstruction(String lc) =>
      lc == 'my' ? 'သေချာကြည့်ပါ!' : 'Watch closely!';

  static String checkInstruction(String lc) => lc == 'my'
      ? 'ခုနက် ဘာကို မြင်ခဲ့သနည်း။ တို့ပြပါ!'
      : 'Which one did you just see? Tap it!';
}

enum _Phase { flash, check, done }

/// One tap-to-recall round in the Quick Check phase: [target] is the card
/// whose Flash-Pass content the child must recognize among [choices]
/// (which always includes [target] itself, in shuffled order).
class _CheckRound {
  const _CheckRound({required this.target, required this.choices});

  final QuantumFlashCardItem target;
  final List<QuantumFlashCardItem> choices;
}

/// The Nova Quantum Flash Engine screen: a high-speed, auto-advancing
/// "Flash Pass" through [def]'s cards (dot clusters for numeracy, emoji+word
/// for vocabulary) with no tap required, immediately followed by a 4-round
/// "Quick Check" tap-to-recall mini-game on the same screen, then real
/// stars/streak persistence via [markModuleCompleted] and the shared
/// [NurseryCompletionOverlay] -- see the design spec at
/// `docs/superpowers/specs/2026-07-23-nova-quantum-flash-engine-design.md`.
class QuantumFlashScreen extends ConsumerStatefulWidget {
  const QuantumFlashScreen({super.key, this.subjectLabel, this.def});

  final String? subjectLabel;

  /// Seeded content from `nursery_kg_quantum_flash_bank.dart`. Falls back
  /// to a small hardcoded quantity deck when null so this screen never
  /// dead-ends -- same convention as `NurseryFlashcardsScreen.def`.
  final QuantumFlashDeckDef? def;

  @override
  ConsumerState<QuantumFlashScreen> createState() => _QuantumFlashScreenState();
}

class _QuantumFlashScreenState extends ConsumerState<QuantumFlashScreen> {
  late final List<QuantumFlashCardItem> _cards =
      (widget.def?.cards.isNotEmpty ?? false)
      ? widget.def!.cards
      : fallbackQuantumFlashCards;
  late final int _flashIntervalMs = widget.def?.flashIntervalMs ?? 900;

  _Phase _phase = _Phase.flash;
  int _flashIndex = 0;

  late List<_CheckRound> _rounds;
  int _roundIndex = 0;
  int _correctCount = 0;
  bool _roundAnswered = false;
  String? _tappedOptionId;

  /// Owns whichever timer is currently in flight (Flash Pass auto-advance
  /// or the Quick Check's post-answer auto-advance) so [dispose] can cancel
  /// it -- an uncancelled recursive `Future.delayed` chain trips
  /// `flutter_test`'s "Timer is still pending after dispose" invariant.
  Timer? _advanceTimer;

  @override
  void initState() {
    super.initState();
    _scheduleNextFlashCard();
  }

  @override
  void dispose() {
    _advanceTimer?.cancel();
    super.dispose();
  }

  void _scheduleNextFlashCard() {
    _advanceTimer = Timer(Duration(milliseconds: _flashIntervalMs), () {
      if (!mounted || _phase != _Phase.flash) return;
      if (_flashIndex >= _cards.length - 1) {
        _startQuickCheck();
        return;
      }
      setState(() => _flashIndex++);
      _scheduleNextFlashCard();
    });
  }

  void _startQuickCheck() {
    final random = Random();
    final targets = List<QuantumFlashCardItem>.from(_cards)..shuffle(random);
    final roundCount = min(4, _cards.length);

    setState(() {
      _phase = _Phase.check;
      _rounds = [
        for (final target in targets.take(roundCount))
          _CheckRound(target: target, choices: _choicesFor(target, random)),
      ];
      _roundIndex = 0;
      _correctCount = 0;
      _roundAnswered = false;
      _tappedOptionId = null;
    });
  }

  List<QuantumFlashCardItem> _choicesFor(
    QuantumFlashCardItem target,
    Random random,
  ) {
    final others = _cards.where((c) => c.id != target.id).toList()
      ..shuffle(random);
    final choices = [target, ...others.take(2)];
    choices.shuffle(random);
    return choices;
  }

  void _selectOption(String optionId) {
    if (_roundAnswered) return;
    final round = _rounds[_roundIndex];
    setState(() {
      _roundAnswered = true;
      _tappedOptionId = optionId;
      if (optionId == round.target.id) _correctCount++;
    });
    _advanceTimer = Timer(const Duration(milliseconds: 600), () {
      if (!mounted) return;
      if (_roundIndex >= _rounds.length - 1) {
        setState(() => _phase = _Phase.done);
        unawaited(_recordCompletion());
        return;
      }
      setState(() {
        _roundIndex++;
        _roundAnswered = false;
        _tappedOptionId = null;
      });
    });
  }

  int get _starsEarned {
    if (_rounds.isEmpty) return 0;
    final maxStars = widget.def?.starsReward ?? _cards.length;
    return (_correctCount / _rounds.length * maxStars).round();
  }

  /// Persists this deck's completion to the active student's `Children` doc
  /// (stars earned + completed-module id, via [markModuleCompleted]) --
  /// the same fire-and-forget/skip-when-no-real-student-or-module pattern
  /// `mcq_quiz_screen.dart`'s `_recordCompletion` uses. This is the first
  /// Nursery/KG activity kind to persist real completion; the other five
  /// existing kinds remain presentation-only by design (out of scope here).
  Future<void> _recordCompletion() async {
    final moduleId = widget.def?.id;
    if (moduleId == null) return;

    final activeProfile = ref.read(activeProfileProvider);
    if (activeProfile is! StudentProfile) return;

    try {
      await markModuleCompleted(
        ref.read(firestoreProvider),
        childId: activeProfile.child.id,
        moduleId: moduleId,
        starsEarned: _starsEarned,
        currentChild: activeProfile.child,
      );
    } catch (e, st) {
      debugPrint('[QuantumFlashScreen] markModuleCompleted FAILED: $e');
      debugPrint('[QuantumFlashScreen] stack trace:\n$st');
    }
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final title = widget.def == null
        ? null
        : (lc == 'my' ? widget.def!.titleMy : widget.def!.titleEn);
    final accent = Color(_cards.first.colorValue);

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
                        _phase == _Phase.check
                            ? _Strings.checkInstruction(lc)
                            : _Strings.flashInstruction(lc),
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
                    total: _phase == _Phase.check
                        ? _rounds.length
                        : _cards.length,
                    current: _phase == _Phase.check ? _roundIndex : _flashIndex,
                    color: accent,
                  ),
                  Expanded(
                    child: _phase == _Phase.check
                        ? _QuickCheckView(
                            round: _rounds[_roundIndex],
                            languageCode: lc,
                            answered: _roundAnswered,
                            tappedOptionId: _tappedOptionId,
                            onSelect: _selectOption,
                          )
                        : _FlashPassView(
                            item: _cards[_flashIndex],
                            languageCode: lc,
                          ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
              if (_phase == _Phase.done)
                NurseryCompletionOverlay(
                  languageCode: lc,
                  stars: _starsEarned,
                  titleEn: 'Flash Complete!',
                  titleMy: 'ဖျတ်ခနဲပြပွဲ ပြီးပါပြီ!',
                  subtitleEn: 'You flashed through the whole deck!',
                  subtitleMy: 'ကတ်အစုံလုံးကို ဖျတ်ခနဲ ကြည့်ပြီးပါပြီ!',
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

/// Renders one card during the passive Flash Pass -- a 150ms crossfade
/// between cards (deliberately no hard cut/strobe, for photosensitivity
/// safety with young children) via [AnimatedSwitcher] keyed by card id.
class _FlashPassView extends StatelessWidget {
  const _FlashPassView({required this.item, required this.languageCode});

  final QuantumFlashCardItem item;
  final String languageCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: KeyedSubtree(
          key: ValueKey(item.id),
          child: _CardFace(
            item: item,
            languageCode: languageCode,
            reveal: true,
          ),
        ),
      ),
    );
  }
}

/// One rendered card face. [reveal] controls whether a word-mode card's
/// label is shown alongside its emoji -- `true` during the Flash Pass
/// (that's the whole point of vocabulary exposure), `false` during the
/// Quick Check (the label IS the answer being recalled, so showing it on
/// the prompt would give the round away). Dot-mode cards never show a
/// label/numeral regardless of [reveal] -- true Doman-style quantity
/// impression, not a countable/labelled number.
class _CardFace extends StatelessWidget {
  const _CardFace({
    required this.item,
    required this.languageCode,
    required this.reveal,
  });

  final QuantumFlashCardItem item;
  final String languageCode;
  final bool reveal;

  @override
  Widget build(BuildContext context) {
    final color = Color(item.colorValue);

    if (item.mode == QuantumFlashCardMode.dot) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
          boxShadow: AppShadows.floating(color),
        ),
        padding: const EdgeInsets.all(28),
        child: _DotCluster(
          count: item.dotCount!,
          color: color,
          seed: item.id.hashCode,
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color, color.withValues(alpha: 0.7)],
        ),
        borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
        boxShadow: AppShadows.floating(color),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(item.emoji!, style: const TextStyle(fontSize: 88)),
          if (reveal) ...[
            const SizedBox(height: 16),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                item.label(languageCode),
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// A cluster of [count] colored dots scattered (not gridded) within its
/// box, via seeded rejection-sampling in [_layoutDots] -- [seed] is derived
/// from the card's id so the same quantity looks different across
/// different cards/decks, rather than always rendering an identical,
/// memorizable shape for e.g. every "5".
class _DotCluster extends StatelessWidget {
  const _DotCluster({
    required this.count,
    required this.color,
    required this.seed,
  });

  final int count;
  final Color color;
  final int seed;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
        final dotSize = count <= 5
            ? 40.0
            : count <= 10
            ? 30.0
            : 22.0;
        final positions = _layoutDots(count, w, h, dotSize, seed);
        return Stack(
          children: [
            for (final p in positions)
              Positioned(
                left: p.dx,
                top: p.dy,
                child: Container(
                  width: dotSize,
                  height: dotSize,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 3,
                        offset: Offset(0, 1.5),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

/// Scatters [n] dots inside a `w`x`h` box via rejection sampling: each new
/// dot retries up to 30 times to land far enough from every prior dot
/// before giving up and placing it anyway (guarantees termination even
/// when the box is too small to fit [n] dots without any overlap).
List<Offset> _layoutDots(int n, double w, double h, double dotSize, int seed) {
  final random = Random(seed);
  final maxX = (w - dotSize).clamp(0.0, double.infinity);
  final maxY = (h - dotSize).clamp(0.0, double.infinity);
  if (maxX <= 0 || maxY <= 0) {
    return List.generate(n, (_) => Offset.zero);
  }

  final positions = <Offset>[];
  for (var i = 0; i < n; i++) {
    var candidate = Offset(
      random.nextDouble() * maxX,
      random.nextDouble() * maxY,
    );
    var attempts = 0;
    while (attempts < 30 &&
        positions.any((p) => (p - candidate).distance < dotSize * 0.9)) {
      candidate = Offset(
        random.nextDouble() * maxX,
        random.nextDouble() * maxY,
      );
      attempts++;
    }
    positions.add(candidate);
  }
  return positions;
}

/// The Quick Check round: re-renders [round.target]'s prompt (label hidden
/// for word-mode cards -- see [_CardFace]'s [reveal] doc) plus three
/// tappable answer chips.
class _QuickCheckView extends StatelessWidget {
  const _QuickCheckView({
    required this.round,
    required this.languageCode,
    required this.answered,
    required this.tappedOptionId,
    required this.onSelect,
  });

  final _CheckRound round;
  final String languageCode;
  final bool answered;
  final String? tappedOptionId;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: _CardFace(
              item: round.target,
              languageCode: languageCode,
              reveal: false,
            ),
          ),
          const SizedBox(height: 20),
          for (final option in round.choices)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _AnswerChip(
                label: option.label(languageCode),
                isCorrectAnswer: option.id == round.target.id,
                isTapped: option.id == tappedOptionId,
                revealResult: answered,
                onTap: () => onSelect(option.id),
              ),
            ),
        ],
      ),
    );
  }
}

class _AnswerChip extends StatelessWidget {
  const _AnswerChip({
    required this.label,
    required this.isCorrectAnswer,
    required this.isTapped,
    required this.revealResult,
    required this.onTap,
  });

  final String label;
  final bool isCorrectAnswer;
  final bool isTapped;
  final bool revealResult;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color background = Colors.white;
    if (revealResult) {
      if (isCorrectAnswer) {
        background = const Color(0xFF4ED87A);
      } else if (isTapped) {
        background = const Color(0xFFE64545);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Material(
        color: background,
        borderRadius: BorderRadius.circular(999),
        elevation: 3,
        child: InkWell(
          borderRadius: BorderRadius.circular(999),
          onTap: revealResult ? null : onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
