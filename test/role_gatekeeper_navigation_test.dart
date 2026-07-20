// Surgical reproduction test for the reported bug: "The RoleGatekeeper math
// puzzle dialog is unresponsive on submit -- it doesn't navigate anywhere
// after a student enters the correct answer."
//
// This isolates just the RoleGatekeeper mechanism (showRoleGatekeeperDialog /
// requestGatedNavigation / gatekeeperUnlockProvider) behind a minimal,
// test-local GoRouter that reimplements ONLY the real _redirect()'s
// StudentProfile protected-prefix branch -- no Firebase, no real
// goRouterProvider.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:nova_academy/core/widgets/role_gatekeeper.dart';
import 'package:nova_academy/l10n/app_localizations.dart';
import 'package:nova_academy/models/child_model.dart';
import 'package:nova_academy/providers/active_profile_provider.dart';

const _targetPath = '/parent/dashboard';

/// Mirrors GatekeeperEntryButton's real call site (home_shared_widgets.dart)
/// without dragging in the rest of that screen's dependencies (auth
/// providers, l10n role lookups, etc).
class _EntryScreen extends ConsumerWidget {
  const _EntryScreen();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => requestGatedNavigation(
            context: context,
            ref: ref,
            targetPath: _targetPath,
          ),
          child: const Text('Enter gated area'),
        ),
      ),
    );
  }
}

class _ParentDashboardPlaceholder extends StatelessWidget {
  const _ParentDashboardPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('PARENT DASHBOARD PLACEHOLDER')),
    );
  }
}

/// Builds a test-local GoRouter whose redirect reimplements ONLY the real
/// _redirect()'s StudentProfile protected-prefix logic (app_router.dart,
/// the `if (activeProfile is StudentProfile)` branch, protected-prefix
/// sub-case) -- the exact suspect logic from the bug report.
GoRouter _buildTestRouter(Ref ref) {
  final refresh = _RefreshOnGatekeeperUnlock(ref);
  ref.onDispose(refresh.dispose);

  return GoRouter(
    initialLocation: '/entry',
    refreshListenable: refresh,
    redirect: (context, state) {
      final path = state.matchedLocation;
      final protectedPrefix = protectedPrefixOf(path);
      if (protectedPrefix != null) {
        final unlockedPrefix = ref.read(gatekeeperUnlockProvider);
        return unlockedPrefix == protectedPrefix ? null : '/entry';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/entry',
        builder: (context, state) => const _EntryScreen(),
      ),
      GoRoute(
        path: _targetPath,
        builder: (context, state) => const _ParentDashboardPlaceholder(),
      ),
    ],
  );
}

class _RefreshOnGatekeeperUnlock extends ChangeNotifier {
  _RefreshOnGatekeeperUnlock(Ref ref) {
    ref.listen(gatekeeperUnlockProvider, (_, _) => notifyListeners());
  }
}

final _testRouterProvider = Provider<GoRouter>((ref) => _buildTestRouter(ref));

// ---------------------------------------------------------------------------
// Follow-up router: reimplements the FULL real StudentProfile branch from
// app_router.dart's _redirect() (both the protected-prefix sub-case AND the
// adjacent "left every protected area, clear any stale unlock" sub-case,
// including the `settledOnNewPath` fix), to verify the interaction between
// the two -- triggered by the gatekeeperUnlockProvider write happening
// *before* context.go() navigates away from the current (non-protected)
// route -- no longer bounces the user back out.
// ---------------------------------------------------------------------------

const _gradeHome = '/home/primary';

GoRouter _buildFullBranchRouter(Ref ref) {
  final refresh = _RefreshOnGatekeeperUnlock(ref);
  ref.onDispose(refresh.dispose);
  String? lastPath;

  return GoRouter(
    initialLocation: _gradeHome,
    refreshListenable: refresh,
    redirect: (context, state) {
      final path = state.matchedLocation;

      // Verbatim mirror of app_router.dart _redirect()'s
      // `if (activeProfile is StudentProfile) { ... }` branch, with
      // `activeProfile.child.currentGrade` -> `_gradeHome` hardcoded since
      // this test router only has one grade home route.
      final gradeHome = _gradeHome;
      final protectedPrefix = protectedPrefixOf(path);

      // Mirrors _StudentGateState.lastPath / `settledOnNewPath`: only a
      // genuine change in matched location counts as "settled", not a
      // reactive re-run of redirect for the SAME location caused by
      // gatekeeperUnlockProvider itself changing.
      final settledOnNewPath = path != lastPath;
      lastPath = path;

      if (protectedPrefix != null) {
        final unlockedPrefix = ref.read(gatekeeperUnlockProvider);
        return unlockedPrefix == protectedPrefix ? null : gradeHome;
      }

      if (settledOnNewPath && ref.read(gatekeeperUnlockProvider) != null) {
        Future.microtask(() {
          ref.read(gatekeeperUnlockProvider.notifier).state = null;
        });
      }

      if (path.startsWith('/home/') && path != gradeHome) {
        return gradeHome;
      }
      return null;
    },
    routes: [
      GoRoute(
        path: _gradeHome,
        builder: (context, state) => const _EntryScreen(),
      ),
      GoRoute(
        path: _targetPath,
        builder: (context, state) => const _ParentDashboardPlaceholder(),
      ),
    ],
  );
}

final _fullBranchRouterProvider = Provider<GoRouter>(
  (ref) => _buildFullBranchRouter(ref),
);

/// Minimal ChildModel satisfying the required fields (id, parentId,
/// aliasName) -- see lib/models/child_model.dart.
final _testChild = ChildModel(
  id: 'child-1',
  parentId: 'parent-1',
  aliasName: 'Test Kid',
  currentGrade: Grade.year3,
);

/// Parses one of "a + b", "a - b", "a x b" (RoleGatekeeperPuzzle.generate's
/// three formats) and returns the correct integer answer.
int _solvePuzzleText(String question) {
  final addMatch = RegExp(r'^(\d+) \+ (\d+)$').firstMatch(question);
  if (addMatch != null) {
    return int.parse(addMatch.group(1)!) + int.parse(addMatch.group(2)!);
  }
  final subMatch = RegExp(r'^(\d+) - (\d+)$').firstMatch(question);
  if (subMatch != null) {
    return int.parse(subMatch.group(1)!) - int.parse(subMatch.group(2)!);
  }
  final mulMatch = RegExp(r'^(\d+) x (\d+)$').firstMatch(question);
  if (mulMatch != null) {
    return int.parse(mulMatch.group(1)!) * int.parse(mulMatch.group(2)!);
  }
  throw StateError('Unrecognized puzzle question format: "$question"');
}

void main() {
  testWidgets('solving the RoleGatekeeper puzzle sets the unlock provider and '
      'navigates to the protected target route', (WidgetTester tester) async {
    final container = ProviderContainer(
      overrides: [
        activeProfileProvider.overrideWith((ref) => StudentProfile(_testChild)),
        // gatekeeperUnlockProvider left at its real default (null).
      ],
    );
    addTearDown(container.dispose);

    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: container.read(_testRouterProvider),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Sanity: we start on the entry screen, unlock provider is null.
    expect(find.text('Enter gated area'), findsOneWidget);
    expect(container.read(gatekeeperUnlockProvider), isNull);

    // Tap the real GatekeeperEntryButton-equivalent -> opens the real
    // RoleGatekeeper dialog via showRoleGatekeeperDialog.
    await tester.tap(find.text('Enter gated area'));
    await tester.pumpAndSettle();

    // The real dialog should now be showing a puzzle question.
    final questionFinder = find.textContaining(RegExp(r'=\s*\?'));
    expect(
      questionFinder,
      findsOneWidget,
      reason: 'RoleGatekeeper puzzle dialog should be visible after tap',
    );
    final questionText = tester
        .widget<Text>(questionFinder)
        .data!
        .replaceAll(' = ?', '');
    final correctAnswer = _solvePuzzleText(questionText);

    // Enter the computed correct answer and tap the real Submit button.
    await tester.enterText(find.byType(TextField), '$correctAnswer');
    await tester.tap(find.text('Submit'));
    await tester.pump(); // process the setState(_justSolved = true)

    // Pump through the dialog's internal 500ms success delay.
    await tester.pump(const Duration(milliseconds: 600));
    await tester.pumpAndSettle();

    // --- Assertions: what ACTUALLY happens. ---------------------------

    // 1. Did the dialog close?
    expect(
      find.byType(AlertDialog),
      findsNothing,
      reason: 'Gatekeeper dialog should have closed after correct answer',
    );

    // 2. Did gatekeeperUnlockProvider end up set to the expected prefix?
    expect(
      container.read(gatekeeperUnlockProvider),
      '/parent',
      reason:
          'requestGatedNavigation should have set gatekeeperUnlockProvider '
          'to protectedPrefixOf(targetPath) after a correct answer',
    );

    // 3. Did the router actually navigate to the protected target?
    expect(
      find.text('PARENT DASHBOARD PLACEHOLDER'),
      findsOneWidget,
      reason:
          'Router should have navigated to $_targetPath and stayed there '
          '(not bounced back to /entry by redirect)',
    );
  });

  testWidgets(
    'FULL branch: starting from the (non-protected) grade-home route, '
    'solving the puzzle should navigate to and STAY on the protected '
    'target route, not bounce back',
    (WidgetTester tester) async {
      final container = ProviderContainer(
        overrides: [
          activeProfileProvider.overrideWith(
            (ref) => StudentProfile(_testChild),
          ),
        ],
      );
      addTearDown(container.dispose);

      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: container.read(_fullBranchRouterProvider),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Enter gated area'), findsOneWidget);
      expect(container.read(gatekeeperUnlockProvider), isNull);

      await tester.tap(find.text('Enter gated area'));
      await tester.pumpAndSettle();

      final questionFinder = find.textContaining(RegExp(r'=\s*\?'));
      expect(questionFinder, findsOneWidget);
      final questionText = tester
          .widget<Text>(questionFinder)
          .data!
          .replaceAll(' = ?', '');
      final correctAnswer = _solvePuzzleText(questionText);

      await tester.enterText(find.byType(TextField), '$correctAnswer');
      await tester.tap(find.text('Submit'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 600));
      // Pump enough extra frames/microtasks for any scheduled
      // Future.microtask (the stale-unlock clear) to run and for the
      // router to react to it.
      await tester.pumpAndSettle();

      // Print actual final state for the debugging report.
      // ignore: avoid_print
      print(
        'FINAL gatekeeperUnlockProvider = '
        '${container.read(gatekeeperUnlockProvider)}',
      );
      // ignore: avoid_print
      print(
        'FINAL screen shows parent dashboard: '
        '${find.text('PARENT DASHBOARD PLACEHOLDER').evaluate().isNotEmpty}, '
        'shows entry/grade-home: '
        '${find.text('Enter gated area').evaluate().isNotEmpty}',
      );

      expect(
        find.text('PARENT DASHBOARD PLACEHOLDER'),
        findsOneWidget,
        reason:
            'If this fails and we are back on the entry/grade-home screen '
            'instead, that reproduces the reported bug: the stale-unlock '
            'microtask (app_router.dart _redirect, StudentProfile branch, '
            '"else" sub-case) clears gatekeeperUnlockProvider back to null '
            'shortly after requestGatedNavigation sets it, bouncing the '
            'student back out of the just-unlocked area.',
      );
    },
  );
}
