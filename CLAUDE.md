# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Nova Academy — a bilingual (English/Burmese) Flutter/Firebase EdTech app for Myanmar, covering Nursery through IGCSE. Firebase Spark (free) plan only; no paid APIs or paid packages.

## Commands

```bash
flutter pub get                                              # install deps
dart run build_runner build --delete-conflicting-outputs     # regen freezed/.g.dart/riverpod codegen (required after editing any model in lib/models/ or any @riverpod provider)
flutter gen-l10n                                              # regen lib/l10n/app_localizations*.dart after editing lib/l10n/app_en.arb or app_my.arb (also runs automatically on `flutter run`/`flutter build` because pubspec.yaml sets flutter: generate: true)
flutter analyze                                                # static analysis — must be clean before considering work done
flutter test                                                   # run all tests
flutter test test/seed_service_test.dart                       # run a single test file
dart format .                                                  # format
```

The project root path contains a space (`D:/MY PROJECT/CLAUDE/PROJECTS/Nova Acedemy`) — always quote it in shell commands.

There is no connected Firebase project yet (see Known Gaps below), so `flutter run` will boot but any screen touching Firebase Auth/Firestore falls back to signed-out/error states rather than crashing.

## Architecture

**State/data flow:** Riverpod providers (`lib/providers/`) are the single source of truth; screens are `ConsumerWidget`s that watch them. Data models (`lib/models/`) are Freezed classes with `fromJson`/`toJson` via `json_serializable`, generated as `*.freezed.dart` / `*.g.dart` — always re-run `build_runner` after touching a model or an `@riverpod`-annotated provider.

**Routing (`lib/routing/app_router.dart`):** a single `goRouterProvider` with all redirect/RBAC logic centralized in one `_redirect()` function, driven by a `_RouterRefreshNotifier` that listens to `authStateChangesProvider`, `currentUserModelProvider`, `activeProfileProvider`, and `gatekeeperUnlockProvider`. Route paths live in `AppRoutes` (string constants) — never hardcode path literals in screens. Do not add ad-hoc `Navigator.push`/imperative navigation outside this router; new routes/redirect rules belong in `_redirect()`.

**Two-layer profile model — this is the core concept to understand before touching routing or dashboards:**
1. A Firebase Auth user maps to one `UserModel` doc in `Users/{uid}` with a `UserRole` (`owner`/`parent`/`teacher`/`student`). This is "who is signed in."
2. `activeProfileProvider` holds an `ActiveProfile` (sealed: `SelfProfile` or `StudentProfile(ChildModel)`) — "which profile is currently being used," chosen on `/profile-selection`. A parent/teacher/owner account can switch into a `StudentProfile` (one of their linked children) to view the kid-facing UI.
   - `StudentProfile` active → user is confined to their `homeRouteForGrade(child.currentGrade)`; reaching `/parent`, `/teacher`, or `/owner` requires solving the `RoleGatekeeper` math puzzle (`lib/core/widgets/role_gatekeeper.dart`), which sets `gatekeeperUnlockProvider` for that visit only (auto-clears on leaving the area).
   - `SelfProfile` active → routed to the dashboard matching the account's actual `UserRole` (`defaultDashboardForRole`).

**Owner bypass is enforced in two independent places and must stay in sync if the owner email ever changes:**
- Client: `AppConstants.ownerEmail` / `isOwnerEmail()` in `lib/core/constants/app_constants.dart`, applied inside `currentUserModelProvider` (`lib/providers/auth_providers.dart`), which force-overrides `role = UserRole.owner` and `subscriptionTier = SubscriptionTier.premium` for that email regardless of what's stored in Firestore (or even if no `Users` doc exists yet).
- Server: mirrored in `firestore.rules`' `isOwner()` helper (`request.auth.token.email.lower() == 'lionzawlwin@gmail.com'`). The owner bypass is intentionally *not* a Firestore field — don't try to move it into data.

**Grade → UI tier mapping:** `Grade` enum (12 values, nursery through igcse, defined in `lib/models/child_model.dart`) maps to one of 3 `HomeTier`s via `homeTierForGrade()` (`lib/core/constants/home_tier.dart`), which `GradeHomeScreen` (`lib/features/home/grade_home_screen.dart`) dispatches to `NurseryKgHomeScreen` / `PrimaryHomeScreen` / `SecondaryIgcseHomeScreen`. When adding a new grade, update `Grade`, `homeTierForGrade()`, and the relevant ARB `grade*` keys together.

**Bilingual content convention:** anything shown to end users must exist in both `lib/l10n/app_en.arb` and `lib/l10n/app_my.arb` with real (non-placeholder) Burmese text, then regenerated via `flutter gen-l10n`. `LearningModuleModel` carries `titleEn`/`titleMy`/`descriptionEn`/`descriptionMy` directly (bilingual per-document, not ARB-based) since that's user-generated curriculum content, not app chrome. `ChildModel.aliasName` is intentionally a single language-neutral field, not bilingual. `LearningModuleModel.subject` values are lowercase English strings (e.g. `fractions`, `generalknowledge`) that `primary_home_screen.dart` and `secondary_igcse_home_screen.dart` map to icons/labels by convention — keep new subjects lowercase and matching an existing `subject*` ARB key root, or the icon/label lookup silently falls back to a default. Burmese text must never sit inside a fixed-height container — Burmese renders taller than English; follow the existing `FittedBox`/`Flexible` pattern instead of `maxLines`+ellipsis.

**Theme:** centralized in `lib/core/theme/app_theme.dart` (`AppColors`, `AppGradients`, `AppShadows`, `AppTheme.light/dark(languageCode)`). It picks `GoogleFonts.notoSansMyanmarTextTheme` for `my` and `GoogleFonts.plusJakartaSansTextTheme` otherwise. Add new shared visual tokens here rather than inlining colors/gradients in screens.

**Firestore collections** (`Users`, `Children`, `LearningModules` — full field list in `docs/firestore_schema.md`): documents never store their own `id` field inside the body (it's the doc id); read paths that need it inject `{'id': doc.id, ...doc.data()!}` before calling `fromJson` (see `currentUserModelProvider` for the reference pattern) and write paths do `model.toJson()..remove('id')` (see `seed_service.dart`, `children_providers.dart`). `firestore.rules` mirrors the RBAC rules client-side logic enforces, but is **not yet deployed** (no `firebase.json`/connected project).

**Mock-only state:** `lib/providers/mock_state_providers.dart` (teacher invites, module assignments) is deliberately in-memory, not persisted to Firestore — don't assume it survives a restart or wire it into real security rules without first adding a real collection.

## Deployment

- **Firebase project `nova-acedemy` is connected and live** (Auth + Firestore). `lib/firebase_options.dart` is populated via `flutterfire configure`, `lib/main.dart` calls `Firebase.initializeApp()`, and Android/iOS/web app configs are registered. Verified end-to-end via a real `identitytoolkit.googleapis.com` sign-in request against the live login screen. Every deploy domain (see below) is in the project's Firebase Auth "Authorized domains" list.
- **Web deploys automatically to two targets on every push to `master`:**
  - **Vercel** (`nova-academy-alpha.vercel.app`) — via Vercel's own native GitHub integration (not a workflow file). `vercel.json` clones the Flutter SDK and runs `flutter build web --release`, since Vercel's build image has no Dart/Flutter preinstalled and this repo has no `package.json`.
  - **Firebase Hosting** (`nova-acedemy.web.app`) — via `.github/workflows/firebase-hosting-merge.yml`, authenticated with the `FIREBASE_TOKEN` repo secret (a `firebase login:ci` token, not a service account).
- **Android CI** (`.github/workflows/android-build.yml`) builds a signed release APK *and* AAB (Play Store requires the AAB) on every push to `master`, uploaded as a downloadable workflow artifact. Signing uses a real upload keystore (RSA 2048, 10000-day validity, alias `upload`; project assumes Play App Signing enrollment) reconstructed in CI from the `ANDROID_KEYSTORE_BASE64`/`ANDROID_KEYSTORE_PASSWORD`/`ANDROID_KEY_ALIAS`/`ANDROID_KEY_PASSWORD` secrets. `android/app/build.gradle.kts` falls back to debug signing when `android/key.properties` is absent locally, so machines/PRs without the release key still build.
- **`android/app/google-services.json` is gitignored, not committed** — not a hard secret (it ships inside every built APK regardless), but kept out of this public repo's history as defense in depth. CI restores it from the `GOOGLE_SERVICES_JSON_BASE64` secret before building; for a local Android build, pull your own copy from Firebase Console > Project Settings > your Android app.

## Known Gaps (check before assuming a feature works end-to-end)

- `firestore.rules` deployment status wasn't independently re-verified this session, but demo-data seeding (see below) succeeded against the live project, which requires the owner-bypass rule to be active — strong indirect evidence the rules are deployed. Worth confirming directly (`firebase deploy --only firestore:rules` is a no-op if already current) before relying on this.
- `pubspec.yaml` has a load-bearing `dependency_overrides` block pinning `analyzer: 7.6.0` / `analyzer_plugin: 0.13.4` — required for `build_runner`/`custom_lint` to work with the current `riverpod_lint`/`custom_lint` versions. Don't remove it without re-deriving compatible versions if you bump Riverpod tooling (e.g. to Riverpod 3.x).
- Demo data (`seed_service.dart` — 1 parent, 2 teachers, 4 students "Alpha/Beta/Gamma/Delta" across all grade tiers, plus the full Nursery–Year6 bilingual curriculum bank) has been seeded into the live `nova-acedemy` Firestore project via the Owner Admin screen's "Seed Demo Data" button (owner-only) — there's no Node/Admin SDK on this Spark/client-only stack, so this isn't a standalone script. `tool/seed_database.dart` is a documentation stub only, not a runnable entry point.
- Secondary/IGCSE grade-band curriculum content hasn't been built yet (Nursery through Year 6 is complete) — scoped as its own future phase.
