# A-Level (Year 12 & 13) Curriculum Progress Report

**Standing directive:** author the same 9-term/36-week/180-lesson pathways for A-Level (Year 12 AS / Year 13 A2) that every other grade tier already has, starting with core subjects (Mathematics, Physics, Chemistry, Biology, English), committing and pushing incrementally term-by-term.

**Scope reality check, stated up front:** this is five subjects x two years x 9 terms = up to 90 term-batches (~1,800 daily lessons) at the same bilingual, fact-checked quality bar as every other pathway in this codebase. That is comparable in size to the entire Secondary Humanities trilogy multiplied several times over. This will span many sessions, not one — tracked here so progress is never lost or duplicated between sessions.

**One clarification made at the start of this work:** the directive asked for "complex formula accuracy (LaTeX/Math formatting where necessary)." This app has no LaTeX/KaTeX renderer (confirmed: no `flutter_math` or equivalent package in `pubspec.yaml`). All formulas use the same plain Unicode math notation (², ³√, x for multiplication) already established throughout the IGCSE pathways — not literal LaTeX markup, which would render as broken raw text (e.g. `$x^2$`) with no renderer to interpret it.

## Status by subject/grade

| Subject | Year 12 (AS) | Year 13 (A2) |
|---|---|---|
| **Physics** (9702) | **In progress — 3/9 terms (Weeks 1-12)** | Not started |
| Mathematics (9709) | Not started | Not started |
| Chemistry (9701) | Not started | Not started |
| Biology (9700) | Not started | Not started |
| English (9093) | Not started | Not started |

## Year 12 Physics — detail

Pathway: `year12PhysicsPathway` (`lib/features/lessons/course_pathways/course_pathways_physics.dart`), wired into `allCoursePathways`, `Grade.year12`.

- [x] **Term 1 — Physical Quantities, Units and Measurement** (Weeks 1-4): SI base/derived units and homogeneity checking; prefixes, scientific notation, Fermi/order-of-magnitude estimation; scalars/vectors and vector resolution (triangle rule, sine/cosine components); systematic/random error, precision vs. accuracy, percentage uncertainty. Commit `8278dd3`.
- [x] **Term 2 — Kinematics** (Weeks 5-8): SUVAT equations; deriving v=u+at and s=ut+½at² graphically from a velocity-time graph; projectile motion (independent horizontal/vertical components); free fall, air resistance, terminal velocity. Commit `8a38c15`.
- [x] **Term 3 — Dynamics (Newton's Laws and Momentum)** (Weeks 9-12): Newton's three laws; momentum and its conservation; elastic/inelastic/perfectly-inelastic collisions; impulse and force-time graphs (airbags/crumple zones). Commit `06df63f`.
- [ ] **Term 4 — Forces, Density and Pressure** (Weeks 13-16): moments and equilibrium, density, pressure, upthrust/Archimedes' principle.
- [ ] **Term 5 — Work, Energy and Power** (Weeks 17-20): work done, kinetic/potential energy, conservation of energy, efficiency, power.
- [ ] **Term 6 — Deformation of Solids** (Weeks 21-24): Hooke's law, stress, strain, the Young modulus, elastic/plastic deformation.
- [ ] **Term 7 — Waves and the Electromagnetic Spectrum** (Weeks 25-28): progressive waves, transverse/longitudinal, the wave equation, the EM spectrum, polarisation.
- [ ] **Term 8 — Superposition** (Weeks 29-32): interference, diffraction, stationary waves, double-slit experiment.
- [ ] **Term 9 — Electricity, DC Circuits and AS Exam Prep** (Weeks 33-36): current, p.d., resistance/resistivity, EMF and internal resistance, circuit analysis, closing with AS exam preparation and graduation.

## Resuming this work

Pick up at Year 12 Physics Term 4 (Weeks 13-16, "Forces, Density and Pressure"). Same pipeline every other pathway in this codebase uses: anchor marker `// __TERMS_MARKER__` at the end of `course_pathways_physics.dart`, quiz -> dragMatch -> sorting -> reading -> recap-quiz per week, commit + `flutter analyze` + full test suite + push after every term. Once Year 12 Physics's 9 terms are complete, start Year 13 Physics (A2) as its own separate 9-term pathway (`year13PhysicsPathway`, `Grade.year13`) — A2 genuinely is a separate year-long course building on AS, not a continuation split the way IGCSE's Year 10/11 was, so it gets its own full 9-term arc. After Physics, move to the next subject in the user's stated order: Mathematics, then Chemistry, Biology, English.
