import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/constants/home_tier.dart';
import '../features/auth/login_screen.dart';
import '../features/dashboard/owner_admin_screen.dart';
import '../features/dashboard/parent_dashboard_screen.dart';
import '../features/dashboard/parent_settings_screen.dart';
import '../features/dashboard/teacher_dashboard_screen.dart';
import '../features/home/grade_home_screen.dart';
import '../features/home/home_shared_widgets.dart';
import '../features/lessons/course_pathway_bank.dart';
import '../features/lessons/course_pathway_week_screen.dart';
import '../features/lessons/drag_match_screen.dart';
import '../features/lessons/fill_in_blank_screen.dart';
import '../features/lessons/nursery_activity_browser_screen.dart';
import '../features/lessons/nursery_kg_activity_bank.dart';
import '../features/lessons/nursery_lesson_screen.dart';
import '../features/lessons/mcq_quiz_screen.dart';
import '../features/lessons/reading_screen.dart';
import '../features/lessons/sorting_screen.dart';
import '../features/profiles/profile_selection_screen.dart';
import '../features/splash/splash_screen.dart';
import '../models/child_model.dart';
import '../models/user_model.dart';
import '../providers/active_profile_provider.dart';
import '../providers/auth_providers.dart';

/// All route paths in the app. Screens and redirect logic should reference
/// these constants rather than string literals.
class AppRoutes {
  AppRoutes._();

  static const splash = '/splash';
  static const login = '/login';
  static const profileSelection = '/profile-selection';

  static const homeNursery = '/home/nursery';
  static const homePrimary = '/home/primary';
  static const homeSecondary = '/home/secondary';

  static const lessonNursery = '/lesson/nursery';

  /// Shown instead of jumping straight to [lessonNursery] whenever a
  /// tapped Nursery/KG subject has 2+ authored activities for the child's
  /// grade -- see `NurseryActivityBrowserScreen` and
  /// `NurseryKgHomeScreen._openLesson`. Expects a
  /// `(Grade, SubjectVisual, List<NurseryActivityDef>)` via `extra`.
  static const nurseryActivityBrowser = '/lesson/nursery/activities';
  static const lessonPrimaryQuiz = '/lesson/primary-quiz';
  static const lessonFillBlank = '/lesson/fill-blank';
  static const lessonDragMatch = '/lesson/drag-match';
  static const lessonSorting = '/lesson/sorting';
  static const lessonReading = '/lesson/reading';

  /// Vertical-slice "Academic Year" course-pathway week view -- see
  /// `course_pathway_bank.dart`'s doc comment. Expects a [CourseWeekDef]
  /// via `extra`; falls back to Secondary 1 Computing's Week 1 (the only
  /// week authored so far) when pushed without one.
  static const coursePathwayWeek = '/course-pathway/week';

  static const parentDashboard = '/parent/dashboard';
  static const parentSettings = '/parent/settings';
  static const teacherDashboard = '/teacher/dashboard';
  static const ownerAdmin = '/owner/admin';
}

/// Maps a child's [Grade] to the student home route for their [HomeTier].
String homeRouteForGrade(Grade grade) {
  switch (homeTierForGrade(grade)) {
    case HomeTier.nursery:
      return AppRoutes.homeNursery;
    case HomeTier.primary:
      return AppRoutes.homePrimary;
    case HomeTier.secondary:
      return AppRoutes.homeSecondary;
  }
}

/// Where a self-profile (non-student-mode) user lands by default, based on
/// their [UserRole]. Owner always wins over a lesser stored role because
/// [currentUserModelProvider] already force-overrides role for the owner
/// email -- this is just the route-side mirror of that guarantee.
String defaultDashboardForRole(UserRole role) {
  switch (role) {
    case UserRole.owner:
      return AppRoutes.ownerAdmin;
    case UserRole.teacher:
      return AppRoutes.teacherDashboard;
    case UserRole.parent:
      return AppRoutes.parentDashboard;
    case UserRole.student:
      // Bare student accounts aren't a real flow yet (students are child
      // profiles under a parent, not their own Firebase Auth user) -- fall
      // back to profile selection defensively rather than a dead end.
      return AppRoutes.profileSelection;
  }
}

/// Bridges Riverpod state changes into GoRouter's `refreshListenable`, so
/// the router re-evaluates `redirect` whenever auth, the user's profile
/// document, the active (student/self) profile, or the RoleGatekeeper
/// unlock state changes.
class _RouterRefreshNotifier extends ChangeNotifier {
  _RouterRefreshNotifier(Ref ref) {
    ref.listen(authStateChangesProvider, (_, _) => notifyListeners());
    ref.listen(currentUserModelProvider, (_, _) => notifyListeners());
    ref.listen(activeProfileProvider, (_, _) => notifyListeners());
    ref.listen(gatekeeperUnlockProvider, (_, _) => notifyListeners());
  }
}

/// Tracks the last matched location `_redirect` actually settled on, so the
/// StudentProfile branch can tell a genuine navigation (the matched path
/// changed) apart from a reactive re-evaluation of the SAME still-current
/// path -- which happens whenever `gatekeeperUnlockProvider` changes, since
/// that's one of `_RouterRefreshNotifier`'s listened providers. See the
/// stale-unlock-clear guard below for why that distinction matters.
class _StudentGateState {
  String? lastPath;
}

/// The app's single [GoRouter] instance, rebuilt only when its provider
/// dependencies actually change (see [_RouterRefreshNotifier]).
final goRouterProvider = Provider<GoRouter>((ref) {
  final refresh = _RouterRefreshNotifier(ref);
  ref.onDispose(refresh.dispose);
  final gateState = _StudentGateState();

  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: false,
    refreshListenable: refresh,
    redirect: (context, state) => _redirect(ref, state, gateState),
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.profileSelection,
        builder: (context, state) => const ProfileSelectionScreen(),
      ),
      GoRoute(
        path: AppRoutes.homeNursery,
        builder: (context, state) =>
            const GradeHomeScreen(tier: HomeTier.nursery),
      ),
      GoRoute(
        path: AppRoutes.homePrimary,
        builder: (context, state) =>
            const GradeHomeScreen(tier: HomeTier.primary),
      ),
      GoRoute(
        path: AppRoutes.homeSecondary,
        builder: (context, state) =>
            const GradeHomeScreen(tier: HomeTier.secondary),
      ),
      GoRoute(
        path: AppRoutes.lessonNursery,
        builder: (context, state) {
          final extra = state.extra;
          if (extra is (SubjectVisual, List<MatchPairItem>?)) {
            final (subject, pairs) = extra;
            return NurseryLessonScreen(
              subjectLabel: subject.label,
              themeColor: subject.color,
              pairs: pairs,
            );
          }
          return const NurseryLessonScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.nurseryActivityBrowser,
        builder: (context, state) {
          final extra = state.extra;
          if (extra is (Grade, SubjectVisual, List<NurseryActivityDef>)) {
            final (grade, subject, activities) = extra;
            return NurseryActivityBrowserScreen(
              grade: grade,
              subject: subject,
              activities: activities,
            );
          }
          // Defensive fallback for a malformed/missing `extra` -- mirrors
          // `lessonNursery`'s own defensive builder just above, which has
          // the same "never crash on a bad navigation" fallback to the
          // same screen.
          return const NurseryLessonScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.lessonPrimaryQuiz,
        builder: (context, state) {
          final args = state.extra;
          return McqQuizScreen(
            args: args is McqQuizArgs
                ? args
                : const McqQuizArgs(title: '', subject: 'generalknowledge'),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.lessonFillBlank,
        builder: (context, state) {
          final args = state.extra;
          return FillInTheBlankScreen(
            args: args is FillBlankArgs
                ? args
                : const FillBlankArgs(title: '', subject: 'generalknowledge'),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.lessonDragMatch,
        builder: (context, state) {
          final args = state.extra;
          return DragMatchScreen(
            args: args is DragMatchArgs
                ? args
                : const DragMatchArgs(title: '', subject: 'generalknowledge'),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.lessonSorting,
        builder: (context, state) {
          final args = state.extra;
          return SortingScreen(
            args: args is SortingArgs
                ? args
                : const SortingArgs(title: '', moduleId: ''),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.lessonReading,
        builder: (context, state) {
          final args = state.extra;
          return ReadingScreen(
            args: args is ReadingArgs
                ? args
                : const ReadingArgs(title: '', moduleId: ''),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.coursePathwayWeek,
        builder: (context, state) {
          final extra = state.extra;
          final week = extra is CourseWeekDef
              ? extra
              : secondary1ComputingPathway.terms.first.weeks.first;
          return CoursePathwayWeekScreen(week: week);
        },
      ),
      GoRoute(
        path: AppRoutes.parentDashboard,
        builder: (context, state) => const ParentDashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.parentSettings,
        builder: (context, state) => const ParentSettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.teacherDashboard,
        builder: (context, state) => const TeacherDashboardScreen(),
      ),
      GoRoute(
        path: AppRoutes.ownerAdmin,
        builder: (context, state) => const OwnerAdminScreen(),
      ),
    ],
  );
});

String? _redirect(Ref ref, GoRouterState state, _StudentGateState gateState) {
  final path = state.matchedLocation;

  // --- 1. Resolve Firebase Auth state. ---------------------------------
  final authAsync = ref.read(authStateChangesProvider);

  // Still resolving the very first auth event (and not already errored) --
  // park on the splash screen rather than flashing the login screen.
  if (authAsync.isLoading && !authAsync.hasValue && !authAsync.hasError) {
    return path == AppRoutes.splash ? null : AppRoutes.splash;
  }

  final authUser = authAsync.valueOrNull;
  if (authUser == null || authAsync.hasError) {
    // No signed-in user (or Firebase itself is unreachable/unconfigured --
    // fail safe into the login screen rather than crashing the app).
    return path == AppRoutes.login ? null : AppRoutes.login;
  }

  // --- 2. Resolve the `Users/{uid}` profile document. -------------------
  final userModelAsync = ref.read(currentUserModelProvider);
  if (userModelAsync.isLoading && !userModelAsync.hasValue) {
    return path == AppRoutes.splash ? null : AppRoutes.splash;
  }

  final userModel = userModelAsync.valueOrNull;
  if (userModel == null || userModelAsync.hasError) {
    return path == AppRoutes.login ? null : AppRoutes.login;
  }

  final loggingInOrSplash = path == AppRoutes.login || path == AppRoutes.splash;

  // --- 3. Require a picked profile before anything else. ----------------
  final activeProfile = ref.read(activeProfileProvider);
  if (activeProfile == null) {
    return path == AppRoutes.profileSelection
        ? null
        : AppRoutes.profileSelection;
  }

  // --- 4. Student mode: confined to the grade home + RoleGatekeeper. ----
  if (activeProfile is StudentProfile) {
    final gradeHome = homeRouteForGrade(activeProfile.child.currentGrade);
    final protectedPrefix = protectedPrefixOf(path);

    // Did the matched location actually change since the last time we
    // evaluated it, or is this a reactive re-run of the redirect for the
    // SAME location (triggered by e.g. gatekeeperUnlockProvider itself
    // changing, which is one of _RouterRefreshNotifier's listened
    // providers)? See the guard below for why this matters.
    final settledOnNewPath = path != gateState.lastPath;
    gateState.lastPath = path;

    if (protectedPrefix != null) {
      final unlockedPrefix = ref.read(gatekeeperUnlockProvider);
      // Only granted for the duration of this visit -- see
      // gatekeeperUnlockProvider's doc comment for how it gets cleared.
      return unlockedPrefix == protectedPrefix ? null : gradeHome;
    }

    // Left every protected area (or never entered one) -- drop any stale
    // unlock so re-entry always demands a fresh puzzle.
    //
    // Guarded by `settledOnNewPath`: requestGatedNavigation writes
    // gatekeeperUnlockProvider *before* calling context.go(targetPath), so
    // that write reactively re-runs this redirect once for the location we
    // were ALREADY sitting on (still non-protected, since navigation to the
    // protected target hasn't happened yet). Without this guard, that pass
    // would schedule this exact clear, which then fires (its microtask)
    // just after the navigation to the protected route lands -- wiping the
    // unlock and bouncing the user straight back out. Only clear when the
    // matched path actually changed, i.e. the user genuinely navigated to a
    // non-protected route (including a real exit from a protected one).
    if (settledOnNewPath && ref.read(gatekeeperUnlockProvider) != null) {
      Future.microtask(() {
        ref.read(gatekeeperUnlockProvider.notifier).state = null;
      });
    }

    if (loggingInOrSplash || path == AppRoutes.profileSelection) {
      return gradeHome;
    }
    if (path.startsWith('/home/') && path != gradeHome) {
      return gradeHome;
    }
    return null;
  }

  // --- 5. Self profile: route-guard by the account's actual role. -------
  final role = userModel.role;
  final isOwner = role == UserRole.owner;
  final defaultDashboard = defaultDashboardForRole(role);

  if (loggingInOrSplash ||
      path.startsWith('/home/') ||
      path == AppRoutes.profileSelection) {
    return defaultDashboard;
  }
  if (path.startsWith('/owner') && !isOwner) {
    return defaultDashboard;
  }
  if (path.startsWith('/teacher') && !(role == UserRole.teacher || isOwner)) {
    return defaultDashboard;
  }
  if (path.startsWith('/parent') && !(role == UserRole.parent || isOwner)) {
    return defaultDashboard;
  }
  if (role == UserRole.student && path != AppRoutes.profileSelection) {
    return AppRoutes.profileSelection;
  }

  return null;
}
