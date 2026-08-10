import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('primaryCurriculumBank', () {
    test('contains exactly 192 modules', () {
      expect(primaryCurriculumBank.length, 192);
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
      // coding/computing/engineering: 2/grade x 6 grades = 12 each.
      // math/english: 3/grade x 6 grades = 18 each.
      // The Year 1-4 "content-parity" effort (several batches -- see git
      // log) brought generalknowledge/geography/history/science up to 5
      // modules per grade for Year 1-4 specifically, while Year 5/6 stayed
      // at their pre-parity baseline (2 each for generalknowledge/geography/
      // history, 3 for science) and instead carry stem's own pre-existing
      // 2-extra-modules bump (5 vs 3 elsewhere) -- untouched by the parity
      // effort. That's 5*4 + 2*2 = 24 for generalknowledge/geography/
      // history, 5*4 + 3*2 = 26 for science, and 3*4 + 5*2 = 22 for stem.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 10, reason: 'expected 10 subjects');
      const expected = {
        'math': 18,
        'english': 18,
        'science': 26,
        'stem': 22,
        'coding': 12,
        'engineering': 12,
        'computing': 12,
        'history': 24,
        'geography': 24,
        'generalknowledge': 24,
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
      // Year 1-4 are now identical to each other (the content-parity effort
      // finished bringing every one of them to the same depth): 2+2+2 for
      // coding/computing/engineering, 3+3 for math/english, 5+5+5+5 for
      // generalknowledge/geography/history/science, 3 for stem = 35. Year
      // 5/6 are also identical to each other, untouched by the parity
      // effort: same baseline minus stem's extra 2 = 26.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 6, reason: 'expected 6 grades');
      const expected = {
        'year1': 35,
        'year2': 35,
        'year3': 35,
        'year4': 35,
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
      // Now expressible as a clean formula instead of a hand-maintained
      // per-pair table: coding/computing/engineering are 2 in every grade,
      // math/english are 3 in every grade. generalknowledge/geography/
      // history/science are 5 for Year 1-4 (the content-parity target) and
      // back to their pre-parity baseline (2/2/2/3) for Year 5/6, which the
      // parity effort never touched. stem is 3 everywhere except Year 5/6,
      // which carry 2 pre-existing extra modules (5) unrelated to parity.
      const flatSubjects = {'coding': 2, 'computing': 2, 'engineering': 2};
      const threeSubjects = {'english': 3, 'math': 3};
      const parityTargetSubjects = {
        'generalknowledge',
        'geography',
        'history',
        'science',
      };
      const parityBaseline = {
        'generalknowledge': 2,
        'geography': 2,
        'history': 2,
        'science': 3,
      };
      const parityGrades = {'year1', 'year2', 'year3', 'year4'};

      int expectedFor(String grade, String subject) {
        if (flatSubjects.containsKey(subject)) return flatSubjects[subject]!;
        if (threeSubjects.containsKey(subject)) return threeSubjects[subject]!;
        if (subject == 'stem') return parityGrades.contains(grade) ? 3 : 5;
        if (parityTargetSubjects.contains(subject)) {
          return parityGrades.contains(grade) ? 5 : parityBaseline[subject]!;
        }
        throw StateError('unexpected subject "$subject"');
      }

      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 60, reason: 'expected 60 grade+subject combos');
      for (final entry in counts.entries) {
        final parts = entry.key.split('-');
        final grade = parts[0];
        final subject = parts.sublist(1).join('-');
        final expected = expectedFor(grade, subject);
        expect(
          entry.value,
          expected,
          reason: '${entry.key} has ${entry.value} modules, expected $expected',
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
