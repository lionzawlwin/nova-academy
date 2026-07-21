/// Pure, Firestore-free daily-streak calculation -- see
/// test/streak_service_test.dart for the behavioral spec this implements.
///
/// This is deliberately side-effect-free (no Firestore read, no
/// `DateTime.now()` call baked in -- the caller passes [completedAt]
/// explicitly): the caller (`markModuleCompleted`,
/// lib/providers/children_providers.dart) already has the active child's
/// current streak fields in memory (sourced from `activeProfileProvider`) at
/// the moment a lesson completes, so no extra read is ever needed to compute
/// the update, and the result is folded directly into the one Firestore
/// write that completion already performs.
library;

/// The recomputed streak fields, ready to be written verbatim (not via
/// `FieldValue.increment`) into the `Children` document.
typedef StreakUpdate =
    ({
      int currentStreakDays,
      int longestStreakDays,
      String lastActiveDateYyyymmdd,
    });

/// Formats [dt] as `yyyyMMdd`, zero-padded -- the same convention
/// `flushUsageTelemetry` (lib/providers/cost_telemetry_providers.dart) uses
/// for its daily telemetry document ids, reused here so streak "days" and
/// telemetry "days" always agree on where the day boundary falls.
String _yyyymmdd(DateTime dt) {
  return '${dt.year.toString().padLeft(4, '0')}'
      '${dt.month.toString().padLeft(2, '0')}'
      '${dt.day.toString().padLeft(2, '0')}';
}

/// Computes the new streak state after a lesson completion at [completedAt],
/// given the child's current streak fields.
///
/// - Same-day repeat completion (today's `yyyyMMdd` == [lastActiveDateYyyymmdd]):
///   returned unchanged -- a second (or third...) completion on the same day
///   must not inflate the streak.
/// - Exactly one day after the last active day: the streak extends by 1.
/// - Any bigger gap, or the very first completion ever (empty
///   [lastActiveDateYyyymmdd]): the streak resets to 1.
/// - [longestStreakDays] only ever grows -- it's `max(newStreak, longestStreakDays)`.
StreakUpdate updateStreakForCompletion({
  required int currentStreakDays,
  required int longestStreakDays,
  required String lastActiveDateYyyymmdd,
  required DateTime completedAt,
}) {
  final today = _yyyymmdd(completedAt);

  if (today == lastActiveDateYyyymmdd) {
    return (
      currentStreakDays: currentStreakDays,
      longestStreakDays: longestStreakDays,
      lastActiveDateYyyymmdd: lastActiveDateYyyymmdd,
    );
  }

  final yesterday = _yyyymmdd(completedAt.subtract(const Duration(days: 1)));
  final newStreak = lastActiveDateYyyymmdd == yesterday
      ? currentStreakDays + 1
      : 1;

  return (
    currentStreakDays: newStreak,
    longestStreakDays: newStreak > longestStreakDays
        ? newStreak
        : longestStreakDays,
    lastActiveDateYyyymmdd: today,
  );
}
