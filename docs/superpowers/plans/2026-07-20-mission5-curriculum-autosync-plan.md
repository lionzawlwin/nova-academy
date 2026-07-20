# Mission 5 — Background Auto-Sync Curriculum Data — Implementation Plan

> **For agentic workers:** Read the full spec first: `docs/superpowers/specs/2026-07-20-mission5-curriculum-autosync-design.md`. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Replace the owner's manual "Seed Demo Data" button with an automatic, version-guarded background sync that runs once per app session on owner login, and remove the now-redundant manual card from the Owner Dashboard.

**Tech stack:** Flutter/Dart, Riverpod (manual `FutureProvider`, no codegen — matches every other provider in `lib/providers/`), `shared_preferences` (already a dependency, used by `locale_provider.dart`).

**Preconditions:** Missions 1-4 merged (confirmed — `git log` shows all four committed on `master`, tree clean).

**Sequencing principle:** Pure logic first with a failing test (TDD), then the provider wiring it to real I/O, then the `OwnerAdminScreen` edit that both activates the trigger and removes the dead button, then ARB cleanup, then full-suite verification.

---

### Task 1: `needsSync()` — TDD red/green

**Files:** Create `test/curriculum_sync_provider_test.dart`, then `lib/providers/curriculum_sync_provider.dart`

- [ ] Write `test/curriculum_sync_provider_test.dart` first, asserting `needsSync()` behavior for: no stored version (`null`) → `true`; stored version equal to current → `false`; stored version different from current → `true`. Run `flutter test test/curriculum_sync_provider_test.dart` and confirm it fails (function doesn't exist yet — red).
- [ ] Create `lib/providers/curriculum_sync_provider.dart` with the pure `bool needsSync(String? storedVersion, String currentVersion)` function (`storedVersion != currentVersion`). Run the test again and confirm green.
- [ ] Commit: `test: add needsSync() curriculum version-guard logic (TDD)`

---

### Task 2: `seedContentVersion` constant

**Files:** Modify `lib/core/services/seed_service.dart`

- [ ] Add `const String seedContentVersion = 'v1';` near `MockSeedIds`, with a doc comment explaining it's hand-bumped whenever seed content (mock users/children/modules, curriculum banks) meaningfully changes — this is what the auto-sync provider compares against the locally stored version.
- [ ] Run `flutter analyze` — expect clean (additive-only).

---

### Task 3: `curriculumAutoSyncProvider`

**Files:** Modify `lib/providers/curriculum_sync_provider.dart`

- [ ] Add a `const String _curriculumSyncVersionPrefsKey = 'nova_academy_curriculum_sync_version';` (mirrors `locale_provider.dart`'s `_localePrefsKey` naming convention).
- [ ] Add `final curriculumAutoSyncProvider = FutureProvider<void>((ref) async { ... })`:
  - Await `ref.watch(currentUserModelProvider.future)`.
  - Owner check: `userModel?.role == UserRole.owner || isOwnerEmail(userModel?.email)`. Return early (no-op) if false.
  - Read `SharedPreferences.getInstance()`, get the stored version string.
  - If `!needsSync(storedVersion, seedContentVersion)`, return (no-op).
  - Otherwise, wrap in `try`/`catch`: call `seedDatabase(ref.read(firestoreProvider))`; on success, persist `seedContentVersion` to `SharedPreferences`. On any exception, swallow it silently — do **not** persist the version, so the next owner login retries.
- [ ] Import `currentUserModelProvider`/`firestoreProvider` (existing providers), `isOwnerEmail` (`app_constants.dart`), `seedDatabase`/`seedContentVersion` (`seed_service.dart`), `shared_preferences`.
- [ ] Run `flutter analyze` — expect clean.
- [ ] Commit: `feat: add curriculumAutoSyncProvider background sync`

---

### Task 4: Wire `OwnerAdminScreen` — activate trigger, remove manual card

**Files:** Modify `lib/features/dashboard/owner_admin_screen.dart`

- [ ] In `OwnerAdminScreen.build()`, add `ref.watch(curriculumAutoSyncProvider);` alongside the existing `ref.watch(currentUserModelProvider)`/`ref.watch(platformStatsProvider)` calls, with a short comment noting the value is intentionally ignored — watching triggers the provider's one-time side effect.
- [ ] Delete the `const _SeedDemoDataCard(),` line and its surrounding `SizedBox` spacing from the `ListView` children as needed to keep spacing consistent (the all-access banner should flow directly into the "Analytics" section header).
- [ ] Delete the `_SeedDemoDataCard`/`_SeedDemoDataCardState` classes entirely (current lines ~210-331).
- [ ] Remove the now-unused `import '../../core/services/seed_service.dart';` from this file if nothing else in it references `seed_service.dart` after the card is gone (the auto-sync provider import replaces it, but double check `seedDatabase`/`SeedSummary` aren't referenced anywhere else in this file).
- [ ] Run `flutter analyze` — expect clean, no unused-import warnings.

---

### Task 5: ARB cleanup

**Files:** Modify `lib/l10n/app_en.arb`, `lib/l10n/app_my.arb`

- [ ] Grep the full `lib/` tree for each of: `ownerSeedDemoDataTitle`, `ownerSeedDemoDataDescription`, `ownerSeedDemoDataConfirmTitle`, `ownerSeedDemoDataConfirmMessage`, `ownerSeedDemoDataSuccess`, `ownerSeedDemoDataError` to confirm zero remaining call sites after Task 4.
- [ ] Remove those six keys (plus their `@`-prefixed metadata entries, if any) from both `app_en.arb` and `app_my.arb`.
- [ ] Run `flutter gen-l10n` to regenerate `lib/l10n/app_localizations*.dart`.
- [ ] Run `flutter analyze` — expect clean.

---

### Task 6: Full verification and commit

- [ ] Run `dart format .`
- [ ] Run `flutter analyze` — must be clean.
- [ ] Run `flutter test` — full suite must stay green (86 tests as of Mission 4, plus the new `curriculum_sync_provider_test.dart` cases).
- [ ] Review the full diff (`git diff`) for anything unintended.
- [ ] Commit: `feat: replace manual seed button with background curriculum auto-sync`
- [ ] Update `docs/superpowers/plans/2026-07-20-six-missions-epic-plan.md`'s Mission 5 section to note completion (optional, matching the epic doc's own "just-in-time" per-mission convention — not required for the feature to be considered done).
