# Mission 5 — Background Auto-Sync Curriculum Data — Spec

**Date:** 2026-07-20
**Status:** Approved via brainstorming dialogue this session (no visual companion needed — this is a backend/architecture feature, not a UI redesign).
**Scope:** Mission 5 of the Six Missions epic (`docs/superpowers/plans/2026-07-20-six-missions-epic-plan.md`). Replaces the owner's manual "Seed Demo Data" button with a background sync that runs automatically on owner login, and removes the now-redundant button from the Owner Dashboard (completing the Mission 4 cleanup the epic plan flagged as blocked on this mission).

## Problem

`seedDatabase()` (`lib/core/services/seed_service.dart`) is idempotent by design but today only runs when the owner manually taps "Seed Demo Data" and confirms a dialog on `OwnerAdminScreen`. The ask is to make this automatic and invisible — sync on launch/login instead of requiring a manual click — while respecting the Firebase Spark (free) plan's lack of Cloud Functions/Admin SDK (this must stay a client-side, non-blocking operation) and its daily write-quota ceiling (the full batch write must not re-run on every single login).

## Architecture

A new `curriculumAutoSyncProvider` — a `FutureProvider<void>` in a new file, `lib/providers/curriculum_sync_provider.dart` — is watched from `OwnerAdminScreen.build()` (`lib/features/dashboard/owner_admin_screen.dart`) alongside its existing provider watches (`currentUserModelProvider`, `platformStatsProvider`). No new top-level widget and no router changes are needed: `defaultDashboardForRole(UserRole.owner)` already routes the owner straight to this screen on login, so watching the provider there *is* "sync on owner login."

Riverpod caches `FutureProvider`s once created, so the provider's body runs at most once per app session regardless of how many times `OwnerAdminScreen` rebuilds. Cross-session dedup (not re-syncing on the *next* login either, unless content actually changed) is handled by the version guard below, not by provider caching.

```
OwnerAdminScreen.build()
  └─ ref.watch(curriculumAutoSyncProvider)   // side-effect only, value ignored
       └─ curriculumAutoSyncProvider (FutureProvider<void>)
            ├─ await currentUserModelProvider.future
            ├─ owner check (role == UserRole.owner || isOwnerEmail(email))
            │    └─ not owner → return (no-op)
            ├─ needsSync(storedVersion, seedContentVersion)
            │    └─ false → return (no-op)
            └─ true → seedDatabase(firestore) → on success, persist seedContentVersion
```

## Components

**`seedContentVersion`** — a new hand-bumped `const String` declared next to `MockSeedIds` in `seed_service.dart` (starting value: `'v1'`). Whoever meaningfully changes the seed data (new curriculum bank content, changed mock users/children/modules) bumps this string as part of that change. This mirrors the file's existing hand-maintained-constant style (`MockSeedIds`) rather than introducing a runtime content hash — simpler, zero runtime cost, and predictable (a Burmese typo fix doesn't silently trigger a resync of everyone's next login).

**`needsSync(String? storedVersion, String currentVersion) → bool`** — a pure function (no Firestore, no `SharedPreferences`) that returns `storedVersion != currentVersion`. Extracted specifically so it's unit-testable in isolation, mirroring how `seed_service_test.dart` already tests the pure `mockSeedUsers()`/`mockSeedChildren()`/etc. functions rather than `seedDatabase()` itself (which needs a live/emulated Firestore and isn't tested today).

**`curriculumAutoSyncProvider`** — the `FutureProvider<void>` wiring the above together with real `SharedPreferences` (new key, e.g. `nova_academy_curriculum_sync_version`) and the real `firestoreProvider`. This I/O-touching half stays untested, consistent with existing convention (`firebase_providers.dart`, `seedDatabase()` itself are not unit tested either).

## Data flow / sequencing

1. Owner signs in → router redirects to `/owner` (unchanged, existing behavior).
2. `OwnerAdminScreen.build()` runs, watches `curriculumAutoSyncProvider`.
3. First watch this session: provider body executes — resolves the signed-in user, confirms owner, reads the stored version from `SharedPreferences`.
4. If `storedVersion == seedContentVersion`: no-op, screen renders normally, no network activity.
5. If they differ (first-ever run, or a developer bumped the version since the owner's last login): `seedDatabase(firestore)` runs its existing batched write (unchanged — same `SeedSummary`-returning function used today). On success, the new version string is written to `SharedPreferences`.
6. Any subsequent rebuild of `OwnerAdminScreen` in the same session re-watches the already-resolved provider — no re-execution, no extra reads.

## Error handling

If `seedDatabase()` throws (offline, transient Firestore error, permission issue), the provider catches the exception and swallows it — no dialog, no snackbar, no dashboard indicator, per the "background, non-blocking" framing of the original ask. Critically, the version marker is **only** written on success, so a failed sync leaves `storedVersion` unchanged and the next owner login retries automatically without any dedicated retry/backoff logic needed.

## Owner Dashboard cleanup

`_SeedDemoDataCard` / `_SeedDemoDataCardState` (`owner_admin_screen.dart`, current lines ~210-331) are deleted entirely, along with their now-orphaned ARB keys once confirmed unused elsewhere:
- `ownerSeedDemoDataTitle`
- `ownerSeedDemoDataDescription`
- `ownerSeedDemoDataConfirmTitle`
- `ownerSeedDemoDataConfirmMessage`
- `ownerSeedDemoDataSuccess`
- `ownerSeedDemoDataError`

(`actionCancel`/`actionConfirm` are shared generic keys used elsewhere and are kept.) `flutter gen-l10n` is re-run after the ARB edits to regenerate `app_localizations*.dart`.

The dashboard's remaining content (all-access banner, real Firestore stat cards from Mission 4) is unaffected — this mission only removes the seed card, it doesn't touch the analytics section.

## Testing

- New `test/curriculum_sync_provider_test.dart`: unit tests for `needsSync()` covering (a) no stored version yet → sync needed, (b) stored version matches current → no sync needed, (c) stored version differs from current → sync needed. Written test-first (TDD): the test is written and confirmed failing before `needsSync()` exists.
- No widget test is added for the provider's Firestore/`SharedPreferences` I/O, consistent with `seedDatabase()` itself having no existing test coverage of its live-Firestore path.
- `flutter analyze` must stay clean and the full `flutter test` suite (86 tests passing as of Mission 4) must stay green after the `OwnerAdminScreen` edit removes `_SeedDemoDataCard`.

## Out of scope

- No Firestore-side "last synced" marker doc (rejected in favor of the local `SharedPreferences` guard — see design discussion; cross-device double-sync on a second owner device is harmless given `seedDatabase()`'s existing idempotency).
- No UI indicator for sync failures (rejected in favor of pure silent retry-next-login).
- No changes to `seedDatabase()` itself, `MockSeedIds`, or any curriculum bank content — this mission is purely about *when/how* the existing seeding logic runs, not what it seeds.
