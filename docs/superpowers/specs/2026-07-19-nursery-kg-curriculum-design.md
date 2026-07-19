# Nursery + KG Bilingual Curriculum — Design

**Date:** 2026-07-19
**Status:** Approved, ready for implementation plan
**Scope:** Phase 1 of a larger Nursery→Year 6 curriculum effort. This phase covers only the Nursery and KG grades (the two `Grade` values mapped to `HomeTier.nursery`).

## Background

An earlier session's handoff claimed a "massive Nursery-Year6 curriculum" workflow was interrupted mid-run. On inspection, no evidence of that work exists: this project is not a git repository, no curriculum-related files exist anywhere, and `seed_service.dart` is still the original small demo version (3 users, 4 children, 7 modules). This spec starts the work fresh rather than assuming any prior progress.

Two architectural facts, discovered during investigation, shape this design:

1. **`NurseryKgHomeScreen` doesn't consume Firestore modules at all.** Its 4 subject tiles (Phonics/Math/Art/General Knowledge) all navigate to the same hardcoded fruit-matching drag-and-drop game (`NurseryLessonScreen`) regardless of which tile was tapped.
2. **`docs/firestore_schema.md` documents a deliberate rule: real content (question/activity data) is never stored as Firestore document fields** — it ships as compiled Dart data (see `mock_quiz_data.dart`) for Spark free-tier read-quota reasons. `LearningModuleModel` Firestore docs are catalog metadata only (title/description/subject/grade/stars/path grouping). The doc explicitly anticipates "a forthcoming `seed_data/` registry" as the pattern for exactly this kind of curriculum expansion.

This design follows that existing pattern rather than introducing a new one.

## Goals

- Seed a real, testable bilingual (English/Burmese) curriculum for Nursery + KG across 4 subjects: Phonics, Math, General Knowledge, and STEM (new).
- Make it *visibly* different per subject when a user taps a tile and hits "Seed Demo Data" — not just inert Firestore rows.
- Keep the existing Nursery UX philosophy intact: one tap, zero reading required, no new decision screens.
- Stay within the app's existing architectural conventions (bilingual field pairs, Firestore-content-free activity data, `flutter analyze` clean, tests for data integrity).

## Non-goals (this phase)

- Year 1–6 content (later phase, once this pattern is validated).
- A lesson/module picker UI (all subjects keep the current single-tap-to-play flow).
- Persisting quiz/lesson completion or star totals back to Firestore (not done today for the existing fruit game either — pre-existing gap, out of scope here).
- Chunked/batched Firestore writes — total seeded document count (~38) is far under Firestore's 500-op batch cap, so this would be speculative complexity with no present need.

## Design

### 1. One canonical Dart content registry

New file: `lib/features/lessons/nursery_kg_activity_bank.dart`.

Defines:
- `MatchPairItem` — a plain Dart class (not Freezed, matching the existing `QuizQuestion` convention in `mock_quiz_data.dart`): `id`, `emoji`, `colorValue` (int, `0xFFRRGGBB`), `labelEn`, `labelMy`.
- `NurseryActivityDef` — one seeded module's *full* definition: `id`, `subject`, `grade` (`Grade.nursery` or `Grade.kg`), `contentType`, `titleEn`/`titleMy`, `descriptionEn`/`descriptionMy`, `starsReward`, `items` (`List<MatchPairItem>`, 5 per module).
- A single `const List<NurseryActivityDef> nurseryKgActivityBank` — 2 grades × 4 subjects × 3 modules = 24 definitions, 5 items each = 120 bilingual content items, all real (non-placeholder) text.
- `List<MatchPairItem> matchPairsForModule(String moduleId)` — looks up a definition's items by id; falls back to a small generic/fruit set (the current hardcoded pairs, kept as `_fallbackPairs`) if the id isn't found, so the lesson screen never shows an empty state.

This is the **single source of truth** — both the Firestore seed generator and the lesson screen's content lookup read from it, so there's no second hand-maintained list that can drift out of sync.

### 2. `seed_service.dart` changes

New function `mockSeedNurseryKgModules()` maps `nurseryKgActivityBank` to `LearningModuleModel` instances (id/subject/grade/contentType/titles/descriptions/starsReward only — `items` is dropped, never written to Firestore). Wired into `seedDatabase()` alongside the existing three seed calls, still inside the single existing `batch.commit()` (no chunking needed at this volume). `SeedSummary.modulesWritten` naturally includes the new count.

Ids are generated deterministically (e.g. `mock-nursery-math-1`, `mock-kg-stem-3`) inside the registry itself, rather than 24 new hand-written `MockSeedIds` constants — keeps that class from ballooning for a pattern the ids don't otherwise need to be referenced by name.

### 3. `NurseryLessonScreen` generalization

Currently takes no content parameters — its `_buildPairs()` returns a hardcoded fruit list. Changes:
- Accepts an optional `List<MatchPairItem>? pairs` constructor parameter (defaults to the existing hardcoded fruit set when null/empty, preserving current behavior for any caller that doesn't pass content).
- Internal `_MatchPair`-based widgets are re-pointed at `MatchPairItem` (structurally identical fields), or `_MatchPair` is removed in favor of using `MatchPairItem` directly — implementation detail for the plan to settle, functionally no behavior change to the drag/drop/confetti mechanics themselves.

### 4. `NurseryKgHomeScreen` wiring

- Add a 5th tile: STEM (new icon, e.g. `Icons.science_rounded`; 6th color already available in `AppColors.nurseryPalette`). Existing Art tile is untouched — no seeded content for Art in this phase, keeps its current fallback behavior.
- On tile tap: read `learningModulesProvider`, filter to the active child's `Grade` (`nursery` or `kg`) and the tapped subject key, pick the first module (lowest id/first match — exact tie-break is a plan detail), look up its `matchPairs` via `matchPairsForModule(module.id)`, and push `NurseryLessonScreen` with that data plus the subject's localized label/color (as today).
- If no module matches (not yet seeded, or Firestore not connected), falls through to the screen's existing no-args fallback behavior — the tile still opens the fruit game rather than erroring or showing nothing.

### 5. Localization

Add `subjectStem` to both `app_en.arb` (`"STEM"`) and `app_my.arb` (a real Burmese label — a short, age-appropriate phrase, not a literal transliteration), then regenerate via `flutter gen-l10n`.

### 6. Documentation updates

- `docs/firestore_schema.md`: no schema change needed (no new fields), but the "Design note: quiz question content lives in Dart, not Firestore" section should get a one-line update pointing at the new `nursery_kg_activity_bank.dart` registry as the first realized instance of the "forthcoming `seed_data/` registry" it already anticipates.
- `CLAUDE.md`: the "Known Gaps" note claiming no Firebase project is connected is now stale (`firebase_options.dart`, `firebase.json`, `google-services.json` all exist on disk) — worth a follow-up correction, but treated as a separate small fix, not bundled into this feature's plan.

### 7. Testing

- Extend `test/seed_service_test.dart`: new module ids are unique (including against the 7 legacy ids), every module's bilingual fields are non-empty, `grade` is `nursery` or `kg` only, subject is one of the 4 expected keys.
- New test file (or extend an existing lessons test if one exists) covering `nurseryKgActivityBank`: exactly 24 defs, 5 items each, no duplicate ids, `matchPairsForModule` returns the right items for a known id and the fallback set for an unknown one.
- `flutter analyze` clean; `dart run build_runner build --delete-conflicting-outputs` not required (no model/provider changes — no Freezed/riverpod codegen touched).
- Manual verification is limited to widget-level behavior I can reason about from source; there's no connected/seeded Firebase environment in this workspace for me to click through end-to-end, so I'll state plainly what was verified by test vs. by inspection.

## Open questions / risks

- None blocking. The main product judgment call (module-picker vs. direct-launch) was explicitly resolved during design review: direct-launch, no picker, for this phase.
