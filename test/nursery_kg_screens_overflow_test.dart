// Broad overflow/exception regression sweep across every Nursery/KG screen
// that `test/nursery_responsive_layout_test.dart` and
// `test/quantum_flash_screen_test.dart` do NOT already cover. Those two
// files' own doc comments note "this exact screen family... has a
// documented history of small-phone overflow bugs" -- this file applies the
// same discipline to the remaining screens (Flashcards, Listening, Memory,
// Rhymes, Storytelling, the activity browser, the shared completion
// overlay, and the home tile grid), which had zero such coverage before
// this file, plus a textScaleFactor sweep (a common Android
// accessibility-settings difference from a dev machine's default 1.0x)
// that no existing Nursery/KG test exercised at all.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:nova_academy/features/home/home_shared_widgets.dart';
import 'package:nova_academy/features/home/nursery_kg_home_screen.dart';
import 'package:nova_academy/features/lessons/nursery_activity_browser_screen.dart';
import 'package:nova_academy/features/lessons/nursery_activity_kind.dart';
import 'package:nova_academy/features/lessons/nursery_completion_overlay.dart';
import 'package:nova_academy/features/lessons/nursery_flashcards_screen.dart';
import 'package:nova_academy/features/lessons/nursery_kg_flashcards_bank.dart';
import 'package:nova_academy/features/lessons/nursery_kg_listening_bank.dart';
import 'package:nova_academy/features/lessons/nursery_kg_memory_bank.dart';
import 'package:nova_academy/features/lessons/nursery_kg_rhymes_bank.dart';
import 'package:nova_academy/features/lessons/nursery_kg_storytelling_bank.dart';
import 'package:nova_academy/features/lessons/nursery_listening_screen.dart';
import 'package:nova_academy/features/lessons/nursery_memory_screen.dart';
import 'package:nova_academy/features/lessons/nursery_rhymes_screen.dart';
import 'package:nova_academy/features/lessons/nursery_storytelling_screen.dart';
import 'package:nova_academy/l10n/app_localizations.dart';
import 'package:nova_academy/models/child_model.dart';
import 'package:nova_academy/models/learning_module_model.dart';
import 'package:nova_academy/providers/children_providers.dart';
import 'package:nova_academy/providers/learning_module_providers.dart';

/// Every size worth stressing: a very small/budget Android phone, two
/// common mid-range Android widths, and a tablet-ish size to catch
/// overflow going the *other* direction (unbounded/huge elements looking
/// broken rather than clipped).
const _sizes = [
  Size(320, 568),
  Size(360, 640),
  Size(360, 800),
  Size(800, 1280),
];

Widget _wrap(Widget child, {Locale locale = const Locale('en')}) {
  return MaterialApp(
    locale: locale,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.supportedLocales,
    home: child,
  );
}

Future<void> _setSize(WidgetTester tester, Size size) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1.0;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
}

void main() {
  group('NurseryFlashcardsScreen', () {
    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await _setSize(tester, size);
        await tester.pumpWidget(
          _wrap(
            NurseryFlashcardsScreen(
              subjectLabel: 'Colours',
              def: nurseryKgFlashcardsBank.first,
            ),
          ),
        );
        await tester.pump();
        expect(tester.takeException(), isNull);
      });
    }

    testWidgets('null def (fallback path) does not throw', (tester) async {
      await _setSize(tester, const Size(320, 568));
      await tester.pumpWidget(const _WrappedFlashcards());
      await tester.pump();
      expect(tester.takeException(), isNull);
    });

    testWidgets('swiping through every card to completion does not throw', (
      tester,
    ) async {
      await _setSize(tester, const Size(320, 568));
      final deck = nurseryKgFlashcardsBank.first;
      await tester.pumpWidget(
        _wrap(NurseryFlashcardsScreen(subjectLabel: 'Colours', def: deck)),
      );
      await tester.pump();
      for (var i = 0; i < deck.cards.length; i++) {
        await tester.fling(
          find.byType(PageView),
          const Offset(-400, 0),
          800,
          warnIfMissed: false,
        );
        await tester.pumpAndSettle();
      }
      expect(tester.takeException(), isNull);
    });
  });

  group('NurseryListeningScreen', () {
    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await _setSize(tester, size);
        await tester.pumpWidget(
          _wrap(
            NurseryListeningScreen(
              subjectLabel: 'Story Time',
              def: nurseryKgListeningBank.first,
            ),
          ),
        );
        await tester.pump();
        expect(tester.takeException(), isNull);
      });
    }

    testWidgets('rapid repeated taps on choices do not throw', (tester) async {
      await _setSize(tester, const Size(320, 568));
      await tester.pumpWidget(
        _wrap(
          NurseryListeningScreen(
            subjectLabel: 'Story Time',
            def: nurseryKgListeningBank.first,
          ),
        ),
      );
      await tester.pump();
      final choiceFinder = find.byType(GestureDetector).first;
      for (var i = 0; i < 8; i++) {
        await tester.tap(choiceFinder, warnIfMissed: false);
        await tester.pump(const Duration(milliseconds: 30));
      }
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  });

  group('NurseryMemoryScreen', () {
    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await _setSize(tester, size);
        final biggest = nurseryKgMemoryBank.reduce(
          (a, b) => a.pairs.length >= b.pairs.length ? a : b,
        );
        await tester.pumpWidget(
          _wrap(NurseryMemoryScreen(subjectLabel: 'Memory', def: biggest)),
        );
        await tester.pump();
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('NurseryRhymesScreen', () {
    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await _setSize(tester, size);
        await tester.pumpWidget(
          _wrap(
            NurseryRhymesScreen(
              subjectLabel: 'Rhymes',
              def: nurseryKgRhymesBank.first,
            ),
          ),
        );
        await tester.pump();
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('NurseryStorytellingScreen', () {
    for (final size in _sizes) {
      for (final locale in [const Locale('en'), const Locale('my')]) {
        testWidgets(
          'no overflow at ${size.width}x${size.height}, locale ${locale.languageCode}',
          (tester) async {
            await _setSize(tester, size);
            await tester.pumpWidget(
              _wrap(
                NurseryStorytellingScreen(
                  subjectLabel: 'Story Time',
                  def: nurseryKgStorytellingBank.first,
                ),
                locale: locale,
              ),
            );
            await tester.pump();
            expect(tester.takeException(), isNull);
          },
        );
      }
    }

    testWidgets('the longest authored story page does not overflow on a '
        'very small phone', (tester) async {
      await _setSize(tester, const Size(320, 568));
      final longest = nurseryKgStorytellingBank.reduce((a, b) {
        final aMax = a.pages
            .map((p) => p.textEn.length)
            .reduce((x, y) => x > y ? x : y);
        final bMax = b.pages
            .map((p) => p.textEn.length)
            .reduce((x, y) => x > y ? x : y);
        return aMax >= bMax ? a : b;
      });
      await tester.pumpWidget(
        _wrap(
          NurseryStorytellingScreen(subjectLabel: 'Story Time', def: longest),
        ),
      );
      await tester.pump();
      // Advance through every page (each page's text length varies).
      for (var i = 0; i < longest.pages.length; i++) {
        await tester.tap(find.byType(FilledButton));
        await tester.pump(const Duration(milliseconds: 350));
        expect(
          tester.takeException(),
          isNull,
          reason: 'page $i of "${longest.titleEn}" overflowed',
        );
      }
    });

    testWidgets('textScaleFactor 1.3x does not overflow on a small phone', (
      tester,
    ) async {
      await _setSize(tester, const Size(320, 568));
      await tester.pumpWidget(
        MediaQuery(
          data: const MediaQueryData(
            size: Size(320, 568),
            textScaler: TextScaler.linear(1.3),
          ),
          child: _wrap(
            NurseryStorytellingScreen(
              subjectLabel: 'Story Time',
              def: nurseryKgStorytellingBank.first,
            ),
          ),
        ),
      );
      await tester.pump();
      expect(tester.takeException(), isNull);
    });
  });

  group('NurseryActivityBrowserScreen', () {
    final manyActivities = [
      for (var i = 0; i < 6; i++)
        NurseryActivitySummary(
          id: 'activity-$i',
          subject: 'math',
          grade: Grade.nursery,
          kind:
              NurseryActivityKind.values[i % NurseryActivityKind.values.length],
          titleEn: 'Activity Number $i With A Longer Title',
          titleMy: 'ဂဏန်း $i ပါသော ရှည်လျားသော လှုပ်ရှားမှု ခေါင်းစဉ်',
          descriptionEn: 'desc',
          descriptionMy: 'ဖော်ပြချက်',
          starsReward: 5,
          emoji: '🎲',
        ),
    ];

    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await _setSize(tester, size);
        await tester.pumpWidget(
          _wrap(
            NurseryActivityBrowserScreen(
              grade: Grade.nursery,
              subject: const SubjectVisual(
                label: 'Math',
                icon: Icons.filter_2_rounded,
                color: Colors.blue,
                subjectKey: 'math',
              ),
              activities: manyActivities,
            ),
          ),
        );
        await tester.pump(const Duration(milliseconds: 700));
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('NurseryCompletionOverlay', () {
    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height} with long '
          'title/subtitle', (tester) async {
        await _setSize(tester, size);
        await tester.pumpWidget(
          _wrap(
            Scaffold(
              body: Stack(
                children: [
                  NurseryCompletionOverlay(
                    languageCode: 'en',
                    stars: 12,
                    titleEn: 'What An Absolutely Wonderful Achievement!',
                    titleMy: 'အလွန်ကောင်းမွန်သော အောင်မြင်မှုတစ်ခု ဖြစ်ပါသည်!',
                    subtitleEn:
                        'You have completed every single part of this '
                        'activity from start to finish!',
                    subtitleMy:
                        'ဤလှုပ်ရှားမှု၏ အစိတ်အပိုင်းတိုင်းကို အစအဆုံး '
                        'ပြီးမြောက်အောင် လုပ်ဆောင်နိုင်ခဲ့ပါပြီ!',
                    onDone: () {},
                  ),
                ],
              ),
            ),
          ),
        );
        await tester.pump(const Duration(milliseconds: 500));
        expect(tester.takeException(), isNull);
      });
    }
  });

  group('NurseryKgHomeScreen', () {
    Future<void> pumpHome(WidgetTester tester, Size size, Grade grade) async {
      await _setSize(tester, size);
      final container = ProviderContainer(
        overrides: [
          activeChildProvider.overrideWithValue(null),
          learningModulesProvider.overrideWith(
            (ref) => Stream.value(const <LearningModuleModel>[]),
          ),
        ],
      );
      addTearDown(container.dispose);
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: _wrap(const NurseryKgHomeScreen()),
        ),
      );
      await tester.pump(const Duration(milliseconds: 800));
    }

    for (final size in _sizes) {
      testWidgets('no overflow at ${size.width}x${size.height}', (
        tester,
      ) async {
        await pumpHome(tester, size, Grade.nursery);
        expect(tester.takeException(), isNull);
      });
    }
  });
}

/// Pumps [NurseryFlashcardsScreen] with no `def` at all, exercising the
/// hardcoded-fallback-deck path (`fallbackFlashcards`) rather than seeded
/// bank content.
class _WrappedFlashcards extends StatelessWidget {
  const _WrappedFlashcards();

  @override
  Widget build(BuildContext context) {
    return _wrap(const NurseryFlashcardsScreen(subjectLabel: 'Colours'));
  }
}
