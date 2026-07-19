import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Purely local, in-memory state for UI flows this phase intentionally
/// mocks rather than wiring to a backend: teacher invitations (no email
/// service on the free tier yet) and per-student module assignments (no
/// `Assignments` collection defined yet). Neither persists across app
/// restarts -- that's expected for a mock-up.

/// Email addresses a parent has "invited" as a teacher, most recent last.
final invitedTeacherEmailsProvider = StateProvider<List<String>>(
  (ref) => <String>[],
);

/// Maps a child id to the titles of learning modules a teacher has
/// "assigned" them this session.
final assignedModulesProvider = StateProvider<Map<String, List<String>>>(
  (ref) => <String, List<String>>{},
);
