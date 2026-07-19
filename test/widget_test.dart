// Routing & RBAC-phase smoke test: confirms the app boots under a
// ProviderScope and -- with no Firebase project configured yet in this
// environment -- the router redirect safely treats that as "signed out"
// and lands on the login screen instead of crashing.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/main.dart';

void main() {
  testWidgets('NovaAcademyApp boots and lands on the login screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ProviderScope(child: NovaAcademyApp()));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(find.text('Sign In'), findsOneWidget);
  });
}
