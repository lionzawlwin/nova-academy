// Regression test for the mobile UI/UX overhaul: the Nursery/KG
// picture-matching screen used fixed 128dp/110dp basket/item tiles and a
// single shared vertical scroll region for both the targets and the
// draggable dock, which overflowed and pushed the draggable items off
// -screen entirely on small phones. This pumps the screen at a small
// phone size (iPhone SE-class, 375x667) with a realistically large pair
// count and asserts no RenderFlex/layout exceptions are thrown.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/features/lessons/nursery_kg_activity_bank.dart';
import 'package:nova_academy/features/lessons/nursery_lesson_screen.dart';

Widget _wrap(Widget child) {
  return MaterialApp(
    localizationsDelegates: const [
      DefaultMaterialLocalizations.delegate,
      DefaultWidgetsLocalizations.delegate,
    ],
    supportedLocales: const [Locale('en'), Locale('my')],
    home: child,
  );
}

void main() {
  testWidgets(
    'NurseryLessonScreen renders without overflow on a small phone screen',
    (tester) async {
      tester.view.physicalSize = const Size(375, 667);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      const pairs = [
        MatchPairItem(
          id: 'a',
          emoji: '🌍',
          colorValue: 0xFF6FCF97,
          labelEn: 'Mountain',
          labelMy: 'တောင်',
        ),
        MatchPairItem(
          id: 'b',
          emoji: '🌊',
          colorValue: 0xFF94BDFF,
          labelEn: 'Ocean',
          labelMy: 'သမုဒ္ဒရာ',
        ),
        MatchPairItem(
          id: 'c',
          emoji: '🏙️',
          colorValue: 0xFFFFBF3C,
          labelEn: 'City',
          labelMy: 'မြို့',
        ),
        MatchPairItem(
          id: 'd',
          emoji: '🏝️',
          colorValue: 0xFFFF7F91,
          labelEn: 'Island',
          labelMy: 'ကျွန်း',
        ),
        MatchPairItem(
          id: 'e',
          emoji: '🏔️',
          colorValue: 0xFF7271F7,
          labelEn: 'Peak',
          labelMy: 'ထိပ်',
        ),
      ];

      await tester.pumpWidget(
        _wrap(
          const NurseryLessonScreen(
            subjectLabel: 'Geography',
            pairs: pairs,
            instructionEn: 'Match each location to its picture!',
            instructionMy: 'နေရာတစ်ခုစီကို ၎င်း၏ပုံနှင့် ကိုက်ညီအောင် တွဲပါ!',
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      // The dynamic, subject-specific instruction must be shown -- never
      // the old hardcoded fruit-basket string.
      expect(find.text('Match each location to its picture!'), findsOneWidget);
      expect(find.textContaining('fruit'), findsNothing);
    },
  );

  testWidgets(
    'NurseryLessonScreen renders every real seeded module without overflow on a very small phone screen',
    (tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      // The largest authored pair count stresses the target grid and the
      // draggable dock the hardest.
      final biggest = nurseryKgActivityBank.reduce(
        (a, b) => a.items.length >= b.items.length ? a : b,
      );

      await tester.pumpWidget(
        _wrap(
          NurseryLessonScreen(
            subjectLabel: biggest.subject,
            pairs: biggest.items,
            instructionEn: biggest.descriptionEn,
            instructionMy: biggest.descriptionMy,
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
    },
  );
}
