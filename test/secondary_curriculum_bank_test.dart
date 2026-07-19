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
