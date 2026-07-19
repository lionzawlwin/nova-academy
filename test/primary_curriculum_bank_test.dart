import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('primaryCurriculumBank', () {
    test('contains exactly 72 modules', () {
      expect(primaryCurriculumBank.length, 72);
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

    test('every module subject is one of the four expected keys', () {
      const expected = {'math', 'english', 'science', 'stem'};
      for (final module in primaryCurriculumBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has 18 modules per subject', () {
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 4, reason: 'expected 4 subjects');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          18,
          reason: '${entry.key} has ${entry.value} modules, expected 18',
        );
      }
    });

    test('has 12 modules per grade', () {
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 6, reason: 'expected 6 grades');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          12,
          reason: '${entry.key} has ${entry.value} modules, expected 12',
        );
      }
    });

    test('has 3 modules per grade+subject combination', () {
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
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
