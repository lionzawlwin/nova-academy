// Mission 2 regression test: "back should return to the previous page
// instead of exiting the app entirely."
//
// Root cause that was fixed: requestGatedNavigation() (role_gatekeeper.dart)
// used to call `context.go(targetPath)` to enter a protected
// (parent/teacher/owner) area from student mode. go() REPLACES the router's
// current location instead of pushing on top of it, so once inside e.g.
// /parent/dashboard there was nothing beneath it in the Navigator's page
// stack for the system/hardware back button to pop to -- back closed the
// app instead of returning to the grade-home screen the student came from.
//
// The fix: requestGatedNavigation() now calls `context.push(targetPath)`,
// which pushes the protected route on top of the existing stack, matching
// every other drill-down navigation in this codebase (quiz launch, nursery
// lesson, parent settings all use push/pop).
//
// This test builds a minimal test-local GoRouter (same pattern as
// test/role_gatekeeper_navigation_test.dart's "FULL branch" router --
// reimplementing only the real _redirect()'s StudentProfile branch, no
// Firebase), drives the real requestGatedNavigation() through the real
// RoleGatekeeper puzzle dialog, lands on the protected target route, and
// then inspects the Navigator's ability to pop back from that screen.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:nova_academy/core/widgets/role_gatekeeper.dart';
import 'package:nova_academy/l10n/app_localizations.dart';
import 'package:nova_academy/models/child_model.dart';
import 'package:nova_academy/providers/active_profile_provider.dart';

const _gradeHome = '/home/primary';
const _targetPath = '/parent/dashboard';

/// Mirrors GatekeeperEntryButton's real call site
/// (home_shared_widgets.dart's GatekeeperEntryButton -> _enterGatedArea)
/// without dragging in the rest of that screen's dependencies (auth
/// providers, l10n role lookups, etc). This is the non-protected
/// "grade-home-equivalent" screen a student is confined to before solving
/// the puzzle.
class _GradeHomeScreen extends ConsumerWidget {
  const _GradeHomeScreen();

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

/// Placeholder for the protected /parent/dashboard route. Reports its own
/// Navigator/GoRouter pop-ability into the widget tree (as Text) so the
/// test can assert on it without guessing which introspection API this
/// go_router version exposes best.
class _ParentDashboardPlaceholder extends StatelessWidget {
  const _ParentDashboardPlaceholder();

  @override
  Widget build(BuildContext context) {
    final navigatorCanPop = Navigator.of(context).canPop();
    final goRouterCanPop = GoRouter.of(context).canPop();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('PARENT DASHBOARD PLACEHOLDER'),
            Text('navigatorCanPop=$navigatorCanPop'),
            Text('goRouterCanPop=$goRouterCanPop'),
          ],
        ),
      ),
    );
  }
}

class _RefreshOnGatekeeperUnlock extends ChangeNotifier {
  _RefreshOnGatekeeperUnlock(Ref ref) {
    ref.listen(gatekeeperUnlockProvider, (_, _) => notifyListeners());
  }
}

/// Reimplements the FULL real StudentProfile branch from app_router.dart's
/// _redirect() (protected-prefix sub-case + the "left every protected area,
/// clear any stale unlock" sub-case, including the `settledOnNewPath`
/// guard from the Mission 1 fix) -- same pattern as
/// test/role_gatekeeper_navigation_test.dart's `_buildFullBranchRouter`.
GoRouter _buildTestRouter(Ref ref) {
  final refresh = _RefreshOnGatekeeperUnlock(ref);
  ref.onDispose(refresh.dispose);
  String? lastPath;

  return GoRouter(
    initialLocation: _gradeHome,
    refreshListenable: refresh,
    redirect: (context, state) {
      final path = state.matchedLocation;
      const gradeHome = _gradeHome;
      final protectedPrefix = protectedPrefixOf(path);

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
        builder: (context, state) => const _GradeHomeScreen(),
      ),
      GoRoute(
        path: _targetPath,
        builder: (context, state) => const _ParentDashboardPlaceholder(),
      ),
    ],
  );
}

final _testRouterProvider = Provider<GoRouter>((ref) => _buildTestRouter(ref));

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
  testWidgets(
    'FIX VERIFIED: after solving the RoleGatekeeper puzzle and landing on '
    'the protected target route via context.push(), the previous page is '
    'still poppable (no stack collapse)',
    (WidgetTester tester) async {
      final container = ProviderContainer(
        overrides: [
          activeProfileProvider.overrideWith(
            (ref) => StudentProfile(_testChild),
          ),
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

      // Sanity: we start on the grade-home-equivalent screen.
      expect(find.text('Enter gated area'), findsOneWidget);
      expect(container.read(gatekeeperUnlockProvider), isNull);

      // Sanity: before entering the gated area, there is genuinely nothing
      // to pop either (single-route stack) -- this establishes the
      // baseline so the post-navigation assertion below is meaningful,
      // not just trivially true for any single-screen app.
      final entryContext = tester.element(find.text('Enter gated area'));
      final canPopBeforeEntry = Navigator.of(entryContext).canPop();

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

      // Confirm we actually landed on the protected target (precondition
      // for the back-navigation assertion to mean anything).
      expect(
        find.text('PARENT DASHBOARD PLACEHOLDER'),
        findsOneWidget,
        reason:
            'Router should have navigated to $_targetPath after the '
            'correct answer',
      );
      expect(container.read(gatekeeperUnlockProvider), '/parent');

      // --- The actual reproduction: can we pop back from here? ----------
      final dashboardContext = tester.element(
        find.text('PARENT DASHBOARD PLACEHOLDER'),
      );
      final navigatorCanPopAfter = Navigator.of(dashboardContext).canPop();
      final goRouterCanPopAfter = GoRouter.of(dashboardContext).canPop();

      // ignore: avoid_print
      print(
        'canPop BEFORE entering gated area (baseline, single-route '
        'stack) = $canPopBeforeEntry',
      );
      // ignore: avoid_print
      print(
        'canPop AFTER landing on $_targetPath via context.push() -> '
        'Navigator.canPop=$navigatorCanPopAfter, '
        'GoRouter.canPop=$goRouterCanPopAfter',
      );

      // Also surface it via the widgets the placeholder itself rendered,
      // so the report is self-verifying even if canPop() semantics differ
      // subtly between the two APIs above.
      expect(
        find.text('navigatorCanPop=$navigatorCanPopAfter'),
        findsOneWidget,
      );
      expect(find.text('goRouterCanPop=$goRouterCanPopAfter'), findsOneWidget);

      // THE FIX: because requestGatedNavigation now uses context.push()
      // (a location PUSH) rather than context.go(), the grade-home screen
      // remains beneath /parent/dashboard in the Navigator's stack -- so
      // canPop is true here, unlike the pre-navigation baseline, confirming
      // the hardware/system back button correctly returns to $_gradeHome
      // instead of exiting the app.
      expect(
        navigatorCanPopAfter,
        isTrue,
        reason:
            'This confirms the Mission 2 fix: after entering the gated '
            'area via context.push(), Navigator.canPop() is true -- '
            '$_gradeHome is still beneath $_targetPath in the stack, so '
            'the hardware/system back button correctly returns to it '
            'instead of exiting the app. If this assertion ever starts '
            'failing (canPop becomes false again), requestGatedNavigation '
            'has likely regressed back to go() instead of push().',
      );
      expect(
        goRouterCanPopAfter,
        isTrue,
        reason:
            'GoRouter.canPop() agrees with Navigator.canPop(): the router '
            'stack itself has more than one entry after context.push(), '
            'confirming the location PUSH (not a replace) is what fixed '
            'back-navigation.',
      );
    },
  );
}
