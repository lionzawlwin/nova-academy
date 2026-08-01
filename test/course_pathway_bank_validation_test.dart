import 'package:flutter_test/flutter_test.dart';
import 'package:nova_academy/features/lessons/course_pathway_bank.dart';

/// Structural invariants for every authored [CoursePathwayDef] in
/// `course_pathway_bank.dart`. This file grows purely mechanically (no
/// hand-authored content) as more subjects/grades get added -- it exists so
/// a hand-authored mistake (duplicate id, mismatched bilingual list length,
/// out-of-bounds index, inconsistent bucket label) is caught by `flutter
/// test` instead of only by manual review, which does not scale past a
/// handful of subjects.
void main() {
  group('allCoursePathways structural invariants', () {
    test('at least one pathway is authored', () {
      expect(allCoursePathways, isNotEmpty);
    });

    test('every DailyLessonDef.id is globally unique across every pathway', () {
      final seen = <String, String>{}; // id -> "pathway/term/week" location
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              final location =
                  '${pathway.id} > term ${term.termNumber} > week '
                  '${week.weekNumber} > day ${lesson.dayNumber}';
              final existing = seen[lesson.id];
              expect(
                existing,
                isNull,
                reason:
                    'Duplicate DailyLessonDef.id "${lesson.id}" at '
                    '$location (first seen at $existing) -- duplicates '
                    'silently shadow each other in courseDailyLessonById\'s '
                    'linear lookup.',
              );
              seen[lesson.id] = location;
            }
          }
        }
      }
    });

    test('every CourseWeekDef.id is globally unique across every pathway', () {
      final seen = <String>{};
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            expect(
              seen.contains(week.id),
              isFalse,
              reason: 'Duplicate CourseWeekDef.id "${week.id}"',
            );
            seen.add(week.id);
          }
        }
      }
    });

    test('every CourseTermDef.id is globally unique across every pathway', () {
      final seen = <String>{};
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          expect(
            seen.contains(term.id),
            isFalse,
            reason: 'Duplicate CourseTermDef.id "${term.id}"',
          );
          seen.add(term.id);
        }
      }
    });

    test('every CoursePathwayDef.id is globally unique', () {
      final ids = allCoursePathways.map((p) => p.id).toList();
      expect(ids.toSet().length, ids.length);
    });

    test('every pathway has non-empty subject/titleEn/titleMy/descriptionEn/'
        'descriptionMy', () {
      for (final pathway in allCoursePathways) {
        expect(pathway.subject, isNotEmpty, reason: pathway.id);
        expect(pathway.titleEn, isNotEmpty, reason: pathway.id);
        expect(pathway.titleMy, isNotEmpty, reason: pathway.id);
        expect(pathway.descriptionEn, isNotEmpty, reason: pathway.id);
        expect(pathway.descriptionMy, isNotEmpty, reason: pathway.id);
      }
    });

    test(
      'every pathway.subject is lowercase (icon/label lookup convention)',
      () {
        for (final pathway in allCoursePathways) {
          expect(
            pathway.subject,
            pathway.subject.toLowerCase(),
            reason:
                '${pathway.id}: pathway.subject must be lowercase or the '
                'icon/label lookup in the home screens silently falls back '
                'to a default (see CLAUDE.md)',
          );
        }
      },
    );

    test(
      'every pathway\'s termNumbers are 1..N sequential with no duplicates',
      () {
        for (final pathway in allCoursePathways) {
          final termNumbers = pathway.terms.map((t) => t.termNumber).toList();
          final expected = List.generate(termNumbers.length, (i) => i + 1);
          expect(
            termNumbers,
            expected,
            reason:
                '${pathway.id}: termNumbers should be exactly '
                '$expected but were $termNumbers',
          );
        }
      },
    );

    test('every term\'s weekNumbers are sequential with no duplicates within '
        'that pathway', () {
      for (final pathway in allCoursePathways) {
        final weekNumbers = pathway.terms
            .expand((t) => t.weeks)
            .map((w) => w.weekNumber)
            .toList();
        final sorted = [...weekNumbers]..sort();
        expect(
          weekNumbers,
          sorted,
          reason: '${pathway.id}: weekNumbers are out of order: $weekNumbers',
        );
        expect(
          weekNumbers.toSet().length,
          weekNumbers.length,
          reason: '${pathway.id}: duplicate weekNumber in $weekNumbers',
        );
      }
    });

    test('every week has exactly 5 daily lessons (Mon-Fri convention)', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            expect(
              week.dailyLessons.length,
              5,
              reason:
                  '${pathway.id} > ${week.id} does not have exactly 5 '
                  'daily lessons',
            );
          }
        }
      }
    });

    test(
      'every week\'s dayNumbers are exactly 1,2,3,4,5 with no duplicates',
      () {
        for (final pathway in allCoursePathways) {
          for (final term in pathway.terms) {
            for (final week in term.weeks) {
              final dayNumbers = week.dailyLessons
                  .map((d) => d.dayNumber)
                  .toList();
              expect(
                dayNumbers,
                [1, 2, 3, 4, 5],
                reason:
                    '${pathway.id} > ${week.id}: dayNumbers were $dayNumbers',
              );
            }
          }
        }
      },
    );

    test('every DailyLessonDef has non-empty titleEn/titleMy and only the '
        'content matching its LessonKind populated', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              final loc = '${pathway.id} > ${week.id} > ${lesson.id}';
              expect(lesson.titleEn, isNotEmpty, reason: loc);
              expect(lesson.titleMy, isNotEmpty, reason: loc);

              switch (lesson.kind) {
                case LessonKind.quiz:
                  expect(
                    lesson.quizQuestions,
                    isNotEmpty,
                    reason: '$loc: quiz day has no quizQuestions',
                  );
                  expect(
                    lesson.dragMatchPairs,
                    isEmpty,
                    reason: '$loc: quiz day should not populate dragMatchPairs',
                  );
                  expect(
                    lesson.sortingActivity,
                    isNull,
                    reason:
                        '$loc: quiz day should not populate sortingActivity',
                  );
                  expect(
                    lesson.readingPassage,
                    isNull,
                    reason: '$loc: quiz day should not populate readingPassage',
                  );
                case LessonKind.dragMatch:
                  expect(
                    lesson.dragMatchPairs,
                    isNotEmpty,
                    reason: '$loc: dragMatch day has no dragMatchPairs',
                  );
                  expect(lesson.quizQuestions, isEmpty, reason: loc);
                  expect(lesson.sortingActivity, isNull, reason: loc);
                  expect(lesson.readingPassage, isNull, reason: loc);
                case LessonKind.sorting:
                  expect(
                    lesson.sortingActivity,
                    isNotNull,
                    reason: '$loc: sorting day has no sortingActivity',
                  );
                  expect(lesson.quizQuestions, isEmpty, reason: loc);
                  expect(lesson.dragMatchPairs, isEmpty, reason: loc);
                  expect(lesson.readingPassage, isNull, reason: loc);
                case LessonKind.reading:
                  expect(
                    lesson.readingPassage,
                    isNotNull,
                    reason: '$loc: reading day has no readingPassage',
                  );
                  expect(lesson.quizQuestions, isEmpty, reason: loc);
                  expect(lesson.dragMatchPairs, isEmpty, reason: loc);
                  expect(lesson.sortingActivity, isNull, reason: loc);
              }
            }
          }
        }
      }
    });

    test('every QuizQuestion (standalone and reading comprehension) has '
        'matching-length bilingual options and an in-bounds correctIndex', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              final allQuestions = [
                ...lesson.quizQuestions,
                ...?lesson.readingPassage?.comprehensionQuestions,
              ];
              for (final q in allQuestions) {
                final loc = '${pathway.id} > ${week.id} > ${lesson.id}';
                expect(q.questionEn, isNotEmpty, reason: loc);
                expect(q.questionMy, isNotEmpty, reason: loc);
                expect(
                  q.optionsEn.length,
                  q.optionsMy.length,
                  reason: '$loc: optionsEn/optionsMy length mismatch',
                );
                expect(
                  q.optionsEn.length,
                  greaterThanOrEqualTo(2),
                  reason: '$loc: fewer than 2 options',
                );
                expect(
                  q.correctIndex,
                  inInclusiveRange(0, q.optionsEn.length - 1),
                  reason: '$loc: correctIndex out of bounds',
                );
                expect(
                  q.hintsEn.length,
                  q.hintsMy.length,
                  reason: '$loc: hintsEn/hintsMy length mismatch',
                );
              }
            }
          }
        }
      }
    });

    test('every DragMatchPair has non-empty bilingual term/match text', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              for (final pair in lesson.dragMatchPairs) {
                final loc =
                    '${pathway.id} > ${week.id} > ${lesson.id} > ${pair.id}';
                expect(pair.termEn, isNotEmpty, reason: loc);
                expect(pair.termMy, isNotEmpty, reason: loc);
                expect(pair.matchEn, isNotEmpty, reason: loc);
                expect(pair.matchMy, isNotEmpty, reason: loc);
              }
            }
          }
        }
      }
    });

    test('every SortingActivity has parallel bucket lists and every item\'s '
        'correctBucket matches a declared bucket', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              final activity = lesson.sortingActivity;
              if (activity == null) continue;
              final loc = '${pathway.id} > ${week.id} > ${lesson.id}';
              expect(
                activity.bucketsEn.length,
                activity.bucketsMy.length,
                reason: '$loc: bucketsEn/bucketsMy length mismatch',
              );
              expect(activity.items, isNotEmpty, reason: '$loc: no items');
              for (final item in activity.items) {
                expect(
                  activity.bucketsEn.contains(item.correctBucketEn),
                  isTrue,
                  reason:
                      '$loc: item ${item.id} correctBucketEn '
                      '"${item.correctBucketEn}" does not match any '
                      'declared bucket ${activity.bucketsEn}',
                );
                expect(
                  activity.bucketsMy.contains(item.correctBucketMy),
                  isTrue,
                  reason:
                      '$loc: item ${item.id} correctBucketMy '
                      '"${item.correctBucketMy}" does not match any '
                      'declared bucket ${activity.bucketsMy}',
                );
              }
            }
          }
        }
      }
    });

    test('every ReadingPassageModel has non-empty bilingual title/passage and '
        'at least one comprehension question', () {
      for (final pathway in allCoursePathways) {
        for (final term in pathway.terms) {
          for (final week in term.weeks) {
            for (final lesson in week.dailyLessons) {
              final passage = lesson.readingPassage;
              if (passage == null) continue;
              final loc = '${pathway.id} > ${week.id} > ${lesson.id}';
              expect(passage.titleEn, isNotEmpty, reason: loc);
              expect(passage.titleMy, isNotEmpty, reason: loc);
              expect(passage.passageEn, isNotEmpty, reason: loc);
              expect(passage.passageMy, isNotEmpty, reason: loc);
              expect(
                passage.comprehensionQuestions,
                isNotEmpty,
                reason: '$loc: readingPassage has no comprehensionQuestions',
              );
            }
          }
        }
      }
    });

    test(
      'courseDailyLessonById finds a known id and returns null for a bogus one',
      () {
        final firstPathway = allCoursePathways.first;
        final knownId =
            firstPathway.terms.first.weeks.first.dailyLessons.first.id;
        expect(courseDailyLessonById(knownId)?.id, knownId);
        expect(courseDailyLessonById('definitely-not-a-real-id'), isNull);
      },
    );
  });
}
