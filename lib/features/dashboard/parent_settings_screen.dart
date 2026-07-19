import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/grade_localization.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/active_profile_provider.dart';
import '../../providers/auth_providers.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/locale_provider.dart';

/// A lightweight account settings screen: who's signed in, their role and
/// plan, a language note, and sign out. Kept intentionally small -- a full
/// settings surface is out of scope for this phase.
class ParentSettingsScreen extends ConsumerWidget {
  const ParentSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final userModel = ref.watch(currentUserModelProvider).valueOrNull;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            l10n.settingsAccount,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.email_outlined),
                  title: Text(userModel?.email ?? ''),
                  subtitle: Text(
                    userModel != null ? roleLabel(l10n, userModel.role) : '',
                  ),
                ),
                const Divider(height: 1),
                ListTile(
                  leading: const Icon(Icons.workspace_premium_outlined),
                  title: Text(l10n.subscriptionCurrentPlan),
                  trailing: Text(
                    userModel != null
                        ? (userModel.subscriptionTier.name == 'premium'
                              ? l10n.subscriptionPremiumPlan
                              : l10n.subscriptionFreePlan)
                        : '',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            l10n.settingsLanguage,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: RadioGroup<String>(
              groupValue: Localizations.localeOf(context).languageCode,
              onChanged: (code) {
                if (code != null)
                  ref.read(localeProvider.notifier).setLocale(Locale(code));
              },
              child: Column(
                children: [
                  RadioListTile<String>(
                    value: 'en',
                    title: Text(l10n.localeEnglish),
                    secondary: const Icon(Icons.translate_rounded),
                  ),
                  const Divider(height: 1),
                  RadioListTile<String>(
                    value: 'my',
                    title: Text(l10n.localeMyanmar),
                    secondary: const Icon(Icons.translate_rounded),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 32),
          OutlinedButton.icon(
            icon: const Icon(Icons.logout_rounded),
            label: Text(l10n.authLogout),
            style: OutlinedButton.styleFrom(
              foregroundColor: theme.colorScheme.error,
              side: BorderSide(color: theme.colorScheme.error),
              padding: const EdgeInsets.symmetric(vertical: 14),
              minimumSize: const Size.fromHeight(48),
            ),
            onPressed: () async {
              ref.read(activeProfileProvider.notifier).state = null;
              ref.read(gatekeeperUnlockProvider.notifier).state = null;
              await ref.read(firebaseAuthProvider).signOut();
            },
          ),
        ],
      ),
    );
  }
}
