import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_constants.dart';
import '../../core/services/curriculum_ingestion_service.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/user_model.dart';
import '../../providers/auth_providers.dart';
import '../../providers/curriculum_sync_provider.dart';
import '../../providers/firebase_providers.dart';
import '../../providers/platform_stats_provider.dart';

/// Owner-only platform snapshot. Reachable only when [isOwnerEmail] is true
/// for the signed-in account -- guarded both by the router redirect (see
/// lib/routing/app_router.dart) and defensively here, since this screen
/// shows account-wide figures that must never leak to a non-owner.
class OwnerAdminScreen extends ConsumerWidget {
  const OwnerAdminScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final userModel = ref.watch(currentUserModelProvider).valueOrNull;
    final isOwner =
        userModel?.role == UserRole.owner || isOwnerEmail(userModel?.email);

    if (!isOwner) {
      // Defense in depth: the router should never let a non-owner land
      // here, but never render owner-only figures if it somehow happens.
      return Scaffold(
        appBar: AppBar(
          title: Text(l10n.dashboardOwnerTitle),
          actions: const [LanguageToggleButton()],
        ),
        body: Center(child: Text(l10n.gatekeeperParentTeacherOnly)),
      );
    }

    final theme = Theme.of(context);
    final locale = Localizations.localeOf(context).toString();
    final numberFormat = NumberFormat.decimalPattern(locale);
    final platformStats = ref.watch(platformStatsProvider);
    // Value intentionally ignored: watching triggers the provider's
    // one-time-per-session background curriculum sync side effect (see
    // lib/providers/curriculum_sync_provider.dart). Replaces the old
    // manual "Seed Demo Data" button.
    ref.watch(curriculumAutoSyncProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.dashboardOwnerTitle),
        actions: const [LanguageToggleButton()],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.amber.shade700, Colors.deepPurple.shade400],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(Icons.shield_rounded, color: Colors.white, size: 32),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    l10n.subscriptionOwnerAllAccess,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            l10n.dashboardAnalytics,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) {
              final isNarrow = constraints.maxWidth < 520;

              String valueFor(int Function(PlatformStats stats) selector) {
                return platformStats.when(
                  data: (stats) => numberFormat.format(selector(stats)),
                  loading: () => '…',
                  error: (_, _) => '—',
                );
              }

              final cards = [
                _StatCard(
                  icon: Icons.people_alt_rounded,
                  label: l10n.ownerTotalUsers,
                  value: valueFor((stats) => stats.totalUsers),
                  color: Colors.indigo,
                ),
                _StatCard(
                  icon: Icons.child_care_rounded,
                  label: l10n.ownerTotalChildren,
                  value: valueFor((stats) => stats.totalChildren),
                  color: Colors.teal,
                ),
                _StatCard(
                  icon: Icons.menu_book_rounded,
                  label: l10n.ownerTotalModules,
                  value: valueFor((stats) => stats.totalModules),
                  color: Colors.deepOrange,
                ),
                _StatCard(
                  icon: Icons.workspace_premium_rounded,
                  label: l10n.ownerPremiumSubscribers,
                  value: valueFor((stats) => stats.premiumSubscribers),
                  color: Colors.orange,
                ),
              ];
              return isNarrow
                  ? Column(
                      children: cards
                          .map(
                            (c) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: c,
                            ),
                          )
                          .toList(),
                    )
                  : Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: cards
                          .map(
                            (c) => SizedBox(
                              width:
                                  (constraints.maxWidth - 36) /
                                  2, // 2 columns, 12px gaps
                              child: c,
                            ),
                          )
                          .toList(),
                    );
            },
          ),
          const SizedBox(height: 24),
          const _CurriculumIngestionCard(),
        ],
      ),
    );
  }
}

/// Lets the owner paste a JSON array of [LearningModuleModel]-shaped
/// objects and publish them straight to the `LearningModules` Firestore
/// collection -- no Dart code change or app redeploy needed to add new
/// curriculum content. `ConsumerStatefulWidget` (rather than folding this
/// into [OwnerAdminScreen] itself) keeps the paste-box/parse-result state
/// local to this card without turning the whole screen, which is otherwise
/// a plain `ConsumerWidget`, into a `StatefulWidget`.
class _CurriculumIngestionCard extends ConsumerStatefulWidget {
  const _CurriculumIngestionCard();

  @override
  ConsumerState<_CurriculumIngestionCard> createState() =>
      _CurriculumIngestionCardState();
}

class _CurriculumIngestionCardState
    extends ConsumerState<_CurriculumIngestionCard> {
  final _textController = TextEditingController();
  ParsedCurriculumBatch? _parsed;
  bool _isPublishing = false;
  int? _publishedCount;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _onPublishPressed() async {
    final result = parseLearningModulesJson(_textController.text);
    setState(() {
      _parsed = result;
      _publishedCount = null;
    });

    if (result.hasErrors || result.modules.isEmpty) {
      // Block ingestion until every row in the paste is valid -- partial
      // publishes would leave the caller unsure which rows actually made
      // it to Firestore.
      return;
    }

    setState(() => _isPublishing = true);
    try {
      final written = await ingestLearningModules(
        ref.read(firestoreProvider),
        result.modules,
      );
      if (!mounted) return;
      setState(() {
        _publishedCount = written;
        _parsed = null;
        _textController.clear();
      });
    } finally {
      if (mounted) setState(() => _isPublishing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final parsed = _parsed;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.4,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.ownerCurriculumIngestionTitle,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _textController,
            minLines: 6,
            maxLines: 16,
            decoration: InputDecoration(
              hintText: l10n.ownerCurriculumIngestionHint,
              border: const OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: FilledButton(
              onPressed: _isPublishing ? null : _onPublishPressed,
              child: _isPublishing
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(l10n.ownerCurriculumIngestionButton),
            ),
          ),
          if (parsed != null && parsed.hasErrors) ...[
            const SizedBox(height: 12),
            for (final error in parsed.errors)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  error,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
          ],
          if (_publishedCount != null) ...[
            const SizedBox(height: 12),
            Text(
              l10n.ownerCurriculumIngestionSuccess(_publishedCount!),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: Colors.green.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 10),
          Text(
            value,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        ],
      ),
    );
  }
}
