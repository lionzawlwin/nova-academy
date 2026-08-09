import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/primary_curriculum_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('primaryCurriculumBank', () {
    test('contains exactly 148 modules', () {
      expect(primaryCurriculumBank.length, 148);
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

    test('has 18 modules per subject (math/english/science), except stem '
        '(22) and geography/history/computing/coding/engineering/'
        'generalknowledge (12 each)', () {
      // year5-stem and year6-stem each carry 2 extra real-Python-syntax
      // modules on top of the baseline 3 per grade, adding 4 to the stem
      // subject total (18 -> 22). The STEAM expansion added exactly one
      // `coding` and one `engineering` module per Primary grade
      // (year1-year6), so those two subjects total 6 modules each; the
      // history/geography/computing rollout followed the same one-per-grade
      // cadence, so those three subjects also total 6 modules each.
      // `generalknowledge` was authored in two slices (Year 1/Year 4 first,
      // then Year 2/3/5/6 -- see the doc comment above its block in
      // primary_curriculum_bank.dart) but now also totals 6, one per grade.
      // Every one of those six subjects then got a second module per grade
      // (the "depth batch 1" blocks, generalknowledge's being the last),
      // bringing all six to 12 -- full depth parity across Primary. Only
      // math/english/science (still 3 modules/grade) and stem remain
      // different.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.subject] = (counts[module.subject] ?? 0) + 1;
      }
      expect(counts.length, 10, reason: 'expected 10 subjects');
      const expectedOverrides = {
        'stem': 22,
        'coding': 12,
        'engineering': 12,
        'history': 12,
        'geography': 12,
        'computing': 12,
        'generalknowledge': 12,
      };
      for (final entry in counts.entries) {
        final expected = expectedOverrides[entry.key] ?? 18;
        expect(
          entry.value,
          expected,
          reason: '${entry.key} has ${entry.value} modules, expected $expected',
        );
      }
    });

    test('has 24 modules per grade, except year5/year6 which have 26', () {
      // Every grade's baseline is 12 (4 subjects x 3 modules); the STEAM
      // expansion adds exactly 2 more per grade (1 coding + 1 engineering),
      // bringing every grade to 14, except year5/year6 which already had 2
      // extra real-Python-syntax `stem` modules on top of the 12 baseline
      // (14), so the STEAM expansion brings them to 16. The
      // history/geography/computing rollout adds exactly 3 more per grade
      // (1 each), bringing every grade to 17, except year5/year6 which land
      // at 19. `generalknowledge` then lands one module per grade
      // (authored in two slices -- see the doc comment above its block in
      // primary_curriculum_bank.dart), bringing every grade to 18, except
      // year5/year6 which land at 20. The six "depth batch 1" blocks
      // (geography/history/computing/coding/engineering/generalknowledge)
      // each add one more module to every grade, bringing every grade to
      // 24, except year5/year6 which land at 26.
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        counts[module.grade.name] = (counts[module.grade.name] ?? 0) + 1;
      }
      expect(counts.length, 6, reason: 'expected 6 grades');
      const expectedOverrides = {'year5': 26, 'year6': 26};
      for (final entry in counts.entries) {
        final expected = expectedOverrides[entry.key] ?? 24;
        expect(
          entry.value,
          expected,
          reason: '${entry.key} has ${entry.value} modules, expected $expected',
        );
      }
    });

    test('has 3 modules per grade+subject combination, except year5-stem/'
        'year6-stem (5) and every geography/history/computing/coding/'
        'engineering/generalknowledge combo (2)', () {
      const expectedOverrides = {'year5-stem': 5, 'year6-stem': 5};
      final counts = <String, int>{};
      for (final module in primaryCurriculumBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 60, reason: 'expected 60 grade+subject combos');
      const twoModuleSubjects = {
        'geography',
        'history',
        'computing',
        'coding',
        'engineering',
        'generalknowledge',
      };
      for (final entry in counts.entries) {
        final isTwoModuleSubject = twoModuleSubjects.any(
          (subject) => entry.key.endsWith('-$subject'),
        );
        final expected = isTwoModuleSubject
            ? 2
            : (expectedOverrides[entry.key] ?? 3);
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
