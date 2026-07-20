// Verifies the Mission 3 global language switcher actually flips the app's
// locale when tapped -- not just that it renders without throwing.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:nova_academy/core/widgets/language_toggle_button.dart';
import 'package:nova_academy/l10n/app_localizations.dart';
import 'package:nova_academy/providers/locale_provider.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets(
    'tapping LanguageToggleButton flips the locale between en and my, both ways',
    (tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            home: Scaffold(body: Center(child: LanguageToggleButton())),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final BuildContext context = tester.element(
        find.byType(LanguageToggleButton),
      );
      final container = ProviderScope.containerOf(context);

      expect(container.read(localeProvider).languageCode, 'en');
      expect(find.text('MY'), findsOneWidget);

      await tester.tap(find.byType(LanguageToggleButton));
      await tester.pumpAndSettle();

      expect(container.read(localeProvider).languageCode, 'my');
      expect(find.text('EN'), findsOneWidget);

      await tester.tap(find.byType(LanguageToggleButton));
      await tester.pumpAndSettle();

      expect(container.read(localeProvider).languageCode, 'en');
      expect(find.text('MY'), findsOneWidget);
    },
  );
}
