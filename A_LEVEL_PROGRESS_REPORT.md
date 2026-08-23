# A-Level (Year 12 & 13) Curriculum Progress Report

**Standing directive:** author the same 9-term/36-week/180-lesson pathways for A-Level (Year 12 AS / Year 13 A2) that every other grade tier already has. Current scope: finish Year 12 Biology and Mathematics (joining the already-complete Year 12 Physics and Chemistry), then author Year 13 (A2) for every subject that has a course-pathway file in this codebase: Physics, Chemistry, Biology, Mathematics, English, Computing, Humanities, Global Perspectives. Commit and push incrementally, term-batch by term-batch.

**Scope reality check:** this is 2 remaining Year 12 subjects + 8 Year 13 subjects = up to 90 more term-batches (~1,800 daily lessons) at the same bilingual, fact-checked quality bar as every other pathway in this codebase. This spans many sessions/agent-dispatches, not one — tracked here so progress is never lost or duplicated between sessions or concurrent agents.

**Execution note:** running many authoring agents in parallel has twice tripped the account's session usage limit mid-flight before any file write occurred (no partial/corrupt content resulted either time — the agents fail during their initial Read/grep research phase, before touching the target file). Current approach: **strictly sequential** — one authoring agent in flight at a time, each covering ~3 terms, resumed (not respawned) for its next batch to preserve established ID/style conventions within a subject.

**No LaTeX:** this app has no LaTeX/KaTeX renderer (no `flutter_math` or equivalent in `pubspec.yaml`). All formulas use plain Unicode math notation (², ³, √, x for multiplication, µ, Ω, π, etc.) exactly like every existing pathway — never literal LaTeX markup.

## Status by subject/grade

| Subject | Year 12 (AS) | Year 13 (A2) |
|---|---|---|
| **Physics** (9702) | **Complete — 9/9 terms** | Not started |
| **Chemistry** (9701) | **Complete — 9/9 terms** | Not started |
| **Biology** (9700) | **Complete — 9/9 terms** | Not started |
| **Mathematics** (9709) | **Complete — 9/9 terms** | Not started |
| English (9093-style) | n/a (not in original ask) | Not started |
| Computing (9618-style) | n/a (not in original ask) | Not started |
| Humanities | n/a (not in original ask) | Not started |
| Global Perspectives | n/a (not in original ask) | Not started |

## Year 12 Biology — COMPLETE

Pathway: `year12BiologyPathway` (`lib/features/lessons/course_pathways/course_pathways_biology.dart`), wired into `allCoursePathways`, `Grade.year12`.

All 9 terms authored (Cell Structure and Microscopy; Biological Molecules I: Water/Carbs/Lipids; Biological Molecules II: Proteins/Enzymes; Cell Membranes and Transport; The Mitotic Cell Cycle; Nucleic Acids and Protein Synthesis; Transport in Plants; Transport in Mammals; Infectious Disease/Immunity/AS Exam Prep). Commits: `f43531e` (T1-3), `a2c2d6e` (T4-6), `7fe0ab8` (T7-9 + CoursePathwayDef + registration).

## Year 12 Mathematics — COMPLETE

Pathway: `year12MathematicsPathway` (`lib/features/lessons/course_pathways/course_pathways_mathematics.dart`), wired into `allCoursePathways`, `Grade.year12`. All 9 terms authored (Quadratics; Functions; Coordinate Geometry; Circular Measure; Trigonometry; Series; Differentiation; Integration; AS Exam Prep). Commits: `b2fc54e` (T1-3), `09b39f8` (T4-6), `4b40021` (T7-9 + CoursePathwayDef + registration).

**Year 12 (AS) is now fully authored across all four core subjects: Physics, Chemistry, Biology and Mathematics.** This was the explicit priority of the current work order; Year 13 is next.

## Year 13 (A2) — NOT STARTED (any subject)

Two earlier attempts to parallel-dispatch 8 Year-13-subject agents simultaneously both failed immediately (session limit), before any of the 8 agents wrote a single line to any file — confirmed via `dart analyze`/grep showing no `year13*` consts exist anywhere in the codebase yet, and `git status`/`git log` showing no related commits. **Nothing to reconcile — start clean.**

**Planned order:** Year 13 Physics (9702 A2) and Year 13 Chemistry (9701 A2) first (natural continuations of the two longest-complete Year 12 pathways), then Year 13 Biology and Year 13 Mathematics (each appended to the same file as their Year 12 sibling, so must run after that file's Year 12 work is fully done — it now is — to avoid concurrent edits), then Year 13 English/Computing/Humanities/Global Perspectives (net-new subjects at this grade, no Year 12 versions exist or were requested).

**Currently in progress:** Year 13 Physics (9702 A2), Terms 1-3 — see status table above once started.

Topic breakdowns for every Year 13 subject (Physics, Chemistry, Biology, Mathematics P3, English, Computing, Humanities, Global Perspectives — term-by-term syllabus content) were drafted once already in this session's planning and can be regenerated from the Cambridge AS/A2 syllabus structure if not otherwise recorded; not duplicated here to keep this file short — see the live conversation/agent dispatch prompts for the exact per-term content briefs used.
