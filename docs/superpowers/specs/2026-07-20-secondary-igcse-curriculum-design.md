# Secondary/IGCSE Curriculum + Quiz Playback — Design & Plan

**Date:** 2026-07-20
**Status:** Approved via brainstorming session; written for traceability, matching Phase 1 and Phase 2's convention.
**Scope:** Phase 3 of the Nursery→IGCSE curriculum effort. Covers secondary1, secondary2, secondary3, and igcse grades, 6 subjects (algebra, physics, chemistry, biology, ict, socialstudies), plus the missing piece that makes this tier's content actually playable — it currently has none.

## Background / problem being fixed

Unlike Primary (Phase 2), where `primary_quiz_screen.dart` already existed and just needed a grade-specific lookup fix, **Secondary/IGCSE has no working content playback at all**:

- `secondary_igcse_home_screen.dart`'s `_SubjectCard.onTap` shows a "coming soon" snackbar.
- The "Upcoming Modules" list's `_ModuleListTile` opens a detail dialog with an "Explore" button that *also* shows "coming soon."
- The only existing content for this tier is one seed module (`moduleDeltaKinematics`, IGCSE physics, `contentType: 'video'`) — no interactive/quiz content exists anywhere in this tier.

So this phase has two deliverables, not one: the curriculum content itself, and the first working quiz-playback path for this tier.

## Design

### Content bank

New `lib/features/lessons/secondary_curriculum_bank.dart`, structurally identical to `primary_curriculum_bank.dart`:

1. `SecondaryActivityDef` (id, subject, grade, contentType, titleEn/titleMy, descriptionEn/descriptionMy, starsReward, `questions: List<QuizQuestion>`) — reuses the existing `QuizQuestion` class unchanged, same as Phase 2 reused it from `mock_quiz_data.dart`.
2. **Volume:** 4 grades (secondary1, secondary2, secondary3, igcse) × 6 subjects (algebra, physics, chemistry, biology, ict, socialstudies) × 3 modules = **72 modules**, 5 questions each = **360 new bilingual MCQ questions**. Same "3 modules per grade+subject" shape as Phase 2.
3. One canonical `const List<SecondaryActivityDef> secondaryCurriculumBank`.
4. Module ids: `mock-<grade>-<subject>-<n>` (e.g. `mock-secondary2-physics-2`), same convention as Phase 2. `<grade>` uses the `Grade` enum's JSON values (`secondary1`, `secondary2`, `secondary3`, `igcse`).
5. `starsReward` continues Phase 2's +2-per-grade progression from Year6's 20: secondary1=22, secondary2=24, secondary3=26, igcse=28.
6. All 6 subjects stay uniform across all 4 grades — no per-grade subject differentiation, matching what `secondary_igcse_home_screen.dart` already hardcodes today (`_secondarySubjects`). IGCSE gets no subject list of its own; it's the rigor cap of the same 6 subjects, not a separate track.
7. Question format is MCQ throughout, including IGCSE — no new question-type infrastructure. IGCSE rigor comes from content depth and harder distractors, the same trick Phase 2 used for Year5/6's "fill-in-the-blank"/"syntax error" Python questions phrased as MCQ.

### Generalizing the quiz screen (rename, not duplicate)

`PrimaryQuizScreen`/`PrimaryQuizArgs` (`lib/features/lessons/primary_quiz_screen.dart`) contain no Primary-specific logic — they take `(title, subject, stars, moduleId)`, look up questions via a function, render MCQs, track score. The "Primary" in the name is historical. Per this repo's own precedent (`refactor: generalize NurseryLessonScreen to play back seeded content`, commit 712c492), generalize rather than duplicate:

1. Rename `primary_quiz_screen.dart` → `mcq_quiz_screen.dart`, `PrimaryQuizScreen` → `McqQuizScreen`, `PrimaryQuizArgs` → `McqQuizArgs`. Update all call sites (`app_router.dart`, `primary_home_screen.dart`'s `_showNodeSheet`).
2. Extend `quizQuestionsForModule(moduleId, subject)` in `primary_curriculum_bank.dart` (or a new shared location — see below) to search `secondaryCurriculumBank` in addition to `primaryCurriculumBank`, before falling back to `quizQuestionsForSubject`. Module ids are already uniquely namespaced (`mock-year3-...` vs `mock-secondary1-...`/`mock-igcse-...`), so no collision risk.
3. **Fix the actual playback gap:** in `secondary_igcse_home_screen.dart`'s `_ModuleListTile._showDetail`, replace the "Explore" button's "coming soon" snackbar with real navigation to `McqQuizScreen(args: McqQuizArgs(title: ..., subject: module.subject, stars: module.starsReward, moduleId: module.id))`. This is the piece that makes the tier genuinely playable for the first time — reached via Upcoming Modules → tap a module → detail dialog → Explore.
4. `_SubjectCard.onTap` (the 6-subject grid) stays a "coming soon" placeholder this phase — it's a subject-level summary/count tile with no specific module attached, and redesigning it into a subject-filtered drill-down view is out of scope here (see Non-goals). The Upcoming Modules list is the real entry point to quizzes for this tier, same as it already is the only place showing real module data today.

### Seeding

`seed_service.dart`: add `mockSeedSecondaryCurriculumModules()`, deriving `LearningModuleModel` catalog docs from `secondaryCurriculumBank` (metadata only — `questions` dropped, never written to Firestore, same rule as Phase 1/2). Wire into `seedDatabase()`'s modules list alongside the existing Nursery/KG and Primary ones.

## Content matrix (themes per subject per grade, difficulty scaling secondary1 → IGCSE)

| Grade | Algebra | Physics | Chemistry | Biology | ICT | Social Studies |
|---|---|---|---|---|---|---|
| Secondary1 | Linear equations, expanding brackets, substitution | Forces & motion, energy forms, simple circuits | States of matter, elements/compounds/mixtures, separating techniques | Cells & organization, classification, human body systems intro | Computer systems & hardware, data representation basics, internet safety | Myanmar & world geography, government & citizenship intro |
| Secondary2 | Simultaneous equations, quadratic expressions, inequalities | Waves (sound & light), pressure, work & power | Atomic structure & periodic table, reactions & equations, acids & bases | Nutrition & digestion, respiration & photosynthesis, reproduction basics | Networks basics, databases intro, algorithms & flowcharts | World history overview, economics basics, human rights |
| Secondary3 | Quadratic equations, indices & surds, sequences | Electricity (Ohm's law & circuits), magnetism, energy resources | Bonding (ionic/covalent/metallic), rates of reaction, energetics | Genetics & inheritance, ecosystems, homeostasis | Programming concepts (real syntax, continuing Year5/6 Python), cybersecurity basics | Global issues, Myanmar history & culture |
| IGCSE | Functions & graphs, algebraic fractions, further quadratics | Mechanics (motion graphs, momentum), thermal physics, atomic physics | Stoichiometry (moles), organic chemistry basics, electrolysis | Cell biology & transport, coordination & response, human reproduction/genetics | System architecture, deeper data representation, algorithm design | Comparative government, global economics, contemporary global issues |

Each cell = 3 modules (topics split across the cell's themes), 5 questions each.

## Testing

- New `test/secondary_curriculum_bank_test.dart`: 72 modules, 5 questions each, unique ids (module + question text within module), grade in secondary1..secondary3/igcse, subject in the 6 expected keys, 18 modules per subject / 18 per grade (4×6 grid, 3 each), bilingual non-empty/non-equal fields, `correctIndex` valid and `optionsEn.length == optionsMy.length` for every question, `quizQuestionsForModule` returns the right questions for a known secondary/IGCSE module id and still falls back correctly for an unknown one.
- Extend `test/seed_service_test.dart` for `mockSeedSecondaryCurriculumModules` (same shape as the Nursery/KG and Primary groups), including cross-group id-uniqueness against `mockSeedLearningModules`, `mockSeedNurseryKgModules`, and `mockSeedPrimaryCurriculumModules`.
- Update/rename references to `PrimaryQuizScreen`/`PrimaryQuizArgs` across the codebase and tests (if any exist) to `McqQuizScreen`/`McqQuizArgs`.
- `flutter analyze` clean, `flutter test` full suite green, `dart format` clean.

## Non-goals

- Redesigning `_SubjectCard`'s tap behavior into a subject-filtered module browser — stays a "coming soon" summary tile this phase. Upcoming Modules → Explore is the real entry point.
- Any question type beyond MCQ, for any grade including IGCSE.
- Differentiating the subject list between secondary1-3 and IGCSE, or adding new subjects (e.g. English) — the existing 6-subject list stays uniform across the whole tier.
- Post-IGCSE / A-Level or any grade band beyond what `Grade` already enumerates.
- Persisting quiz completion to Firestore (still out of scope, same as every prior phase).
