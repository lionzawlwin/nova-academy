// Unit tests for the shared Candy Core bevel widget
// (lib/core/widgets/candy_bevel_surface.dart) -- every later Mission 6
// screen restyle builds on this widget, so its tap/animation/disabled
// contract needs to be locked down here rather than re-verified ad hoc on
// every screen that uses it.
//
// These tests treat the widget as a black box (asserting on the child's
// rendered on-screen position via `tester.getTopLeft`) rather than
// inspecting internal `Positioned`/`Container` structure, so they keep
// passing across internal implementation changes.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/core/widgets/candy_bevel_surface.dart';

Widget _wrap(Widget child) => MaterialApp(
  home: Scaffold(body: Center(child: child)),
);

void main() {
  testWidgets('tap-down sinks the face toward bevelDepth, then springs back', (
    tester,
  ) async {
    await tester.pumpWidget(
      _wrap(
        CandyBevelSurface(
          faceColor: Colors.blue,
          bevelDepth: 10,
          onTap: () {},
          child: const Text('Go'),
        ),
      ),
    );

    final restY = tester.getTopLeft(find.text('Go')).dy;

    final gesture = await tester.startGesture(
      tester.getCenter(find.byType(CandyBevelSurface)),
    );
    // The first pump after starting a ticker only establishes its
    // reference start time (elapsed 0); the *next* timed pump is what
    // actually advances it -- a well-known Flutter ticker-testing quirk.
    await tester.pump();
    // Partway through the 80ms tap-down animation.
    await tester.pump(const Duration(milliseconds: 40));

    final midY = tester.getTopLeft(find.text('Go')).dy;
    expect(
      midY,
      greaterThan(restY),
      reason: 'face should have sunk down partway through the press',
    );
    expect(midY, lessThanOrEqualTo(restY + 10));

    await gesture.up();
    await tester.pumpAndSettle();

    final finalY = tester.getTopLeft(find.text('Go')).dy;
    expect(
      finalY,
      closeTo(restY, 0.5),
      reason: 'face should spring back flush with its rest position',
    );
  });

  testWidgets('onTap fires exactly once per completed tap', (tester) async {
    var tapCount = 0;
    await tester.pumpWidget(
      _wrap(
        CandyBevelSurface(
          faceColor: Colors.blue,
          onTap: () => tapCount++,
          child: const Text('Go'),
        ),
      ),
    );

    await tester.tap(find.byType(CandyBevelSurface));
    await tester.pumpAndSettle();
    expect(tapCount, 1);

    await tester.tap(find.byType(CandyBevelSurface));
    await tester.pumpAndSettle();
    expect(tapCount, 2);
  });

  testWidgets('disabled state ignores taps and never sinks', (tester) async {
    var tapCount = 0;
    await tester.pumpWidget(
      _wrap(
        CandyBevelSurface(
          faceColor: Colors.blue,
          state: CandyBevelState.disabled,
          onTap: () => tapCount++,
          child: const Text('Go'),
        ),
      ),
    );

    final restY = tester.getTopLeft(find.text('Go')).dy;

    final gesture = await tester.startGesture(
      tester.getCenter(find.byType(CandyBevelSurface)),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 40));

    expect(
      tester.getTopLeft(find.text('Go')).dy,
      closeTo(restY, 0.5),
      reason: 'disabled surfaces must never sink, even mid-gesture',
    );

    await gesture.up();
    await tester.pumpAndSettle();

    expect(tapCount, 0);
  });

  testWidgets('onTap == null also ignores taps without throwing', (
    tester,
  ) async {
    await tester.pumpWidget(
      _wrap(const CandyBevelSurface(faceColor: Colors.blue, child: Text('Go'))),
    );

    await tester.tap(find.byType(CandyBevelSurface));
    await tester.pumpAndSettle();
    // No exception, and exactly one copy of the child in the tree.
    expect(find.text('Go'), findsOneWidget);
  });

  testWidgets('correct/incorrect states show their icon slot', (tester) async {
    await tester.pumpWidget(
      _wrap(
        CandyBevelSurface(
          faceColor: Colors.blue,
          state: CandyBevelState.correct,
          correctIcon: const Icon(Icons.check_circle),
          child: const Text('Option A'),
        ),
      ),
    );

    expect(find.byIcon(Icons.check_circle), findsOneWidget);
  });
}
