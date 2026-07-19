# Year 1-6 Bilingual Curriculum + Grade-Keyed Quiz Architecture — Design & Plan

**Date:** 2026-07-20
**Status:** Approved by explicit user directive (autonomous execution requested); written for traceability, matching Phase 1's convention.
**Scope:** Phase 2 of the Nursery→Year 6 curriculum effort. Covers Year 1 through Year 6, 4 subjects (Math, English, Science, STEM/Coding), plus the architectural fix that makes quiz content actually grade-specific instead of shared globally by subject.

## Background / problem being fixed

`lib/features/lessons/mock_quiz_data.dart`'s `quizQuestionsForSubject(subject)` is keyed **only by subject** — every grade that plays a "math" quiz gets the identical 4-question `_mathQuestions` bank, whether the student is Year 1 or Year 6. This was a known, explicitly-flagged limitation from Phase 1's investigation. The user has now asked to fix it as part of seeding real Year 1-6 content.

**Key existing hook that makes this a small fix, not a rewrite:** `PrimaryQuizArgs` (`primary_quiz_screen.dart`) already carries a `moduleId` field, already populated by `primary_home_screen.dart`'s `_showNodeSheet` (`moduleId: node.module?.id`), but currently unused by `_PrimaryQuizScreenState` — its own doc comment calls it out as "for a future phase that persists quiz results." That future phase is now: since module ids already encode grade+subject+index (e.g. `mock-year1-math-1`), routing the quiz lookup through **module id** rather than subject alone makes every module's quiz genuinely distinct, without adding any new key scheme, new `PrimaryQuizArgs` fields, or touching `primary_home_screen.dart` at all.

## Design (mirrors the Phase 1 Nursery/KG pattern exactly, MCQ instead of match-pairs)

1. **New Dart content registry:** `lib/features/lessons/primary_curriculum_bank.dart`. Reuses the existing `QuizQuestion` class from `mock_quiz_data.dart` unchanged (no duplicate item type). Defines `PrimaryActivityDef` (id, subject, grade, contentType, titleEn/My, descriptionEn/My, starsReward, `questions: List<QuizQuestion>`) — structurally identical in spirit to Phase 1's `NurseryActivityDef`. One canonical `const List<PrimaryActivityDef> primaryCurriculumBank`.
2. **Volume:** 6 grades (year1-year6) x 4 subjects (math, english, science, stem) x 3 modules = **72 modules**, 5 questions each = **360 new bilingual MCQ questions**. Same "3 modules per grade+subject" shape as Phase 1 for consistency.
3. **Lookup function:** `List<QuizQuestion> quizQuestionsForModule(String? moduleId, String subject)` — if `moduleId` is non-null and found in `primaryCurriculumBank`, return its `questions`; otherwise fall back to the existing legacy `quizQuestionsForSubject(subject)` (covers placeholder nodes shown before any module is seeded, and the 2 pre-existing legacy modules from `mockSeedLearningModules` that predate this registry). This is the exact fallback philosophy Phase 1 used (`matchPairsForModule` falling back to `_fallbackPairs`).
4. **`seed_service.dart`:** add `mockSeedPrimaryCurriculumModules()`, deriving `LearningModuleModel` catalog docs from `primaryCurriculumBank` (metadata only — `questions` dropped, never written to Firestore, per the same documented "content lives in Dart" rule). Wire into `seedDatabase()`'s modules list alongside the Nursery/KG one.
5. **`primary_quiz_screen.dart`:** one-line change — `_questions = quizQuestionsForSubject(widget.args.subject)` becomes `_questions = quizQuestionsForModule(widget.args.moduleId, widget.args.subject)`. Add the import. Nothing else in this file changes.
6. **`primary_home_screen.dart`:** add a `'stem'` case to `_iconForSubject()` (currently falls through to the generic default icon for that key) — `Icons.memory_rounded`. No other change needed; `l10n.subjectStem` already exists from Phase 1, and this screen already reads modules per-grade from Firestore correctly today.
7. **Docs:** one-line addition to `docs/firestore_schema.md`'s existing design note, same pattern as Phase 1.

## Content matrix (Cambridge-aligned progression, difficulty scaling Year 1 → Year 6)

| Grade | Math | English | Science | STEM/Coding |
|---|---|---|---|---|
| Year 1 | Numbers to 20, add/subtract within 20, basic shapes | Phonics & sight words, simple sentences | Human body basics, plants, weather & seasons | Sequencing & basic instructions, simple patterns |
| Year 2 | Numbers to 100, add/subtract within 100, intro multiplication (2/5/10) | Reading comprehension basics, nouns/verbs/adjectives | Animals & habitats, materials & their properties | Loops & repeat patterns, basic problem solving |
| Year 3 | Times tables to 10, intro fractions, measurement (length/mass) | Grammar & tenses, vocabulary building | Forces & magnets, states of matter, life cycles | Conditionals (if/then logic), debugging simple sequences |
| Year 4 | Four operations with larger numbers, fractions & decimals intro, area & perimeter | Punctuation & sentence types, synonyms/antonyms | Sound & light, electricity basics, digestive system | Algorithms & flowcharts, intro to variables |
| Year 5 | Fractions/decimals/percentages, negative numbers, angles & shape properties | Figurative language, clauses, comprehension | Earth & space (solar system), material changes | Functions/procedures, combining data & loops |
| Year 6 | Ratio & proportion, algebra intro, advanced fractions/decimals/percentages | Advanced comprehension, persuasive/narrative writing, grammar mastery | Evolution & inheritance basics, circuits, classification | Computational thinking review, simple project design, intro to binary |

Each cell = 3 modules (topics split across the cell's themes), 5 questions each. `starsReward` scales by grade: Year1=10, Year2=12, Year3=14, Year4=16, Year5=18, Year6=20 (matches the existing precedent of higher grades earning more stars).

Module ids: `mock-<grade>-<subject>-<n>` (e.g. `mock-year3-science-2`), same convention as Phase 1.

## Testing

- New `test/primary_curriculum_bank_test.dart`: 72 modules, 5 questions each, unique ids (module + question), grade in year1..year6, subject in the 4 expected keys, 18 modules per subject / 12 per grade (6x4 grid, 3 each), bilingual non-empty/non-equal fields, `correctIndex` valid and `optionsEn.length == optionsMy.length` for every question, `quizQuestionsForModule` returns the right questions for a known id and falls back correctly for an unknown one.
- Extend `test/seed_service_test.dart` for `mockSeedPrimaryCurriculumModules` (same shape as the Nursery/KG group).
- `flutter analyze` clean, `flutter test` full suite green, `dart format` clean.

## Non-goals

- Year 1-6 UI changes beyond the `_iconForSubject` STEM case — `primary_home_screen.dart`'s path/node UI already works per-grade.
- Persisting quiz completion to Firestore (still out of scope, same as Phase 1).
- Secondary/IGCSE grades (a later phase).
