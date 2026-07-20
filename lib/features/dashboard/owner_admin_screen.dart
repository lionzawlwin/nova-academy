import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/constants/app_constants.dart';
import '../../core/services/seed_service.dart';
import '../../core/widgets/language_toggle_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/user_model.dart';
import '../../providers/auth_providers.dart';
import '../../providers/firebase_providers.dart';

/// Static mock figures for the platform overview. Clearly labelled as
/// demo data (see [AppLocalizations.ownerMockDataNotice]) -- there is no
/// billing backend on the Spark free tier yet.
class _MockPlatformStats {
  const _MockPlatformStats._();

  static const int totalActiveUsers = 12480;
  static const double monthlyRevenueUsd = 4280;
  static const int premiumSubscribers = 3150;
  static const List<double> monthlyRevenueTrend = [
    1200,
    1850,
    2400,
    3100,
    3650,
    4280,
  ];
}

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
    final currencyFormat = NumberFormat.simpleCurrency(locale: 'en_US');

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
          const _SeedDemoDataCard(),
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
              final cards = [
                _StatCard(
                  icon: Icons.people_alt_rounded,
                  label: l10n.ownerTotalUsers,
                  value: numberFormat.format(
                    _MockPlatformStats.totalActiveUsers,
                  ),
                  color: Colors.indigo,
                ),
                _StatCard(
                  icon: Icons.payments_rounded,
                  label: l10n.ownerTotalRevenue,
                  value: currencyFormat.format(
                    _MockPlatformStats.monthlyRevenueUsd,
                  ),
                  color: Colors.teal,
                ),
                _StatCard(
                  icon: Icons.workspace_premium_rounded,
                  label: l10n.ownerPremiumSubscribers,
                  value: numberFormat.format(
                    _MockPlatformStats.premiumSubscribers,
                  ),
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
                  : Row(
                      children: cards
                          .map(
                            (c) => Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                child: c,
                              ),
                            ),
                          )
                          .toList(),
                    );
            },
          ),
          const SizedBox(height: 20),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 24, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.ownerTotalRevenue,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 160,
                    child: LineChart(
                      LineChartData(
                        gridData: const FlGridData(show: false),
                        titlesData: const FlTitlesData(show: false),
                        borderData: FlBorderData(show: false),
                        lineTouchData: const LineTouchData(enabled: false),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              for (
                                var i = 0;
                                i <
                                    _MockPlatformStats
                                        .monthlyRevenueTrend
                                        .length;
                                i++
                              )
                                FlSpot(
                                  i.toDouble(),
                                  _MockPlatformStats.monthlyRevenueTrend[i],
                                ),
                            ],
                            isCurved: true,
                            color: theme.colorScheme.primary,
                            barWidth: 3,
                            dotData: const FlDotData(show: false),
                            belowBarData: BarAreaData(
                              show: true,
                              color: theme.colorScheme.primary.withValues(
                                alpha: 0.15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline_rounded,
                  size: 18,
                  color: theme.colorScheme.outline,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    l10n.ownerMockDataNotice,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
              ],
            ),
          ),
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

/// Owner-only control that runs [seedDatabase] against the live Firestore
/// instance. Only ever rendered from [OwnerAdminScreen], which already
/// gates its entire body on [isOwnerEmail] -- so by construction this
/// button is only ever visible/usable for the owner account.
class _SeedDemoDataCard extends ConsumerStatefulWidget {
  const _SeedDemoDataCard();

  @override
  ConsumerState<_SeedDemoDataCard> createState() => _SeedDemoDataCardState();
}

class _SeedDemoDataCardState extends ConsumerState<_SeedDemoDataCard> {
  bool _isSeeding = false;

  Future<void> _confirmAndSeed() async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(l10n.ownerSeedDemoDataConfirmTitle),
        content: Text(l10n.ownerSeedDemoDataConfirmMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(l10n.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(l10n.actionConfirm),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    setState(() => _isSeeding = true);
    final messenger = ScaffoldMessenger.of(context);
    final theme = Theme.of(context);
    try {
      final firestore = ref.read(firestoreProvider);
      final summary = await seedDatabase(firestore);
      if (!mounted) return;
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(l10n.ownerSeedDemoDataSuccess(summary.totalWritten)),
          ),
        );
    } catch (e) {
      if (!mounted) return;
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(l10n.ownerSeedDemoDataError('$e')),
            backgroundColor: theme.colorScheme.error,
          ),
        );
    } finally {
      if (mounted) setState(() => _isSeeding = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.dataset_rounded, color: theme.colorScheme.primary),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    l10n.ownerSeedDemoDataTitle,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              l10n.ownerSeedDemoDataDescription,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: _isSeeding ? null : _confirmAndSeed,
                icon: _isSeeding
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.cloud_upload_rounded),
                label: Text(l10n.ownerSeedDemoDataTitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
