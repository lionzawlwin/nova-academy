import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/theme/app_theme.dart';
import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/user_model.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/auth_providers.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/locale_provider.dart';
import '../children/add_child_dialog.dart';
import '../children/edit_child_dialog.dart';

/// The Netflix-style "Who's learning?" picker every authenticated session
/// starts on. Picking a tile just writes to [activeProfileProvider]; the
/// router's redirect (lib/routing/app_router.dart) does the actual
/// navigation from there.
class ProfileSelectionScreen extends ConsumerWidget {
  const ProfileSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final userModel = ref.watch(currentUserModelProvider).valueOrNull;
    final childrenAsync = ref.watch(childrenForCurrentUserProvider);

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: AppGradients.hero(theme.colorScheme),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Top row: title on the left, language switcher + logout
                // fixed in the top-right corner, always reachable before a
                // profile is even picked.
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        l10n.profileSelectTitle,
                        style: theme.textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const _LanguageSwitcher(),
                    const SizedBox(width: 4),
                    IconButton(
                      tooltip: l10n.authLogout,
                      icon: const Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () async {
                        ref.read(activeProfileProvider.notifier).state = null;
                        ref.read(gatekeeperUnlockProvider.notifier).state =
                            null;
                        await ref.read(firebaseAuthProvider).signOut();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    l10n.profileSelectSubtitle,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 22,
                      runSpacing: 22,
                      children: [
                        if (userModel != null &&
                            userModel.role != UserRole.student)
                          _SelfProfileTile(role: userModel.role),
                        ...childrenAsync.maybeWhen(
                          data: (children) => children
                              .map(
                                (child) => _ChildProfileTile(
                                  child: child,
                                  // Edit/delete are parent/owner actions
                                  // only. childrenForCurrentUserProvider
                                  // also surfaces children linked to a
                                  // teacher (see that provider's doc
                                  // comment) -- Firestore rules happen to
                                  // already permit a linked teacher to
                                  // write those documents, but nothing in
                                  // the app exposes that today, and this
                                  // menu shouldn't be the first place a
                                  // teacher gets a way to rename or delete
                                  // a family's child profile.
                                  canManage:
                                      userModel != null &&
                                      (userModel.role == UserRole.owner ||
                                          child.parentId == userModel.id),
                                ),
                              )
                              .toList(),
                          orElse: () => const [],
                        ),
                        if (userModel != null &&
                            (userModel.role == UserRole.parent ||
                                userModel.role == UserRole.owner))
                          _AddChildTile(parentId: userModel.id),
                      ],
                    ),
                  ),
                ),
                if (childrenAsync.maybeWhen(
                      data: (c) => c.isEmpty,
                      orElse: () => false,
                    ) &&
                    userModel != null &&
                    userModel.role != UserRole.teacher)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      l10n.profileEmptyState,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
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

/// A compact English/Burmese toggle that updates [localeProvider]
/// instantly -- no confirmation, no page reload. Kept prominent and
/// reachable before any profile is picked since the whole family may
/// share one device across both languages.
class _LanguageSwitcher extends ConsumerWidget {
  const _LanguageSwitcher();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final locale = ref.watch(localeProvider);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _LanguagePill(
            label: l10n.localeEnglish,
            selected: locale.languageCode == 'en',
            onTap: () =>
                ref.read(localeProvider.notifier).setLocale(const Locale('en')),
          ),
          _LanguagePill(
            label: l10n.localeMyanmar,
            selected: locale.languageCode == 'my',
            onTap: () =>
                ref.read(localeProvider.notifier).setLocale(const Locale('my')),
          ),
        ],
      ),
    );
  }
}

class _LanguagePill extends StatelessWidget {
  const _LanguagePill({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(999),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            label,
            maxLines: 1,
            style: TextStyle(
              color: selected ? AppColors.primary : Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

/// Shared visual chrome for every tile in the picker (self, child, or
/// "add"). Presses give a light bounce; labels use [FittedBox] rather than
/// a fixed height + ellipsis so a long Burmese name or role label shrinks
/// to fit instead of ever overflowing the tile.
class _ProfileTileShell extends StatefulWidget {
  const _ProfileTileShell({
    required this.label,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
    this.onLongPress,
  });

  final String label;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  /// Only ever wired from [_ChildProfileTile] -- the "Continue as Owner"/
  /// self-profile tile and the "Add Child" tile never pass this, so
  /// long-pressing them does nothing rather than accidentally exposing
  /// edit/delete on an account tile.
  final VoidCallback? onLongPress;

  @override
  State<_ProfileTileShell> createState() => _ProfileTileShellState();
}

class _ProfileTileShellState extends State<_ProfileTileShell> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      child: AnimatedScale(
        scale: _pressed ? 0.93 : 1.0,
        duration: const Duration(milliseconds: 120),
        curve: Curves.easeOut,
        child: SizedBox(
          width: 148,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 108,
                height: 108,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [widget.color, widget.color.withValues(alpha: 0.6)],
                  ),
                  borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                  boxShadow: AppShadows.floating(widget.color),
                ),
                child: Icon(widget.icon, color: Colors.white, size: 46),
              ),
              const SizedBox(height: 10),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.label,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.subtitle,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelfProfileTile extends ConsumerWidget {
  const _SelfProfileTile({required this.role});

  final UserRole role;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    return _ProfileTileShell(
      label: l10n.profileContinueAs(roleLabel(l10n, role)),
      subtitle: roleDescription(l10n, role),
      icon: role == UserRole.owner
          ? Icons.workspace_premium_rounded
          : role == UserRole.teacher
          ? Icons.school_rounded
          : Icons.family_restroom_rounded,
      color: role == UserRole.owner ? AppColors.accent : AppColors.primary,
      onTap: () =>
          ref.read(activeProfileProvider.notifier).state = const SelfProfile(),
    );
  }
}

class _ChildProfileTile extends ConsumerWidget {
  const _ChildProfileTile({required this.child, required this.canManage});

  final ChildModel child;

  /// Whether the current viewer may edit/delete this specific child --
  /// true only for the parent who created the profile, or the owner
  /// account. See the call site's doc comment for why a linked teacher
  /// (who can also see this tile) does not get this menu.
  final bool canManage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final tile = _ProfileTileShell(
      label: child.aliasName,
      subtitle: gradeLabel(l10n, child.currentGrade),
      icon: Icons.emoji_emotions_rounded,
      color: AppColors.secondary,
      onTap: () => ref.read(activeProfileProvider.notifier).state =
          StudentProfile(child),
      onLongPress: canManage
          ? () => _showChildActionsMenu(context, ref, child)
          : null,
    );
    if (!canManage) return tile;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        tile,
        // A visible affordance for the same menu long-press opens --
        // long-press alone is easy to miss, especially for a parent who
        // has never used this screen before.
        Positioned(
          top: -4,
          right: -4,
          child: _ChildActionsButton(
            onTap: () => _showChildActionsMenu(context, ref, child),
          ),
        ),
      ],
    );
  }
}

/// The small circular "more" affordance in the corner of a [_ChildProfileTile].
class _ChildActionsButton extends StatelessWidget {
  const _ChildActionsButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 3,
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.all(6),
          child: Icon(
            Icons.more_vert_rounded,
            size: 16,
            color: AppColors.charcoalNavy,
          ),
        ),
      ),
    );
  }
}

/// Bottom sheet offering "Edit" and "Delete" for [child] -- opened either by
/// long-pressing a [_ChildProfileTile] or tapping its [_ChildActionsButton]
/// affordance. Never reachable from [_SelfProfileTile] (the "Continue as
/// Owner"/self/parent/teacher tile) or [_AddChildTile], since neither of
/// those wires an `onLongPress`/calls this function.
void _showChildActionsMenu(
  BuildContext context,
  WidgetRef ref,
  ChildModel child,
) {
  final l10n = AppLocalizations.of(context);
  showModalBottomSheet<void>(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (sheetContext) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                child.aliasName,
                style: Theme.of(
                  sheetContext,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: Text(l10n.actionEdit),
            onTap: () {
              Navigator.of(sheetContext).pop();
              showEditChildDialog(context, ref, child);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.delete_outline,
              color: Theme.of(sheetContext).colorScheme.error,
            ),
            title: Text(
              l10n.actionDelete,
              style: TextStyle(color: Theme.of(sheetContext).colorScheme.error),
            ),
            onTap: () {
              Navigator.of(sheetContext).pop();
              confirmDeleteChild(context, ref, child);
            },
          ),
          const SizedBox(height: 8),
        ],
      ),
    ),
  );
}

class _AddChildTile extends ConsumerWidget {
  const _AddChildTile({required this.parentId});

  final String parentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      onTap: () => showAddChildDialog(context, ref, parentId: parentId),
      child: SizedBox(
        width: 148,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 108,
              height: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.5),
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
            const SizedBox(height: 10),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                l10n.profileAddChild,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
