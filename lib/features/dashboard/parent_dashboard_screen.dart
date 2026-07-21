import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/app_constants.dart';
import '../../core/services/ab_variant_service.dart';
import '../../core/utils/grade_localization.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/child_model.dart';
import '../../models/user_model.dart';
import '../../providers/auth_providers.dart';
import '../../providers/billing_providers.dart';
import '../../providers/children_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/mock_state_providers.dart';
import '../../routing/app_router.dart';
import '../children/add_child_dialog.dart';

/// The parent's home base: paywall status, their children's profiles, and
/// a lightweight "invite a teacher" flow.
class ParentDashboardScreen extends ConsumerWidget {
  const ParentDashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final userModel = ref.watch(currentUserModelProvider).valueOrNull;
    final isPremiumEntitled = ref.watch(isPremiumEntitledProvider);
    final totalChildrenStars =
        ref.watch(childrenForCurrentUserProvider).valueOrNull?.fold<int>(
          0,
          (sum, child) => sum + child.totalStars,
        ) ??
        0;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dashboardParentTitle),
        actions: [
          const LanguageToggleButton(),
          IconButton(
            tooltip: l10n.profileSwitch,
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push(AppRoutes.parentSettings),
          ),
        ],
      ),
      body: userModel == null
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _PaywallCard(
                  userModel: userModel,
                  isPremiumEntitled: isPremiumEntitled,
                  totalChildrenStars: totalChildrenStars,
                ),
                const SizedBox(height: 24),
                _ChildrenSection(parentId: userModel.id),
                const SizedBox(height: 24),
                const _InviteTeacherSection(),
                const SizedBox(height: 16),
              ],
            ),
    );
  }
}

class _PaywallCard extends StatelessWidget {
  const _PaywallCard({
    required this.userModel,
    required this.isPremiumEntitled,
    this.totalChildrenStars = 0,
  });

  final UserModel userModel;
  final bool isPremiumEntitled;
  final int totalChildrenStars;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isOwnerAccess =
        userModel.role == UserRole.owner || isOwnerEmail(userModel.email);

    if (isOwnerAccess) {
      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amber.shade700, Colors.amber.shade400],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.workspace_premium_rounded,
              color: Colors.white,
              size: 36,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                l10n.subscriptionOwnerAllAccess,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return _PaywallComparisonCard(
      isPremiumEntitled: isPremiumEntitled,
      uid: userModel.id,
      totalChildrenStars: totalChildrenStars,
    );
  }
}

class _PaywallComparisonCard extends StatelessWidget {
  const _PaywallComparisonCard({
    required this.isPremiumEntitled,
    required this.uid,
    this.totalChildrenStars = 0,
  });

  final bool isPremiumEntitled;
  final String uid;
  final int totalChildrenStars;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final features = [
      l10n.paywallFeatureAllSubjects,
      l10n.paywallFeatureUnlimitedChildren,
      l10n.paywallFeatureProgressAnalytics,
      l10n.paywallFeaturePrioritySupport,
    ];

    // Free, client-side-only A/B test on paywall copy -- see
    // ab_variant_service.dart's doc comment. Purely a display-copy
    // experiment; the onPressed behavior below is identical for both
    // variants and grants nothing.
    final ctaVariant = abVariantFor(uid, 'paywall_cta_v1');
    final headline = ctaVariant == 'b'
        ? l10n.subscriptionPaywallHeadlineB(totalChildrenStars)
        : l10n.subscriptionPaywallHeadlineA;
    final ctaLabel = ctaVariant == 'b'
        ? l10n.subscriptionPaywallCtaLabelB
        : l10n.subscriptionPaywallCtaLabelA;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headline,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              l10n.subscriptionPaywallMessage,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _PlanColumn(
                    title: l10n.subscriptionFreePlan,
                    isCurrent: !isPremiumEntitled,
                    featureIncluded: const [true, false, false, false],
                    features: features,
                    color: theme.colorScheme.outline,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _PlanColumn(
                    title: l10n.subscriptionPremiumPlan,
                    isCurrent: isPremiumEntitled,
                    featureIncluded: const [true, true, true, true],
                    features: features,
                    color: theme.colorScheme.primary,
                    highlighted: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              icon: const Icon(Icons.rocket_launch_rounded),
              label: Text(ctaLabel),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                minimumSize: const Size.fromHeight(48),
              ),
              onPressed: () {
                // NOTE: still a stub -- no real checkout/entitlement backend
                // exists yet. This intentionally does NOT flip
                // subscriptionTier via a client-side self-write (that would
                // let anyone self-grant premium for free); it only measures
                // which copy variant earns more taps.
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(l10n.actionComingSoon)),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _PlanColumn extends StatelessWidget {
  const _PlanColumn({
    required this.title,
    required this.isCurrent,
    required this.featureIncluded,
    required this.features,
    required this.color,
    this.highlighted = false,
  });

  final String title;
  final bool isCurrent;
  final List<bool> featureIncluded;
  final List<String> features;
  final Color color;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: highlighted ? color.withValues(alpha: 0.08) : null,
        border: Border.all(
          color: color.withValues(alpha: highlighted ? 0.6 : 0.25),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          if (isCurrent)
            Padding(
              padding: const EdgeInsets.only(top: 4, bottom: 8),
              child: Chip(
                label: Text(
                  l10n.subscriptionCurrentPlan,
                  style: const TextStyle(fontSize: 11),
                ),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            )
          else
            const SizedBox(height: 12),
          for (var i = 0; i < features.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    featureIncluded[i]
                        ? Icons.check_circle_rounded
                        : Icons.remove_circle_outline,
                    size: 16,
                    color: featureIncluded[i]
                        ? Colors.green.shade600
                        : theme.colorScheme.outline,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(features[i], style: theme.textTheme.bodySmall),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _ChildrenSection extends ConsumerWidget {
  const _ChildrenSection({required this.parentId});

  final String parentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final childrenAsync = ref.watch(childrenForCurrentUserProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                l10n.dashboardMyChildren,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton.icon(
              icon: const Icon(Icons.add_rounded),
              label: Text(l10n.profileAddChild),
              onPressed: () =>
                  showAddChildDialog(context, ref, parentId: parentId),
            ),
          ],
        ),
        const SizedBox(height: 8),
        childrenAsync.when(
          data: (children) {
            if (children.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  l10n.profileEmptyState,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              );
            }
            // Client-side-only rank among *this parent's own children* by
            // totalStars, descending -- zero new reads (reuses the already
            // -fetched list) and no cross-family leaderboard (that would
            // need a security-rule change or Cloud Functions, out of scope
            // here).
            final rankedByStars = [...children]
              ..sort((a, b) => b.totalStars.compareTo(a.totalStars));
            final rankByChildId = <String, int>{
              for (var i = 0; i < rankedByStars.length; i++)
                rankedByStars[i].id: i + 1,
            };
            return Column(
              children: children
                  .map(
                    (child) => _ChildTile(
                      child: child,
                      rank: rankByChildId[child.id] ?? 1,
                      totalSiblings: children.length,
                    ),
                  )
                  .toList(),
            );
          },
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (_, _) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(l10n.actionError, style: theme.textTheme.bodyMedium),
          ),
        ),
      ],
    );
  }
}

class _ChildTile extends ConsumerWidget {
  const _ChildTile({
    required this.child,
    this.rank = 1,
    this.totalSiblings = 1,
  });

  final ChildModel child;
  final int rank;
  final int totalSiblings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: theme.colorScheme.primaryContainer,
          child: Text(
            child.aliasName.isNotEmpty ? child.aliasName[0].toUpperCase() : '?',
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Row(
          children: [
            Flexible(
              child: Text(child.aliasName, overflow: TextOverflow.ellipsis),
            ),
            if (totalSiblings > 1) ...[
              const SizedBox(width: 6),
              Tooltip(
                message: l10n.dashboardSiblingRankTooltip(rank),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    '#$rank',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${gradeLabel(l10n, child.currentGrade)}  •  ${child.totalStars} ${l10n.dashboardTotalStars}',
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Icon(
                  Icons.local_fire_department_rounded,
                  size: 14,
                  color: Colors.orange.shade700,
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    child.currentStreakDays > 0
                        ? l10n.dashboardCurrentStreak(child.currentStreakDays)
                        : l10n.dashboardStreakStartPrompt,
                    style: theme.textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              tooltip: l10n.actionEdit,
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => _showEditDialog(context, ref, child),
            ),
            IconButton(
              tooltip: l10n.actionDelete,
              icon: const Icon(Icons.delete_outline),
              onPressed: () => _confirmDelete(context, ref, child),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showEditDialog(
    BuildContext context,
    WidgetRef ref,
    ChildModel child,
  ) async {
    final l10n = AppLocalizations.of(context);
    final aliasController = TextEditingController(text: child.aliasName);
    Grade selectedGrade = child.currentGrade;

    final saved = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => StatefulBuilder(
        builder: (dialogContext, setState) => AlertDialog(
          title: Text(l10n.actionEdit),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: aliasController,
                decoration: InputDecoration(
                  labelText: l10n.profileAliasName,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<Grade>(
                initialValue: selectedGrade,
                decoration: InputDecoration(
                  labelText: l10n.profileChooseGrade,
                  border: const OutlineInputBorder(),
                ),
                items: Grade.values
                    .map(
                      (g) => DropdownMenuItem(
                        value: g,
                        child: Text(gradeLabel(l10n, g)),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) setState(() => selectedGrade = value);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(l10n.actionCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              child: Text(l10n.actionSave),
            ),
          ],
        ),
      ),
    );

    if (saved != true) return;
    try {
      await updateChild(
        ref.read(firestoreProvider),
        child.copyWith(
          aliasName: aliasController.text.trim(),
          currentGrade: selectedGrade,
        ),
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(l10n.profileUpdated)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(l10n.actionError)));
      }
    }
  }

  Future<void> _confirmDelete(
    BuildContext context,
    WidgetRef ref,
    ChildModel child,
  ) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.actionDelete),
        content: Text(l10n.childDeleteConfirmMessage(child.aliasName)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(dialogContext).colorScheme.error,
            ),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.actionDelete),
          ),
        ],
      ),
    );

    if (confirmed != true) return;
    try {
      await deleteChild(ref.read(firestoreProvider), child.id);
      if (context.mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(l10n.profileDeleted)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text(l10n.actionError)));
      }
    }
  }
}

class _InviteTeacherSection extends ConsumerStatefulWidget {
  const _InviteTeacherSection();

  @override
  ConsumerState<_InviteTeacherSection> createState() =>
      _InviteTeacherSectionState();
}

class _InviteTeacherSectionState extends ConsumerState<_InviteTeacherSection> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _invite() {
    final l10n = AppLocalizations.of(context);
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final email = _controller.text.trim();

    ref
        .read(invitedTeacherEmailsProvider.notifier)
        .update((list) => [...list, email]);
    _controller.clear();

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(l10n.inviteSentMessage(email))));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final invited = ref.watch(invitedTeacherEmailsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.dashboardInviteTeacher,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Form(
          key: _formKey,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: l10n.inviteTeacherHint,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    final v = value?.trim() ?? '';
                    final validEmail = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                    if (!validEmail.hasMatch(v)) return l10n.authInvalidEmail;
                    return null;
                  },
                ),
              ),
              const SizedBox(width: 10),
              FilledButton(onPressed: _invite, child: Text(l10n.actionInvite)),
            ],
          ),
        ),
        const SizedBox(height: 12),
        if (invited.isEmpty)
          Text(
            l10n.inviteEmptyState,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          )
        else
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: invited
                .map(
                  (email) => Chip(
                    avatar: const Icon(Icons.hourglass_top_rounded, size: 16),
                    label: Text('$email  •  ${l10n.inviteStatusPending}'),
                  ),
                )
                .toList(),
          ),
      ],
    );
  }
}
