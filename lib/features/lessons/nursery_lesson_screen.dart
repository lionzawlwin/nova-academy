import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../home/home_shared_widgets.dart';
import 'nursery_kg_activity_bank.dart';

/// Small bilingual UI copy for this lesson, picked at render time via
/// `Localizations.localeOf(context).languageCode` -- kept local rather than
/// in the ARB files since it's lesson content, not shared app chrome.
class _Strings {
  _Strings._();

  /// Ultimate fallback instruction, only shown when neither the caller nor
  /// the seeded module supplied its own -- kept generic (no longer
  /// fruit-specific) since this can now surface for *any* subject's
  /// picture-matching activity, not just the original hardcoded fruit set.
  static String fallbackInstruction(String lc) => lc == 'my'
      ? 'ပုံစံလေးတွေကို ကိုက်ညီရာနေရာသို့ ဆွဲထည့်ပါ!'
      : 'Drag each item into its matching spot!';

  static String greatJob(String lc) =>
      lc == 'my' ? 'တော်လိုက်တာ!' : 'Great Job!';

  static String allDone(String lc) => lc == 'my'
      ? 'အားလုံးကို မှန်အောင် တွဲပြီးပါပြီ။'
      : 'You matched them all!';

  static String doneButton(String lc) => lc == 'my' ? 'ပြီးပါပြီ' : 'Done';
}

/// A full-screen drag-and-drop matching game for Nursery/KG students: drag
/// each fruit "item" onto its matching colored "basket" target. Correct
/// drops bounce, glow, and burst into confetti before locking in place;
/// incorrect drops gently shake and snap back -- no harsh negative feedback,
/// since this is built for nursery-age kids.
///
/// Usage: push with `Navigator.of(context).push(MaterialPageRoute(builder:
/// (_) => const NurseryLessonScreen()))` or wire into go_router as a normal
/// pushed route; the in-game close button and the completion screen's "Done"
/// button both call `Navigator.of(context).pop()`, which correctly returns
/// to whatever pushed this screen either way.
class NurseryLessonScreen extends StatefulWidget {
  const NurseryLessonScreen({
    super.key,
    this.subjectLabel,
    this.themeColor,
    this.pairs,
    this.instructionEn,
    this.instructionMy,
  });

  /// Optional short label shown in the top bar (e.g. "Fruits"). Already
  /// expected to be localized by the caller, same as [SubjectVisual.label].
  final String? subjectLabel;

  /// Optional accent color for chrome that isn't per-pair (e.g. progress
  /// pips). Defaults to a friendly nursery-palette blue when omitted.
  final Color? themeColor;

  /// Seeded content for this lesson, from
  /// `nursery_kg_activity_bank.dart`'s `matchPairsForModule`. When null or
  /// empty, falls back to the original hardcoded fruit-matching set so
  /// this screen still works for any caller that doesn't pass content.
  final List<MatchPairItem>? pairs;

  /// Bilingual instruction text specific to this module (typically its
  /// `NurseryActivityDef.descriptionEn`/`descriptionMy`), e.g. "Match each
  /// location to its picture!" for a geography module. When either is null
  /// or empty, [_Strings.fallbackInstruction] is shown instead -- so this
  /// screen never renders the wrong subject's hardcoded instruction text.
  final String? instructionEn;
  final String? instructionMy;

  @override
  State<NurseryLessonScreen> createState() => _NurseryLessonScreenState();
}

class _NurseryLessonScreenState extends State<NurseryLessonScreen> {
  late final List<MatchPairItem> _pairs =
      (widget.pairs == null || widget.pairs!.isEmpty)
      ? matchPairsForModule('does-not-exist') // resolves to the fallback set
      : widget.pairs!;
  late final List<MatchPairItem> _shuffledItems = List.of(_pairs)
    ..shuffle(Random());

  final Set<String> _matchedIds = {};
  final Map<String, int> _missShakeSeed = {};
  final Map<String, int> _matchBounceSeed = {};
  final Set<String> _confettiPlayed = {};

  bool get _allMatched => _matchedIds.length == _pairs.length;

  void _handleCorrectDrop(MatchPairItem pair) {
    if (_matchedIds.contains(pair.id)) return;
    setState(() {
      _matchedIds.add(pair.id);
      _matchBounceSeed[pair.id] = (_matchBounceSeed[pair.id] ?? 0) + 1;
      _confettiPlayed.add(pair.id);
    });
  }

  void _handleMiss(MatchPairItem pair) {
    setState(() {
      _missShakeSeed[pair.id] = (_missShakeSeed[pair.id] ?? 0) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final lc = Localizations.localeOf(context).languageCode;
    final theme = Theme.of(context);
    final accent = widget.themeColor ?? AppColors.nurseryPalette[1];
    final instructionEn = widget.instructionEn;
    final instructionMy = widget.instructionMy;
    final hasModuleInstruction =
        (instructionEn?.isNotEmpty ?? false) &&
        (instructionMy?.isNotEmpty ?? false);
    final instruction = hasModuleInstruction
        ? (lc == 'my' ? instructionMy! : instructionEn!)
        : _Strings.fallbackInstruction(lc);

    // Sized to fit up to 4 basket targets per row on a phone-width screen
    // (the old fixed 128dp baskets only fit 2 per row); the draggable dock
    // below deliberately stays smaller still, since it scrolls
    // horizontally rather than needing to show every item in one row.
    final basketSize = responsiveTileSize(
      context,
      columns: 4,
      spacing: 14,
      horizontalPadding: 32,
      min: 78,
      max: 128,
    );
    final itemSize = (basketSize * 0.82).clamp(64.0, 108.0);

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(gradient: AppGradients.nurserySky),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  _TopBar(
                    subjectLabel: widget.subjectLabel,
                    onClose: () => Navigator.of(context).pop(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            instruction,
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
                        const SizedBox(height: 10),
                        _ProgressPips(
                          total: _pairs.length,
                          matched: _matchedIds.length,
                          color: accent,
                        ),
                      ],
                    ),
                  ),
                  // Target zone: takes whatever vertical space is left
                  // above the fixed-height draggable dock, and scrolls
                  // internally if there are more baskets than fit -- so
                  // the dock below is never pushed off-screen the way a
                  // single shared scroll region used to push it.
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 14,
                        runSpacing: 14,
                        children: [
                          for (final pair in _pairs)
                            _BasketTarget(
                              pair: pair,
                              size: basketSize,
                              matched: _matchedIds.contains(pair.id),
                              playConfetti: _confettiPlayed.contains(pair.id),
                              bounceSeed: _matchBounceSeed[pair.id] ?? 0,
                              languageCode: lc,
                              onAcceptItem: (id) {
                                if (id == pair.id) _handleCorrectDrop(pair);
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                  // Draggable dock: fixed height, always docked to the
                  // bottom of the screen and horizontally scrollable, so
                  // every item stays reachable regardless of how tall the
                  // target zone above is or how far it's scrolled.
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.12),
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(24),
                      ),
                    ),
                    child: SizedBox(
                      height: itemSize,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: _shuffledItems.length,
                        separatorBuilder: (_, _) => const SizedBox(width: 14),
                        itemBuilder: (context, index) {
                          final pair = _shuffledItems[index];
                          return _DraggableItem(
                            pair: pair,
                            size: itemSize,
                            matched: _matchedIds.contains(pair.id),
                            shakeSeed: _missShakeSeed[pair.id] ?? 0,
                            onMiss: () => _handleMiss(pair),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              if (_allMatched)
                _CompletionOverlay(
                  languageCode: lc,
                  stars: _pairs.length,
                  onDone: () => Navigator.of(context).pop(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Top chrome: a close button (always available so a child -- or a parent
/// testing the flow -- can back out without finishing) and an optional
/// subject-label chip, mirroring the icon-only chrome style used elsewhere
/// on the Nursery/KG screens.
class _TopBar extends StatelessWidget {
  const _TopBar({required this.subjectLabel, required this.onClose});

  final String? subjectLabel;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.close_rounded, color: Colors.white),
            tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
            onPressed: onClose,
          ),
          Expanded(
            child: subjectLabel == null
                ? const SizedBox.shrink()
                : Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.25),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          subjectLabel!,
                          maxLines: 1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}

/// A row of small dots tracking progress, one per pair -- filling in and
/// growing slightly as each match locks in, so progress reads visually
/// without needing any numerals or text.
class _ProgressPips extends StatelessWidget {
  const _ProgressPips({
    required this.total,
    required this.matched,
    required this.color,
  });

  final int total;
  final int matched;
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
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOutBack,
              width: i < matched ? 18 : 12,
              height: i < matched ? 18 : 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: i < matched
                    ? color
                    : Colors.white.withValues(alpha: 0.5),
                boxShadow: i < matched ? AppShadows.floating(color) : null,
              ),
            ),
          ),
      ],
    );
  }
}

/// One draggable fruit item. Huge touch target (108dp+) per the existing
/// nursery-tile convention. Shakes gently and snaps back (Flutter's default
/// [Draggable] behavior when a drop is rejected) on a wrong drop; once
/// matched it's replaced with a locked, greyed-out, checked tile.
class _DraggableItem extends StatelessWidget {
  const _DraggableItem({
    required this.pair,
    required this.size,
    required this.matched,
    required this.shakeSeed,
    required this.onMiss,
  });

  final MatchPairItem pair;
  final double size;
  final bool matched;
  final int shakeSeed;
  final VoidCallback onMiss;

  Widget _tile({required bool dimmed}) {
    final color = Color(pair.colorValue);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color, color.withValues(alpha: 0.7)],
        ),
        borderRadius: BorderRadius.circular(size * 0.27),
        boxShadow: dimmed ? null : AppShadows.floating(color),
      ),
      alignment: Alignment.center,
      child: Opacity(
        opacity: dimmed ? 0.3 : 1,
        child: Text(pair.emoji, style: TextStyle(fontSize: size * 0.5)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (matched) {
      return Opacity(
        opacity: 0.4,
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(size * 0.27),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.check_rounded,
            color: Colors.white,
            size: size * 0.4,
          ),
        ),
      );
    }

    return _Shaker(
      trigger: shakeSeed,
      child: Draggable<String>(
        data: pair.id,
        feedback: Material(
          color: Colors.transparent,
          child: Transform.scale(scale: 1.15, child: _tile(dimmed: false)),
        ),
        childWhenDragging: _tile(dimmed: true),
        onDragEnd: (details) {
          if (!details.wasAccepted) onMiss();
        },
        child: _tile(dimmed: false),
      ),
    );
  }
}

/// One colored basket target. Highlights while a compatible item hovers,
/// flashes red while a wrong item hovers, bounces + glows + bursts confetti
/// on a correct drop, then locks in as a greyed/checked "done" state.
class _BasketTarget extends StatelessWidget {
  const _BasketTarget({
    required this.pair,
    required this.size,
    required this.matched,
    required this.playConfetti,
    required this.bounceSeed,
    required this.languageCode,
    required this.onAcceptItem,
  });

  final MatchPairItem pair;
  final double size;
  final bool matched;
  final bool playConfetti;
  final int bounceSeed;
  final String languageCode;
  final ValueChanged<String> onAcceptItem;

  @override
  Widget build(BuildContext context) {
    final color = Color(pair.colorValue);
    return _Bouncer(
      trigger: bounceSeed,
      child: SizedBox(
        width: size + 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DragTarget<String>(
              onWillAcceptWithDetails: (details) =>
                  !matched && details.data == pair.id,
              onAcceptWithDetails: (details) => onAcceptItem(details.data),
              builder: (context, candidateData, rejectedData) {
                final hovering = candidateData.isNotEmpty;
                final rejecting = !matched && rejectedData.isNotEmpty;
                return Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: size,
                      height: size,
                      decoration: BoxDecoration(
                        color: matched
                            ? Colors.grey.shade300
                            : color.withValues(
                                alpha: hovering
                                    ? 0.55
                                    : (rejecting ? 0.45 : 0.3),
                              ),
                        borderRadius: BorderRadius.circular(size * 0.27),
                        border: Border.all(
                          color: matched
                              ? AppColors.secondary
                              : (rejecting
                                    ? Colors.redAccent
                                    : Colors.white.withValues(alpha: 0.9)),
                          width: hovering || rejecting ? 4 : 3,
                        ),
                        boxShadow: matched
                            ? AppShadows.floating(AppColors.secondary)
                            : (hovering
                                  ? AppShadows.floating(color)
                                  : AppShadows.card(Brightness.light)),
                      ),
                      alignment: Alignment.center,
                      child: matched
                          ? Icon(
                              Icons.check_circle_rounded,
                              color: AppColors.secondary,
                              size: size * 0.42,
                            )
                          : Opacity(
                              opacity: 0.5,
                              child: Text(
                                pair.emoji,
                                style: TextStyle(fontSize: size * 0.4),
                              ),
                            ),
                    ),
                    if (playConfetti)
                      IgnorePointer(
                        child: SizedBox(
                          width: size,
                          height: size,
                          child: _ConfettiBurst(
                            colors: [color, AppColors.accent, Colors.white],
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            const SizedBox(height: 6),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                pair.label(languageCode),
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

/// Wraps [child] with a gentle decaying side-to-side wiggle that (re)plays
/// every time [trigger] changes -- used to give soft, friendly "not quite"
/// feedback on a wrong drop instead of anything harsh.
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

/// Wraps [child] with a bouncy pop (scale up then elastic-settle) that
/// (re)plays every time [trigger] changes -- used to celebrate a correct
/// match.
class _Bouncer extends StatefulWidget {
  const _Bouncer({required this.trigger, required this.child});

  final int trigger;
  final Widget child;

  @override
  State<_Bouncer> createState() => _BouncerState();
}

class _BouncerState extends State<_Bouncer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 550),
  );
  late final Animation<double> _scale = TweenSequence<double>([
    TweenSequenceItem(
      weight: 40,
      tween: Tween(
        begin: 1.0,
        end: 1.28,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 60,
      tween: Tween(
        begin: 1.28,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.elasticOut)),
    ),
  ]).animate(_controller);

  @override
  void didUpdateWidget(covariant _Bouncer oldWidget) {
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
      animation: _scale,
      builder: (context, child) =>
          Transform.scale(scale: _scale.value, child: child),
      child: widget.child,
    );
  }
}

class _ConfettiParticle {
  const _ConfettiParticle({
    required this.angle,
    required this.distance,
    required this.size,
    required this.color,
  });

  final double angle;
  final double distance;
  final double size;
  final Color color;
}

/// A lightweight, pure-Flutter confetti/particle burst: a handful of small
/// colored dots fly outward from center and fade, driven by a single
/// [AnimationController] -- no external confetti package. Plays once on
/// mount.
class _ConfettiBurst extends StatefulWidget {
  const _ConfettiBurst({this.particleCount = 14, required this.colors});

  final int particleCount;
  final List<Color> colors;

  @override
  State<_ConfettiBurst> createState() => _ConfettiBurstState();
}

class _ConfettiBurstState extends State<_ConfettiBurst>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..forward();
  late final List<_ConfettiParticle> _particles = _generateParticles();

  List<_ConfettiParticle> _generateParticles() {
    final random = Random();
    return List.generate(widget.particleCount, (i) {
      final baseAngle = (2 * pi / widget.particleCount) * i;
      final angle = baseAngle + (random.nextDouble() - 0.5) * 0.6;
      final distance = 42.0 + random.nextDouble() * 40;
      final size = 6.0 + random.nextDouble() * 8;
      final color = widget.colors[random.nextInt(widget.colors.length)];
      return _ConfettiParticle(
        angle: angle,
        distance: distance,
        size: size,
        color: color,
      );
    });
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
      builder: (context, _) {
        final t = Curves.easeOut.transform(_controller.value);
        final fade = (1 - t).clamp(0.0, 1.0);
        return Stack(
          alignment: Alignment.center,
          children: [
            for (final particle in _particles)
              Opacity(
                opacity: fade,
                child: Transform.translate(
                  offset: Offset(
                    cos(particle.angle) * particle.distance * t,
                    sin(particle.angle) * particle.distance * t,
                  ),
                  child: Transform.scale(
                    scale: (1 - t * 0.35).clamp(0.0, 1.0),
                    child: Container(
                      width: particle.size,
                      height: particle.size,
                      decoration: BoxDecoration(
                        color: particle.color,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

/// Full-screen "Great Job!" completion state shown once every pair is
/// matched: a star-burst icon with its own confetti, the reward star count
/// via [AnimatedStarBadge], and one large button to leave the lesson.
class _CompletionOverlay extends StatelessWidget {
  const _CompletionOverlay({
    required this.languageCode,
    required this.stars,
    required this.onDone,
  });

  final String languageCode;
  final int stars;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Positioned.fill(
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0, end: 1),
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutBack,
        builder: (context, t, child) {
          final clamped = t.clamp(0.0, 1.0);
          return Opacity(
            opacity: clamped,
            child: Transform.scale(scale: 0.85 + 0.15 * clamped, child: child),
          );
        },
        child: Container(
          color: Colors.black.withValues(alpha: 0.45),
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 32),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppTheme.radiusLarge),
              boxShadow: AppShadows.floating(AppColors.accent),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 140,
                  height: 140,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _ConfettiBurst(
                        particleCount: 26,
                        colors: const [
                          AppColors.accent,
                          AppColors.secondary,
                          AppColors.primary,
                          Color(0xFFFF6F91),
                        ],
                      ),
                      const Icon(
                        Icons.emoji_events_rounded,
                        color: AppColors.accent,
                        size: 76,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _Strings.greatJob(languageCode),
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _Strings.allDone(languageCode),
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                const SizedBox(height: 16),
                AnimatedStarBadge(stars: stars, iconSize: 34),
                const SizedBox(height: 22),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: onDone,
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _Strings.doneButton(languageCode),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
