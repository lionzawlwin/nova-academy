import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/lessons/course_pathway_bank.dart';
import '../models/lesson_attempt_model.dart';
import 'lesson_attempt_providers.dart';

/// A quiz/reading score below this percent on a recap ("boss") day is
/// treated as "needs review". A plain rules-based threshold, not a
/// machine-learned one -- see [remedialLessonsFor]'s doc comment for why
/// this app scopes "adaptive" honestly rather than overselling a
/// deterministic if-check as AI.
const int masteryThresholdPercent = 70;

/// Whether [lesson]'s latest recorded attempt (if any) falls below
/// [masteryThresholdPercent].
///
/// `dragMatch`/`sorting` kind lessons never trigger this: they have no
/// partial-credit path (every pair/item must be placed correctly to
/// complete at all), so a recorded attempt of either kind is always a
/// perfect score by construction (see `LessonAttemptModel`'s doc
/// comment) -- there is nothing to "fail" for the review logic to catch.
///
/// A lesson with no recorded attempt yet (e.g. completed before the
/// telemetry layer shipped, or a completion whose telemetry write raced
/// or failed independently of the completion itself) is treated as *not*
/// below mastery rather than assumed to be struggling -- missing
/// evidence isn't evidence of a problem.
bool lessonNeedsReview(
  DailyLessonDef lesson,
  Map<String, LessonAttemptModel> latestAttempts,
) {
  final attempt = latestAttempts[lesson.id];
  if (attempt == null) return false;
  if (attempt.kind != 'quiz' && attempt.kind != 'reading') return false;
  return attempt.scorePercent < masteryThresholdPercent;
}

/// The earlier, non-recap daily lessons in [week] recommended for replay
/// once its recap ("boss") day has been completed below mastery.
///
/// This is a deliberately honest, rules-based remedial recommendation,
/// not a machine-learned one: nothing in this app's content model tags
/// individual questions with the specific sub-concept they test, so
/// there is no data-backed way to pinpoint "you missed fractions
/// specifically" -- the defensible scope with the data actually
/// available is "revisit everything this week taught", not a fabricated
/// claim of pinpoint precision this system cannot back up.
///
/// Returns an empty list unless [week] both has a recap day and that
/// day's latest attempt (per [latestAttempts]) scored below
/// [masteryThresholdPercent] -- including when the recap day hasn't been
/// attempted at all yet.
List<DailyLessonDef> remedialLessonsFor(
  CourseWeekDef week,
  Map<String, LessonAttemptModel> latestAttempts,
) {
  DailyLessonDef? recapDay;
  for (final lesson in week.dailyLessons) {
    if (lesson.isRecapDay) {
      recapDay = lesson;
      break;
    }
  }
  if (recapDay == null || !lessonNeedsReview(recapDay, latestAttempts)) {
    return const [];
  }
  return [
    for (final lesson in week.dailyLessons)
      if (!lesson.isRecapDay) lesson,
  ];
}

/// Riverpod wrapper around [remedialLessonsFor] for the active child.
final weekRemedialLessonsProvider =
    Provider.family<List<DailyLessonDef>, CourseWeekDef>((ref, week) {
      final latestAttempts = ref.watch(activeChildLatestAttemptsProvider);
      return remedialLessonsFor(week, latestAttempts);
    });
