# Nursery + KG Bilingual Curriculum Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Seed a real, testable bilingual (English/Burmese) Nursery + KG curriculum (Phonics, Math, General Knowledge, STEM) that actually drives distinct gameplay per subject tile, without violating the project's existing "content lives in Dart, not Firestore" rule.

**Architecture:** One canonical Dart content registry (`nursery_kg_activity_bank.dart`) is the single source of truth for 24 activity modules (2 grades × 4 subjects × 3 modules, 5 match-pair items each = 120 bilingual content items). `seed_service.dart` derives lightweight Firestore catalog docs from it (metadata only, no item payload). `NurseryLessonScreen` is generalized to play back any module's items instead of a hardcoded fruit set. `NurseryKgHomeScreen` gains a 5th (STEM) tile and wires all 4 content-bearing tiles to fetch the right seeded module and launch it directly — no picker screen, preserving Nursery's one-tap UX.

**Tech Stack:** Flutter, Riverpod (`StreamProvider`), Freezed/`json_serializable` (unchanged in this plan — no model/provider codegen needed), `flutter_test`, ARB/`flutter gen-l10n`.

**Full design context:** `docs/superpowers/specs/2026-07-19-nursery-kg-curriculum-design.md`

---

## Content matrix (authoritative topic list for Task 2)

8 grade×subject combinations, 3 modules each, ids follow `mock-<grade>-<subject>-<n>`:

| Grade | Subject | Module 1 | Module 2 | Module 3 |
|---|---|---|---|---|
| nursery | phonics | Letter Sounds A-E | Letter Sounds F-J | Rhyming Pairs |
| nursery | math | Counting 1-5 | Shapes | Colors & Counting |
| nursery | generalknowledge | Animals & Habitats | Family & Body Parts | Fruits & Vegetables |
| nursery | stem | Living vs Non-living | Five Senses | Cause & Effect (melt/grow) |
| kg | phonics | Letter Sounds K-O | Letter Sounds P-T | Rhyming & Sight Words |
| kg | math | Counting 6-10 | Simple Addition to 5 | Bigger / Smaller |
| kg | generalknowledge | Myanmar Culture Basics | Weather & Seasons | Community Helpers |
| kg | stem | Water Cycle Basics | Day and Night | Simple Machines (push/pull) |

Each module = 5 `MatchPairItem`s (id, emoji, colorValue, labelEn, labelMy). `starsReward` = 6 for every nursery module, 8 for every kg module (kg is slightly more advanced, matches the existing convention of higher grades earning more stars — see `mockSeedLearningModules`'s existing 6/8/10/15/20 spread by difficulty). `contentType` = `'interactive'` for all (matches the existing `moduleGammaShapes`/`moduleGammaPhonics` convention for this age band).

---

### Task 1: Add the STEM localization key

**Files:**
- Modify: `lib/l10n/app_en.arb`
- Modify: `lib/l10n/app_my.arb`

- [ ] **Step 1: Add the English key**

In `lib/l10n/app_en.arb`, immediately after line 126 (`"subjectGeneralKnowledge": "General Knowledge",`), add:

```json
  "subjectStem": "STEM",
```

- [ ] **Step 2: Add the Burmese key**

In `lib/l10n/app_my.arb`, immediately after the existing `"subjectGeneralKnowledge"` line, add:

```json
  "subjectStem": "STEM (သိပ္ပံ လေ့လာမှု)",
```

- [ ] **Step 3: Regenerate localizations**

Run: `flutter gen-l10n`
Expected: exits 0, updates `lib/l10n/app_localizations_en.dart` and `app_localizations_my.dart` with a new `subjectStem` getter on `AppLocalizations`.

- [ ] **Step 4: Verify the getter exists**

Run: `grep -n "subjectStem" lib/l10n/app_localizations_en.dart`
Expected: one match, a `String get subjectStem => 'STEM';` (or equivalent generated getter).

- [ ] **Step 5: Commit**

```bash
git add lib/l10n/app_en.arb lib/l10n/app_my.arb lib/l10n/app_localizations_en.dart lib/l10n/app_localizations_my.dart lib/l10n/app_localizations.dart
git commit -m "feat(l10n): add subjectStem localization key"
```

---

### Task 2: Create the Nursery/KG activity content registry

**Files:**
- Create: `lib/features/lessons/nursery_kg_activity_bank.dart`
- Test: `test/nursery_kg_activity_bank_test.dart`

- [ ] **Step 1: Write the failing test**

Create `test/nursery_kg_activity_bank_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/nursery_kg_activity_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('nurseryKgActivityBank', () {
    test('contains exactly 24 modules', () {
      expect(nurseryKgActivityBank.length, 24);
    });

    test('every module id is unique', () {
      final ids = nurseryKgActivityBank.map((m) => m.id).toSet();
      expect(ids.length, nurseryKgActivityBank.length);
    });

    test('every module has exactly 5 items', () {
      for (final module in nurseryKgActivityBank) {
        expect(
          module.items.length,
          5,
          reason: '${module.id} does not have exactly 5 items',
        );
      }
    });

    test('every module grade is nursery or kg', () {
      for (final module in nurseryKgActivityBank) {
        expect(
          module.grade == Grade.nursery || module.grade == Grade.kg,
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test('every module subject is one of the four expected keys', () {
      const expected = {'phonics', 'math', 'generalknowledge', 'stem'};
      for (final module in nurseryKgActivityBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has 3 modules per grade+subject combination', () {
      final counts = <String, int>{};
      for (final module in nurseryKgActivityBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 8, reason: 'expected 8 grade+subject combos');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          3,
          reason: '${entry.key} has ${entry.value} modules, expected 3',
        );
      }
    });

    test('every module has non-empty, non-equal bilingual title/description', () {
      for (final module in nurseryKgActivityBank) {
        expect(module.titleEn, isNotEmpty, reason: '${module.id} titleEn');
        expect(module.titleMy, isNotEmpty, reason: '${module.id} titleMy');
        expect(
          module.descriptionEn,
          isNotEmpty,
          reason: '${module.id} descriptionEn',
        );
        expect(
          module.descriptionMy,
          isNotEmpty,
          reason: '${module.id} descriptionMy',
        );
        expect(
          module.titleMy,
          isNot(equals(module.titleEn)),
          reason: '${module.id} titleMy == titleEn',
        );
        expect(
          module.descriptionMy,
          isNot(equals(module.descriptionEn)),
          reason: '${module.id} descriptionMy == descriptionEn',
        );
      }
    });

    test('every item has non-empty, non-equal bilingual labels and an emoji', () {
      for (final module in nurseryKgActivityBank) {
        for (final item in module.items) {
          expect(
            item.emoji,
            isNotEmpty,
            reason: '${module.id}/${item.id} missing emoji',
          );
          expect(
            item.labelEn,
            isNotEmpty,
            reason: '${module.id}/${item.id} missing labelEn',
          );
          expect(
            item.labelMy,
            isNotEmpty,
            reason: '${module.id}/${item.id} missing labelMy',
          );
          expect(
            item.labelMy,
            isNot(equals(item.labelEn)),
            reason: '${module.id}/${item.id} labelMy == labelEn',
          );
        }
      }
    });

    test('every item id is unique within its own module', () {
      for (final module in nurseryKgActivityBank) {
        final ids = module.items.map((i) => i.id).toSet();
        expect(
          ids.length,
          module.items.length,
          reason: '${module.id} has duplicate item ids',
        );
      }
    });

    test('every starsReward is positive', () {
      for (final module in nurseryKgActivityBank) {
        expect(module.starsReward, greaterThan(0), reason: module.id);
      }
    });
  });

  group('matchPairsForModule', () {
    test('returns the seeded items for a known module id', () {
      final module = nurseryKgActivityBank.first;
      final pairs = matchPairsForModule(module.id);
      expect(pairs, module.items);
    });

    test('returns a non-empty fallback for an unknown module id', () {
      final pairs = matchPairsForModule('does-not-exist');
      expect(pairs, isNotEmpty);
    });
  });
}
```

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/nursery_kg_activity_bank_test.dart`
Expected: FAIL — `package:nova_academy/features/lessons/nursery_kg_activity_bank.dart` doesn't exist yet.

- [ ] **Step 3: Write the implementation**

Create `lib/features/lessons/nursery_kg_activity_bank.dart`. Start with the schema and the fallback set:

```dart
import '../../models/child_model.dart';

/// One draggable/droppable content item for a Nursery/KG match-pairs
/// activity. Plain Dart (not Freezed) matching the existing
/// [QuizQuestion] convention in `mock_quiz_data.dart` -- this is static,
/// hand-authored content, not a Firestore-backed model.
class MatchPairItem {
  const MatchPairItem({
    required this.id,
    required this.emoji,
    required this.colorValue,
    required this.labelEn,
    required this.labelMy,
  });

  final String id;
  final String emoji;

  /// ARGB int, e.g. `0xFFE64545` -- construct a [Color] at the call site
  /// with `Color(colorValue)`. Kept as a plain int here so this file has
  /// no Flutter (`dart:ui`) dependency.
  final int colorValue;
  final String labelEn;
  final String labelMy;

  String label(String languageCode) => languageCode == 'my' ? labelMy : labelEn;
}

/// One seeded Nursery/KG activity module: the full definition of both its
/// Firestore catalog metadata (everything except [items]) and its actual
/// playable content ([items]). This is the single source of truth --
/// `seed_service.dart` derives `LearningModuleModel` catalog docs from
/// this list (stripping [items], since real content never lives in
/// Firestore -- see `docs/firestore_schema.md`), and this file's own
/// [matchPairsForModule] serves the same list's [items] to the lesson
/// screen at play time.
class NurseryActivityDef {
  const NurseryActivityDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.items,
  });

  final String id;
  final String subject;
  final Grade grade;
  final String contentType;
  final String titleEn;
  final String titleMy;
  final String descriptionEn;
  final String descriptionMy;
  final int starsReward;
  final List<MatchPairItem> items;
}

/// Used by [matchPairsForModule] whenever a module id isn't found in
/// [nurseryKgActivityBank] (not yet seeded, or Firestore unavailable) --
/// keeps the lesson screen from ever showing an empty state. Identical
/// content to the original hardcoded fruit-matching set this registry
/// replaces.
const List<MatchPairItem> _fallbackPairs = [
  MatchPairItem(
    id: 'apple',
    emoji: '🍎',
    colorValue: 0xFFE64545,
    labelEn: 'Apple',
    labelMy: 'ပန်းသီး',
  ),
  MatchPairItem(
    id: 'banana',
    emoji: '🍌',
    colorValue: 0xFFFFC93C,
    labelEn: 'Banana',
    labelMy: 'ငှက်ပျောသီး',
  ),
  MatchPairItem(
    id: 'grapes',
    emoji: '🍇',
    colorValue: 0xFF9C6ADE,
    labelEn: 'Grapes',
    labelMy: 'စပျစ်သီး',
  ),
  MatchPairItem(
    id: 'orange',
    emoji: '🍊',
    colorValue: 0xFFFF8A3D,
    labelEn: 'Orange',
    labelMy: 'လိမ္မော်သီး',
  ),
  MatchPairItem(
    id: 'watermelon',
    emoji: '🍉',
    colorValue: 0xFF4CB963,
    labelEn: 'Watermelon',
    labelMy: 'ဖရဲသီး',
  ),
];

/// Looks up the seeded items for [moduleId] (see [nurseryKgActivityBank]).
/// Falls back to [_fallbackPairs] for any id that isn't found so the
/// lesson screen never has nothing to show.
List<MatchPairItem> matchPairsForModule(String moduleId) {
  for (final module in nurseryKgActivityBank) {
    if (module.id == moduleId) return module.items;
  }
  return _fallbackPairs;
}

/// The full Nursery + KG curriculum: 2 grades x 4 subjects x 3 modules,
/// 5 items each. See the content matrix in
/// `docs/superpowers/plans/2026-07-19-nursery-kg-curriculum-plan.md` for
/// the topic assigned to every module id below.
const List<NurseryActivityDef> nurseryKgActivityBank = [
  // --- nursery / phonics ---
  NurseryActivityDef(
    id: 'mock-nursery-phonics-1',
    subject: 'phonics',
    grade: Grade.nursery,
    contentType: 'interactive',
    titleEn: 'Letter Sounds A-E',
    titleMy: 'အက္ခရာအသံများ A-E',
    descriptionEn: 'Match each letter to the picture that starts with its sound.',
    descriptionMy: 'အက္ခရာတစ်လုံးစီကို ၎င်း၏အသံဖြင့် အစပြုသော ပုံနှင့် တွဲပါ။',
    starsReward: 6,
    items: [
      MatchPairItem(id: 'a-ant', emoji: '🐜', colorValue: 0xFF8D6E63, labelEn: 'Ant', labelMy: 'ပုရွှန်း'),
      MatchPairItem(id: 'b-ball', emoji: '⚽', colorValue: 0xFF4FC3F7, labelEn: 'Ball', labelMy: 'ဘောလုံး'),
      MatchPairItem(id: 'c-cat', emoji: '🐱', colorValue: 0xFFFFC93C, labelEn: 'Cat', labelMy: 'ကြောင်'),
      MatchPairItem(id: 'd-duck', emoji: '🦆', colorValue: 0xFF7ED957, labelEn: 'Duck', labelMy: 'ဘဲ'),
      MatchPairItem(id: 'e-elephant', emoji: '🐘', colorValue: 0xFFB388FF, labelEn: 'Elephant', labelMy: 'ဆင်'),
    ],
  ),
  // ... (remaining 23 NurseryActivityDef entries follow the same shape)
];
```

> **Note for the implementer:** only `mock-nursery-phonics-1` is fully written above as the exact pattern to copy. Author the remaining 23 entries now, following the content matrix table at the top of this plan for topics, keeping the same field shape, `contentType: 'interactive'`, `starsReward: 6` for every `nursery` module and `starsReward: 8` for every `kg` module, ids following `mock-<grade>-<subject>-<n>`, and real (non-machine-translated-sounding, age-appropriate) Burmese for every English string -- no two module ids repeat, no two item ids repeat within the same module. Every module needs exactly 5 items.

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/nursery_kg_activity_bank_test.dart`
Expected: PASS, all tests green (24 modules, 8 combos x 3, 5 items each, unique ids, non-empty/non-equal bilingual fields).

- [ ] **Step 5: Run flutter analyze**

Run: `flutter analyze lib/features/lessons/nursery_kg_activity_bank.dart`
Expected: `No issues found!`

- [ ] **Step 6: Commit**

```bash
git add lib/features/lessons/nursery_kg_activity_bank.dart test/nursery_kg_activity_bank_test.dart
git commit -m "feat: add Nursery/KG bilingual activity content registry"
```

---

### Task 3: Seed the Firestore catalog metadata from the registry

**Files:**
- Modify: `lib/core/services/seed_service.dart`
- Test: `test/seed_service_test.dart`

- [ ] **Step 1: Write the failing test**

Add a new group to `test/seed_service_test.dart` (append before the final closing brace of `main()`, alongside the existing `group('mockSeedLearningModules', ...)`):

```dart
  group('mockSeedNurseryKgModules', () {
    final modules = mockSeedNurseryKgModules();
    final legacyModules = mockSeedLearningModules();

    test('has exactly 24 modules', () {
      expect(modules.length, 24);
    });

    test('every module id is unique, including against legacy modules', () {
      final allIds = [...modules, ...legacyModules].map((m) => m.id).toList();
      expect(allIds.toSet().length, allIds.length);
    });

    test('every module grade is nursery or kg', () {
      for (final module in modules) {
        expect(
          module.grade == Grade.nursery || module.grade == Grade.kg,
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test(
      'every module subject is one of the four expected Nursery/KG keys',
      () {
        const expected = {'phonics', 'math', 'generalknowledge', 'stem'};
        for (final module in modules) {
          expect(expected.contains(module.subject), isTrue, reason: module.id);
        }
      },
    );

    test('every module has non-empty bilingual title and description', () {
      for (final module in modules) {
        expect(module.titleEn, isNotEmpty, reason: '${module.id} titleEn');
        expect(module.titleMy, isNotEmpty, reason: '${module.id} titleMy');
        expect(
          module.descriptionEn,
          isNotEmpty,
          reason: '${module.id} descriptionEn',
        );
        expect(
          module.descriptionMy,
          isNotEmpty,
          reason: '${module.id} descriptionMy',
        );
      }
    });
  });
```

Add the import needed for `Grade` if not already present in the test file (it already imports `nova_academy/models/child_model.dart`, so no change needed there).

- [ ] **Step 2: Run test to verify it fails**

Run: `flutter test test/seed_service_test.dart`
Expected: FAIL — `mockSeedNurseryKgModules` isn't defined.

- [ ] **Step 3: Write the implementation**

In `lib/core/services/seed_service.dart`, add the import at the top:

```dart
import '../../features/lessons/nursery_kg_activity_bank.dart';
```

Add this function after `mockSeedLearningModules()` (after its closing `}` / before end of file):

```dart
/// The Nursery + KG `LearningModules` documents [seedDatabase] writes,
/// derived from [nurseryKgActivityBank] -- the actual playable content
/// ([NurseryActivityDef.items]) is intentionally dropped here and never
/// written to Firestore (see `docs/firestore_schema.md`'s "quiz question
/// content lives in Dart, not Firestore" design note); only catalog
/// metadata is persisted.
List<LearningModuleModel> mockSeedNurseryKgModules() {
  return [
    for (final activity in nurseryKgActivityBank)
      LearningModuleModel(
        id: activity.id,
        subject: activity.subject,
        grade: activity.grade,
        contentType: activity.contentType,
        titleEn: activity.titleEn,
        titleMy: activity.titleMy,
        descriptionEn: activity.descriptionEn,
        descriptionMy: activity.descriptionMy,
        starsReward: activity.starsReward,
      ),
  ];
}
```

Then wire it into `seedDatabase()`. Change:

```dart
Future<SeedSummary> seedDatabase(FirebaseFirestore db) async {
  final users = mockSeedUsers();
  final children = mockSeedChildren();
  final modules = mockSeedLearningModules();
```

to:

```dart
Future<SeedSummary> seedDatabase(FirebaseFirestore db) async {
  final users = mockSeedUsers();
  final children = mockSeedChildren();
  final modules = [...mockSeedLearningModules(), ...mockSeedNurseryKgModules()];
```

(The rest of `seedDatabase` -- the batch loop and `SeedSummary` construction -- is unchanged; it already iterates `modules` generically, so the added Nursery/KG docs are written and counted automatically.)

- [ ] **Step 4: Run test to verify it passes**

Run: `flutter test test/seed_service_test.dart`
Expected: PASS, all tests green including the new group.

- [ ] **Step 5: Run flutter analyze**

Run: `flutter analyze lib/core/services/seed_service.dart`
Expected: `No issues found!`

- [ ] **Step 6: Commit**

```bash
git add lib/core/services/seed_service.dart test/seed_service_test.dart
git commit -m "feat: seed Nursery/KG curriculum catalog metadata into Firestore"
```

---

### Task 4: Generalize `NurseryLessonScreen` to play back seeded content

**Files:**
- Modify: `lib/features/lessons/nursery_lesson_screen.dart`

- [ ] **Step 1: Add a `pairs` constructor parameter**

In `lib/features/lessons/nursery_lesson_screen.dart`, change the widget's constructor and field from:

```dart
class NurseryLessonScreen extends StatefulWidget {
  const NurseryLessonScreen({super.key, this.subjectLabel, this.themeColor});

  /// Optional short label shown in the top bar (e.g. "Fruits"). Already
  /// expected to be localized by the caller, same as [SubjectVisual.label].
  final String? subjectLabel;

  /// Optional accent color for chrome that isn't per-pair (e.g. progress
  /// pips). Defaults to a friendly nursery-palette blue when omitted.
  final Color? themeColor;
```

to:

```dart
class NurseryLessonScreen extends StatefulWidget {
  const NurseryLessonScreen({
    super.key,
    this.subjectLabel,
    this.themeColor,
    this.pairs,
  });

  /// Optional short label shown in the top bar (e.g. "Fruits"). Already
  /// expected to be localized by the caller, same as [SubjectVisual.label].
  final String? subjectLabel;

  /// Optional accent color for chrome that isn't per-pair (e.g. progress
  /// pips). Defaults to a friendly nursery-palette blue when omitted.
  final Color? themeColor;

  /// Seeded content for this lesson, from
  /// `nursery_kg_activity_bank.dart`'s `matchPairsForModule`. When null or
  /// empty, falls back to the original hardcoded fruit-matching set so
  /// this screen still works for any caller that doesn't pass content.
  final List<MatchPairItem>? pairs;
```

Add the import at the top of the file:

```dart
import 'nursery_kg_activity_bank.dart';
```

- [ ] **Step 2: Replace `_MatchPair` usage with `MatchPairItem`**

Delete the file-local `_MatchPair` class and `_buildPairs()` function entirely (lines 13-87 in the original file: the `_MatchPair` class definition through the end of `_buildPairs()`). `MatchPairItem` (imported from `nursery_kg_activity_bank.dart`) has the identical field shape (`id`, `emoji`, `labelEn`, `labelMy`, plus a `label(languageCode)` method) except `color` is now `colorValue` (an `int`) instead of a `Color` -- construct `Color(item.colorValue)` at each of the two call sites that used `pair.color` (in `_DraggableItem._tile()` and `_BasketTarget.build()`).

Every remaining reference to `_MatchPair` in the file (the `_pairs`, `_shuffledItems` fields, and all widget parameter types: `_DraggableItem`, `_BasketTarget`) becomes `MatchPairItem`.

- [ ] **Step 3: Use the constructor's `pairs` in state init**

Change:

```dart
class _NurseryLessonScreenState extends State<NurseryLessonScreen> {
  late final List<_MatchPair> _pairs = _buildPairs();
  late final List<_MatchPair> _shuffledItems = List.of(_pairs)
    ..shuffle(Random());
```

to:

```dart
class _NurseryLessonScreenState extends State<NurseryLessonScreen> {
  late final List<MatchPairItem> _pairs =
      (widget.pairs == null || widget.pairs!.isEmpty)
      ? matchPairsForModule('does-not-exist') // resolves to the fallback set
      : widget.pairs!;
  late final List<MatchPairItem> _shuffledItems = List.of(_pairs)
    ..shuffle(Random());
```

- [ ] **Step 4: Run flutter analyze**

Run: `flutter analyze lib/features/lessons/nursery_lesson_screen.dart`
Expected: `No issues found!` -- fix any leftover `_MatchPair` reference or `.color` access the analyzer flags.

- [ ] **Step 5: Manual smoke check**

Run: `flutter test` (full suite)
Expected: PASS -- this file has no dedicated widget test today, so the full suite passing (nothing regresses) is the acceptance bar for this step; a `NurseryLessonScreen` widget test is intentionally not being added in this plan (no existing precedent for widget-testing this screen, and the drag/drop mechanics are unchanged -- only the data source changed).

- [ ] **Step 6: Commit**

```bash
git add lib/features/lessons/nursery_lesson_screen.dart
git commit -m "refactor: generalize NurseryLessonScreen to play back seeded content"
```

---

### Task 5: Wire `NurseryKgHomeScreen` to real seeded content, add STEM tile

**Files:**
- Modify: `lib/features/home/nursery_kg_home_screen.dart`

- [ ] **Step 1: Add the STEM subject to `_subjects()`**

Change:

```dart
  static List<SubjectVisual> _subjects(AppLocalizations l10n) => [
    SubjectVisual(
      label: l10n.subjectPhonics,
      icon: Icons.abc_rounded,
      color: AppColors.nurseryPalette[0],
    ),
    SubjectVisual(
      label: l10n.subjectMath,
      icon: Icons.filter_2_rounded,
      color: AppColors.nurseryPalette[1],
    ),
    SubjectVisual(
      label: l10n.subjectArt,
      icon: Icons.palette_rounded,
      color: AppColors.nurseryPalette[2],
    ),
    SubjectVisual(
      label: l10n.subjectGeneralKnowledge,
      icon: Icons.emoji_objects_rounded,
      color: AppColors.nurseryPalette[3],
    ),
  ];
```

to:

```dart
  static List<SubjectVisual> _subjects(AppLocalizations l10n) => [
    SubjectVisual(
      label: l10n.subjectPhonics,
      icon: Icons.abc_rounded,
      color: AppColors.nurseryPalette[0],
    ),
    SubjectVisual(
      label: l10n.subjectMath,
      icon: Icons.filter_2_rounded,
      color: AppColors.nurseryPalette[1],
    ),
    SubjectVisual(
      label: l10n.subjectArt,
      icon: Icons.palette_rounded,
      color: AppColors.nurseryPalette[2],
    ),
    SubjectVisual(
      label: l10n.subjectGeneralKnowledge,
      icon: Icons.emoji_objects_rounded,
      color: AppColors.nurseryPalette[3],
    ),
    SubjectVisual(
      label: l10n.subjectStem,
      icon: Icons.science_rounded,
      color: AppColors.nurseryPalette[4],
    ),
  ];
```

Each `SubjectVisual` needs a stable subject key to query by. Check `home_shared_widgets.dart`'s `SubjectVisual` class -- if it doesn't already carry a subject-key field (it's only used for `label`/`icon`/`color` today, keyed implicitly by position), add one:

In `lib/features/home/home_shared_widgets.dart`, find the `SubjectVisual` class and add a required `subjectKey` field (lowercase, matching `LearningModuleModel.subject` convention: `'phonics'`, `'math'`, `'art'`, `'generalknowledge'`, `'stem'`), following whatever constructor style the class already uses (named parameters, likely `const` constructor like the rest of the codebase's small data classes).

Update every `SubjectVisual(...)` call in `_subjects()` above to include the matching `subjectKey:` (`'phonics'`, `'math'`, `'art'`, `'generalknowledge'`, `'stem'` respectively).

- [ ] **Step 2: Turn `NurseryKgHomeScreen` into a screen that reads modules**

Add imports at the top of `nursery_kg_home_screen.dart`:

```dart
import '../../models/learning_module_model.dart';
import '../../providers/learning_module_providers.dart';
import '../lessons/nursery_kg_activity_bank.dart';
```

Change the tile's `onTap` from:

```dart
                            for (final subject in subjects)
                              _NurseryTile(
                                visual: subject,
                                onTap: () => context.push(
                                  AppRoutes.lessonNursery,
                                  extra: subject,
                                ),
                              ),
```

to:

```dart
                            for (final subject in subjects)
                              _NurseryTile(
                                visual: subject,
                                onTap: () => _openLesson(
                                  context,
                                  ref,
                                  child?.currentGrade,
                                  subject,
                                ),
                              ),
```

Add a helper method on `NurseryKgHomeScreen` (below `build`):

```dart
  void _openLesson(
    BuildContext context,
    WidgetRef ref,
    Grade? grade,
    SubjectVisual subject,
  ) {
    final allModules = ref.read(learningModulesProvider).valueOrNull ?? const [];
    final match = allModules
        .where((m) => m.grade == grade && m.subject == subject.subjectKey)
        .toList();
    final pairs = match.isEmpty ? null : matchPairsForModule(match.first.id);

    context.push(
      AppRoutes.lessonNursery,
      extra: (subject, pairs),
    );
  }
```

`AppRoutes.lessonNursery`'s route builder currently expects a single `SubjectVisual` as `extra` (passed straight through as `subject`). Find that route in `lib/routing/app_router.dart` and update it to accept the new `(SubjectVisual, List<MatchPairItem>?)` record and pass both fields into `NurseryLessonScreen`:

```dart
subjectLabel: subject.label,
themeColor: subject.color,
pairs: pairsFromExtra,
```

(Match the exact existing variable names in that route's builder -- read the current route entry for `AppRoutes.lessonNursery` in `app_router.dart` before editing so the destructuring lines up with however `extra` is currently cast/used there.)

Add `import '../../models/child_model.dart';` to `nursery_kg_home_screen.dart` if `Grade` isn't already in scope (it's referenced via `activeProfile`/`StudentProfile.child.currentGrade` already, so this import likely already exists transitively -- verify with `flutter analyze` in Step 4 rather than guessing).

- [ ] **Step 3: Run flutter analyze**

Run: `flutter analyze lib/features/home/nursery_kg_home_screen.dart lib/features/home/home_shared_widgets.dart lib/routing/app_router.dart`
Expected: `No issues found!` -- resolve any import/type mismatch the analyzer surfaces (this task's step 2 has one deliberately-flagged ambiguity around the exact `app_router.dart` route signature for the implementer to resolve against the real file).

- [ ] **Step 4: Run the full test suite**

Run: `flutter test`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add lib/features/home/nursery_kg_home_screen.dart lib/features/home/home_shared_widgets.dart lib/routing/app_router.dart
git commit -m "feat: wire Nursery/KG subject tiles to seeded curriculum content"
```

---

### Task 6: Documentation touch-ups

**Files:**
- Modify: `docs/firestore_schema.md`

- [ ] **Step 1: Update the design note**

In `docs/firestore_schema.md`, in the "### Design note: quiz question content lives in Dart, not Firestore" section, change the sentence:

```
It ships as compiled Dart data bundled into the app binary: see `lib/features/lessons/mock_quiz_data.dart` today, and a forthcoming `lib/core/services/seed_data/` registry that will organize a much larger question bank the same way.
```

to:

```
It ships as compiled Dart data bundled into the app binary: see `lib/features/lessons/mock_quiz_data.dart` (Primary quiz content) and `lib/features/lessons/nursery_kg_activity_bank.dart` (Nursery/KG match-pair content), which together establish the pattern later grade-band curricula will follow.
```

- [ ] **Step 2: Commit**

```bash
git add docs/firestore_schema.md
git commit -m "docs: point firestore_schema.md at the new Nursery/KG content registry"
```

---

### Task 7: Final verification

- [ ] **Step 1: Full static analysis**

Run: `flutter analyze`
Expected: `No issues found!` across the whole project.

- [ ] **Step 2: Full test suite**

Run: `flutter test`
Expected: all tests PASS, including both new test files/groups from Tasks 2 and 3.

- [ ] **Step 3: Format check**

Run: `dart format --output=none --set-exit-if-changed .`
Expected: exit 0 (no files need reformatting). If it fails, run `dart format .` and re-commit.

- [ ] **Step 4: Summarize what was and wasn't verified**

Report to the user explicitly: `flutter analyze`/`flutter test`/`dart format` all ran and passed in this workspace. End-to-end verification (tapping each of the 5 Nursery/KG tiles in a running app connected to a real seeded Firestore project) was **not** performed here -- there is no connected/seeded Firebase project available in this environment to click through. The user should run `flutter run`, sign in as owner, tap "Seed Demo Data," switch into a Nursery or KG student profile, and confirm each tile now shows distinct bilingual content before considering this feature fully live-verified.

---

## Self-Review Notes (completed during plan authoring)

- **Spec coverage:** every design section (registry, seed_service wiring, lesson screen generalization, home screen wiring incl. STEM tile, ARB, docs, tests) has a corresponding task above.
- **Placeholder scan:** Task 2's registry intentionally specifies only 1 of 24 modules verbatim plus a strict schema/topic matrix for the rest, because hand-inlining 120 bilingual content items in this document would be unreviewable noise, not because the requirement is vague -- the acceptance tests in Task 2/Step 1 are the concrete, checkable spec for the other 23. Task 5 flags one router-signature detail as "verify against the real file" rather than guessing a signature that might not match `app_router.dart`'s actual current cast/destructure of `extra` -- resolved by running `flutter analyze`, not left as an open question.
- **Type consistency:** `MatchPairItem`/`NurseryActivityDef` field names are used identically across Tasks 2, 3, 4, 5 (`items`, `colorValue`, `subject`, `grade`, `titleEn`/`titleMy`, etc.).
