import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
/// outlined button. See [GatekeeperEntryIconButton] for the compact,
/// icon-only variant used on the Nursery/KG screen.
class GatekeeperEntryButton extends ConsumerWidget {
  const GatekeeperEntryButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final role = ref.watch(currentUserModelProvider).valueOrNull?.role;

    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: const Icon(Icons.lock_outline_rounded),
        label: Text(l10n.gatekeeperEnterArea),
        onPressed: () => _enterGatedArea(context, ref, role),
      ),
    );
  }
}

/// A compact, icon-only RoleGatekeeper entry point -- used on the
/// Nursery/KG screen, which otherwise keeps text to an absolute minimum.
class GatekeeperEntryIconButton extends ConsumerWidget {
  const GatekeeperEntryIconButton({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final role = ref.watch(currentUserModelProvider).valueOrNull?.role;

    return IconButton(
      tooltip: l10n.gatekeeperEnterArea,
      icon: Icon(Icons.lock_outline_rounded, color: color),
      onPressed: () => _enterGatedArea(context, ref, role),
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
class AnimatedStarBadge extends StatelessWidget {
  const AnimatedStarBadge({
    super.key,
    required this.stars,
    this.iconColor = Colors.amber,
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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = (style ?? theme.textTheme.titleLarge)?.copyWith(
      color: textColor,
      fontWeight: FontWeight.bold,
    );

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: stars.toDouble()),
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOutCubic,
      builder: (context, value, _) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star_rounded, color: iconColor, size: iconSize),
          const SizedBox(width: 4),
          Text('${value.round()}', style: textStyle),
        ],
      ),
    );
  }
}
