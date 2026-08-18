import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';
import 'package:nova_academy/features/lessons/secondary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('secondaryCurriculumBank', () {
    test('contains exactly 112 modules', () {
      expect(secondaryCurriculumBank.length, 112);
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
        final questionTexts = module.questions.map((q) => q.questionEn).toSet();
        expect(
          questionTexts.length,
          module.questions.length,
          reason: '${module.id} has duplicate question text',
        );
      }
    });

    test('every module grade is secondary1 through igcse', () {
      const expectedGrades = {
        Grade.year7,
        Grade.year8,
        Grade.year9,
        Grade.year10,
      };
      for (final module in secondaryCurriculumBank) {
        expect(
          expectedGrades.contains(module.grade),
          isTrue,
          reason: '${module.id} has an unexpected grade',
        );
      }
    });

    test('every module subject is one of the eleven expected keys', () {
      const expected = {
        'algebra',
        'physics',
        'chemistry',
        'biology',
        'ict',
        'socialstudies',
        'coding',
        'engineering',
        'history',
        'geography',
        'computing',
      };
      for (final module in secondaryCurriculumBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has 12 modules per subject, except coding/engineering/geography/'
        'history/computing (8 each, two per grade)', () {
      // The STEAM expansion added exactly one `coding` and one
      // `engineering` module per Secondary/IGCSE grade (secondary1-3,
      // igcse). The history/geography/computing rollout followed the same
      // one-per-grade cadence. `coding`, `engineering`, `geography`,
      // `history`, and `computing` then each got a second module per grade
      // (the "secondary depth batch" blocks), bringing all five to 8; every
      // other subject stays at 12.
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 11, reason: 'expected 11 subjects');
      const expectedOverrides = {
        'coding': 8,
        'engineering': 8,
        'history': 8,
        'geography': 8,
        'computing': 8,
      };
      for (final entry in counts.entries) {
        final expected = expectedOverrides[entry.key] ?? 12;
        expect(
          entry.value,
          expected,
          reason: '${entry.key} has ${entry.value} modules, expected $expected',
        );
      }
    });

    test('has 28 modules per grade', () {
      // Baseline 18 (6 subjects x 3 modules) plus 2 from the STEAM
      // expansion (1 coding + 1 engineering) plus 3 from the
      // history/geography/computing rollout (1 each) plus 5 more from the
      // "secondary coding/engineering/geography/history/computing depth
      // batch" blocks, per grade.
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 4, reason: 'expected 4 grades');
      for (final entry in counts.entries) {
        expect(
          entry.value,
          28,
          reason: '${entry.key} has ${entry.value} modules, expected 28',
        );
      }
    });

    test('has 3 modules per grade+subject combination, except every coding/'
        'engineering/geography/history/computing combo (2)', () {
      final counts = <String, int>{};
      for (final module in secondaryCurriculumBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 44, reason: 'expected 44 grade+subject combos');
      const twoModuleSubjects = {
        'coding',
        'geography',
        'history',
        'computing',
        'engineering',
      };
      for (final entry in counts.entries) {
        final isTwoModuleSubject = twoModuleSubjects.any(
          (subject) => entry.key.endsWith('-$subject'),
        );
        final expected = isTwoModuleSubject ? 2 : 3;
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
        Grade.year7: 22,
        Grade.year8: 24,
        Grade.year9: 26,
        Grade.year10: 28,
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

  group('quizQuestionsForModule (secondary lookup)', () {
    test('returns the seeded questions for a known secondary module id', () {
      final module = secondaryCurriculumBank.first;
      final questions = quizQuestionsForModule(module.id, module.subject);
      expect(questions, module.questions);
    });

    test(
      'falls back to the subject bank for an unknown secondary-shaped id',
      () {
        final questions = quizQuestionsForModule(
          'mock-secondary1-algebra-does-not-exist',
          'algebra',
        );
        expect(questions, isNotEmpty);
      },
    );
  });
}
