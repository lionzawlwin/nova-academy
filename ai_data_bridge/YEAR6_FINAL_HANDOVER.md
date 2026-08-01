# Year 6 Curriculum — Final Handover (Computing & English complete, Humanities partial)

**Written because the current Pro account is at ~95% of its weekly limit and the user is about to switch to a fresh account/session.** Read this whole file before doing anything else — it supersedes `YEAR6_TIER2_HANDOVER.md`, which is now stale (it predates this session's work). As with that prior doc: everything below has been directly verified against the actual repo state as of this commit — spot-check with the commands in Section 1 anyway, but trust the disk over any prose claim, including this one.

## 1. Live state snapshot — verify with these commands first

```bash
cd "D:/MY PROJECT/CLAUDE/PROJECTS/Nova Acedemy"
grep -n "year6ComputingPathway,\|year6EnglishPathway,\|year6HumanitiesPathway," lib/features/lessons/course_pathway_bank.dart
grep -c "^const CourseTermDef _year6ComputingTerm\|^const CourseTermDef _year6EnglishTerm\|^const CourseTermDef _year6HumanitiesTerm" lib/features/lessons/course_pathway_bank.dart
flutter analyze
flutter test
```

## 2. What's done

- **Computing — Year 6: 100% complete and assembled.** All 9 terms (36 weeks), wired into `allCoursePathways` as `year6ComputingPathway`. Protagonist: Nay Chi (နှင်းချည်), teacher Ms. Thanda (ဆရာမသန္တာ), classmate Zin Ko (ဇင်ကို). Term 9 (Weeks 33-36) is the graduation capstone — Nay Chi's final project ("Nova Lake Duck Tracker") deliberately combines every prior term's skill (coding loop, database, web page, server hosting, LED sensor, pixel/sample data).
- **English — Year 6: 100% complete and assembled.** All 9 terms (36 weeks), wired into `allCoursePathways` as `year6EnglishPathway`. Protagonist: Htet Aung (ထက်အောင်), teacher Ms. Nandar (ဆရာမနန္ဒာ), classmate Aye Aye (အေးအေး). Term 9 (Weeks 33-36) recaps every writing form taught across the year and closes with a whole-year portfolio graduation.
- **Humanities — Year 6: PARTIAL, Terms 1-4 only (16/36 weeks), assembled as-is.** Wired into `allCoursePathways` as `year6HumanitiesPathway` with `totalWeeks: 16` (not 36 — deliberately reflects actual content, not the eventual full year) and a `descriptionEn`/`descriptionMy` that explicitly states Terms 5-9 aren't available yet. Protagonist: Su Su (စုစု). Terms 5-9 (Weather/Climate/Biomes, Post-War Britain/Windrush, Government/Law/Democracy, Global Issues, Whole-Year Review/Graduation) are **not yet authored** — this is the actual remaining work, not a verification gap.

This assembly was an explicit, deliberate deviation from the prior handover's stated convention ("do not assemble a subject until it has all 9 terms") — the user directed it this way to lock in a stopping point before the account's weekly limit. Don't be alarmed that Humanities is partial in production; it's intentional and disclosed to users via `descriptionEn`/`descriptionMy`.

`flutter analyze` and `flutter test` (172 tests, including `course_pathway_bank_validation_test.dart`'s full structural-invariant suite) were both clean after assembly. Committed and pushed to `master`.

## 3. Remaining work, in order

1. Author Humanities Term 5 — "Weather, Climate and Biomes" (Weeks 17-20): climate zones, biomes, weather patterns.
2. Author Humanities Term 6 — "Post-War Britain and the Windrush Generation" (Weeks 21-24): rebuilding Britain after Term 3's WWII content, NHS founding, Windrush/immigration.
3. Author Humanities Term 7 — "Government, Law and Democracy" (Weeks 25-28): civics — local/national government, voting, rights and responsibilities.
4. Author Humanities Term 8 — "Global Issues: Trade, Sustainability, Interdependence" (Weeks 29-32): fair trade, environment, comparing places/interdependence.
5. Author Humanities Term 9 — "Whole-Year Review and Graduation" (Weeks 33-36, capstone): recap Maya (T1) + map/fieldwork (T2) + WWII (T3) + rivers (T4) + climate (T5) + post-war Britain (T6) + government (T7) + global issues (T8); own fieldwork/museum-style project; graduation. Mirror the English/Computing Term 9 pattern already live (see `_year6EnglishTerm9`/`_year6ComputingTerm9` in `course_pathway_bank.dart` for the exact shape: 3 review weeks + 1 boss/graduation week).
6. **Re-assembly**: once Humanities has all 9 terms, replace the existing partial `year6HumanitiesPathway` — swap `totalWeeks: 16` → `36`, extend `terms:` to all 9, rewrite `descriptionEn`/`descriptionMy` to drop the "Terms 5-9 not yet available" caveat and instead summarize all 9 terms (see `year6ComputingPathway`/`year6EnglishPathway`'s descriptions in `course_pathway_bank.dart` for the exact style — one sentence per term).
7. `flutter analyze` && `flutter test` — must stay clean.
8. Commit and push. **User has already given explicit go-ahead this session for autonomous commit + push once analyze/test are clean** — re-confirm if a lot of time has passed or context suggests otherwise.
9. **Beyond Year 6**: the broader backlog (17 raw IGCSE subject outlines in `ai_data_bridge/igcse_*_all_terms.dart`, Year 7-9 raw outlines) is untouched by this session and still needs full lesson authoring, not just assembly — those files are `List<Map<String, dynamic>>` topic outlines, not the typed `CourseWeekDef` schema. See the codebase-audit summary from earlier in this account's history if available, or re-derive by reading one of those files directly.

## 4. Hard schema/structural convention (unchanged from prior handover — do not deviate)

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
```

Per-week: exactly 5 `DailyLessonDef`s. Day 1 quiz (4 Q, 2 hints each). Day 2 dragMatch (6 pairs). Day 3 sorting (2 buckets, 8 items, **exactly 4 per bucket** — this session hit two real bugs from imbalanced buckets, e.g. 5/3, that only `flutter test` caught; always verify programmatically, don't eyeball it). Day 4 reading (multi-paragraph, 4 comprehension Qs citing "paragraph N"). Day 5 quiz, `isRecapDay: true` (5 Qs). Regular weeks `xpReward: 20`; the term's 4th/final week is the capstone/boss week, `xpReward: 25`, `isBossWeek: true`.

IDs: week `"course-year6-<subject>-w<N>"` (N = absolute week number across the whole year, 1-36, not reset per term); daily lesson `"course-y6<shortsubj>-w<N>-d<D>"` (`comp`/`eng`/`hum`); term `"course-year6-<subject>-t<N>"`. Week/term consts are `_year6<Subject>Week<N>` / `_year6<Subject>Term<N>` (private, no leading public export — only the final `CoursePathwayDef` is public).

Every `...My` field needs **real, natural Burmese**, not a literal copy of the English string. Technical loanwords (Client, Server, Bit, Byte, Pixel, etc.) should get a short Burmese gloss with the English term in parentheses, e.g. `"Byte (Bit ရှစ်လုံးအုပ်စု)"` — matching the established convention (see any `termMy`/`labelMy` field in the assembled Computing/English terms for examples). A spot-check after writing any file: no `*My`-tagged field (including list items like `optionsMy`/`hintsMy`/`labelMy`) should contain bare English text with zero Myanmar-script characters, except very short proper nouns/titles that are identical in both languages.

## 5. Verification method that actually works (learned this session)

Don't just eyeball a term file or trust that it "looks right" — two real, non-obvious bugs slipped through initial authoring this session (untranslated technical terms, and imbalanced sorting buckets) and were only caught by running actual checks:

1. `dart format --output=none --set-exit-if-changed <file>` — catches syntax errors (including the "raw newline inside a string literal" corruption bug found in `year6_humanities_term3.dart` earlier this session).
2. Grep for lines starting directly with a Myanmar character with no other content before it (`^[က-အ]` in Grep) — catches the raw-newline corruption pattern specifically.
3. A small Python script tracking the "current field" context line-by-line to flag any `*My`-tagged value (including inside `[...]` lists) with zero Myanmar-script codepoints — catches untranslated content that a simple single-line regex misses.
4. A temporary scratch `flutter_test` file that imports `course_pathway_bank.dart` + `interactive_content_models.dart` + `mock_quiz_data.dart`, pastes in the term's raw source, and re-runs the same 12+ invariants `course_pathway_bank_validation_test.dart` checks (unique ids, day patterns, bucket balance, option-length matching, etc.) — scoped to just that term, before it's ever wired into the real pathway bank. Delete the scratch file after. This is what caught both sorting-bucket imbalances.

Once a subject's final term is assembled into `course_pathway_bank.dart` for real, `flutter test` alone re-validates everything project-wide — the scratch-test step above is specifically for verifying an unassembled term file in isolation.

## 6. Tooling notes for the next session (unchanged from prior handover)

- The `Workflow` tool's resume mechanism is **same-session only**. Manual sequential `Agent`/main-thread work (as used this session, per the user's explicit "strictly sequential, main thread only, no parallel agents" instruction) is the way to continue unless the user re-authorizes parallel dispatch.
- `TaskCreate`/`TaskList` tracking is session-scoped and won't appear in a fresh session — this markdown file is the durable record.
- There's a broader, older, now-doubly-stale handover doc at `ai_data_bridge/MASTER_ROLLOUT_PLAN.md` and `ai_data_bridge/YEAR6_TIER2_HANDOVER.md` covering the wider rollout — both predate this session and should not be trusted for current status without re-verification via Section 1's commands.
