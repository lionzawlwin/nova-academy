# Nova Quantum Flash Engine (Nursery + KG) — Design

**Date:** 2026-07-23
**Status:** Approved, proceeding directly to implementation (user waived the separate plan-review step)
**Scope:** A new 7th Nursery/KG activity kind — high-speed passive flashcard exposure (incl. Glenn-Doman-style numeracy dot-cards) followed by a short tap-to-recall mini-game, with real stars/streak persistence. MVP content: Nursery + KG math dot-cards and English vocabulary decks.

## Background

The app already has a working, wired Nursery/KG activity architecture distinct from the Year1+ `CourseWeekDef`/`CoursePathwayDef` pathway system: `NurseryActivityKind` (`pictureMatching`, `listening`, `memory`, `flashcards`, `storytelling`, `rhymes`), each with its own bank file, routed through `open_nursery_activity.dart` and surfaced via `nursery_activity_index.dart`'s `allNurseryActivitySummaries()` (which `seed_service.dart`'s `mockSeedNurseryKgModules()` also derives its Firestore catalog from).

Two facts from investigation shaped this design:

1. **No existing Nursery/KG activity persists completion.** All six existing kinds are presentation-only — none call `markModuleCompleted` (the real stars+streak Firestore write used by every Year1+ lesson screen, e.g. `mcq_quiz_screen.dart`). Since the user explicitly asked for streak rewards, this engine is the first Nursery/KG activity wired into real persistence — scoped only to this new engine, not retrofitted onto the other five.
2. **No "high-speed timed auto-advance" or "dot card" mechanic exists anywhere in the codebase.** The existing `flashcards` kind (`nursery_kg_flashcards_bank.dart`) is a manual tap-to-flip two-sided translation card — a different pedagogy entirely (child-paced review vs. passive rapid exposure). This is genuinely new engine work, not a content-only extension of that screen.

An unrelated, untracked `ai_data_bridge/` directory (raw `List<Map>` blueprints for Year 5 English / IGCSE subjects, incompatible with the app's real `CourseWeekDef` schema, not imported anywhere) was found during investigation and is explicitly **out of scope** for this spec — it will be mined as source material for later curriculum-pipeline work, not touched here.

## Goals

- A new `NurseryActivityKind.quantumFlash` activity: an auto-advancing "Flash Pass" (dot-cards for math, word+emoji cards for vocabulary) followed by an in-place "Quick Check" tap-to-recall mini-game.
- Real Firestore persistence of stars earned + streak update on completion (first Nursery/KG activity to do so).
- MVP bilingual content: Nursery math dot-cards (quantities 1-10) + Nursery English vocabulary; KG math dot-cards (a real step up, e.g. to 20 / dot-pairs) + KG English vocabulary (a step up in category breadth).
- Stay inside existing architectural conventions: bilingual field pairs, `flutter analyze` clean, bank-integrity tests matching `nursery_kg_activity_bank_test.dart`'s style.

## Non-goals (this phase)

- Any change to the Year1+ `CourseWeekDef`/`CoursePathwayDef` pipeline.
- Retrofitting persistence onto the other five existing Nursery/KG activity kinds.
- A pause/rewind/speed-adjust control during the Flash Pass — deliberately omitted to preserve the rapid-fire pedagogy and keep sessions genuinely bite-sized; only a close (X) button is available.
- Touching or importing anything from `ai_data_bridge/`.
- A blanket widget-test suite for the new screen — this repo's convention is data-bank-integrity tests plus occasional one-off regression tests, not full screen coverage.

## Design

### 1. Data model — new file `lib/features/lessons/nursery_kg_quantum_flash_bank.dart`

```dart
enum QuantumFlashCardMode { dot, word }

class QuantumFlashCardItem {
  const QuantumFlashCardItem({
    required this.id,
    required this.mode,
    this.dotCount,       // required when mode == dot, null otherwise
    this.emoji,          // required when mode == word, null otherwise
    required this.colorValue,
    required this.labelEn,
    required this.labelMy,
  });
  final String id;
  final QuantumFlashCardMode mode;
  final int? dotCount;
  final String? emoji;
  final int colorValue;
  final String labelEn;
  final String labelMy;
}

class QuantumFlashDeckDef {
  const QuantumFlashDeckDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.emoji,
    this.flashIntervalMs = 900,
    required this.cards,
  });
  // ...fields mirror NurseryFlashcardsDef's shape...
  static const kind = NurseryActivityKind.quantumFlash;
}

QuantumFlashDeckDef? quantumFlashDefForModule(String moduleId) { ... }
const List<QuantumFlashDeckDef> nurseryKgQuantumFlashBank = [ ... ];
```

One combined file covering both `Grade.nursery` and `Grade.kg` decks (distinguished per-deck by the `grade` field) — matching every existing bank's shape, not the two-file split originally floated.

### 2. Screen — new file `lib/features/lessons/quantum_flash_screen.dart`

`ConsumerStatefulWidget`, two in-place phases, no navigation between them:

**Flash Pass** (passive):
- Full-bleed card, auto-advances every `deck.flashIntervalMs` (900ms default) via a delayed loop.
- 150ms crossfade transition only — no hard cut, no color strobe (photosensitivity-safety choice for young children).
- `mode == dot`: renders only a scattered cluster of `dotCount` colored dots — no numeral, no word (true quantity-impression exposure).
- `mode == word`: renders emoji + label (active app language) once — no flip/translate-reveal (that's the existing `flashcards` kind's job).
- `NurseryLessonTopBar` for the close (X) button; progress shown via the same pips pattern `nursery_flashcards_screen.dart` uses.

**Quick Check** (interactive, same screen):
- 4 fixed rounds sampled from the deck's cards.
- Each round: re-render one card's prompt + 3 tappable answer chips (1 correct label, 2 distractors from other cards in the deck).
- Tap → brief green/red flash on the chip → auto-advance after ~600ms.
- New small purpose-built widget — not a retrofit of `McqQuizScreen`/`QuizQuestion` (text-option shaped, poor fit for a rendered dot/image prompt).

**Completion:**
- `_starsEarned` scored proportional to correct rounds out of `deck.starsReward`, matching `mcq_quiz_screen.dart`'s `_starsEarned` getter shape.
- Calls `markModuleCompleted(ref.read(firestoreProvider), childId:, moduleId: deck.id, starsEarned:, currentChild:)` — fire-and-forget via `unawaited`, skipped entirely when `activeProfileProvider` isn't a `StudentProfile` or the module has no def, errors logged via `debugPrint` (not swallowed) — byte-for-byte the same gating/error-handling shape as `mcq_quiz_screen.dart`'s `_recordCompletion`.
- Then shows the existing `NurseryCompletionOverlay`.

### 3. Wiring

1. `nursery_activity_kind.dart`: add `quantumFlash` to the `NurseryActivityKind` enum + a `'quantumflash'` case in `contentTypeForNurseryKind`.
2. `nursery_activity_index.dart`: import the new bank, add its `for` loop to `allNurseryActivitySummaries()`.
3. `open_nursery_activity.dart`: add a `NurseryActivityKind.quantumFlash` case pushing a new route with `(subject, quantumFlashDefForModule(summary.id))`.
4. `app_router.dart`: add `AppRoutes.lessonNurseryQuantumFlash` + matching `GoRoute` (mirroring the existing five `lessonNursery*` routes' shape, including their defensive/fallback treatment).
5. `seed_service.dart` needs **no change** — `mockSeedNurseryKgModules()` already derives its Firestore catalog from `allNurseryActivitySummaries()`.

### 4. Content (MVP)

- **Nursery / math**: 2 dot-card decks, quantities 1-5 and 6-10.
- **Nursery / english**: 1-2 word/emoji decks (colors, animals, everyday objects).
- **KG / math**: 2 dot-card decks, a real step up from Nursery (e.g. quantities to 20, or two-group dot-pairs for pre-addition quantity comparison).
- **KG / english**: 1-2 word/emoji decks, a step up in category breadth (e.g. action words, shapes, weather).
- Every card and deck fully bilingual (`labelEn`/`labelMy`, `titleEn`/`titleMy`, `descriptionEn`/`descriptionMy`), same rigor as prior curriculum work.

### 5. Testing

- `test/nursery_kg_quantum_flash_bank_test.dart`, mirroring `nursery_kg_activity_bank_test.dart`'s conventions: unique ids; every deck's grade ∈ {nursery, kg}; every `dot`-mode card has a positive `dotCount` and no `emoji`; every `word`-mode card has a non-empty `emoji` and no `dotCount`; subject is a recognized key.
- One small widget smoke test for `QuantumFlashScreen` at a small-phone size (mirroring `nursery_responsive_layout_test.dart`'s precedent, since this screen family has a documented history of small-screen overflow bugs) — asserts no layout exceptions.
- `flutter analyze` + `dart format .` clean, as always.
