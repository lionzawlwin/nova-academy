import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/child_model.dart';

/// The "Who's learning?" selection for the current session -- mirrors a
/// Netflix-style profile picker. Everything the router and UI gate on
/// (which shell to show, whether the RoleGatekeeper applies) hangs off
/// this, not off [UserRole] alone.
sealed class ActiveProfile {
  const ActiveProfile();
}

/// The signed-in account itself is active: a parent, teacher, or owner
/// browsing their own dashboards rather than impersonating a child.
class SelfProfile extends ActiveProfile {
  const SelfProfile();

  @override
  bool operator ==(Object other) => other is SelfProfile;

  @override
  int get hashCode => runtimeType.hashCode;
}

/// A specific child ("student mode") is active. The UI is scoped to
/// [child]'s grade, and parent/teacher/owner areas are locked behind the
/// RoleGatekeeper puzzle (see [gatekeeperUnlockProvider]).
class StudentProfile extends ActiveProfile {
  const StudentProfile(this.child);

  final ChildModel child;

  @override
  bool operator ==(Object other) =>
      other is StudentProfile && other.child.id == child.id;

  @override
  int get hashCode => Object.hash(StudentProfile, child.id);
}

/// The profile currently active for this session. `null` means nothing has
/// been picked yet, so [goRouterProvider]'s redirect sends the user to
/// `/profile-selection`.
final activeProfileProvider = StateProvider<ActiveProfile?>((ref) => null);

/// The parent/teacher/owner route prefixes a student-mode profile must pass
/// the RoleGatekeeper puzzle to enter.
const List<String> protectedRoutePrefixes = ['/parent', '/teacher', '/owner'];

/// Returns the protected prefix [path] falls under (e.g. `/parent`), or
/// `null` when [path] isn't gated at all.
String? protectedPrefixOf(String path) {
  for (final prefix in protectedRoutePrefixes) {
    if (path.startsWith(prefix)) return prefix;
  }
  return null;
}

/// Set to a protected prefix immediately after a student-mode profile
/// solves the RoleGatekeeper puzzle for that area, granting entry for the
/// current visit. Cleared automatically once the student navigates away
/// from that area (see the router redirect), so re-entry always demands a
/// fresh puzzle -- this is what "just passed the puzzle" means in practice.
final gatekeeperUnlockProvider = StateProvider<String?>((ref) => null);
