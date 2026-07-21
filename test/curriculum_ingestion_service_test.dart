// Test-driven harness for
// lib/core/services/curriculum_ingestion_service.dart's
// parseLearningModulesJson() -- a pure, Firestore-free function extracted
// specifically so the Owner Admin curriculum-paste UI's validation logic
// can be unit tested without a real/emulated Firestore instance. See
// test/curriculum_sync_provider_test.dart for the same pattern applied to
// needsSync(). ingestLearningModules() itself is out of scope here -- it
// needs a real/faked Firestore instance to exercise.

import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/core/services/curriculum_ingestion_service.dart';

void main() {
  group('parseLearningModulesJson', () {
    test('valid JSON array of well-formed modules parses with zero errors', () {
      const raw = '''
      [
        {
          "subject": "fractions",
          "grade": "year4",
          "contentType": "quiz",
          "titleEn": "Fractions Basics",
          "titleMy": "အပိုင်းအစများ",
          "descriptionEn": "Intro to fractions",
          "descriptionMy": "အပိုင်းအစများနိဒါန်း"
        },
        {
          "subject": "generalknowledge",
          "grade": "year1",
          "contentType": "video",
          "titleEn": "Colors",
          "titleMy": "အရောင်များ",
          "descriptionEn": "Learning colors",
          "descriptionMy": "အရောင်များသင်ယူခြင်း"
        }
      ]
      ''';

      final result = parseLearningModulesJson(raw);

      expect(result.hasErrors, isFalse);
      expect(result.errors, isEmpty);
      expect(result.modules.length, 2);
    });

    test('invalid top-level JSON (not an array) returns one error and zero modules', () {
      const raw = '{"subject": "fractions"}';

      final result = parseLearningModulesJson(raw);

      expect(result.hasErrors, isTrue);
      expect(result.errors.length, 1);
      expect(result.modules, isEmpty);
    });

    test('malformed JSON syntax returns one error and zero modules', () {
      const raw = '[ { "subject": "fractions", ';

      final result = parseLearningModulesJson(raw);

      expect(result.hasErrors, isTrue);
      expect(result.errors.length, 1);
      expect(result.modules, isEmpty);
    });

    test('one valid entry plus one malformed entry: 1 module, 1 error', () {
      const raw = '''
      [
        {
          "subject": "fractions",
          "grade": "year4",
          "contentType": "quiz",
          "titleEn": "Fractions Basics",
          "titleMy": "အပိုင်းအစများ",
          "descriptionEn": "Intro to fractions",
          "descriptionMy": "အပိုင်းအစများနိဒါန်း"
        },
        "not a valid module object"
      ]
      ''';

      final result = parseLearningModulesJson(raw);

      expect(result.modules.length, 1);
      expect(result.errors.length, 1);
    });

    test('entry missing a required field (subject) is a row error, not a thrown exception', () {
      const raw = '''
      [
        {
          "grade": "year4",
          "contentType": "quiz",
          "titleEn": "Fractions Basics",
          "titleMy": "အပိုင်းအစများ",
          "descriptionEn": "Intro to fractions",
          "descriptionMy": "အပိုင်းအစများနိဒါန်း"
        }
      ]
      ''';

      final result = parseLearningModulesJson(raw);

      expect(result.modules, isEmpty);
      expect(result.errors.length, 1);
      expect(result.errors.first, contains('Row 1'));
    });
  });
}
