import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/nursery_kg_quantum_flash_bank.dart';
import 'package:nova_academy/models/child_model.dart';

void main() {
  group('nurseryKgQuantumFlashBank', () {
    test('is not empty', () {
      expect(nurseryKgQuantumFlashBank, isNotEmpty);
    });

    test('every deck id is unique', () {
      final ids = nurseryKgQuantumFlashBank.map((d) => d.id).toSet();
      expect(ids.length, nurseryKgQuantumFlashBank.length);
    });

    test('every card id is unique across the whole bank', () {
      final ids = [
        for (final deck in nurseryKgQuantumFlashBank)
          for (final card in deck.cards) card.id,
      ];
      expect(ids.toSet().length, ids.length);
    });

    test('every deck grade is nursery or kg', () {
      for (final deck in nurseryKgQuantumFlashBank) {
        expect(
          deck.grade == Grade.nursery || deck.grade == Grade.kg,
          isTrue,
          reason: '${deck.id} has an unexpected grade',
        );
      }
    });

    test('every deck subject is math or phonics', () {
      const expected = {'math', 'phonics'};
      for (final deck in nurseryKgQuantumFlashBank) {
        expect(
          expected.contains(deck.subject),
          isTrue,
          reason: '${deck.id} has an unexpected subject "${deck.subject}"',
        );
      }
    });

    test(
      'every deck has at least 3 cards (enough for a Quick Check round)',
      () {
        for (final deck in nurseryKgQuantumFlashBank) {
          expect(
            deck.cards.length,
            greaterThanOrEqualTo(3),
            reason: '${deck.id} has too few cards for a distractor set',
          );
        }
      },
    );

    test('dot-mode cards have a positive dotCount and no emoji', () {
      for (final deck in nurseryKgQuantumFlashBank) {
        for (final card in deck.cards) {
          if (card.mode != QuantumFlashCardMode.dot) continue;
          expect(
            card.dotCount,
            isNotNull,
            reason: '${card.id} is dot-mode but has no dotCount',
          );
          expect(
            card.dotCount! > 0,
            isTrue,
            reason: '${card.id} has a non-positive dotCount',
          );
          expect(
            card.emoji,
            isNull,
            reason: '${card.id} is dot-mode but also has an emoji',
          );
        }
      }
    });

    test('word-mode cards have a non-empty emoji and no dotCount', () {
      for (final deck in nurseryKgQuantumFlashBank) {
        for (final card in deck.cards) {
          if (card.mode != QuantumFlashCardMode.word) continue;
          expect(
            card.emoji,
            isNotNull,
            reason: '${card.id} is word-mode but has no emoji',
          );
          expect(
            card.emoji,
            isNotEmpty,
            reason: '${card.id} has an empty emoji',
          );
          expect(
            card.dotCount,
            isNull,
            reason: '${card.id} is word-mode but also has a dotCount',
          );
        }
      }
    });

    test('every deck and card has non-empty, non-equal bilingual text', () {
      for (final deck in nurseryKgQuantumFlashBank) {
        expect(deck.titleEn, isNotEmpty, reason: '${deck.id} titleEn');
        expect(deck.titleMy, isNotEmpty, reason: '${deck.id} titleMy');
        expect(
          deck.descriptionEn,
          isNotEmpty,
          reason: '${deck.id} descriptionEn',
        );
        expect(
          deck.descriptionMy,
          isNotEmpty,
          reason: '${deck.id} descriptionMy',
        );
        expect(
          deck.titleEn,
          isNot(equals(deck.titleMy)),
          reason: '${deck.id} titleEn/titleMy are identical',
        );
        for (final card in deck.cards) {
          expect(card.labelEn, isNotEmpty, reason: '${card.id} labelEn');
          expect(card.labelMy, isNotEmpty, reason: '${card.id} labelMy');
          expect(
            card.labelEn,
            isNot(equals(card.labelMy)),
            reason: '${card.id} labelEn/labelMy are identical',
          );
        }
      }
    });

    test('quantumFlashDefForModule finds a known deck by id', () {
      final def = quantumFlashDefForModule('mock-nursery-quantumflash-math-1');
      expect(def, isNotNull);
      expect(def!.grade, Grade.nursery);
    });

    test('quantumFlashDefForModule returns null for an unknown id', () {
      expect(quantumFlashDefForModule('does-not-exist'), isNull);
    });
  });
}
