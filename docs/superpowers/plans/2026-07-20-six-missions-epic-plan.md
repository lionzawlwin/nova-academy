# The Six Missions — Epic Plan

**Date:** 2026-07-20
**Status:** Officially initialized. This is an epic-level overview, not a step-by-step execution plan — each mission gets its own detailed spec + plan doc (matching this repo's existing per-phase convention under `docs/superpowers/`) written just-in-time, right before work starts on that mission. Phase 3 (Secondary/IGCSE curriculum, `2026-07-20-secondary-igcse-curriculum.md`) is complete; this epic is the next body of work.

**Scope:** Six independent missions covering a critical bug fix, a navigation architecture fix, a UX feature, an admin-screen cleanup, an automation improvement, and a full visual redesign. Missions 1-5 are scoped, targeted fixes. Mission 6 is a large, cross-cutting design effort that the other five should land *before* it starts, so the redesign has a stable, bug-free surface to restyle rather than a moving target.

**Suggested execution order:** 1 → 2 → 3 → 4 → 5 → 6. Missions 1-2 are routing/navigation correctness bugs (fix the foundation first). 3-5 are independent, mid-sized features/cleanups that can be reordered freely. 6 is deliberately last and largest.

---

## Mission 1: Fix "Parent & Teacher Area" Security Gate Bug

**Reported symptom:** The RoleGatekeeper math puzzle dialog (`lib/core/widgets/role_gatekeeper.dart`) is unresponsive on submit — doesn't navigate anywhere after a student enters the correct answer.

**Grounding done this session:** Read the full call chain —
- `_RoleGatekeeperDialogState._submit()` (role_gatekeeper.dart:89-114): on a correct answer, sets `_justSolved = true`, waits 500ms, then `Navigator.of(context).pop(true)`.
- `showRoleGatekeeperDialog()` / `requestGatedNavigation()` (role_gatekeeper.dart:43-67): awaits the dialog result, and on success sets `gatekeeperUnlockProvider` to `protectedPrefixOf(targetPath)` then calls `context.go(targetPath)`.
- Call sites: `GatekeeperEntryButton` / `GatekeeperEntryIconButton` in `home_shared_widgets.dart:58-110`, both routing through `_enterGatedArea` → `requestGatedNavigation` correctly.
- Router-side gate: `_redirect()` in `app_router.dart:216-225` checks `ref.read(gatekeeperUnlockProvider) == protectedPrefixOf(path)` for a `StudentProfile`, which lines up with what `requestGatedNavigation` sets.

**Conclusion from static reading: no defect is visible in this code path.** This does not mean the bug isn't real — it means the root cause is either a timing/race condition (e.g. `context.mounted` racing the 500ms delayed pop, or a rebuild dropping the Riverpod state update before `_redirect` re-runs), a platform-specific interaction issue (dialog not receiving focus/taps on a specific device/browser), or the report describes a regression that needs to be *reproduced live* before it can be diagnosed.

**Plan for Mission 1's own spec/plan doc:** Start with `superpowers:systematic-debugging` — reproduce first (run the app, sign in as a student profile, trigger the gate, submit a correct answer, capture what actually happens: does the dialog freeze, does it pop but not navigate, does it navigate and immediately redirect back?). Only write a fix once the actual failure mode is observed, not guessed.

---

## Mission 2: Fix Global Back Navigation (go_router)

**Reported symptom:** Pressing the system/hardware back button exits the app entirely instead of returning to the previous screen.

**Grounding done this session:**
- No `PopScope` or `WillPopScope` widget exists anywhere in `lib/` (confirmed via repo-wide search) — there is no custom back-button interception.
- Every route transition found (`GatekeeperEntryButton`'s `context.go(targetPath)`, the redirect logic in `_redirect()`) uses **`context.go()`**, which replaces the router's entire location/history stack rather than pushing onto it. The one confirmed `context.push()` usage is the Secondary/IGCSE Explore button added this session (`secondary_igcse_home_screen.dart`), which correctly returns to the previous screen on back.
- `_redirect()` (`app_router.dart:175-268`) runs on every navigation and itself returns route strings that GoRouter treats as the effective location — combined with `.go()`-based navigation elsewhere, this likely flattens the navigation stack to a single entry per redirect cycle, so there's nothing left to pop and the system back button falls through to closing the app.

**Plan for Mission 2's own spec/plan doc:** Audit every `context.go(...)` call site in `lib/features/` and `lib/routing/`; classify each as "this should be a `push` (drill-down, e.g. dashboard → settings, home → lesson detail)" vs. "this should stay a `go` (auth/redirect/tier transitions where the old screen genuinely shouldn't be revisitable, e.g. login → home, profile-selection → grade home)." Add `PopScope` only where an explicit custom back-behavior is needed (e.g. confirm-before-exit on a quiz in progress) — most of the fix should be push/go correctness, not PopScope interception.

---

## Mission 3: Implement Global Language Switcher

**Reported ask:** Riverpod-based dynamic EN/MY localization with a toggle button in the global AppBar.

**Grounding done this session — this is smaller than it sounds:**
- `lib/providers/locale_provider.dart` already has a complete `LocaleNotifier` (Riverpod `Notifier<Locale>`): persists the chosen language via `shared_preferences`, restores it on boot, and exposes `setLocale()` plus a `toggleEnglishMyanmar()` convenience method.
- `localeProvider` is already wired into `MaterialApp.router`'s `locale:` parameter in `main.dart` — changing the provider's state already re-renders the whole app in the new language today.
- Per `toggleEnglishMyanmar()`'s doc comment, a toggle already exists, but only on the profile-selection screen (`lib/features/profiles/profile_selection_screen.dart`) — not globally accessible from every screen's AppBar.

**Plan for Mission 3's own spec/plan doc:** This is primarily a **UI placement task**, not new state-management work — add a shared AppBar action/widget (e.g. an `EN`/`MY` toggle icon button reading/writing `localeProvider`) and thread it into the AppBars of the screens that currently lack one (dashboards, grade-home screens, lesson screens). Confirm every screen has an AppBar to put it in first — some student home screens (`primary_home_screen.dart`, `secondary_igcse_home_screen.dart`) use a custom `_Header` container instead of a real `AppBar`, so "global AppBar" may need to mean "a shared header widget," not literally `Scaffold.appBar` everywhere.

---

## Mission 4: Professionalize Owner Dashboard

**Reported ask:** Remove fake platform analytics and the manual seed button to keep the dashboard clean.

**Grounding done this session — confirmed exactly as described**, both in `lib/features/dashboard/owner_admin_screen.dart`:
- `_MockPlatformStats` (lines 16-30): hardcoded `totalActiveUsers`, `monthlyRevenueUsd`, `premiumSubscribers`, and a fake revenue trend array, rendered as stat cards and a line chart (`fl_chart`), explicitly labelled in the UI via `l10n.ownerMockDataNotice` as demo data.
- `_SeedDemoDataCard` / `_SeedDemoDataCardState` (lines 300-421): the manual "Seed Demo Data" button and its confirm dialog.

**Open design question this mission's own plan needs to resolve:** if the fake analytics section is simply deleted, does the Owner Dashboard have *anything* left besides the seed button? Check what else `OwnerAdminScreen` renders (the all-access banner) before finalizing scope — Mission 4 may need to define what a "professional" owner dashboard shows instead of analytics (e.g. real counts from Firestore: total users/children/modules by grade), not just subtract the fake content. Also coordinate directly with Mission 5: if auto-sync (Mission 5) replaces the manual seed button's *purpose*, Mission 4 should remove the button only after Mission 5 lands, or the owner loses their only way to seed data during the gap.

---

## Mission 5: Background Auto-Sync Curriculum Data

**Reported ask:** Auto-sync seed/curriculum data on app launch/login in the background instead of requiring a manual button click.

**Grounding done this session:**
- `seedDatabase()` (`lib/core/services/seed_service.dart`) is idempotent by design (fixed, not auto-generated, doc ids — see `MockSeedIds`'s doc comment) specifically so it's "safe to re-run... as often as needed" — this was already built with auto-sync-style repeated invocation in mind, which makes Mission 5 more straightforward than a from-scratch idempotency design.
- Currently only invoked from `_SeedDemoDataCardState._confirmAndSeed()`, gated by a confirm dialog, only reachable by the owner account.

**Plan for Mission 5's own spec/plan doc:** Decide the trigger point (app launch vs. owner login specifically — note this project has **no Cloud Functions/Node Admin SDK** per `CLAUDE.md`'s Spark-plan constraint, so "background" here means "client-side, non-blocking, no confirm dialog," not a server-side cron). Needs a way to avoid re-running the full batch write on every single launch (e.g. a version/hash check, or a "last synced" timestamp in `SharedPreferences` or a Firestore doc) to respect the Spark free-tier daily write quota `CLAUDE.md` calls out. Directly enables Mission 4 removing the manual button.

---

## Mission 6: World-Class Gamified 3D/Neumorphic UI/UX Overhaul

**Reported ask:** Redesign the core interface (buttons, typography, micro-animations) to match top-tier educational apps, in a gamified/neumorphic 3D direction.

**Scope note:** Deliberately sequenced last. Theme tokens live centrally in `lib/core/theme/app_theme.dart` (`AppColors`, `AppGradients`, `AppShadows`, `AppTheme.light/dark`), which is good news for a redesign — there's one place to change tokens, but every screen consumes them, so this mission touches the whole app's visual surface. Should start only once Missions 1-5 are merged, so the redesign lands on stable navigation/UI rather than needing rework after.

**Immediate next step (this session, ultracode workflow):** Survey the current theme and generate 3 concrete gamified/neumorphic design-direction proposals for review — see workflow output printed in this session's conversation. Once a direction is chosen, that becomes Mission 6's own spec + plan doc (component-by-component: buttons, cards, quiz screens, nav, micro-animations, dark mode, and explicit per-tier treatment for Nursery/KG vs. Primary vs. Secondary/IGCSE, matching the existing "muted-premium palette for the older tier" pattern already established in `secondary_igcse_home_screen.dart`).
