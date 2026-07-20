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
/// swallowed silently. There is no dialog, snackbar, or dashboard
/// indicator: this is meant to be a fully invisible background operation
/// per the design spec. Critically, the stored version is only updated on
/// a *successful* seed, so a failed sync simply retries on the owner's
/// next login with no dedicated retry/backoff logic needed.
final curriculumAutoSyncProvider = FutureProvider<void>((ref) async {
  try {
    final userModel = await ref.watch(currentUserModelProvider.future);
    final isOwner =
        userModel?.role == UserRole.owner || isOwnerEmail(userModel?.email);
    if (!isOwner) return;

    final prefs = await SharedPreferences.getInstance();
    final storedVersion = prefs.getString(_curriculumSyncVersionPrefsKey);

    if (!needsSync(storedVersion, seedContentVersion)) return;

    await seedDatabase(ref.read(firestoreProvider));
    await prefs.setString(_curriculumSyncVersionPrefsKey, seedContentVersion);
  } catch (_) {
    // Swallow every exception -- a failed sync just retries next login.
    // No rethrow, no crash: see the design spec's "Error handling"
    // section for why this stays silent (background, non-blocking sync).
  }
});
