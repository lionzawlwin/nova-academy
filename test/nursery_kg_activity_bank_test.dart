import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/nursery_kg_activity_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('nurseryKgActivityBank', () {
    test('contains exactly 82 modules', () {
      expect(nurseryKgActivityBank.length, 82);
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

    test('every module subject is one of the ten expected keys', () {
      const expected = {
        'phonics',
        'math',
        'generalknowledge',
        'stem',
        'coding',
        'engineering',
        'history',
        'geography',
        'computing',
        'art',
      };
      for (final module in nurseryKgActivityBank) {
        expect(
          expected.contains(module.subject),
          isTrue,
          reason: '${module.id} has an unexpected subject "${module.subject}"',
        );
      }
    });

    test('has 4 modules per grade+subject combination, except stem (5)', () {
      // The Round 1 expansion (see the doc comment above the appended
      // block in nursery_kg_activity_bank.dart) brought every subject to
      // 4 modules per grade -- filling `art` from scratch and topping up
      // the six subjects that previously had only 1 (coding/computing/
      // engineering/history/geography) or 3 (phonics/math/
      // generalknowledge). `stem` keeps its extra 2 pre-coding
      // (directions/sequencing) modules on top of the baseline 3, so it
      // stays at 5 instead of 4.
      const expectedOverrides = {'nursery-stem': 5, 'kg-stem': 5};
      final counts = <String, int>{};
      for (final module in nurseryKgActivityBank) {
        final key = '${module.grade.name}-${module.subject}';
        counts[key] = (counts[key] ?? 0) + 1;
      }
      expect(counts.length, 20, reason: 'expected 20 grade+subject combos');
      for (final entry in counts.entries) {
        final expected = expectedOverrides[entry.key] ?? 4;
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
      },
    );

    test(
      'every item has non-empty, non-equal bilingual labels and an emoji',
      () {
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
      },
    );

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
