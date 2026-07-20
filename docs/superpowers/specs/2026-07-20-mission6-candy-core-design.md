# Mission 6 — "Candy Core" Design System — Spec

**Date:** 2026-07-20
**Status:** Approved. Direction chosen from 3 competing proposals surveyed and pitched via a design workflow this session (survey + proposals archived in this session's conversation; the interactive comparison board covered all 3 directions with live quiz-tile mockups). This doc specs the chosen direction only.
**Scope:** Mission 6 of the Six Missions epic (`docs/superpowers/plans/2026-07-20-six-missions-epic-plan.md`). Sequenced last — starts only once Missions 1-5 are merged, so the redesign lands on stable navigation/UI rather than needing rework after.

## Concept

Candy Core treats the whole app like a shelf of chunky, tactile toys — every tappable surface is a physical 3D object with a visible bottom bevel that compresses when pressed, exactly like Duolingo's button language. Colors are saturated and candy-bright rather than pastel or muted, typography is rounded and heavyweight so it reads as toy-like rather than corporate, and reward moments (stars, streaks, medals) get glossy die-cast-badge treatment with a highlight swipe across the top.

This fits Nursery-through-IGCSE because skeuomorphic depth cues are legible to a 4-year-old who can't parse subtle Material elevation, while the same "big button, satisfying press" mechanic scales into a more confident, achievement-driven feel for older students without ever going flat or corporate — the physicality stays the throughline across all three tiers; only palette and iconography subject matter matures. **Bevel depth itself is the tier-differentiation lever, not just color** — see Per-tier treatment below.

Chosen over the other two surveyed directions ("Soft Clay" neumorphism, "Frosted Ascent" glassmorphism) specifically because it avoids `BackdropFilter`-driven frame drops on the low/mid-range Android devices this app's actual users are likely on, and its bolder, more energetic tone was judged the better fit for a "world-class gamified" positioning than Soft Clay's calmer, muted-toy feel.

## Color palette (extends `AppColors`, does not replace the seed)

| Role | Value | Notes |
|---|---|---|
| Primary / brand | Grape Punch — `#6C4CFF` | Deepened, more saturated indigo-violet than today's `#5B4FE9`. Top face of primary 3D buttons and dominant chrome accents app-wide. Re-seeds `ColorScheme.fromSeed`. |
| Nursery/KG accent | Bubblegum Pop — `#FF5CA8` | Hero candy hue for the youngest tier's giant 3D tiles; rotates with Sky Fizz `#29C4F5`, Sun Burst `#FFD23F`, Grass Bounce `#4ED87A` — a tighter, louder 4-color toy-box set **replacing** today's softer 6-color `nurseryPalette`. |
| Primary-tier accent | Path Orange — `#FF7A29` | Marks the active/current node on the Year 1-6 winding path so it pops against the indigo path line. Existing `primaryPalette` hues stay but get pushed 15-20% more saturated to match. |
| Secondary/IGCSE accent | Deep Cobalt `#3B4CFF` on Charcoal Navy `#1C2035` | Keeps the "grown-up" positioning but swaps flat muted tones for a glossier jewel-tone cobalt/navy pairing — still restrained next to Nursery, but with the same bevel-and-shine button language so it doesn't feel like a different app. |
| Surface | Cloud White `#FDFBFF` (light) / Ink Well `#16182B` (dark) | Base scaffold background behind the 3D components; kept deliberately quiet so saturated buttons and badges are the visual event, not the backdrop. |
| Success / star | Gold Medal `#FFC93C` with `#FFF3C4` glossy highlight | Star badges, streak flames, correct-answer states. The highlight is a fixed-angle diagonal gradient sheen baked into every medal/badge shape, not just a shadow. |
| Error / incorrect | Cherry Crush — `#FF4D5E` | Incorrect quiz answer state and destructive actions; kept as saturated as the positive palette rather than desaturated, so feedback reads instantly to young kids. |
| Depth/bevel shadow | Per-color: ~25% darker + desaturated version of each button's top-face hue (e.g. Grape Punch top `#6C4CFF` → bevel `#4A34B8`) | Not a single global shadow gray — every 3D button's bottom bevel is generated from its own top color so bevels never look like generic drop shadows. Needs a helper function, not a fixed constant (see Task 1 of the plan doc). |

## Typography

Keep the existing Latin/Myanmar font pairing (`GoogleFonts.plusJakartaSansTextTheme` / `GoogleFonts.notoSansMyanmarTextTheme`, per `AppTheme._bilingualTextTheme`) but lean harder into their roundest, heaviest cuts:

- Headline and display styles jump to `w800`/`w900` wherever the font supports it (Plus Jakarta Sans does; Myanmar falls back to its heaviest available weight, likely `w700` — acceptable since Burmese glyphs already read heavier at lower weights).
- Body/label text stays at `w600` minimum — Candy Core has no light-weight text anywhere; thin type reads sterile/adult and works against the direction.
- Numerals (star counts, scores, streak counts) get their own oversized treatment: tabular figures at 1.5-2x the surrounding body size, so they read as "trophy numbers," not incidental data. Use `font-variant-numeric`-equivalent (Flutter: `FontFeature.tabularFigures()`) so digit changes during count-up animations don't jiggle surrounding layout.
- The existing `heightBoost` line-height multiplier (1.15 my / 1.25 en) stays untouched — orthogonal accessibility fix, not part of this redesign.
- Every headline/title container must keep using `FittedBox`/`Flexible` rather than fixed heights (per `CLAUDE.md`'s bilingual convention) — Candy Core's chunky buttons/badges have *less* internal padding margin than today's flat components, so a badge sized for 4 English characters will visibly clip 4 Burmese ones without shrink-to-fit.

## Shape, elevation, and the two-layer bevel construction

This is the one genuinely new pattern this mission introduces (nothing in the current `AppShadows`/`AppTheme` supports it):

Every primary button, tile, and node is built as a **two-layer stack**:
1. A bottom **shadow layer** container in the bevel-derived darker tone (see palette table), offset 6-8dp down, same border radius as the top layer.
2. A top **face layer** container in the full-saturation brand/subject color, sitting on top at rest.

Tapping animates the face layer's vertical offset from `0` to match the shadow layer (visually "sinking" the button flush) over ~80ms (`Curves.easeOut`), and springs back over ~150ms (`Curves.elasticOut`, slight overshoot) on release — exactly like Duolingo's answer buttons.

**Bevel depth by context (this is the tier/hierarchy lever):**
- Nursery/KG tiles: 10-12dp bevel (deepest — literal 3D chunky blocks).
- Primary path nodes: 6-8dp bevel.
- Secondary/IGCSE subject cards & module rows: 3-4dp bevel (shallowest — dense lists don't feel as toy-like).
- Quiz answer options (shared across Primary + Secondary via `McqQuizScreen`): 6dp bevel at rest, regardless of which tier launched the quiz — the quiz screen is one shared component (see Notable constraint below), so its bevel depth is fixed rather than tier-varying.

Dialogs and bottom sheets keep flat elevation-0 backgrounds (current theme convention) — "chrome" stays calm, only "things you press" get the two-layer bevel treatment.

**Badge/medal iconography** (star counts, streak flames, achievement medals): a circular or shield-shaped two-tone shape — a darker rim color, a lighter saturated face fill, and a fixed 45-degree diagonal white-to-transparent gradient sheen clipped to the top-left third. This becomes **`GlossyBadge`**, the other new shared widget this mission needs (alongside the bevel button, e.g. `Nova3dButton` / `CandyBevelSurface`).

## Component-by-component styling

- **Buttons/tiles/quiz options**: two-layer bevel construction described above.
- **Cards and list tiles** (module rows, subject cards): same two-layer construction, shallower bevel (3-4dp) so dense Secondary/IGCSE lists don't feel toy-like — bevel depth is the differentiation lever, not a different construction.
- **Quiz answer options**: pill-shaped chunky buttons, 6dp bevel at rest. Correct → face layer flashes to Gold Medal with a thin glossy highlight arc across the top third. Incorrect → flashes Cherry Crush and does a quick horizontal shake. Non-selected options after an answer locks: desaturate/recede rather than disappear.
- **Progress bars**: rendered as a chunky *inset* track (bevel technique in reverse — carved-in, not popped-out, so it doesn't compete visually with buttons), filled by a glossy rounded-cap bar in the tier's accent color with a subtle top-edge highlight line.
- **Dialogs/bottom sheets**: flat elevation-0 backgrounds (unchanged convention) — but every actionable element inside them (buttons, close icons) still gets the two-layer bevel treatment.
- **Badges/medals**: `GlossyBadge` shape described above — the one new shared widget beyond the bevel button/surface.

### Sample component (fully specified): quiz answer tile (`_OptionCard` in `mcq_quiz_screen.dart`)

Full-width, 64-72dp-tall pill-shaped 3D button:

- **Structure**: an outer `SizedBox` containing two stacked containers — a bottom "shadow" container matching the top's shape/width, shifted down 6dp, filled with the option's idle-state bevel color (25% darker/desaturated face color), and a top "face" container (`AnimatedContainer`/`AnimatedPositioned` driving the offset) with 20dp border radius, filled with Surface color in idle state, holding the option text (`FittedBox`-wrapped for Burmese safety) plus a leading circular letter badge (A/B/C/D) in a lighter tint.
- **Default**: face sits at offset 0 above its 6dp-deep shadow; idle border a thin 2dp neutral-gray outline; text `w700`.
- **Hover/focus** (desktop/web): face lifts slightly (offset -1dp, shadow gap grows to 7dp), border brightens to Grape Punch at 40% opacity — signals "liftable."
- **Pressed (tap-down)**: face offset animates 0 → 6dp (fully flush with shadow layer) over 80ms `easeOut`; border/text unchanged — pure mechanical press feedback before correctness is known.
- **Correct (post-submit)**: face fill animates to Gold Medal `#FFC93C`; border matches darker gold; a diagonal glossy sheen (45° white-to-transparent, clipped to top-left third) sweeps in over 300ms; a small check-circle icon fades in trailing the text; component does one scale pop (`1.0→1.06→1.0`, 250ms `elasticOut`); button springs back up off its shadow layer (offset back to 0 — it visually "pops up" in celebration rather than staying pressed).
- **Incorrect (post-submit, tapped option only)**: face fill animates to Cherry Crush `#FF4D5E`; border matches; X-circle icon fades in; card shakes horizontally ±6dp for 3 cycles (~250ms) before settling with shadow-offset reset to 0.
- **Disabled/non-selected-after-submit**: face fill desaturates to ~40% opacity of idle Surface color, border fades to near-transparent, offset stays at 0 (never sinks) — visually recedes rather than staying interactive-looking.

## Motion

- Buttons/tiles/quiz options: face-layer offset 0 → full-bevel-depth in ~80ms tap-down (`easeOut`), springs back ~150ms on release (`elasticOut`, slight overshoot) — the core "press" gesture used everywhere.
- Star/XP counters: count up digit-by-digit with a bounce-overshoot scale (`1.0→1.25→1.0`) on the final digit landing, plus a brief confetti-burst (6-8 small colored squares from the badge's center, fall + fade over 600ms).
- Correct quiz answers: "glossy sweep" — the diagonal highlight arc animates from off-screen-left to resting position over 300ms while the button briefly scales to 1.06 and back; pair with a single soft "pop" haptic if available (`HapticFeedback.lightImpact()`).
- Incorrect quiz answers: shake horizontally (±6dp, 3 cycles, ~250ms total, `easeInOut`) while the face layer flashes to Cherry Crush and back over the same duration.
- Nursery tiles: idle "breathe" animation exaggerated into a subtle 3D "wobble" — scale `1.0→1.04` AND ±1.5° rotation on a randomized-offset timer (beyond the current scale-only pulse in `nursery_kg_home_screen.dart`).
- Newly-unlocked path nodes (Primary) / subject cards (Secondary): "drop and bounce" entrance — `translateY` from -20dp to 0 with `elasticOut` plus a `1.0→1.1→1.0` scale pop, staggered 60ms apart on first load.

## Per-tier treatment

- **Nursery/KG**: Maximum toy energy. Full-bleed sky-gradient background stays; 140×140 tiles get the deepest bevel in the system (10-12dp), tightest 4-color candy rotation (Bubblegum/Sky/Sun/Grass) at full saturation, no restraint. Badge/star iconography oversized relative to body content; animations most exaggerated (wobble + bounce-drop + confetti); intentionally no dense text or list anywhere.
- **Primary**: The winding gamified path stays as the structural metaphor, but every path node becomes a true 3D button (bevel 6-8dp) rather than a flat circular icon avatar; hero header's "Start" CTAs get the full press-and-spring treatment. Palette shifts from Nursery's 4-color set to the existing 6-color `primaryPalette` pushed more saturated. Star-count badges on nodes use the full `GlossyBadge` treatment.
- **Secondary/IGCSE**: Bevel depth shrinks to 3-4dp system-wide; candy palette gives way to Deep Cobalt/Charcoal Navy jewel tones — still glossy and dimensional (subject cards/module tiles keep the two-layer press construction, nothing goes flat/Material), proportioned like a confident productivity dashboard. Confetti/wobble motion dropped entirely in favor of the quieter drop-and-bounce entrance and glossy-sweep correct-answer feedback only.

## Notable constraints this mission must respect

- **Firebase Spark plan** — no paid asset-generation APIs, no server-side rendering. All visual richness must be pure Flutter widget composition (gradients, `BoxShadow`, `CustomPainter`, `AnimatedContainer`/`TweenAnimationBuilder`) or bundled static assets.
- **No reusable card/button/tile widget layer exists yet** — every card/tile today is an inline `Container`+`BoxDecoration`+`InkWell` in its own screen file. This mission must introduce a genuine shared-widget layer (`Nova3dButton`/bevel surface, `GlossyBadge`) rather than duplicating the two-layer construction by hand across ~10+ call sites — see Task 2 of the plan doc.
- **`McqQuizScreen`/`McqQuizArgs` is explicitly shared across Primary and Secondary tiers** (generalized from `PrimaryQuizScreen` earlier this project) — Candy Core's quiz answer tile styling is therefore *one* styling, not tier-varying, even though bevel depth varies elsewhere in the app.
- **Bilingual text**: Burmese renders taller than English — every new component (badges, tiles, buttons) must use `FittedBox`/`Flexible`, never a fixed-height container around user-facing text.
- **`AppColors`/`AppGradients`/`AppShadows` are the only shared visual-token surface** — extend these (or a sibling token file), don't inline new hex values in screen widgets.
- **Riverpod-driven data**: star counts, module titles, progress fractions are all driven by watched providers. Purely decorative gamification (confetti, wobble) needs no new state; anything meant to reflect real backend state (e.g. a future streak counter) would need new model/provider fields, which is out of scope for this mission unless explicitly added.
- **`flutter analyze` must stay clean; re-run `dart run build_runner build` after any model/provider change.**

## Known risks / open questions carried into the plan

- The two-layer bevel construction roughly doubles widget/repaint count versus today's single-`Container` inline styles across the ~15 components in the survey's inventory — real performance and implementation-effort cost that argues strongly for building the shared widget layer first (Task 2) rather than reskinning screens ad hoc.
- High-saturation candy colors plus gold/gloss highlights raise WCAG contrast risk for light text sitting on top of them — Gold Medal and Sun Burst in particular are light enough that white text will likely fail AA. Every accent color needs a validated on-color text pairing before rollout, not an eyeballed one (see the plan's contrast-audit task).
- This direction leans further from the current "flat, elevation-0 Material" system than a minimal alternative would — achievable incrementally, but the visual gap between un-migrated and migrated screens will be more jarring mid-rollout if tiers are migrated one at a time rather than all at once. The plan doc should sequence to minimize how long the app looks half-migrated.

### Task 10 contrast-audit findings (resolved / documented exceptions)

Real (computed, not eyeballed) WCAG contrast ratios were checked for every text/icon-on-accent-color pairing Tasks 1-9 introduced. Fixed in place:

- `AnimatedStarBadge`'s digit text now renders *inside* `GlossyBadge`'s Gold Medal face (previously it sat beside a small star icon on the caller's own background). Two pre-existing call sites still passed `textColor: Colors.white` from that old layout — white-on-Gold-Medal measures ~1.5:1, badly failing AA. Fixed the `primary_home_screen.dart` hero-header call site to Charcoal Navy ink (~10.5:1); left the Nursery header's indigo (`#5B4FE9`) call site alone since it measures ~3.66:1, which passes the 3:1 large-text threshold its `titleLarge`/w900 styling qualifies for.
- `McqQuizScreen`'s incorrect-answer option used white text/icon on Cherry Crush, measuring ~3.2:1 -- passes 3:1 large-text but fails the 4.5:1 normal-text threshold its 16sp/w700 label actually needs. Switched to Charcoal Navy ink (~5.0:1), matching the correct-state treatment already used for Gold Medal.
- `GatekeeperEntryIconButton`'s new Candy Core chip wrapped its white lock icon in a light/white translucent face, measuring ~1.4-1.6:1 against the Nursery sky gradient (worse than the ~1.8:1 baseline the un-chipped pre-Candy-Core `IconButton` already had). Switched the chip to a dark translucent scrim (`Colors.black` @ 45% alpha), which measures ~4.9-5.4:1.

Reviewed and left as a documented exception (not a Mission 6 regression):

- The Nursery/KG tile icons (`Icons.abc_rounded` etc., white, 68dp) sit directly on the `nurseryCandyPalette` accent colors. All four fail the 3:1 non-text/graphical-object contrast guideline with a white icon (Bubblegum ~2.86:1, Sky Fizz ~2.04:1, Sun Burst ~1.44:1, Grass Bounce ~1.84:1) -- Sun Burst is exactly the case this doc's risk note above anticipated. This is **not a new regression**: the original 6-color `nurseryPalette` this replaced had the same shape of failure (its own "sunshine yellow" measured ~1.54:1 with a white icon). Darkening the candy hues enough to pass 3:1 would require changes severe enough to abandon the "candy-bright" concept this mission chose (Sun Burst would need to drop from L=0.62 to L≈0.37, turning it into a mustard/olive tone). Left unfixed this session; worth a dedicated accessibility pass (e.g. a per-tile dark/white icon-color switch, or an icon drop-shadow) as separate future work rather than bundling a palette change into a contrast-audit task.
- `CandyBevelSurface`'s per-face-derived bevel shadow (`AppColors.bevelShadowFor`) is confirmed brightness-mode-agnostic by construction (a pure function of the input face color, not `Theme.of(context).brightness` -- consistent with the checklist's "not just light" requirement, since it never special-cased light to begin with). For already-dark faces (Charcoal Navy, `L≈0.16`, used by the Secondary/IGCSE subject cards and `GatekeeperEntryIconButton`'s new scrim), the derived shadow clamps close to pure black, giving a face/shadow contrast of only ~1.1-1.3:1 versus ~2.0-2.5:1 for the typical bright candy-color case. This is a structural limit of "get darker" as a technique when the face is already near-black, not a fixable formula bug -- alternate darkening curves were tried and measured strictly worse. Both affected components already carry a border ring for definition independent of the bevel shadow, so this was left as-is rather than reworked.

## Non-goals

- Redesigning navigation structure, routing, or information architecture — this mission is visual/motion only, layered on top of whatever Missions 1-5 leave in place.
- New gamification *mechanics* (streaks, XP systems, leaderboards) — only the visual/motion treatment for existing stars/rewards. A real streak feature would be its own future mission with its own model/provider work.
- Changing the shared `McqQuizScreen`'s tier-neutral architecture back into tier-specific screens.
- Custom font licensing/embedding — stays within the existing Plus Jakarta Sans / Noto Sans Myanmar pairing already in `pubspec.yaml`.
