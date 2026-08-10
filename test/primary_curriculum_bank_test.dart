import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('primaryCurriculumBank', () {
    test('contains exactly 173 modules', () {
      expect(primaryCurriculumBank.length, 173);
    });

    test('every module id is unique', () {
      final ids = primaryCurriculumBank.map((m) => m.id).toSet();
      expect(ids.length, primaryCurriculumBank.length);
    });

    test('every module has exactly 5 questions', () {
      for (final module in primaryCurriculumBank) {
        expect(
          module.questions.length,
          5,
          reason: '${module.id} does not have exactly 5 questions',
        );
      }
    });

    test('every question text is unique within its own module', () {
      for (final module in primaryCurriculumBank) {
        final questionTexts = module.questions.map((q) => q.questionEn).toSet();
        expect(
          questionTexts.length,
          module.questions.length,
          reason: '${module.id} has duplicate question text',
        );
      }
    });

    test('every module grade is year1 through year6', () {
      const expectedGrades = {
        Grade.year1,
        Grade.year2,
        Grade.year3,
        Grade.year4,
        Grade.year5,
        Grade.year6,
      };
      for (final module in primaryCurriculumBank) {
        expect(
          expectedGrades.contains(module.grade),
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test('every module subject is one of the ten expected keys', () {
      const expected = {
        'math',
        'english',
        'science',
        'stem',
        'coding',
        'engineering',
        'history',
        'geography',
        'computing',
        'generalknowledge',
      };
      for (final module in primaryCurriculumBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has the expected module count per subject', () {
      // Baseline before the "content-parity" batch: math/english/science
      // at 18, stem at 22 (year5/year6 carry 2 extra real-Python-syntax
      // modules each), and geography/history/computing/coding/engineering/
      // generalknowledge at 12 each (full one-per-grade-then-second-module
      // depth parity, reached via several prior rollouts -- see git log for
      // that history). The content-parity batch then added a further,
      // *uneven* number of modules to generalknowledge/geography/history/
      // science for Year 1-4 only (not Year 5/6, and not every grade+subject
      // pair equally -- some pairs' generated content failed adversarial
      // fact/translation review and were deliberately not shipped; see the
      // doc comment above that batch's block in primary_curriculum_bank.dart
      // for exactly what was rejected and why), which is why these four
      // subjects' totals no longer follow a clean formula the way the
      // untouched ones (math/english/coding/computing/engineering/stem)
      // still do.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 10, reason: 'expected 10 subjects');
      const expected = {
        'math': 18,
        'english': 18,
        'science': 23,
        'stem': 22,
        'coding': 12,
        'engineering': 12,
        'computing': 12,
        'history': 16,
        'geography': 19,
        'generalknowledge': 21,
      };
      for (final entry in counts.entries) {
        expect(
          entry.value,
          expected[entry.key],
          reason:
              '${entry.key} has ${entry.value} modules, expected ${expected[entry.key]}',
        );
      }
    });

    test('has the expected module count per grade', () {
      // Every grade was 24 (26 for year5/year6, which carry stem's 2 extra
      // modules) before the content-parity batch. That batch only touched
      // Year 1-4, and unevenly per grade (some generated modules failed
      // adversarial review) -- see the per-subject count test's comment
      // above for the full rationale. Year 5/6 are untouched and still 26.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 6, reason: 'expected 6 grades');
      const expected = {
        'year1': 30,
        'year2': 33,
        'year3': 29,
        'year4': 29,
        'year5': 26,
        'year6': 26,
      };
      for (final entry in counts.entries) {
        expect(
          entry.value,
          expected[entry.key],
          reason:
              '${entry.key} has ${entry.value} modules, expected ${expected[entry.key]}',
        );
      }
    });

    test('has the expected module count per grade+subject combination', () {
      // coding/computing/engineering stayed at 2 per grade, math/english/
      // stem at 3 (5 for year5/year6-stem) throughout -- untouched by the
      // content-parity batch. generalknowledge/geography/history/science
      // for Year 1-4 vary per pair now (see the per-subject count test's
      // comment above); Year 5/6's generalknowledge/geography/history are
      // still 2 and science still 3, also untouched.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 60, reason: 'expected 60 grade+subject combos');
      const expected = {
        'year1-coding': 2,
        'year1-computing': 2,
        'year1-engineering': 2,
        'year1-english': 3,
        'year1-generalknowledge': 4,
        'year1-geography': 2,
        'year1-history': 4,
        'year1-math': 3,
        'year1-science': 5,
        'year1-stem': 3,
        'year2-coding': 2,
        'year2-computing': 2,
        'year2-engineering': 2,
        'year2-english': 3,
        'year2-generalknowledge': 5,
        'year2-geography': 4,
        'year2-history': 4,
        'year2-math': 3,
        'year2-science': 5,
        'year2-stem': 3,
        'year3-coding': 2,
        'year3-computing': 2,
        'year3-engineering': 2,
        'year3-english': 3,
        'year3-generalknowledge': 4,
        'year3-geography': 4,
        'year3-history': 2,
        'year3-math': 3,
        'year3-science': 4,
        'year3-stem': 3,
        'year4-coding': 2,
        'year4-computing': 2,
        'year4-engineering': 2,
        'year4-english': 3,
        'year4-generalknowledge': 4,
        'year4-geography': 5,
        'year4-history': 2,
        'year4-math': 3,
        'year4-science': 3,
        'year4-stem': 3,
        'year5-coding': 2,
        'year5-computing': 2,
        'year5-engineering': 2,
        'year5-english': 3,
        'year5-generalknowledge': 2,
        'year5-geography': 2,
        'year5-history': 2,
        'year5-math': 3,
        'year5-science': 3,
        'year5-stem': 5,
        'year6-coding': 2,
        'year6-computing': 2,
        'year6-engineering': 2,
        'year6-english': 3,
        'year6-generalknowledge': 2,
        'year6-geography': 2,
        'year6-history': 2,
        'year6-math': 3,
        'year6-science': 3,
        'year6-stem': 5,
      };
      for (final entry in counts.entries) {
        expect(
          entry.value,
          expected[entry.key],
          reason:
              '${entry.key} has ${entry.value} modules, expected ${expected[entry.key]}',
        );
      }
    });

    test(
      'every module has non-empty, non-equal bilingual title/description',
      () {
        for (final module in primaryCurriculumBank) {
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
        for (final module in primaryCurriculumBank) {
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
        for (final module in primaryCurriculumBank) {
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
      for (final module in primaryCurriculumBank) {
        expect(module.starsReward, greaterThan(0), reason: module.id);
      }
    });

    test('starsReward scales with grade per the design spec', () {
      const expectedStars = {
        Grade.year1: 10,
        Grade.year2: 12,
        Grade.year3: 14,
        Grade.year4: 16,
        Grade.year5: 18,
        Grade.year6: 20,
      };
      for (final module in primaryCurriculumBank) {
        expect(
          module.starsReward,
          expectedStars[module.grade],
          reason: '${module.id} starsReward does not match grade scaling',
        );
      }
    });
  });

  group('quizQuestionsForModule', () {
    test('returns the seeded questions for a known module id', () {
      final module = primaryCurriculumBank.first;
      final questions = quizQuestionsForModule(module.id, module.subject);
      expect(questions, module.questions);
    });

    test('falls back to the subject bank for an unknown module id', () {
      final questions = quizQuestionsForModule('does-not-exist', 'math');
      expect(questions, isNotEmpty);
    });

    test('falls back to the subject bank for a null module id', () {
      final questions = quizQuestionsForModule(null, 'science');
      expect(questions, isNotEmpty);
    });
  });
}
