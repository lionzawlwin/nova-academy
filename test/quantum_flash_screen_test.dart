// Regression coverage for the Nova Quantum Flash Engine screen family --
// see `test/nursery_responsive_layout_test.dart` for the precedent this
// mirrors: this exact screen family (full-bleed auto-advancing card layout)
// has a documented history of small-phone overflow bugs, so this pumps the
// screen at a small phone size (iPhone SE-class, 375x667) and asserts no
// RenderFlex/layout exceptions are thrown.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/features/lessons/nursery_kg_quantum_flash_bank.dart';
import 'package:nova_academy/features/lessons/quantum_flash_screen.dart';

Widget _wrap(Widget child) {
  return ProviderScope(
    child: MaterialApp(
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('my')],
      home: child,
    ),
  );
}

void main() {
  testWidgets(
    'QuantumFlashScreen renders a dot-mode Flash Pass card without overflow '
    'on a small phone screen',
    (tester) async {
      tester.view.physicalSize = const Size(375, 667);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final deck = quantumFlashDefForModule('mock-nursery-quantumflash-math-1');

      await tester.pumpWidget(
        _wrap(QuantumFlashScreen(subjectLabel: 'Math', def: deck)),
      );
      await tester.pump();

      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'QuantumFlashScreen renders a word-mode Flash Pass card without overflow '
    'on a small phone screen',
    (tester) async {
      tester.view.physicalSize = const Size(375, 667);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final deck = quantumFlashDefForModule(
        'mock-nursery-quantumflash-phonics-1',
      );

      await tester.pumpWidget(
        _wrap(QuantumFlashScreen(subjectLabel: 'Phonics', def: deck)),
      );
      await tester.pump();

      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'QuantumFlashScreen reaches the Quick Check phase without overflow after '
    'the Flash Pass completes',
    (tester) async {
      tester.view.physicalSize = const Size(375, 667);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final deck = quantumFlashDefForModule('mock-nursery-quantumflash-math-1');

      await tester.pumpWidget(
        _wrap(QuantumFlashScreen(subjectLabel: 'Math', def: deck)),
      );

      // 5 cards at 900ms each -- pump well past the full Flash Pass so it
      // lands in the Quick Check phase, which then sits idle awaiting a tap.
      await tester.pump(const Duration(milliseconds: 900 * 6));
      await tester.pump();

      expect(tester.takeException(), isNull);
      expect(find.text('Which one did you just see? Tap it!'), findsOneWidget);
    },
  );
}
