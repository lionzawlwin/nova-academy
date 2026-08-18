# Mission 6 — "Candy Core" Design System — Implementation Plan

**Status: Complete.** All 11 tasks below landed and are live on `master` (commits `276bfe9` through `d14d311`, 2026-07-20). A later follow-up polish pass (2026-08-18) found and fixed several screens added *after* this mission shipped that had never been migrated onto `CandyBevelSurface` — see "Post-Mission Polish Follow-ups" at the end of this file for that work and its own commits.

> **For agentic workers:** REQUIRED SUB-SKILL: Use `superpowers:subagent-driven-development` or `superpowers:executing-plans` to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking. Read the full spec first: `docs/superpowers/specs/2026-07-20-mission6-candy-core-design.md`.

**Goal:** Implement the "Candy Core" two-layer 3D-bevel design system across Nova Academy's theme tokens, shared widget layer, and every screen identified in the design survey, without changing navigation/routing/information architecture (Missions 1-5's job, not this one's).

**Tech stack:** Flutter/Dart, Riverpod, the existing `AppTheme`/`AppColors`/`AppGradients`/`AppShadows` token classes in `lib/core/theme/app_theme.dart`.

**Preconditions:** Missions 1-5 merged first (stable navigation/UI to redesign, not a moving target) — do not start Task 1 until the epic plan confirms this.

**Sequencing principle:** Tokens and shared widgets first (Tasks 1-3), then screens ordered by *how load-bearing the two-layer bevel construction is* to that screen, ending with the cross-cutting contrast/dark-mode audit and final verification. This minimizes how long the app looks "half-migrated," per the spec's carried-over risk.

---

### Task 1: Extend `AppColors`/`AppGradients`/`AppShadows` with Candy Core tokens

**Files:** Modify `lib/core/theme/app_theme.dart`

- [x] Add new named color constants per the spec's palette table: `AppColors.candyPrimary` (`#6C4CFF`), the 4-color `AppColors.nurseryCandyPalette` (Bubblegum `#FF5CA8`, Sky Fizz `#29C4F5`, Sun Burst `#FFD23F`, Grass Bounce `#4ED87A` — replaces the 6-color `nurseryPalette` call sites, see Task 6), `AppColors.pathOrange` (`#FF7A29`), `AppColors.deepCobalt` (`#3B4CFF`), `AppColors.charcoalNavy` (`#1C2035`), `AppColors.cloudWhite`/`AppColors.inkWell` (surface pair), `AppColors.goldMedal` (`#FFC93C`) + `AppColors.goldMedalHighlight` (`#FFF3C4`), `AppColors.cherryCrush` (`#FF4D5E`).
- [x] Add a `AppColors.bevelShadowFor(Color face)` helper that darkens+desaturates a given face color by ~25% (`HSLColor` manipulation) — this is what makes every button's bevel derive from its own top color rather than a single global shadow gray, per the spec.
- [x] Do **not** remove the existing `primary`/`secondary`/`accent`/`primaryPalette`/`secondaryPalette` constants yet — later tasks retarget call sites onto the new tokens one screen at a time; removing old constants before every call site migrates would break compilation mid-rollout.
- [x] Run `flutter analyze` — expect clean (additive-only change).
- [x] Commit: `feat: add Candy Core color tokens to AppColors`

---

### Task 2: Build the shared bevel-surface widget (`CandyBevelSurface` / `Nova3dButton`)

**Files:** Create `lib/core/widgets/candy_bevel_surface.dart` (or similar — name during implementation)

This is the linchpin task the spec calls out: no reusable card/button/tile widget layer exists today, and Candy Core's two-layer construction must not be hand-duplicated across ~15 call sites.

- [x] Write a widget (`StatefulWidget`, since it owns tap-down/tap-up animation state) taking at minimum: `child`, `faceColor`, `bevelDepth` (defaults per spec: 10-12dp/6-8dp/3-4dp presets, expose as a simple enum or raw `double`), `borderRadius`, and an `onTap` callback.
- [x] Internally: a `Stack`/`SizedBox` with a bottom "shadow" container (`AppColors.bevelShadowFor(faceColor)`, offset down by `bevelDepth`) and a top "face" container whose vertical offset animates `0 → bevelDepth` on tap-down (`AnimationController`, ~80ms `Curves.easeOut`) and springs back ~150ms `Curves.elasticOut` on release.
- [x] Expose an optional `state` parameter (`idle`/`correct`/`incorrect`/`disabled`) so quiz options can drive face-color/border/icon changes through this one widget rather than each screen reimplementing the correct/incorrect visual logic — but keep this generic (color/icon slots, not quiz-specific knowledge) so Task 4-8 can all reuse it.
- [x] Unit-test the widget in isolation (`test/core/widgets/candy_bevel_surface_test.dart` or similar): tapping animates the face offset, `onTap` fires once per tap, disabled state ignores taps.
- [x] Run `flutter analyze` + the new test file — expect clean/green.
- [x] Commit: `feat: add CandyBevelSurface shared two-layer bevel widget`

---

### Task 3: Build the shared `GlossyBadge` widget

**Files:** Create `lib/core/widgets/glossy_badge.dart`

- [x] Circular or shield-shaped two-tone widget: darker rim color, lighter saturated face fill, fixed 45° diagonal white-to-transparent gradient sheen clipped to the top-left third (`ShaderMask` or a layered `CustomPaint`/gradient `Container`).
- [x] Parameterize: `value` (the number/icon to show), `faceColor`, `rimColor`, size.
- [x] This becomes the new implementation backing for star counts wherever `AnimatedStarBadge` (`lib/features/home/home_shared_widgets.dart:114-152`) is used — Task 8 wires it in; this task only builds the badge shape itself.
- [x] Run `flutter analyze` — expect clean.
- [x] Commit: `feat: add GlossyBadge shared reward-icon widget`

---

### Task 4: Restyle `McqQuizScreen`'s quiz answer tile and supporting components

**Files:** Modify `lib/features/lessons/mcq_quiz_screen.dart` (`_OptionCard` lines 277-358, `_SegmentedProgressBar` lines 176-208, `_QuestionView` lines 210-273, `_QuizResults` lines 363-445)

This is the fully-specified "sample component" from the spec — implement it exactly as described there before touching any other screen, since every other screen's quiz-launch call site depends on this screen's shared behavior staying intact.

- [x] Read the full current `_OptionCard` implementation first (idle/correct/incorrect/disabled state handling already exists — this task re-skins the *visuals* of each state, not the state machine itself).
- [x] Rebuild `_OptionCard` on top of `CandyBevelSurface` (Task 2) per the spec's fully-specified default/hover/pressed/correct/incorrect/disabled states — 6dp bevel, `Gold Medal` correct with glossy sweep, `Cherry Crush` incorrect with horizontal shake, disabled = desaturated/non-sinking.
- [x] Restyle `_SegmentedProgressBar` as a carved-in (inset) track per the spec's "progress bars" component section.
- [x] Restyle `_QuizResults`'s star badge card to use `GlossyBadge` (Task 3) with the count-up-plus-confetti motion from the spec.
- [x] Preserve the letter-badge (A/B/C/D) + `FittedBox`-wrapped label layout already required for bilingual safety.
- [x] `flutter analyze` clean; existing quiz-related tests (if any) still pass; manually verify via `flutter run` that a quiz plays through with the new visuals (tap an option, see correct/incorrect states, finish and see results).
- [x] Commit: `feat: restyle McqQuizScreen with Candy Core two-layer bevel tiles`

---

### Task 5: Restyle Primary (Year 1-6) home screen

**Files:** Modify `lib/features/home/primary_home_screen.dart` (`_PathNode`/`_LearningPath`/`_DashedPathPainter` lines 357-527, `_HeroHeader` lines 296-352)

- [x] Read the current path-node implementation in full before touching it — preserve the sine-wave positioning and dashed-line painter untouched; only the node's *surface* becomes a `CandyBevelSurface` (6-8dp bevel) instead of a flat circular icon avatar.
- [x] Push `AppColors.primaryPalette` 15-20% more saturated per the spec (or introduce Candy-Core-specific variants if the existing constants are reused elsewhere in a way that would be disrupted — check call sites first).
- [x] Restyle the hero header's "Start" CTA(s) with the full press-and-spring `CandyBevelSurface` treatment.
- [x] Wire in the "drop and bounce" entrance animation for newly-unlocked path nodes per the spec's motion section.
- [x] `flutter analyze` clean; manually verify the learning path still renders correctly and node taps still open the module bottom sheet (`_showNodeSheet`).
- [x] Commit: `feat: restyle Primary home screen path nodes with Candy Core bevel`

---

### Task 6: Restyle Nursery/KG home screen

**Files:** Modify `lib/features/home/nursery_kg_home_screen.dart` (`_NurseryTile` lines 214-310)

- [x] Read the current tile implementation (existing "breathe" idle pulse via randomized-offset `Timer.periodic` + `AnimatedScale`) before touching it.
- [x] Swap the 6-color `AppColors.nurseryPalette` for the tightened 4-color `AppColors.nurseryCandyPalette` (Task 1) across tile assignment logic.
- [x] Rebuild the tile surface on `CandyBevelSurface` at the deepest bevel preset (10-12dp).
- [x] Extend the existing idle "breathe" animation into the spec's "wobble" (add a ±1.5° rotation alongside the existing scale pulse, same randomized-offset timer pattern already in place).
- [x] Confirm the existing `FittedBox`-wrapped child-name/label text still fits inside the new bevel surface's padding — deepest-bevel tiles have proportionally less flat internal room, verify at both English and Burmese locale.
- [x] `flutter analyze` clean; manually verify tiles still animate and tap-to-navigate still works.
- [x] Commit: `feat: restyle Nursery/KG tiles with Candy Core bevel and 4-color palette`

---

### Task 7: Restyle Secondary/IGCSE home screen

**Files:** Modify `lib/features/home/secondary_igcse_home_screen.dart` (`_SubjectCard` lines 311-378, `_ModuleListTile` lines 380-467, `_ProgressSummary` lines 246-309, `_Header` lines 176-244)

- [x] Read all four components in full first — note the survey's finding that `_ModuleListTile` currently has *no* shadow at all (inconsistent with `_ProgressSummary`'s `AppShadows.card`) — Candy Core's shallow 3-4dp bevel should be applied consistently to both, resolving that pre-existing inconsistency as part of this task rather than carrying it forward.
- [x] Rebuild `_SubjectCard` and `_ModuleListTile` on `CandyBevelSurface` at the shallowest bevel preset (3-4dp).
- [x] Swap `AppColors.secondaryPalette`/`secondaryMuted` gradient for the spec's Deep Cobalt (`#3B4CFF`) on Charcoal Navy (`#1C2035`) jewel-tone pairing.
- [x] `_ProgressSummary`'s progress bar becomes the carved-in inset track style (shared implementation with Task 4's `_SegmentedProgressBar` restyle if the visual matches — check before duplicating).
- [x] Explicitly **do not** add confetti/wobble motion here — the spec's per-tier section drops that motion vocabulary entirely for this tier in favor of the quieter drop-and-bounce entrance only.
- [x] `flutter analyze` clean; manually verify the Explore button (fixed in Mission 6's own precondition — Task 8 of the Secondary/IGCSE curriculum plan, already shipped) still navigates correctly after restyling.
- [x] Commit: `feat: restyle Secondary/IGCSE dashboard with Candy Core bevel and Deep Cobalt palette`

---

### Task 8: Restyle shared cross-tier widgets

**Files:** Modify `lib/features/home/home_shared_widgets.dart` (`AnimatedStarBadge` lines 114-152, `SwitchProfileButton`/`GatekeeperEntryButton`/`GatekeeperEntryIconButton` lines 36-95)

- [x] Wire `AnimatedStarBadge` to render through `GlossyBadge` (Task 3) instead of its current implementation, preserving the existing `TweenAnimationBuilder` count-up mechanic but adding the bounce-overshoot final-digit scale and confetti burst per the spec's motion section.
- [x] Restyle `GatekeeperEntryButton`/`GatekeeperEntryIconButton` as `CandyBevelSurface`-based buttons (shallow bevel, consistent with whatever tier they appear on — these are used from both Primary and Secondary home screens).
- [x] **Coordinate with Mission 1**: `GatekeeperEntryButton` calls into `requestGatedNavigation` (`lib/core/widgets/role_gatekeeper.dart`), which Mission 1 fixes first. Restyle the button's visuals only — do not touch its `onPressed`/navigation logic, which Mission 1 owns.
- [x] `flutter analyze` clean; manually verify star badges animate correctly and gatekeeper entry buttons still trigger the puzzle dialog.
- [x] Commit: `feat: restyle shared star badge and gatekeeper entry buttons with Candy Core`

---

### Task 9: Restyle the RoleGatekeeper puzzle dialog

**Files:** Modify `lib/core/widgets/role_gatekeeper.dart` (`_RoleGatekeeperDialog` lines 69-197)

- [x] Restyle the arithmetic-question pill and Submit/Cancel buttons with the `CandyBevelSurface` treatment (shallow bevel, consistent with dialog chrome staying calm per the spec's "dialogs stay flat, only actionable elements bevel" rule).
- [x] **Do not touch `_submit()`'s logic, the 500ms success delay, or the `Navigator.pop`/`context.go` flow** — Mission 1 owns and will have already fixed that by the time this task runs (Mission 6 is explicitly sequenced after Missions 1-5). This task is visual-only.
- [x] `flutter analyze` clean; manually verify the puzzle still accepts input and submits correctly after restyling.
- [x] Commit: `feat: restyle RoleGatekeeper dialog with Candy Core bevel buttons`

---

### Task 10: Dark mode and WCAG contrast audit

**Files:** Review across all files touched in Tasks 1-9; fix in place.

- [x] Verify every new Candy Core surface (bevel buttons, badges, dialogs) renders correctly in both `AppTheme.light`/`AppTheme.dark` — confirm `AppColors.bevelShadowFor()` produces a visible bevel in both brightness modes, not just light (mirroring `AppShadows`' existing brightness-aware precedent).
- [x] Run a real contrast check (not eyeballed) for every text/icon-on-accent-color pairing introduced this mission, especially `Gold Medal`/`Sun Burst`-family light accents flagged as a risk in the spec — white text on these is likely to fail WCAG AA. Where a pairing fails, either darken the accent slightly or switch to dark text on that specific accent, and note the exception in the spec doc.
- [x] Confirm bilingual text (English and Burmese) still fits every restyled component without clipping — re-check `FittedBox`/`Flexible` usage introduced in Tasks 4-9 at both locales.
- [x] Commit any fixes: `fix: resolve Candy Core dark-mode/contrast issues found in audit`

---

### Task 11: Full verification, format, and push

**Files:** none (verification only)

- [x] `dart format` every file touched across Tasks 1-10.
- [x] `flutter analyze` — expect `No issues found!`.
- [x] `flutter test` — full suite green, including any new widget tests added in Task 2.
- [x] Manual pass: `flutter run` through all three tiers (Nursery, Primary, Secondary/IGCSE) plus a full quiz playthrough plus the RoleGatekeeper puzzle, in both light and dark mode, in both English and Burmese locale (per Mission 3's language switcher once that lands, or via the existing profile-selection toggle in the meantime).
- [x] Commit any formatting fixes, then push to `origin master`.
- [x] Confirm CI (Android build + Firebase Hosting deploy) stays green on the final pushed commit.

---

## Post-Mission Polish Follow-ups (2026-08-18)

Several interactive lesson screens were added to the app *after* this mission shipped (`fill_in_blank_screen.dart`, `drag_match_screen.dart`, `course_pathway_browser.dart`, `quantum_flash_screen.dart`, and more) and mostly picked up `CandyBevelSurface` correctly on their own. A follow-up audit found a handful of genuine gaps — surfaces that stayed on the pre-Candy-Core flat treatment — and fixed each as a like-for-like visual swap, no logic changes:

- `ef52bc4` — `NurseryCompletionOverlay`'s "Done" button (flat `FilledButton` → bevel), shared across five Nursery/KG activity types.
- `075b8b1` — Quantum Flash's Quick Check `_AnswerChip` (flat `Material`/`InkWell` with ad-hoc hex colors → bevel with the standard gold/cherry state language).
- `0f416f5` — Five more flat `Continue`/`Done` buttons: `PhotoGuessScreen`, `SortingScreen`, `ReadingScreen` (×2), and `nursery_lesson_screen.dart`'s own local duplicate of the completion overlay (never migrated when the shared version was extracted).
- `194c7fa` — `course_pathway_week_screen.dart`'s remedial-review lesson rows (flat `InkWell`+`Container` → shallow bevel, matching the `_ModuleListTile` list-row pattern).

Confirmed correctly out of scope and left untouched: `achievement_share_card.dart` (intentionally static — captured as a share image, never tapped) and all of `dashboard`/`profiles`/`children`/`auth` (parent/admin-facing chrome, standard Material controls are the right call there, not the kid-facing gamified bevel treatment).
