# Secondary/IGCSE Curriculum + Quiz Playback Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build Phase 3 of the Nova Academy curriculum effort — 72 bilingual MCQ modules across secondary1/secondary2/secondary3/igcse × 6 subjects, and wire up the first working quiz-playback path for that tier (currently a "coming soon" stub end to end).

**Architecture:** Generalize the existing `PrimaryQuizScreen`/`PrimaryQuizArgs` into tier-neutral `McqQuizScreen`/`McqQuizArgs` (rename, no new screen), add a `secondary_curriculum_bank.dart` content bank mirroring `primary_curriculum_bank.dart`'s exact structure, extend the existing `quizQuestionsForModule` lookup to search both banks, and fix the one broken tap target (`_ModuleListTile`'s Explore button) that currently dead-ends every module in this tier.

**Tech Stack:** Flutter/Dart, Riverpod, go_router, Firestore (via `seed_service.dart`), `flutter_test`.

**Note on content-authoring tasks (Tasks 3-6):** Per spec `docs/superpowers/specs/2026-07-20-secondary-igcse-curriculum-design.md`, each shows one fully-worked module (complete code) establishing the exact schema, then a topic table (already fully specified in the spec's content matrix — no ambiguity about *what* to write) for the remaining modules in that task's grade. This is a deliberate adaptation for bulk bilingual-content authoring, not a placeholder — the schema, format, id convention, and every topic are fully pinned down; only the prose text itself is generated during execution, matching exactly how Phase 1 and Phase 2's content banks were built in this same repo.

---

### Task 1: Rename `PrimaryQuizScreen`/`PrimaryQuizArgs` → `McqQuizScreen`/`McqQuizArgs`

**Files:**
- Create: `lib/features/lessons/mcq_quiz_screen.dart`
- Delete: `lib/features/lessons/primary_quiz_screen.dart`
- Modify: `lib/routing/app_router.dart:144-154`
- Modify: `lib/features/home/primary_home_screen.dart:13` (import), `lib/features/home/primary_home_screen.dart:278` (usage)

- [ ] **Step 1: Create the renamed file with every `Primary*` identifier swapped to `Mcq*`**

Copy `lib/features/lessons/primary_quiz_screen.dart` to `lib/features/lessons/mcq_quiz_screen.dart`, then apply these exact identifier renames throughout (find/replace, whole-file — nothing else in the file changes):

| Old | New |
|---|---|
| `PrimaryQuizArgs` | `McqQuizArgs` |
| `PrimaryQuizScreen` | `McqQuizScreen` |
| `_PrimaryQuizScreenState` | `_McqQuizScreenState` |

Also update the two doc comments that reference the old names in prose:
- Line ~44 (class doc for the args class): `/// Arguments the router should pass when pushing [PrimaryQuizScreen].` → `/// Arguments the router should pass when pushing [McqQuizScreen].`
- Line ~65 (class doc for the screen): `/// The Primary (Year 1-6) interactive multiple-choice quiz flow: ...` → `/// The shared interactive multiple-choice quiz flow, used by both Primary` / `/// (Year 1-6) and Secondary/IGCSE grade tiers: a progress bar, one` (keep the rest of that doc comment's remaining lines as-is, just generalize the first sentence away from "Primary (Year 1-6)" specifically).

Delete the old file: `lib/features/lessons/primary_quiz_screen.dart`.

- [ ] **Step 2: Update `app_router.dart`'s route builder**

In `lib/routing/app_router.dart`, replace lines 144-154:

```dart
      GoRoute(
        path: AppRoutes.lessonPrimaryQuiz,
        builder: (context, state) {
          final args = state.extra;
          return PrimaryQuizScreen(
            args: args is PrimaryQuizArgs
                ? args
                : const PrimaryQuizArgs(title: '', subject: 'generalknowledge'),
          );
        },
      ),
```

with:

```dart
      GoRoute(
        path: AppRoutes.lessonPrimaryQuiz,
        builder: (context, state) {
          final args = state.extra;
          return McqQuizScreen(
            args: args is McqQuizArgs
                ? args
                : const McqQuizArgs(title: '', subject: 'generalknowledge'),
          );
        },
      ),
```

(The route path constant `AppRoutes.lessonPrimaryQuiz` stays unchanged — it's an internal path string, not user-facing, and both Primary and Secondary/IGCSE will share this one route now that the screen is generic. Renaming it is out of scope.)

Find the top-of-file import that currently points at the old file (search for `primary_quiz_screen.dart` in `app_router.dart`) and change it to `mcq_quiz_screen.dart`.

- [ ] **Step 3: Update `primary_home_screen.dart`'s import and usage**

In `lib/features/home/primary_home_screen.dart` line 13, change:

```dart
import '../lessons/primary_quiz_screen.dart';
```

to:

```dart
import '../lessons/mcq_quiz_screen.dart';
```

At line 278, change:

```dart
                      extra: PrimaryQuizArgs(
```

to:

```dart
                      extra: McqQuizArgs(
```

(The rest of that call — `title:`, `subject:`, `stars:`, `moduleId:` args — is unchanged.)

- [ ] **Step 4: Verify nothing else references the old names**

Run: `grep -rn "PrimaryQuizScreen\|PrimaryQuizArgs" lib/ test/`
Expected: no output (empty) — confirms every reference was updated.

- [ ] **Step 5: Analyze and run the existing test suite to confirm the rename didn't break anything**

Run: `flutter analyze`
Expected: `No issues found!`

Run: `flutter test`
Expected: all existing tests still pass (this is a pure rename — no test file references the old names directly, since tests exercise `primaryCurriculumBank`/`quizQuestionsForModule`, not the screen widget).

- [ ] **Step 6: Commit**

```bash
git add lib/features/lessons/mcq_quiz_screen.dart lib/routing/app_router.dart lib/features/home/primary_home_screen.dart
git rm lib/features/lessons/primary_quiz_screen.dart
git commit -m "refactor: generalize PrimaryQuizScreen into tier-neutral McqQuizScreen

No behavior change -- pure rename (PrimaryQuizScreen/PrimaryQuizArgs ->
McqQuizScreen/McqQuizArgs) so this screen can serve Secondary/IGCSE
content too, per docs/superpowers/specs/2026-07-20-secondary-igcse-curriculum-design.md.
Matches this repo's existing generalize-over-duplicate precedent (712c492)."
```

---

### Task 2: Write the failing test file for `secondary_curriculum_bank.dart`

**Files:**
- Create: `test/secondary_curriculum_bank_test.dart`

- [ ] **Step 1: Write the test file, mirroring `test/primary_curriculum_bank_test.dart`'s structure exactly, adapted for Secondary/IGCSE's shape (4 grades × 6 subjects × 3 modules = 72 modules, 18 per subject, 18 per grade)**

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/secondary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('secondaryCurriculumBank', () {
    test('contains exactly 72 modules', () {
      expect(secondaryCurriculumBank.length, 72);
    });

    test('every module id is unique', () {
      final ids = secondaryCurriculumBank.map((m) => m.id).toSet();
      expect(ids.length, secondaryCurriculumBank.length);
    });

    test('every module has exactly 5 questions', () {
      for (final module in secondaryCurriculumBank) {
        expect(
          module.questions.length,
          5,
          reason: '${module.id} does not have exactly 5 questions',
        );
      }
    });

    test('every question text is unique within its own module', () {
      for (final module in secondaryCurriculumBank) {
        final questionTexts = module.questions
            .map((q) => q.questionEn)
            .toSet();
        expect(
          questionTexts.length,
          module.questions.length,
          reason: '${module.id} has duplicate question text',
        );
      }
    });

    test('every module grade is secondary1 through igcse', () {
      const expectedGrades = {
        Grade.secondary1,
        Grade.secondary2,
        Grade.secondary3,
        Grade.igcse,
      };
      for (final module in secondaryCurriculumBank) {
        expect(
          expectedGrades.contains(module.grade),
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test('every module subject is one of the six expected keys', () {
      const expected = {
        'algebra',
        'physics',
        'chemistry',
        'biology',
        'ict',
        'socialstudies',
      };
      for (final module in secondaryCurriculumBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has 18 modules per subject', () {
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 6, reason: 'expected 6 subjects');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          18,
          reason: '${entry.key} has ${entry.value} modules, expected 18',
        );
      }
    });

    test('has 18 modules per grade', () {
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 4, reason: 'expected 4 grades');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          18,
          reason: '${entry.key} has ${entry.value} modules, expected 18',
        );
      }
    });

    test('has 3 modules per grade+subject combination', () {
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 24, reason: 'expected 24 grade+subject combos');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          3,
          reason: '${entry.key} has ${entry.value} modules, expected 3',
        );
      }
    });

    test(
      'every module has non-empty, non-equal bilingual title/description',
      () {
        for (final module in secondaryCurriculumBank) {
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
      },
    );

    test(
      'every question has non-empty bilingual question text and options',
      () {
        for (final module in secondaryCurriculumBank) {
          for (final question in module.questions) {
            expect(
              question.questionEn,
              isNotEmpty,
              reason: '${module.id} questionEn',
            );
            expect(
              question.questionMy,
              isNotEmpty,
              reason: '${module.id} questionMy',
            );
            expect(
              question.questionMy,
              isNot(equals(question.questionEn)),
              reason: '${module.id} questionMy == questionEn',
            );
            expect(
              question.optionsEn,
              isNotEmpty,
              reason: '${module.id} optionsEn',
            );
            expect(
              question.optionsMy,
              isNotEmpty,
              reason: '${module.id} optionsMy',
            );
          }
        }
      },
    );

    test(
      'every question has matching option list lengths and a valid correctIndex',
      () {
        for (final module in secondaryCurriculumBank) {
          for (final question in module.questions) {
            expect(
              question.optionsEn.length,
              question.optionsMy.length,
              reason: '${module.id} optionsEn/optionsMy length mismatch',
            );
            expect(
              question.correctIndex,
              inInclusiveRange(0, question.optionsEn.length - 1),
              reason: '${module.id} correctIndex out of range',
            );
          }
        }
      },
    );

    test('every starsReward is positive', () {
      for (final module in secondaryCurriculumBank) {
        expect(module.starsReward, greaterThan(0), reason: module.id);
      }
    });

    test('starsReward scales with grade per the design spec', () {
      const expectedStars = {
        Grade.secondary1: 22,
        Grade.secondary2: 24,
        Grade.secondary3: 26,
        Grade.igcse: 28,
      };
      for (final module in secondaryCurriculumBank) {
        expect(
          module.starsReward,
          expectedStars[module.grade],
          reason: '${module.id} starsReward does not match grade scaling',
        );
      }
    });
  });
}
```

- [ ] **Step 2: Run the test to verify it fails (the source file doesn't exist yet)**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: FAIL — `Error: Error when reading 'lib/features/lessons/secondary_curriculum_bank.dart': No such file or directory` (or an analyzer "target of URI doesn't exist" error). This confirms the test is wired to the right (not-yet-created) source.

- [ ] **Step 3: Commit the failing test**

```bash
git add test/secondary_curriculum_bank_test.dart
git commit -m "test: add failing test for secondary_curriculum_bank (TDD red)"
```

---

### Task 3: Create `secondary_curriculum_bank.dart` — structure + secondary1 content (18 modules)

**Files:**
- Create: `lib/features/lessons/secondary_curriculum_bank.dart`

- [ ] **Step 1: Write the file header, `SecondaryActivityDef` class, `quizQuestionsForSecondaryModule` lookup, and the opening of `secondaryCurriculumBank` with secondary1's 18 modules (6 subjects × 3 modules), 5 questions each**

```dart
import '../../models/child_model.dart';
import 'mock_quiz_data.dart';

/// One Secondary/IGCSE curriculum module: bilingual catalog metadata plus
/// its own fixed set of MCQ [QuizQuestion]s. Structurally identical to
/// [PrimaryActivityDef] in `primary_curriculum_bank.dart` -- content plays
/// back through the same shared [McqQuizScreen].
class SecondaryActivityDef {
  const SecondaryActivityDef({
    required this.id,
    required this.subject,
    required this.grade,
    required this.contentType,
    required this.titleEn,
    required this.titleMy,
    required this.descriptionEn,
    required this.descriptionMy,
    required this.starsReward,
    required this.questions,
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
  final List<QuizQuestion> questions;
}

const List<SecondaryActivityDef> secondaryCurriculumBank = [
  // ============================== SECONDARY 1 ==============================
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-1',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Linear Equations',
    titleMy: 'မျဉ်းညီညွှတ်ညီမျှခြင်းများ',
    descriptionEn: 'Solve simple linear equations with one unknown.',
    descriptionMy: 'အမည်မသိတစ်ခုပါသော ရိုးရှင်းသော မျဉ်းညီညွှတ်ညီမျှခြင်းများကို ဖြေရှင်းပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'Solve for x: x + 7 = 15',
        questionMy: 'x ကိုဖြေရှင်းပါ- x + 7 = 15',
        optionsEn: ['8', '22', '7', '15'],
        optionsMy: ['8', '22', '7', '15'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: 3x = 21',
        questionMy: 'x ကိုဖြေရှင်းပါ- 3x = 21',
        optionsEn: ['7', '18', '24', '3'],
        optionsMy: ['7', '18', '24', '3'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: 2x - 4 = 10',
        questionMy: 'x ကိုဖြေရှင်းပါ- 2x - 4 = 10',
        optionsEn: ['7', '3', '6', '14'],
        optionsMy: ['7', '3', '6', '14'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Solve for x: x / 4 = 9',
        questionMy: 'x ကိုဖြေရှင်းပါ- x / 4 = 9',
        optionsEn: ['36', '13', '5', '2.25'],
        optionsMy: ['36', '13', '5', '2.25'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If a number plus 12 equals 30, what is the number?',
        questionMy: 'ကိန်းတစ်ခုကို ၁၂ နှင့်ပေါင်းလျှင် ၃၀ ဖြစ်ပါက ထိုကိန်းမှာ အဘယ်နည်း။',
        optionsEn: ['18', '42', '12', '30'],
        optionsMy: ['18', '42', '12', '30'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-2',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Expanding Brackets',
    titleMy: 'အနားသတ်ကွင်းများ ဖြန့်ချခြင်း',
    descriptionEn: 'Practice expanding simple bracketed algebraic expressions.',
    descriptionMy: 'ရိုးရှင်းသော ကွင်းစကားရပ်များကို ဖြန့်ချလေ့ကျင့်ပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'Expand: 3(x + 2)',
        questionMy: 'ဖြန့်ချပါ- 3(x + 2)',
        optionsEn: ['3x + 6', '3x + 2', 'x + 6', '3x + 5'],
        optionsMy: ['3x + 6', '3x + 2', 'x + 6', '3x + 5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 4(y - 3)',
        questionMy: 'ဖြန့်ချပါ- 4(y - 3)',
        optionsEn: ['4y - 12', '4y - 3', 'y - 12', '4y + 12'],
        optionsMy: ['4y - 12', '4y - 3', 'y - 12', '4y + 12'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 2(a + b)',
        questionMy: 'ဖြန့်ချပါ- 2(a + b)',
        optionsEn: ['2a + 2b', 'a + b', '2a + b', 'a + 2b'],
        optionsMy: ['2a + 2b', 'a + b', '2a + b', 'a + 2b'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: 5(2x - 1)',
        questionMy: 'ဖြန့်ချပါ- 5(2x - 1)',
        optionsEn: ['10x - 5', '10x - 1', '2x - 5', '7x - 5'],
        optionsMy: ['10x - 5', '10x - 1', '2x - 5', '7x - 5'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'Expand: -2(x + 4)',
        questionMy: 'ဖြန့်ချပါ- -2(x + 4)',
        optionsEn: ['-2x - 8', '-2x + 8', '2x - 8', '-2x - 4'],
        optionsMy: ['-2x - 8', '-2x + 8', '2x - 8', '-2x - 4'],
        correctIndex: 0,
      ),
    ],
  ),
  SecondaryActivityDef(
    id: 'mock-secondary1-algebra-3',
    subject: 'algebra',
    grade: Grade.secondary1,
    contentType: 'quiz',
    titleEn: 'Substitution',
    titleMy: 'အစားထိုးခြင်း',
    descriptionEn: 'Substitute given values into simple algebraic expressions.',
    descriptionMy: 'ပေးထားသောတန်ဖိုးများကို ရိုးရှင်းသော အက္ခရာသင်္ချာဖော်ပြချက်များထဲသို့ အစားထိုးပါ။',
    starsReward: 22,
    questions: [
      QuizQuestion(
        questionEn: 'If x = 3, what is 2x + 5?',
        questionMy: 'x = 3 ဖြစ်လျှင် 2x + 5 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['11', '8', '10', '13'],
        optionsMy: ['11', '8', '10', '13'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = 4 and y = 2, what is x + 3y?',
        questionMy: 'x = 4 နှင့် y = 2 ဖြစ်လျှင် x + 3y ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['10', '9', '14', '6'],
        optionsMy: ['10', '9', '14', '6'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If a = 5, what is a squared (a²)?',
        questionMy: 'a = 5 ဖြစ်လျှင် a squared (a²) ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['25', '10', '15', '20'],
        optionsMy: ['25', '10', '15', '20'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If x = -2, what is x + 6?',
        questionMy: 'x = -2 ဖြစ်လျှင် x + 6 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['4', '8', '-4', '-8'],
        optionsMy: ['4', '8', '-4', '-8'],
        correctIndex: 0,
      ),
      QuizQuestion(
        questionEn: 'If p = 6 and q = 3, what is p / q + 1?',
        questionMy: 'p = 6 နှင့် q = 3 ဖြစ်လျှင် p / q + 1 ၏တန်ဖိုးမှာ အဘယ်နည်း။',
        optionsEn: ['3', '2', '9', '1'],
        optionsMy: ['3', '2', '9', '1'],
        correctIndex: 0,
      ),
    ],
  ),
];
```

*(This establishes the exact schema and shows algebra fully worked. Continue writing the remaining 15 secondary1 modules — 3 each for physics, chemistry, biology, ict, socialstudies — following this identical structure: `id: 'mock-secondary1-<subject>-<n>'`, `grade: Grade.secondary1`, `contentType: 'quiz'`, `starsReward: 22`, 5 `QuizQuestion`s each with `correctIndex: 0` and the correct answer always listed first in both `optionsEn`/`optionsMy`, matching every module written so far in this repo. Cover exactly these per-subject themes, per the spec's content matrix, splitting each subject's 3 modules across its listed themes:*

- **physics** (3 modules): Forces & motion, energy forms, simple circuits
- **chemistry** (3 modules): States of matter, elements/compounds/mixtures, separating techniques
- **biology** (3 modules): Cells & organization, classification, human body systems intro
- **ict** (3 modules): Computer systems & hardware, data representation basics, internet safety
- **socialstudies** (3 modules): Myanmar & world geography, government & citizenship intro (split into 3 modules across these 2 themes, e.g. Myanmar geography / world geography / government & citizenship)

- [ ] **Step 2: Run the test file to check progress**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: still FAIL (only 18 of 72 modules exist so far — `contains exactly 72 modules` and per-subject/per-grade count tests will fail; module-shape tests like `every module has exactly 5 questions` should already PASS for the modules that do exist). This is expected mid-task state, not a bug.

- [ ] **Step 3: Commit secondary1's content**

```bash
git add lib/features/lessons/secondary_curriculum_bank.dart
git commit -m "feat: add secondary_curriculum_bank.dart with Secondary1 content (18/72 modules)"
```

---

### Task 4: Add Secondary2 content (18 modules)

**Files:**
- Modify: `lib/features/lessons/secondary_curriculum_bank.dart` (append before the closing `];`)

- [ ] **Step 1: Append 18 secondary2 modules** (6 subjects × 3 modules, `grade: Grade.secondary2`, `starsReward: 24`, id pattern `mock-secondary2-<subject>-<n>`), covering these themes per the spec's content matrix:

- **algebra**: Simultaneous equations, quadratic expressions, inequalities
- **physics**: Waves (sound & light), pressure, work & power
- **chemistry**: Atomic structure & periodic table, reactions & equations, acids & bases
- **biology**: Nutrition & digestion, respiration & photosynthesis, reproduction basics
- **ict**: Networks basics, databases intro, algorithms & flowcharts
- **socialstudies**: World history overview, economics basics, human rights

Same schema as Task 3 exactly (5 questions per module, `correctIndex: 0` with the correct answer listed first, bilingual throughout, `contentType: 'quiz'`).

- [ ] **Step 2: Run the test file to check progress**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: still FAIL (36/72 modules so far) — same expected-partial-state as Task 3's check.

- [ ] **Step 3: Commit**

```bash
git add lib/features/lessons/secondary_curriculum_bank.dart
git commit -m "feat: add Secondary2 content to secondary_curriculum_bank.dart (36/72 modules)"
```

---

### Task 5: Add Secondary3 content (18 modules)

**Files:**
- Modify: `lib/features/lessons/secondary_curriculum_bank.dart` (append before the closing `];`)

- [ ] **Step 1: Append 18 secondary3 modules** (`grade: Grade.secondary3`, `starsReward: 26`, id pattern `mock-secondary3-<subject>-<n>`), covering:

- **algebra**: Quadratic equations, indices & surds, sequences
- **physics**: Electricity (Ohm's law & circuits), magnetism, energy resources
- **chemistry**: Bonding (ionic/covalent/metallic), rates of reaction, energetics
- **biology**: Genetics & inheritance, ecosystems, homeostasis
- **ict**: Programming concepts (real syntax, continuing Year5/6 Python), cybersecurity basics (split into 3 modules)
- **socialstudies**: Global issues, Myanmar history & culture (split into 3 modules)

Same schema as Task 3.

- [ ] **Step 2: Run the test file to check progress**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: still FAIL (54/72 modules so far).

- [ ] **Step 3: Commit**

```bash
git add lib/features/lessons/secondary_curriculum_bank.dart
git commit -m "feat: add Secondary3 content to secondary_curriculum_bank.dart (54/72 modules)"
```

---

### Task 6: Add IGCSE content (18 modules) and close out the list

**Files:**
- Modify: `lib/features/lessons/secondary_curriculum_bank.dart` (append, then close the list with `];`)

- [ ] **Step 1: Append 18 igcse modules** (`grade: Grade.igcse`, `starsReward: 28`, id pattern `mock-igcse-<subject>-<n>`), covering:

- **algebra**: Functions & graphs, algebraic fractions, further quadratics
- **physics**: Mechanics (motion graphs, momentum), thermal physics, atomic physics
- **chemistry**: Stoichiometry (moles), organic chemistry basics, electrolysis
- **biology**: Cell biology & transport, coordination & response, human reproduction/genetics
- **ict**: System architecture, deeper data representation, algorithm design
- **socialstudies**: Comparative government, global economics, contemporary global issues

Same schema as Task 3. Close the list with `];` after this final module.

- [ ] **Step 2: Run the full test file — this is the first point where it should fully pass**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: `All tests passed!` (72 modules, all shape/count/bilingual checks green — TDD green).

- [ ] **Step 3: Commit**

```bash
git add lib/features/lessons/secondary_curriculum_bank.dart
git commit -m "feat: complete secondary_curriculum_bank.dart with IGCSE content (72/72 modules)

72 modules (4 grades x 6 subjects x 3 modules), 360 bilingual MCQ
questions total, per docs/superpowers/specs/2026-07-20-secondary-igcse-curriculum-design.md.
test/secondary_curriculum_bank_test.dart passes in full."
```

---

### Task 7: Wire `quizQuestionsForModule` to search `secondaryCurriculumBank` too

**Files:**
- Modify: `lib/features/lessons/primary_curriculum_bank.dart:1-48`

- [ ] **Step 1: Write the failing test first**

Add this test to `test/secondary_curriculum_bank_test.dart` (new top-level `group`, after the existing `secondaryCurriculumBank` group, before the file's closing):

```dart
  group('quizQuestionsForModule (secondary lookup)', () {
    test('returns the seeded questions for a known secondary module id', () {
      final module = secondaryCurriculumBank.first;
      final questions = quizQuestionsForModule(module.id, module.subject);
      expect(questions, module.questions);
    });

    test('falls back to the subject bank for an unknown secondary-shaped id', () {
      final questions = quizQuestionsForModule(
        'mock-secondary1-algebra-does-not-exist',
        'algebra',
      );
      expect(questions, isNotEmpty);
    });
  });
```

Add the missing import at the top of the test file: `import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';` (for `quizQuestionsForModule`).

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: FAIL on the new `quizQuestionsForModule (secondary lookup)` group — `quizQuestionsForModule` currently only searches `primaryCurriculumBank`, so `secondaryCurriculumBank.first`'s id won't be found and it'll fall through to the generic subject bank instead of returning the exact seeded questions, so `expect(questions, module.questions)` fails.

- [ ] **Step 2: Update `quizQuestionsForModule` in `primary_curriculum_bank.dart`**

Add this import at the top of `lib/features/lessons/primary_curriculum_bank.dart` (after the existing `import 'mock_quiz_data.dart';`):

```dart
import 'secondary_curriculum_bank.dart';
```

Replace the existing lookup function (lines 41-48):

```dart
List<QuizQuestion> quizQuestionsForModule(String? moduleId, String subject) {
  if (moduleId != null) {
    for (final activity in primaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
  }
  return quizQuestionsForSubject(subject);
}
```

with:

```dart
List<QuizQuestion> quizQuestionsForModule(String? moduleId, String subject) {
  if (moduleId != null) {
    for (final activity in primaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
    for (final activity in secondaryCurriculumBank) {
      if (activity.id == moduleId) return activity.questions;
    }
  }
  return quizQuestionsForSubject(subject);
}
```

Also update the doc comment directly above it (currently says "covers placeholder nodes... and the pre-existing legacy modules from `mockSeedLearningModules`") to mention it now also searches `secondaryCurriculumBank`:

```dart
/// Looks up the question bank for a specific module by [moduleId] (e.g.
/// `mock-year3-science-2` or `mock-secondary1-algebra-2`). Falls back to
/// the legacy subject-only [quizQuestionsForSubject] lookup when
/// [moduleId] is null or not found in [primaryCurriculumBank] or
/// [secondaryCurriculumBank] -- covers placeholder nodes shown before any
/// module is seeded, and the pre-existing legacy modules from
/// `mockSeedLearningModules` that predate this registry.
```

- [ ] **Step 3: Run the test to verify it passes**

Run: `flutter test test/secondary_curriculum_bank_test.dart`
Expected: `All tests passed!`

- [ ] **Step 4: Run `flutter analyze` to check for an import cycle**

Run: `flutter analyze`
Expected: `No issues found!` — `primary_curriculum_bank.dart` now imports `secondary_curriculum_bank.dart`, and `secondary_curriculum_bank.dart` only imports `child_model.dart` and `mock_quiz_data.dart` (not `primary_curriculum_bank.dart`), so there's no cycle.

- [ ] **Step 5: Commit**

```bash
git add lib/features/lessons/primary_curriculum_bank.dart test/secondary_curriculum_bank_test.dart
git commit -m "feat: extend quizQuestionsForModule to search secondaryCurriculumBank"
```

---

### Task 8: Fix the Explore button to actually navigate to a quiz

**Files:**
- Modify: `lib/features/home/secondary_igcse_home_screen.dart` (imports + `_ModuleListTile._showDetail`)

- [ ] **Step 1: Add the three missing imports**

At the top of `lib/features/home/secondary_igcse_home_screen.dart`, after the existing `import 'package:flutter_riverpod/flutter_riverpod.dart';` line, add:

```dart
import 'package:go_router/go_router.dart';
```

After the existing `import '../../providers/learning_module_providers.dart';` line, add:

```dart
import '../../routing/app_router.dart';
import '../lessons/mcq_quiz_screen.dart';
```

- [ ] **Step 2: Replace the "coming soon" Explore button with real navigation**

Find `_ModuleListTile._showDetail` (the method with the `AlertDialog` containing "Close" and "Explore" buttons). Replace its `FilledButton`:

```dart
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(l10n.actionComingSoon)));
            },
            child: Text(l10n.actionExplore),
          ),
```

with:

```dart
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              context.push(
                AppRoutes.lessonPrimaryQuiz,
                extra: McqQuizArgs(
                  title: title,
                  subject: module.subject,
                  stars: module.starsReward,
                  moduleId: module.id,
                ),
              );
            },
            child: Text(l10n.actionExplore),
          ),
```

(`title` is already the method's parameter; `module` is the enclosing `_ModuleListTile`'s field, both already in scope inside `_showDetail`.)

- [ ] **Step 3: Verify with `flutter analyze`**

Run: `flutter analyze`
Expected: `No issues found!`

- [ ] **Step 4: Manually verify the flow works**

Run: `flutter run -d chrome` (or any connected device), sign in as the owner (see `AppConstants.ownerEmail`), switch into an IGCSE-grade student profile (or seed data first — see Task 9), navigate to the Secondary/IGCSE home screen, tap a module in "Upcoming Modules," tap "Explore" in the dialog. Expected: navigates to the MCQ quiz screen and plays through real questions instead of showing a snackbar.

- [ ] **Step 5: Commit**

```bash
git add lib/features/home/secondary_igcse_home_screen.dart
git commit -m "fix: wire Secondary/IGCSE Explore button to real quiz playback

_ModuleListTile's Explore button previously just showed a 'coming
soon' snackbar for every module in this tier -- the only tap target
with real module data attached. Now navigates to McqQuizScreen with
the tapped module's real id/subject/stars, the same pattern Primary
already uses. _SubjectCard stays a placeholder per the design spec's
explicit Non-goals."
```

---

### Task 9: Seed Secondary/IGCSE modules into `seedDatabase()`

**Files:**
- Modify: `lib/core/services/seed_service.dart:4` (import), `lib/core/services/seed_service.dart:90-94` (modules list), append new function at end of file
- Modify: `test/seed_service_test.dart` (new test group)

- [ ] **Step 1: Write the failing test first**

Append this group to `test/seed_service_test.dart`, after the existing `mockSeedPrimaryCurriculumModules` group and before the file's closing `}`:

```dart

  group('mockSeedSecondaryCurriculumModules', () {
    final modules = mockSeedSecondaryCurriculumModules();
    final legacyModules = mockSeedLearningModules();
    final nurseryModules = mockSeedNurseryKgModules();
    final primaryModules = mockSeedPrimaryCurriculumModules();

    test('has exactly 72 modules', () {
      expect(modules.length, 72);
    });

    test('every module id is unique, including against other module groups', () {
      final allIds = [
        ...modules,
        ...legacyModules,
        ...nurseryModules,
        ...primaryModules,
      ].map((m) => m.id).toList();
      expect(allIds.toSet().length, allIds.length);
    });

    test('every module grade is secondary1 through igcse', () {
      const expectedGrades = {
        Grade.secondary1,
        Grade.secondary2,
        Grade.secondary3,
        Grade.igcse,
      };
      for (final module in modules) {
        expect(
          expectedGrades.contains(module.grade),
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test(
      'every module subject is one of the six expected Secondary/IGCSE keys',
      () {
        const expected = {
          'algebra',
          'physics',
          'chemistry',
          'biology',
          'ict',
          'socialstudies',
        };
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

    test('every module grants a positive star reward', () {
      for (final module in modules) {
        expect(
          module.starsReward,
          greaterThan(0),
          reason: '${module.id} has no star reward',
        );
      }
    });
  });
```

Run: `flutter test test/seed_service_test.dart`
Expected: FAIL — `mockSeedSecondaryCurriculumModules` is not defined.

- [ ] **Step 2: Add the import and the new function to `seed_service.dart`**

Change line 4 of `lib/core/services/seed_service.dart`:

```dart
import '../../features/lessons/primary_curriculum_bank.dart';
```

to:

```dart
import '../../features/lessons/primary_curriculum_bank.dart';
import '../../features/lessons/secondary_curriculum_bank.dart';
```

Append this function at the end of the file (after the existing `mockSeedPrimaryCurriculumModules` function, which currently ends the file):

```dart

/// The Secondary/IGCSE `LearningModules` documents [seedDatabase] writes,
/// derived from [secondaryCurriculumBank] -- the actual quiz questions
/// ([SecondaryActivityDef.questions]) are intentionally dropped here and
/// never written to Firestore (same "content lives in Dart, not
/// Firestore" design note as [mockSeedNurseryKgModules] and
/// [mockSeedPrimaryCurriculumModules]); only catalog metadata is
/// persisted.
List<LearningModuleModel> mockSeedSecondaryCurriculumModules() {
  return [
    for (final activity in secondaryCurriculumBank)
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

- [ ] **Step 3: Wire it into `seedDatabase()`'s modules list**

In `lib/core/services/seed_service.dart` around line 90-94, change:

```dart
  final modules = [
    ...mockSeedLearningModules(),
    ...mockSeedNurseryKgModules(),
    ...mockSeedPrimaryCurriculumModules(),
  ];
```

to:

```dart
  final modules = [
    ...mockSeedLearningModules(),
    ...mockSeedNurseryKgModules(),
    ...mockSeedPrimaryCurriculumModules(),
    ...mockSeedSecondaryCurriculumModules(),
  ];
```

- [ ] **Step 4: Run the tests to verify they pass**

Run: `flutter test test/seed_service_test.dart`
Expected: `All tests passed!`

- [ ] **Step 5: Commit**

```bash
git add lib/core/services/seed_service.dart test/seed_service_test.dart
git commit -m "feat: seed Secondary/IGCSE curriculum modules into seedDatabase()"
```

---

### Task 10: Full verification and push

**Files:** none (verification only)

- [ ] **Step 1: Format everything touched this plan**

Run: `dart format lib/features/lessons/mcq_quiz_screen.dart lib/features/lessons/secondary_curriculum_bank.dart lib/features/lessons/primary_curriculum_bank.dart lib/features/home/primary_home_screen.dart lib/features/home/secondary_igcse_home_screen.dart lib/routing/app_router.dart lib/core/services/seed_service.dart test/secondary_curriculum_bank_test.dart test/seed_service_test.dart`
Expected: reports how many files were changed (0 or more) — no errors.

- [ ] **Step 2: Full static analysis**

Run: `flutter analyze`
Expected: `No issues found!`

- [ ] **Step 3: Full test suite**

Run: `flutter test`
Expected: `All tests passed!` — every prior test group (Nursery/KG, Primary, seed service, widget test) plus every new group from this plan.

- [ ] **Step 4: Commit any formatting fixes, if Step 1 changed files**

```bash
git add -u
git commit -m "style: dart format Phase 3 files"
```

(Skip this step entirely if Step 1 reported 0 files changed.)

- [ ] **Step 5: Push**

```bash
git push origin master
```

- [ ] **Step 6: Confirm CI stayed green**

Run: `gh run list --repo lionzawlwin/nova-academy --limit 3`
Expected: the Android build, Firebase Hosting deploy, and any Vercel-triggered check all show `completed success` for the just-pushed commits (Android build in particular exercises `flutter analyze`-adjacent compilation of everything touched here, since it runs `flutter build apk --release`).
