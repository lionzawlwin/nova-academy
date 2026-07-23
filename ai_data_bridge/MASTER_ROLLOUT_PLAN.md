# Master Rollout Plan — Year 5 → IGCSE Curriculum Expansion

**Handover document.** Written because the authoring session hit its Pro account limit and is handing off to a fresh session/account. Read this whole file before doing anything else — it is the only memory the next agent has of this work. Do not re-derive the audit below from scratch; it was already done and is accurate as of the timestamp in the "Live state snapshot" section.

## 0. Immediate orientation for the next agent

- Target file for all "academic year course pathway" content: `lib/features/lessons/course_pathway_bank.dart`. This is a **hand-written, plain-Dart file — no Freezed, no build_runner, no codegen.** Just `Read`/`Edit`/`Write` directly.
- Source blueprint files (sparse curriculum outlines to flesh out into full daily lessons) live in `ai_data_bridge/*.dart`. **Do not bulk-read them into the main conversation context** — each one is ~30-36KB, meant to be read by an isolated subagent (see Part 2, Step A), not the orchestrating session.
- There is **no test coverage today** validating pathway structure (checked `test/` — nothing references `CoursePathwayDef`/`allCoursePathways`). Creating one is the first recommended action (see Part 3).
- Two background agents were mid-flight when this handover was written, both editing `lib/features/lessons/course_pathway_bank.dart`:
  1. Authoring Year 1 Science Terms 8-9 (Weeks 29-36), appending near the end of the file.
  2. Authoring Secondary 1 Science Terms 7-9 (Weeks 25-36), inserted right after the existing Term 6 block (~old line 47509) to avoid colliding with agent #1's end-of-file appends.
  **These agents cannot be resumed from a new account/session — that mechanism is session-local.** The next agent must NOT assume either finished. Before doing anything else, re-run the audit commands in the next section to see exactly what state the file is actually in, and finish/repair whichever of these two is incomplete before starting any new Tier-0/Tier-1 work.

### Live state snapshot (at handover time)

`lib/features/lessons/course_pathway_bank.dart` was 136,358 lines (still growing as the two background agents wrote). Term-definition counts at that moment:

| Pathway | Terms defined | Full? |
|---|---|---|
| `year1Science` | 8 / 9 | **No — Term 9 still in progress or missing. Verify and finish.** |
| `secondary1Science` | 6 / 9 | **No — Terms 7-9 still in progress or missing. Verify and finish.** |
| `secondary1Mathematics` | 3 / 9 | No — Terms 4-9 never started (see Tier 0 below) |
| `secondary1Computing` | 9 / 9 | Yes |
| `secondary2Computing` | 9 / 9 | Yes |
| `year1Mathematics` | 9 / 9 | Yes |
| `year4Mathematics` | 9 / 9 | Yes |
| `year4Science` | 9 / 9 | Yes |
| `year4English` | 9 / 9 | Yes |

Re-check with:
```bash
cd "D:/MY PROJECT/CLAUDE/PROJECTS/Nova Acedemy"
wc -l lib/features/lessons/course_pathway_bank.dart
for p in year1Science secondary1Science secondary1Mathematics secondary1Computing secondary2Computing year1Mathematics year4Mathematics year4Science year4English; do
  n=$(grep -c "^const CourseTermDef _${p}Term" lib/features/lessons/course_pathway_bank.dart)
  echo "$p: $n terms"
done
grep -oE "^const CoursePathwayDef \w+" lib/features/lessons/course_pathway_bank.dart
git status --short
```
Also sanity-check bracket balance / that `flutter analyze` is clean before trusting any of the above as "done" — a mid-flight agent kill can leave a dangling unclosed `CourseWeekDef`.

There is also an uncommitted diff on `lib/features/lessons/course_pathway_bank.dart` (working tree, not yet committed) and an untracked `ai_data_bridge/` directory — this is expected; do not discard it.

## 1. Audit findings (grade → blueprint → live pathway status)

The `Grade` enum (`lib/models/child_model.dart`) is `nursery, kg, year1, year2, year3, year4, year5, year6, secondary1, secondary2, secondary3, igcse`. The blueprint filenames use UK "Year 7/8/9" naming, which maps onto this app's `secondary1`/`secondary2`/`secondary3` respectively (confirmed: `secondary1SciencePathway` already exists and corresponds to "Year 7" content).

| Grade (enum) | Blueprint files in `ai_data_bridge/` | Live pathway status |
|---|---|---|
| `year5` | `year_5_computing_all_terms.dart`, `year_5_english_all_terms.dart`, `year_5_humanities_all_terms.dart`, `year_5_maths_all_terms.dart`, `year_5_science_all_terms.dart` | **None exist** — 5 net-new pathways |
| `year6` | `year_6_computing_all_terms.dart`, `year_6_english_all_terms.dart`, `year_6_humanities_all_terms.dart`, `year_6_maths_all_terms.dart`, `year_6_science_all_terms.dart` | **None exist** — 5 net-new pathways |
| `secondary1` (blueprint calls it "year7") | `year7_computing_all_terms.dart`, `year7_english_all_terms.dart`, `year7_global_perspectives_all_terms.dart`, `year7_maths_all_terms.dart`, `year7_science_term1.dart` + `year7_science_terms2_to_9.dart` | Computing **9/9 done**. Maths **3/9** (needs Terms 4-9 — use `year7_maths_all_terms.dart` as the authoritative source, don't freehand it). Science: see snapshot above, being finished from the interrupted background agent. English, Global Perspectives **don't exist at all** |
| `secondary2` ("year8") | `year8_computing_all_terms.dart`, `year8_english_all_terms.dart`, `year8_global_perspectives_all_terms.dart`, `year8_maths_all_terms.dart`, `year8_science_all_terms.dart` | Computing **9/9 done**. English, Global Perspectives, Maths, Science **don't exist** |
| `secondary3` ("year9") | `year9_computing_all_terms.dart`, `year9_english_all_terms.dart`, `year9_global_perspectives_all_terms.dart`, `year9_maths_all_terms.dart`, `year9_science_all_terms.dart` | **None exist** — all 5 net-new |
| `igcse` | 18 files: `igcse_accounting_all_terms.dart`, `igcse_additional_mathematics_all_terms.dart`, `igcse_art_and_design_all_terms.dart`, `igcse_biology_all_terms.dart`, `igcse_business_studies_all_terms.dart`, `igcse_chemistry_all_terms.dart`, `igcse_combined_science_all_terms.dart`, `igcse_computer_science_all_terms.dart`, `igcse_design_and_technology_all_terms.dart`, `igcse_economics_all_terms.dart`, `igcse_english_all_terms.dart`, `igcse_environmental_management_all_terms.dart`, `igcse_geography_all_terms.dart`, `igcse_global_perspectives_research_all_terms.dart`, `igcse_history_all_terms.dart`, `igcse_ict_all_terms.dart`, `igcse_maths_all_terms.dart`, `igcse_physics_all_terms.dart` | **None exist** — all 18 net-new |
| nursery/kg | `kg_quantum_flash_bank.dart`, `nursery_quantum_flash_bank.dart` | **Different content system entirely.** Target is `lib/features/lessons/nursery_kg_quantum_flash_bank.dart` (dot-card + word-flashcard schema, NOT `CoursePathwayDef`). Do not fold into the main rollout sequence below without separately confirming schema/target with the user. |

**Gaps not covered by any blueprint:** Year 2 and Year 3 have no blueprint files at all — out of scope for this rollout; flag to the user if "Nursery through IGCSE" completeness is later claimed anywhere.

**Open decisions the user had not yet resolved when this handover was written** — ask before assuming an answer:
1. Reconciliation for the Tier-0 overlap: once the interrupted Year 1 Science / Secondary 1 Science background agents are confirmed finished (or repaired), should their content be diffed against the corresponding blueprint files (`year7_science_term1.dart` + `_terms2_to_9.dart`) for curriculum-accuracy spot-checking, given the agents that wrote them invented topic structure freehand rather than reading a blueprint?
2. Execution order preference: youngest-first (the default this plan uses) vs. IGCSE-first (e.g. if exam-prep/monetization is the priority) vs. some other order.
3. Orchestration mechanism: manual `Agent` tool calls per subject/term (as used this session) vs. an explicit `Workflow` script (more efficient at this scale, but per this project's tool-use rules requires the user's explicit opt-in language before it can be invoked — do not invoke `Workflow` without that).

## 2. Part 1 — Execution Order

**Tier 0 — Finish what's already open** (in-flight or genuinely partial; use the matching blueprint as the authoritative curriculum source, not freehand invention)
- Verify/finish Secondary 1 Science Terms 7-9 (`year7_science_term1.dart` + `year7_science_terms2_to_9.dart`)
- Secondary 1 Mathematics Terms 4-9 (`year7_maths_all_terms.dart`)
- Verify/finish Year 1 Science Terms 8-9 (no blueprint exists for this one — it predates the blueprint hand-off, so continue using the same narrative-continuity approach the interrupted agent was using; just confirm it actually completed cleanly)

**Tier 1 — Year 5** (5 subjects, `Grade.year5`, all net-new: Computing, English, Humanities, Maths, Science)

**Tier 2 — Year 6** (5 subjects, `Grade.year6`, all net-new, same subject set)

**Tier 3 — Secondary 1 remainder** (`Grade.secondary1`): English, Global Perspectives — the only two `year7_*` subjects with no existing pathway

**Tier 4 — Secondary 2 remainder** (`Grade.secondary2`): English, Global Perspectives, Maths, Science (Computing already done)

**Tier 5 — Secondary 3** (`Grade.secondary3`, all 5 subjects, all net-new): Computing, English, Global Perspectives, Maths, Science

**Tier 6 — IGCSE** (`Grade.igcse`, 18 subjects — largest tier; split into waves so one failure doesn't block the whole tier):
- **Wave A** (core/highest usage): Maths, Additional Mathematics, English, Biology, Chemistry, Physics, Combined Science, Computer Science, ICT
- **Wave B** (humanities/business): Business Studies, Economics, Accounting, Geography, History, Environmental Management, Global Perspectives & Research
- **Wave C** (creative/design): Art and Design, Design and Technology

**Separate track, not sequenced with the above:** Nursery/KG Quantum Flash blueprints → their own small plan against `nursery_kg_quantum_flash_bank.dart`, pending explicit confirmation from the user that this is the right target and schema.

Rationale for youngest-first default: it mirrors real student progression and keeps each tier's authoring register consistent — Year 5/6 pathways should mimic the primary narrative style (see `year4EnglishPathway`, `year1SciencePathway` — two named recurring child characters, story-driven quizzes), while Secondary/IGCSE pathways mimic the scenario-reasoning style already established in `secondary1SciencePathway`/`secondary1ComputingPathway` (a broader recurring roster of named students, rigorous "here's a scenario, which concept explains it" questions, not simple recall).

## 3. Part 2 — The Agent Workflow (per subject)

The approach used earlier in this session — spin up a background `Agent` that reads context, invents week/term structure, and edits the live file directly — worked for exactly 2 concurrent agents because their insertion points were manually chosen to be far apart in the file (one at true end-of-file, one right after an existing term block mid-file). **That does not scale to dozens of subjects** — too easy for two agents to race on the same end-of-file region if not deliberately staged. For this rollout, switch to a **draft-in-isolation, integrate-serially** pipeline:

**Step A — Ingest** (1 cheap agent per subject, parallelizable across many subjects at once).
Reads exactly one blueprint file in full (~30-36KB, fine for an isolated subagent's own context) and produces a compact structured outline: term titles, week titles/topics per term, and any sample content the blueprint already contains. This is the only place a blueprint file gets fully read, and it happens inside an isolated subagent — never in the main orchestrating session's context.

**Step B — Term authoring** (N agents per subject, one per term, parallelizable within and across subjects).
Each agent receives: the Step-A outline for its own term, the immediately-preceding term's outline (so it can write the established "Recall Week X's lesson on..." cross-referencing hints this file uses everywhere), the exact schema (see below), and a gold-standard template week copy-pasted from whichever existing pathway matches that grade's register (primary vs. secondary/IGCSE — see Tier rationale above). **Each agent writes its term's Dart content to a private scratch fragment file (e.g. under the session's scratchpad or a `ai_data_bridge/_generated/` working area) — never directly to `course_pathway_bank.dart`.** This makes concurrent-edit collisions structurally impossible no matter how many subjects run in parallel.

**Step C — Assemble** (1 mechanical step per subject — not agent judgment, just concatenation + wiring).
Once all of a subject's term fragments exist, concatenate them in term order, wrap in the subject's `CoursePathwayDef`, append to `course_pathway_bank.dart` in one exclusive edit, and add it to the `allCoursePathways` list (top of the file, currently ~line 14850s — re-locate via `grep -n "const List<CoursePathwayDef> allCoursePathways"`). This is the *only* step that touches the shared file — always run these one at a time, serialized, even if Steps A/B for the next subject are already running in parallel in the background.

**Step D — Localize.**
Check whether the subject's `subject` slug (lowercase English, e.g. `"humanities"`, `"globalperspectives"`) and any needed labels already have ARB entries in `lib/l10n/app_en.arb`/`app_my.arb` (checked at handover time: `subjectHumanities`, `subjectGlobalPerspectives`, `subjectAccounting`, `subjectAdditionalMathematics`, `subjectBusinessStudies`, `subjectCombinedScience`, `subjectDesignAndTechnology`, `subjectEconomics`, `subjectEnvironmentalManagement` do **not** exist yet — `subjectArt`, `subjectBiology`, `subjectChemistry`, `subjectComputing`, `subjectEnglish`, `subjectGeography`, `subjectHistory`, `subjectIct`, `subjectMath`, `subjectPhysics`, `subjectScience` etc. already do). Add missing keys with real Burmese translations to both ARB files, then run `flutter gen-l10n`. Per `CLAUDE.md`, `LearningModuleModel.subject`/pathway `subject` strings must stay lowercase and match an existing `subject*` ARB key root or the icon/label lookup in the home screens silently falls back to a default — this step is not optional.

**Schema reference (exact, do not deviate — copy from `course_pathway_bank.dart` itself, lines ~1-176, and from `lib/features/lessons/interactive_content_models.dart` / `mock_quiz_data.dart`):**
```dart
enum LessonKind { quiz, dragMatch, sorting, reading }

class DailyLessonDef {
  const DailyLessonDef({
    required this.id, required this.dayNumber, required this.titleEn, required this.titleMy,
    required this.kind, this.xpReward = 10, this.isRecapDay = false,
    this.quizQuestions = const [], this.dragMatchPairs = const [],
    this.sortingActivity, this.readingPassage,
  });
}
class CourseWeekDef {
  const CourseWeekDef({
    required this.id, required this.weekNumber, required this.titleEn, required this.titleMy,
    required this.xpReward, required this.dailyLessons, this.isBossWeek = false,
  });
}
class CourseTermDef {
  const CourseTermDef({
    required this.id, required this.termNumber, required this.titleEn, required this.titleMy,
    required this.certificateTitleEn, required this.certificateTitleMy, required this.weeks,
  });
}
class CoursePathwayDef {
  const CoursePathwayDef({
    required this.id, required this.subject, required this.grade,
    required this.titleEn, required this.titleMy, required this.descriptionEn, required this.descriptionMy,
    required this.totalWeeks, required this.terms,
  });
}
// QuizQuestion (mock_quiz_data.dart): questionEn/My, optionsEn/My (same length/order), correctIndex, hintsEn/My (same length, optional, defaults const [])
// DragMatchPair (interactive_content_models.dart): id, termEn/My, matchEn/My, colorValue (int, 0xFFRRGGBB)
// SortingActivity: bucketsEn/My (parallel, typically 2 buckets), items: List<SortingItem>
// SortingItem: id, labelEn/My, correctBucketEn/My (must exactly match a bucket string)
// ReadingPassageModel: titleEn/My, passageEn/My, comprehensionQuestions: List<QuizQuestion>
```

**Per-week structure (verified against every existing pathway in the file — this is a hard convention, not a suggestion):** every week has exactly 5 `DailyLessonDef`s. Day 1 = `quiz` (4 questions, 2 hints each). Day 2 = `dragMatch` (6 pairs). Day 3 = `sorting` (2 buckets, 8 items, 4 per bucket). Day 4 = `reading` (multi-paragraph passage + 4 comprehension questions citing "paragraph N"). Day 5 = `quiz` with `isRecapDay: true` (5 questions recapping the week, or the whole term on a capstone week). Regular weeks: `xpReward: 20`. Capstone weeks (the 4th week of every term): `xpReward: 25`. IDs follow `course-<pathway-slug>-w<N>` / `course-<short-slug>-w<N>-d<D>` matching the existing naming convention in whichever pathway you're extending — check a sibling pathway for the exact abbreviation style before inventing a new one.

If the user gives explicit go-ahead for the `Workflow` tool (pipeline/parallel primitives built for exactly this fan-out/fan-in shape), this whole per-subject pipeline can be scripted deterministically instead of manually orchestrated via one-off `Agent` calls — more efficient at 44-subject scale, but do not invoke it without that explicit opt-in per this project's tool-use rules.

## 4. Part 3 — Quality Control

- **First action, before scaling to Tier 1+:** write `test/course_pathway_bank_validation_test.dart` that iterates `allCoursePathways` and mechanically asserts the invariants that today only get caught by manual review — globally unique `DailyLessonDef.id`s (duplicates silently shadow each other in `courseDailyLessonById`'s linear lookup — see that function near the `allCoursePathways` declaration), `optionsEn`/`optionsMy` equal length, `correctIndex` in bounds, sorting-bucket labels internally consistent, no empty bilingual strings, `weekNumber`/`termNumber` sequential and non-duplicated within a pathway. At 44 subjects' worth of hand-authored content this pays for itself almost immediately.
- **Gate after every single subject integration (Step C), before starting the next subject:** `flutter analyze` must be clean, `flutter test` (including the new validation test) must be green. Fix forward immediately — never let a broken subject sit while the next one starts on top of it.
- **`flutter gen-l10n`** re-run whenever Step D touches the ARB files, before the analyze/test gate.
- **One commit per subject** (or per tier if the user prefers coarser granularity) so any regression bisects cleanly to a single subject instead of a mega-commit. Never commit without the user's go-ahead, per standing repo convention — this plan does not change that.
- **Recommended for IGCSE specifically** (exam-stakes content): a lightweight adversarial spot-check agent per subject that samples a handful of authored questions against the blueprint's source material and flags factual/curriculum mismatches before that subject is committed.

## 5. Status: plan was pending user approval

As of handover, the user had **not yet approved this plan** — it was presented and the user's response was to request this file be saved for session continuity, not an explicit "go ahead." **Do not start Tier 0/1 authoring work until the user (on the new account/session) explicitly approves the plan or a modified version of it.** Re-confirm the three open decisions in Part 1 (§ "Open decisions") first.
