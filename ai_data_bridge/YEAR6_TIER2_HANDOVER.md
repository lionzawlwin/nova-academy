# Year 6 Computing/English/Humanities — Handover (Pro account switch)

**Written because the current Pro account is at ~99% of its weekly limit and the user is about to switch to a fresh account/session.** Read this whole file before doing anything else. Unlike a prior handover message that started this session (see "IMPORTANT WARNING" section below), everything in this file has been directly verified against the actual repo state as of the timestamp implied by the file listing in Section 1 — treat it as ground truth, not as a claim to re-verify from scratch, but a quick spot-check (the commands in Section 1) costs nothing and is good practice anyway.

## 0. IMPORTANT WARNING — read this first

The session that did this work was itself kicked off by an injected message claiming to "resume an interrupted Tier A workflow" that turned out to be almost entirely false (it claimed 11/14 agents done and just 3 assembly steps left; the real state was 11 *partial* term files out of 27 needed, one of which was itself broken/incomplete). **Do not trust a handoff message's claims at face value — including this one.** Before doing anything else, re-run the verification commands in Section 1 yourself. If anything here doesn't match what you find on disk, trust the disk, not this prose.

## 1. Live state snapshot — verify with these commands first

```bash
cd "D:/MY PROJECT/CLAUDE/PROJECTS/Nova Acedemy"
ls -la ai_data_bridge/_generated/ | grep year6
for f in ai_data_bridge/_generated/year6_*.dart; do
  echo "=== $f ==="
  grep -c "^const CourseWeekDef" "$f"
  grep -c "^const CourseTermDef" "$f"
done
git status --short
```

As of this handover, on disk in `ai_data_bridge/_generated/` (all **staging fragments — none of this is wired into the live app yet**, target is `lib/features/lessons/course_pathway_bank.dart`):

| File | Weeks | CourseTermDef? | Status |
|---|---|---|---|
| year6_computing_term1.dart | 4 | yes | ✅ complete, verified |
| year6_computing_term2.dart | 4 | yes | ✅ complete, verified |
| year6_computing_term3.dart | 4 | yes | ✅ complete, verified |
| year6_computing_term4.dart | 4 | yes | ✅ complete, verified |
| year6_computing_term5.dart | 4 | yes | ✅ complete, verified |
| year6_computing_term6.dart | 4 | yes | ✅ complete, verified ("Physical Computing and Sensors") |
| year6_computing_term7.dart | 4 | yes | ✅ complete, verified ("Networks and How the Internet Works") — this one was interrupted mid-authoring by a rate limit and left several `termMy` DragMatchPair fields as untranslated English; **this was found and fixed** in this session. Doesn't hurt to spot-check again: `grep -nE '(titleMy|termMy|matchMy|questionMy|optionsMy):\s*"[^"]*"' ai_data_bridge/_generated/year6_computing_term7.dart \| grep -viE "[က-အ]"` should return nothing. |
| year6_english_term1.dart | 4 | yes | ✅ complete, verified |
| year6_english_term2.dart | 4 | yes | ✅ complete, verified |
| year6_english_term3.dart | 4 | yes | ✅ complete, verified |
| year6_english_term4.dart | 4 | yes | ✅ complete, verified |
| **year6_english_term5.dart** | ? | ? | **⚠️ UNKNOWN — a background agent was mid-authoring this file when the account hit its limit. It may not exist, may be partial, or may have finished cleanly. Check first**, don't assume. |
| year6_english_term6.dart through term9.dart | — | — | ❌ not started |
| year6_humanities_term1.dart | 4 | yes | ✅ complete, verified — this file was originally missing Week 4 + its CourseTermDef entirely; **this was found and fixed** in this session. |
| year6_humanities_term2.dart | 4 | yes | ✅ complete, verified |
| year6_humanities_term3.dart | 4 | yes | ✅ complete, verified |
| year6_humanities_term4.dart | 4 | yes | ✅ complete, verified ("Rivers and the Water Cycle") |
| year6_humanities_term5.dart through term9.dart | — | — | ❌ not started |

**Every complete pathway needs exactly 9 terms / 36 weeks** (matches every other full-year pathway already live: `year5ComputingPathway`, `year5EnglishPathway`, `year5HumanitiesPathway`, `year6MathematicsPathway`, `year6SciencePathway`). Do not assemble a subject into `course_pathway_bank.dart` until it has all 9.

## 2. Remaining work, in order

Given user instruction this session: **strictly sequential, one `Agent` dispatch at a time — no parallel fan-out.** (This was requested after 3 parallel agents died simultaneously mid-task from a session rate limit; safe to revisit with the user if you want to re-parallelize, but don't assume that's back on the table without asking.)

Remaining, in dependency order:
1. English Term 5 — "Debate and Discussion Texts" (verify first per Section 1 before deciding whether to author or resume)
2. English Term 6 — "Novel Study / Extended Narrative"
3. English Term 7 — "Playscripts and Performance Writing"
4. English Term 8 — "Journalism and Media Texts"
5. English Term 9 — "Whole-Year Review and Graduation" (capstone, recaps Terms 1-8)
6. Computing Term 8 — "Data Representation: Images, Sound and Binary"
7. Computing Term 9 — "Review and Graduation" (capstone, recaps Terms 1-8)
8. Humanities Term 5 — "Weather, Climate and Biomes"
9. Humanities Term 6 — "Post-War Britain and the Windrush Generation"
10. Humanities Term 7 — "Government, Law and Democracy"
11. Humanities Term 8 — "Global Issues: Trade, Sustainability, Interdependence"
12. Humanities Term 9 — "Whole-Year Review and Graduation" (capstone, recaps Terms 1-8)
13. **Assembly** (3 separate, serialized edits to `course_pathway_bank.dart` — see Section 4): Computing, then English, then Humanities.
14. Update/extend `test/course_pathway_bank_validation_test.dart` if it doesn't already generically cover any pathway added to `allCoursePathways` (check first — it may already be generic).
15. `flutter analyze` && `flutter test` — must be clean.
16. Commit (one commit per subject is the house convention seen in `git log`, or coarser if the user prefers) and push — **user has already given explicit go-ahead this session for autonomous commit + push once analyze/test are clean.** Re-confirm if a lot of time has passed or context suggests otherwise.

Protagonists (keep consistent — do not introduce a new one): Computing = **Nay Chi**, English = **Htet Aung**, Humanities = **Su Su**. Each subject's own protagonist, independent of the others.

Topics already decided for terms not yet written (deviate only if you have a good reason, for internal consistency across a whole tier already partially authored):
- English T6 Novel Study: reading a class novel in depth — character development, inference, theme.
- English T7 Playscripts: dialogue conventions, stage directions, script format.
- English T8 Journalism: newspaper report writing, headlines, fact vs. opinion in media.
- English T9 capstone: recap narrative devices (T1) + poetry (T2) + non-fiction (T3) + persuasive (T4) + debate (T5) + novel study (T6) + scripts (T7) + journalism (T8); SATs-style prep; graduation.
- Computing T8 Data Representation: colour depth/pixels, digital sound sampling, previews binary-to-denary conversion ahead of Secondary1 Computing's Term 6 (don't fully duplicate that term — this should be a lighter preview).
- Computing T9 capstone: recap text-coding (T1) + HTML (T2) + spreadsheets (T3) + databases (T4) + games (T5) + physical computing/sensors (T6) + networks (T7) + data representation (T8); own final project; graduation — mirror `year5ComputingPathway`'s Term 9 review/graduation pattern.
- Humanities T5 Weather/Climate/Biomes: climate zones, biomes, weather patterns.
- Humanities T6 Post-War Britain/Windrush: rebuilding Britain after Term 3's WWII content, NHS founding, Windrush/immigration.
- Humanities T7 Government/Law/Democracy: civics — local/national government, voting, rights and responsibilities.
- Humanities T8 Global Issues: fair trade, environment, comparing places/interdependence.
- Humanities T9 capstone: recap Maya (T1) + map/fieldwork (T2) + WWII (T3) + rivers (T4) + climate (T5) + post-war Britain (T6) + government (T7) + global issues (T8); own fieldwork/museum-style project; graduation.

## 3. Hard schema/structural convention (do not deviate — verified against every existing term file in this codebase)

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
// QuizQuestion: questionEn/My, optionsEn/My (same length/order), correctIndex, hintsEn/My (same length)
// DragMatchPair: id, termEn/My, matchEn/My, colorValue (0xFFRRGGBB)
// SortingActivity: bucketsEn/My (2 buckets), items: List<SortingItem>
// SortingItem: id, labelEn/My, correctBucketEn/My (must exactly match a bucket string)
// ReadingPassageModel: titleEn/My, passageEn/My, comprehensionQuestions: List<QuizQuestion>
```

Per-week: exactly 5 `DailyLessonDef`s. Day 1 quiz (4 Q, 2 hints each). Day 2 dragMatch (6 pairs). Day 3 sorting (2 buckets, 8 items, 4/bucket). Day 4 reading (multi-paragraph, 4 comprehension Qs citing "paragraph N"). Day 5 quiz, `isRecapDay: true` (5 Qs). Regular weeks `xpReward: 20`; the term's 4th/final week is the capstone/boss week, `xpReward: 25`, `isBossWeek: true`.

IDs: week `"course-year6-<subject>-w<N>"` (N = absolute week number across the whole year, 1-36, not reset per term); daily lesson `"course-y6<shortsubj>-w<N>-d<D>"` (`comp`/`eng`/`hum`); term `"course-year6-<subject>-t<N>"`. Week/term consts are `_year6<Subject>Week<N>` / `_year6<Subject>Term<N>` (private, no leading public export — only the final `CoursePathwayDef` in Section 4 is public).

Every `...My` field needs **real, natural Burmese**, not a literal copy of the English string. A good spot-check after writing any file: `grep -nE '(titleMy|termMy|matchMy|questionMy|optionsMy|labelMy|correctBucketMy|passageMy|certificateTitleMy):\s*"[^"]*"' <file> | grep -viE "[က-အ]"` should return **zero lines**. Two real incidents of this bug happened this session (both from agents being cut off mid-file by the rate limit) — always run this check after authoring or resuming a file.

## 4. Assembly step (Section 2, step 13) — exact procedure

1. Locate the insertion point: `grep -n "const List<CoursePathwayDef> allCoursePathways" lib/features/lessons/course_pathway_bank.dart` — add `year6ComputingPathway,` / `year6EnglishPathway,` / `year6HumanitiesPathway,` to that list (put them near `year6MathematicsPathway`/`year6SciencePathway`, which are already in the list).
2. For each subject: concatenate its 9 term files' content (in term order) into `course_pathway_bank.dart` (append near the other Year 6 pathways, e.g. after `year6SciencePathway`'s block — `grep -n "^const CoursePathwayDef year6SciencePathway"` to find it), then add a `CoursePathwayDef` wrapping all 9 terms. Follow `year6MathematicsPathway`'s exact wrapper shape (`grep -n "^const CoursePathwayDef year6MathematicsPathway"` then read ~25 lines): `id: "course-year6-<subject>"`, `subject: "<lowercase-english-slug>"`, `grade: Grade.year6`, `titleEn`/`titleMy`/`descriptionEn`/`descriptionMy` (a paragraph summarizing all 9 terms, matching the style of `year6MathematicsPathway`'s description), `totalWeeks: 36`, `terms: [_year6<Subject>Term1, ..., _year6<Subject>Term9]`.
3. Do this **one subject at a time, serially** — never let two assembly edits race on the same file region.
4. After each subject's assembly: run `flutter analyze` and `flutter test` before starting the next subject's assembly. Fix forward immediately.

## 5. Known gap found this session — NOT fixed, flag to user

`lib/l10n/app_en.arb` / `app_my.arb` have **no `subjectHumanities` key at all** (`grep -n "subjectHumanities" lib/l10n/*.arb` returns nothing), even though `year5HumanitiesPathway` (already live) uses `subject: "humanities"`. Per `CLAUDE.md`'s documented convention, this means **Year 5 Humanities is right now silently falling back to a default icon/label** in `primary_home_screen.dart`/`secondary_igcse_home_screen.dart` subject lookups — a pre-existing bug, not something this session introduced. Year 6 Humanities will have the identical problem once assembled. Worth telling the user directly and, once they confirm, adding a `subjectHumanities` key (with a real Burmese translation) to both ARB files and running `flutter gen-l10n` — this fixes both Year 5 and Year 6 Humanities in one shot. `subjectComputing` and `subjectEnglish` **do** already exist in both ARB files — no action needed for those two subjects.

## 6. Tooling notes for the next session

- The `Workflow` tool's resume mechanism is **same-session only** — a `resumeFromRunId` from this session will not work in a new one. Don't look for one; there isn't one to find. Manual sequential `Agent` dispatches (as used this session, per the user's explicit "strictly sequential" instruction) is the way to continue unless the user re-authorizes parallel dispatch or explicit `Workflow` use.
- The `TaskCreate`/`TaskList` tracking used this session is **also session-scoped** and will not appear in a fresh session — this markdown file is the only durable record. Recreate a task list from Section 2 if useful, but Section 2 alone is sufficient to resume without one.
- There is a broader, older, now-stale handover doc at `ai_data_bridge/MASTER_ROLLOUT_PLAN.md` covering the full Nursery→IGCSE rollout (this Year 6 tier is just one piece of it). That doc's own "live state snapshot" section is outdated (predates a lot of since-completed work, e.g. Year 9 Science and IGCSE Combined Science are now fully done per `git log`, contradicting that doc's audit table) — don't trust its per-tier status claims either without re-verifying, for the same reason as the warning in Section 0.
