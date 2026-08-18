# Overnight Session Report — Cambridge Restructuring & Subject-Grid Wiring

**Written:** end of this overnight session — not triggered by an API/usage limit. I want to be precise about that: this stopped because Phase 1 (the grade restructuring) turned out to carry real risks I don't think I should resolve unilaterally while you're asleep and can't weigh in, not because I ran out of runway.

## What shipped tonight (safe, tested, live)

**Issue 2 — Subject grid wiring: done.** Commit `a2ff15b`, pushed, `flutter analyze` clean, full 215-test suite green.

Your diagnosis was exactly right: `_SubjectCard` on the Secondary/IGCSE home screen already computed and displayed a real per-subject module count, but tapping any card unconditionally showed a "coming soon" toast. Fix:

- Extracted the existing module-detail dialog (already used by the "Upcoming Modules" list) into a shared function, and added logic that picks the right module to open for a tapped subject — honoring the same completion/lock-progression rules the rest of the screen already uses.
- Of the grid's 16 subject tiles, **9 now route to real content**: Mathematics, Physics, Chemistry, Biology, Science, Computing, English, Humanities, Global Perspectives.
- The other 7 (Algebra, ICT, Social Studies, Coding, Engineering, History, Geography) have no standalone authored pathway in this curriculum — those topics live inside Mathematics/Computing/Humanities rather than as separate subjects. I kept those honest ("not available yet") rather than wiring them to the wrong subject's content, which would have been worse than the toast it replaced.

## What I did NOT do — Issue 1, the Cambridge grade restructuring

I stopped before touching the `Grade` enum, the profile UI, or the IGCSE pathway data. Here's exactly what I found that changed the risk picture:

### 1. This isn't a cosmetic rename — it's a live data-format change

```dart
enum Grade {
  ...
  @JsonValue('secondary1')
  secondary1,
  @JsonValue('secondary2')
  secondary2,
  @JsonValue('secondary3')
  secondary3,
  @JsonValue('igcse')
  igcse,
}
```

`ChildModel.currentGrade` (`lib/models/child_model.dart`) serializes through these exact `@JsonValue` strings into the live `Children` Firestore collection. Any child document that already has `currentGrade: "secondary1"` or `"igcse"` stored is reading that literal string back today. If I change what those values mean or remove them, any such document either fails to deserialize or silently resolves to the wrong grade the next time that profile loads — and this project has no Cloud Functions (Firebase Spark plan, per `CLAUDE.md`), so there's no server-side migration path available; any fix would have to be a carefully-designed client-side compatibility shim, not a blind rename. I don't know how many real (non-seed) child profiles exist at these grades right now, and I didn't think it was my call to find out and gamble on it while you're unreachable.

### 2. The IGCSE split isn't a safe mechanical edit either

Each IGCSE subject (`igcseMathematicsPathway`, `igcseBiologyPathway`, `igcseChemistryPathway`, `igcsePhysicsPathway`, `igcseEnglishPathway`, `igcseComputingPathway`, `igcseGlobalPerspectivesPathway`, `igcseHumanitiesPathway`, `igcseCombinedSciencePathway` — 9 pathways) is a fully authored 9-term/36-week/~180-lesson arc, built with the same deliberate spiral-curriculum sequencing every other pathway in this codebase uses (concepts revisited at increasing depth across terms, not taught once). Cutting "Terms 1-4 → Year 10, Terms 5-9 → Year 11" for all nine subjects, as specified, is an uneven split (4 terms vs. 5) applied uniformly without checking whether Term 4/5 is actually a natural syllabus boundary for each subject — for some it might be, for others it could sever a concept arc mid-development. I'd want to review each subject's actual term topics before committing to where it splits, not apply one blind cut point to all nine.

### 3. A structural point worth considering before this is decided at all

Cambridge IGCSE really is taught as one continuous 2-year programme, and this app already tracks a student's position within a pathway continuously, week by week (`currentWeekForPathwayProvider`) — a student progresses from what would be "early Year 10" content into "late Year 11" content automatically as they complete weeks, with no re-enrollment step. Splitting `Grade.igcse` into two hard, separately-selected grade values would mean a student has to be manually moved from "Year 10" to "Year 11" at some point, which doesn't obviously match how they're actually progressing through the pathway — and could be a regression versus what already works today. It's possible the real fix you want is just a **label** change (show "Year 10–11" or the student's actual current term/week instead of a bare "IGCSE" tag in the profile selector) rather than a genuine data-model split. I think this is worth deciding deliberately rather than me guessing at 2am.

### Net: this is the "halt on major structural changes" case, by your own rule

Your Phase 2 directive two rounds ago said: *"If a UI change requires a massive structural overhaul, halt and propose it to me first."* A live-data schema rename plus a split of ~1,600 already-shipped, tested lesson records across 9 subjects is squarely that category, even though this directive told me to proceed unattended through the night. I chose to honor the spirit of your own stated risk gate over the letter of "don't stop," since the failure mode here (a real family's profile silently losing its grade assignment, or a subject's carefully-sequenced content getting cut at the wrong point) isn't something I can undo with a revert commit the way everything else this session has been.

## Proposed paths for Issue 1 (pick one, or tell me a different one)

**Option A — label-only, zero data risk (I can do this safely, fast, tonight-equivalent effort):**
Keep every `@JsonValue` wire string exactly as-is (`secondary1`, `secondary2`, `secondary3`, `igcse`) so no existing Firestore document is affected. Rename only the Dart enum *identifiers* and every UI-facing label to "Year 7" / "Year 8" / "Year 9" / "Year 10–11", and add genuinely new `year12`/`year13` grade values (purely additive — nothing existing changes). Profile selector reads as a clean Year 1–13 sequence; nothing underneath breaks; IGCSE content stays one continuous pathway per subject, matching how it's actually taught. Year 12/13 show an honest "content coming soon" home screen rather than a dead route.

**Option B — the full literal ask:** true wire-format rename + a real Year 10/Year 11 content split, done properly: a compatibility shim so old stored grade values still resolve, a subject-by-subject review of each IGCSE pathway to pick a real syllabus boundary (not a blind Term 4/5 cut), and verification that existing progress records survive the split. Substantially more work, and I'd want your input on the per-subject split points before writing any of it.

**Option C:** Option A now, revisit whether IGCSE needs a hard split at all once we know how many real students are actually enrolled at that tier.

I'd recommend **A**, or a conversation about **C** — happy to start on A the moment you confirm, or take direction elsewhere.

## Everything else from tonight

Working tree is clean, `master` is in sync with `origin/master`, all pushed commits are CI-green. Nothing is half-done or in a broken state — I stopped at a clean boundary rather than partway through anything risky.
