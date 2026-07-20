import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/widgets/candy_bevel_surface.dart';
import '../../core/widgets/glossy_badge.dart';
import '../../core/widgets/role_gatekeeper.dart';
import '../../l10n/app_localizations.dart';
import '../../models/user_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/auth_providers.dart';
import '../../routing/app_router.dart';

/// A small icon describing one subject: what it's called, what icon
/// represents it, and what color it's painted in. Shared across all three
/// [HomeTier] screens so a subject always reads the same everywhere it
/// appears (just re-themed to each tier's palette).
class SubjectVisual {
  const SubjectVisual({
    required this.label,
    required this.icon,
    required this.color,
    required this.subjectKey,
  });

  final String label;
  final IconData icon;
  final Color color;

  /// Lowercase key matching [LearningModuleModel.subject]'s convention
  /// (e.g. `'phonics'`, `'math'`, `'stem'`) -- used to look up the real
  /// seeded module for this tile, independent of display [label].
  final String subjectKey;
}

/// Clears the active profile, sending the session back to
/// "Who's learning?" -- used by every student-facing home screen so a
/// child (or a parent testing the student view) can always back out.
class SwitchProfileButton extends ConsumerWidget {
  const SwitchProfileButton({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return IconButton(
      tooltip: l10n.profileSwitch,
      icon: Icon(Icons.swap_horiz_rounded, color: color),
      onPressed: () {
        ref.read(activeProfileProvider.notifier).state = null;
        ref.read(gatekeeperUnlockProvider.notifier).state = null;
      },
    );
  }
}

/// The RoleGatekeeper "grown-ups only" entry point, shown as a full-width
/// [CandyBevelSurface] button -- restyled for Candy Core at the shared
/// shallow bevel preset ([CandyBevelDepth.secondary]) since it's a
/// secondary/utility action on both the Primary and Secondary/IGCSE home
/// screens it appears on, not a tier-dominant hero CTA. See
/// [GatekeeperEntryIconButton] for the compact, icon-only variant used on
/// the Nursery/KG screen.
///
/// Restyle-only: [_enterGatedArea] below -- and the
/// `requestGatedNavigation` call it makes into `role_gatekeeper.dart` --
/// is byte-for-byte the same navigation logic Mission 1 owns; nothing
/// about *when*/*where* this button navigates has changed here.
class GatekeeperEntryButton extends ConsumerWidget {
  const GatekeeperEntryButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final role = ref.watch(currentUserModelProvider).valueOrNull?.role;
    final labelColor = theme.colorScheme.onSurfaceVariant;

    return CandyBevelSurface(
      faceColor: theme.colorScheme.surfaceContainerHighest,
      bevelDepth: CandyBevelDepth.secondary,
      borderRadius: AppTheme.radiusMedium,
      border: Border.all(
        color: theme.colorScheme.outline.withValues(alpha: 0.35),
        width: 1.5,
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      onTap: () => _enterGatedArea(context, ref, role),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.lock_outline_rounded, color: labelColor),
          const SizedBox(width: 10),
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                l10n.gatekeeperEnterArea,
                style: theme.textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: labelColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// A compact, icon-only RoleGatekeeper entry point -- used on the
/// Nursery/KG screen, which otherwise keeps text to an absolute minimum.
/// Restyled as a small circular [CandyBevelSurface] chip so it still reads
/// as a pressable 3D object like every other Candy Core surface, rather
/// than a flat [IconButton] -- restyle-only, same [_enterGatedArea] call
/// as [GatekeeperEntryButton] above.
class GatekeeperEntryIconButton extends ConsumerWidget {
  const GatekeeperEntryIconButton({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final role = ref.watch(currentUserModelProvider).valueOrNull?.role;
    final resolvedColor = color ?? theme.colorScheme.onSurfaceVariant;

    return Tooltip(
      message: l10n.gatekeeperEnterArea,
      child: CandyBevelSurface(
        // A light/white translucent chip (this button's pre-Candy-Core
        // shape had no chip at all) leaves a white lock icon on a light
        // pastel sky-gradient blend measuring well under 2:1 contrast --
        // this dark scrim keeps the "liftable chip" read while giving the
        // icon a background it can actually stand out against (~4.9-5.4:1
        // against the nursery sky gradient's range).
        faceColor: Colors.black.withValues(alpha: 0.45),
        bevelDepth: CandyBevelDepth.secondary,
        borderRadius: 999,
        padding: const EdgeInsets.all(10),
        onTap: () => _enterGatedArea(context, ref, role),
        child: Icon(Icons.lock_outline_rounded, color: resolvedColor, size: 22),
      ),
    );
  }
}

Future<void> _enterGatedArea(
  BuildContext context,
  WidgetRef ref,
  UserRole? role,
) async {
  final targetPath = role != null
      ? defaultDashboardForRole(role)
      : AppRoutes.parentDashboard;
  await requestGatedNavigation(
    context: context,
    ref: ref,
    targetPath: targetPath,
  );
}

/// A star total that animates by counting up from zero whenever [stars]
/// changes, instead of just snapping to the new value.
///
/// Candy Core rebuilds this widget's face on top of [GlossyBadge] (the
/// shared die-cast-badge shape from Task 3) and layers in the "Star/XP
/// counters" motion from the design spec: the digit-by-digit count-up
/// keeps running through the exact same [TweenAnimationBuilder] mechanic
/// this widget always used, then a bounce-overshoot scale pop
/// (`1.0 -> 1.25 -> 1.0`) and a small confetti burst fire once the count
/// lands -- mirroring `_ResultsStarBadge` in `mcq_quiz_screen.dart`, the
/// quiz screen's own local copy of this same motion, generalized here as
/// the one shared implementation every other star total renders through.
class AnimatedStarBadge extends StatefulWidget {
  const AnimatedStarBadge({
    super.key,
    required this.stars,
    this.iconColor = AppColors.goldMedal,
    this.textColor,
    this.iconSize = 26,
    this.style,
  });

  final int stars;
  final Color iconColor;
  final Color? textColor;
  final double iconSize;
  final TextStyle? style;

  @override
  State<AnimatedStarBadge> createState() => _AnimatedStarBadgeState();
}

class _AnimatedStarBadgeState extends State<AnimatedStarBadge>
    with TickerProviderStateMixin {
  late final AnimationController _bounceController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 250),
  );
  late final AnimationController _confettiController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );

  static final Animatable<double> _bouncePop = TweenSequence<double>([
    TweenSequenceItem(
      weight: 40,
      tween: Tween(
        begin: 1.0,
        end: 1.25,
      ).chain(CurveTween(curve: Curves.easeOut)),
    ),
    TweenSequenceItem(
      weight: 60,
      tween: Tween(
        begin: 1.25,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.elasticOut)),
    ),
  ]);

  void _celebrate() {
    if (!mounted) return;
    _bounceController.forward(from: 0);
    _confettiController.forward(from: 0);
  }

  @override
  void dispose() {
    _bounceController.dispose();
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = (widget.style ?? theme.textTheme.titleLarge)?.copyWith(
      color: widget.textColor,
      fontWeight: FontWeight.w900,
      fontFeatures: const [FontFeature.tabularFigures()],
    );
    final badgeSize = widget.iconSize * 2.0;
    final boxSize = badgeSize + 32;

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: widget.stars.toDouble()),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      onEnd: _celebrate,
      builder: (context, value, _) {
        return AnimatedBuilder(
          animation: Listenable.merge([_bounceController, _confettiController]),
          builder: (context, _) {
            return SizedBox(
              width: boxSize,
              height: boxSize,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  _StarBadgeConfetti(progress: _confettiController.value),
                  Transform.scale(
                    scale: _bouncePop.evaluate(_bounceController),
                    child: GlossyBadge(
                      size: badgeSize,
                      faceColor: widget.iconColor,
                      value: Text('${value.round()}', style: textStyle),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

/// A small celebratory confetti burst -- 8 colored squares radiating from
/// the badge's center, falling + fading out over [progress] `0 -> 1`, per
/// the spec's "Star/XP counters" motion section. Deliberately a local
/// private copy rather than a shared export -- `mcq_quiz_screen.dart` owns
/// its own equivalent (`_ConfettiBurst`) for its end-of-quiz results
/// badge; both are small enough that a shared widget would be more
/// indirection than the ~30 lines it saves.
class _StarBadgeConfetti extends StatelessWidget {
  const _StarBadgeConfetti({required this.progress});

  final double progress;

  static const _colors = [
    AppColors.goldMedal,
    AppColors.cherryCrush,
    AppColors.candyPrimary,
    AppColors.deepCobalt,
    AppColors.pathOrange,
    Color(0xFF4ED87A),
  ];

  @override
  Widget build(BuildContext context) {
    if (progress <= 0) return const SizedBox.shrink();
    final t = progress.clamp(0.0, 1.0);
    final opacity = (1 - t).clamp(0.0, 1.0);

    return IgnorePointer(
      child: Stack(
        alignment: Alignment.center,
        children: [
          for (var i = 0; i < 8; i++)
            Builder(
              builder: (context) {
                final angle = (i / 8) * 2 * math.pi;
                final dx = math.cos(angle) * 34 * t;
                final dy = math.sin(angle) * 14 * t + 32 * t * t;
                return Transform.translate(
                  offset: Offset(dx, dy),
                  child: Opacity(
                    opacity: opacity,
                    child: Transform.rotate(
                      angle: angle * t * 2,
                      child: Container(
                        width: 6,
                        height: 6,
                        color: _colors[i % _colors.length],
                      ),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
