// Verifies Mission 4's "professionalize owner dashboard" rewrite:
// OwnerAdminScreen must render real numbers sourced from
// [platformStatsProvider] and must never show the old hardcoded mock
// figures/revenue chart that used to live in `_MockPlatformStats`.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/features/dashboard/owner_admin_screen.dart';
import 'package:nova_academy/l10n/app_localizations.dart';
import 'package:nova_academy/models/user_model.dart';
import 'package:nova_academy/providers/auth_providers.dart';
import 'package:nova_academy/providers/platform_stats_provider.dart';

const _ownerModel = UserModel(
  id: 'owner-uid',
  email: 'lionzawlwin@gmail.com',
  role: UserRole.owner,
  subscriptionTier: SubscriptionTier.premium,
);

const _fixedStats = PlatformStats(
  totalUsers: 42,
  totalChildren: 17,
  totalModules: 8,
  premiumSubscribers: 3,
);

Future<void> _pumpOwnerAdminScreen(
  WidgetTester tester, {
  required AsyncValue<PlatformStats> platformStats,
}) async {
  final container = ProviderContainer(
    overrides: [
      currentUserModelProvider.overrideWith(
        (ref) => Stream<UserModel?>.value(_ownerModel),
      ),
      platformStatsProvider.overrideWith((ref) async {
        return platformStats.when(
          data: (stats) => stats,
          loading: () => Future<PlatformStats>.delayed(const Duration(days: 1)),
          error: (err, stack) => Future<PlatformStats>.error(err, stack),
        );
      }),
    ],
  );
  addTearDown(container.dispose);

  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: const MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: OwnerAdminScreen(),
      ),
    ),
  );
}

void main() {
  testWidgets(
    'renders real platform stats and never renders the old mock figures',
    (WidgetTester tester) async {
      await _pumpOwnerAdminScreen(
        tester,
        platformStats: const AsyncValue.data(_fixedStats),
      );
      await tester.pumpAndSettle();

      // --- Real numbers from the overridden provider are shown. ---------
      expect(find.text('42'), findsOneWidget);
      expect(find.text('17'), findsOneWidget);
      expect(find.text('8'), findsOneWidget);
      expect(find.text('3'), findsOneWidget);

      // --- The old hardcoded mock figures/revenue UI must be gone. ------
      expect(find.text('12480'), findsNothing);
      expect(find.text('12,480'), findsNothing);
      expect(find.text('4280'), findsNothing);
      expect(find.text('\$4,280.00'), findsNothing);
      expect(find.text('3150'), findsNothing);
      expect(find.text('3,150'), findsNothing);
      expect(find.textContaining('Monthly Revenue'), findsNothing);
      expect(
        find.textContaining('Static demo data'),
        findsNothing,
        reason: 'the old ownerMockDataNotice text must be gone',
      );
    },
  );

  testWidgets('shows a loading placeholder while stats are loading', (
    WidgetTester tester,
  ) async {
    await _pumpOwnerAdminScreen(
      tester,
      platformStats: const AsyncValue.loading(),
    );
    await tester.pump();

    expect(find.text('…'), findsWidgets);
  });

  testWidgets('shows an error placeholder when the stats provider errors', (
    WidgetTester tester,
  ) async {
    await _pumpOwnerAdminScreen(
      tester,
      platformStats: AsyncValue.error(Exception('boom'), StackTrace.current),
    );
    await tester.pumpAndSettle();

    expect(find.text('—'), findsWidgets);
  });
}
