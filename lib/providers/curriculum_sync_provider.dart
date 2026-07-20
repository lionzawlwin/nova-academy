import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/app_constants.dart';
import '../core/services/seed_service.dart';
import '../models/user_model.dart';
import 'auth_providers.dart';
import 'firebase_providers.dart';

/// The `SharedPreferences` key the last-synced [seedContentVersion] is
/// persisted under. Mirrors `locale_provider.dart`'s `_localePrefsKey`
/// naming convention.
const String _curriculumSyncVersionPrefsKey =
    'nova_academy_curriculum_sync_version';

/// Pure version-guard: returns true when [storedVersion] (whatever was
/// last persisted to `SharedPreferences`, or `null` on a first-ever run)
/// doesn't match [currentVersion] (the app's hand-bumped
/// [seedContentVersion]).
///
/// Deliberately Firestore-free and `SharedPreferences`-free so it's
/// unit-testable in isolation -- see `test/curriculum_sync_provider_test.dart`
/// -- mirroring how `seed_service_test.dart` tests the pure
/// `mockSeedUsers()`/`mockSeedChildren()`/etc. functions rather than
/// `seedDatabase()` itself.
bool needsSync(String? storedVersion, String currentVersion) {
  return storedVersion != currentVersion;
}

/// Runs [seedDatabase] automatically, in the background, on the owner's
/// first `OwnerAdminScreen` render each app session -- replacing the old
/// manual "Seed Demo Data" button.
///
/// Riverpod caches `FutureProvider`s once created, so this body runs at
/// most once per app session no matter how many times `OwnerAdminScreen`
/// rebuilds and re-watches it. Cross-session dedup (not re-seeding on the
/// *next* login either, unless [seedContentVersion] actually changed) is
/// handled by the `SharedPreferences`-backed version guard below via
/// [needsSync].
///
/// Every failure mode -- not signed in yet, not the owner, offline,
/// transient Firestore error, `SharedPreferences` unavailable -- is
/// swallowed silently as far as the *UI* is concerned: no dialog,
/// snackbar, or dashboard indicator, per the design spec. It is not
/// swallowed as far as diagnostics are concerned -- every branch logs via
/// [debugPrint] (which is not stripped in release/profile web builds), so
/// a failed sync is still debuggable from the browser console without
/// needing a dev build. Critically, the stored version is only updated on
/// a *successful* seed, so a failed sync simply retries on the owner's
/// next login with no dedicated retry/backoff logic needed.
final curriculumAutoSyncProvider = FutureProvider<void>((ref) async {
  try {
    final userModel = await ref.watch(currentUserModelProvider.future);
    final isOwner =
        userModel?.role == UserRole.owner || isOwnerEmail(userModel?.email);
    if (!isOwner) {
      debugPrint(
        '[curriculumAutoSync] skipped: signed-in account is not the owner '
        '(email=${userModel?.email})',
      );
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final storedVersion = prefs.getString(_curriculumSyncVersionPrefsKey);

    if (!needsSync(storedVersion, seedContentVersion)) {
      debugPrint(
        '[curriculumAutoSync] skipped: already synced '
        '(stored=$storedVersion, current=$seedContentVersion)',
      );
      return;
    }

    debugPrint(
      '[curriculumAutoSync] starting sync: stored=$storedVersion -> '
      'current=$seedContentVersion',
    );
    final summary = await seedDatabase(ref.read(firestoreProvider));
    await prefs.setString(_curriculumSyncVersionPrefsKey, seedContentVersion);
    debugPrint(
      '[curriculumAutoSync] success: wrote ${summary.totalWritten} docs '
      '(${summary.usersWritten} users, ${summary.childrenWritten} '
      'children, ${summary.modulesWritten} modules)',
    );
  } catch (e, st) {
    // Swallow for the UI -- a failed sync just retries next login, no
    // rethrow/crash. But always log the real cause so it's diagnosable
    // from the console instead of vanishing entirely.
    debugPrint('[curriculumAutoSync] FAILED: $e');
    debugPrint('[curriculumAutoSync] stack trace:\n$st');
  }
});
