import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_attempt_model.freezed.dart';
part 'lesson_attempt_model.g.dart';

/// Mirrors a document in the top-level `LessonAttempts` Firestore
/// collection -- the platform's telemetry foundation.
///
/// One document per **completed lesson** (a full quiz/drag-match/sorting/
/// reading attempt), never one per question answered -- see
/// `docs/firestore_schema.md`'s `LessonAttempts` section for why: per-
/// question telemetry would multiply write volume by the average question
/// count per lesson (4-6x) against the Spark plan's 20K writes/day quota,
/// for marginal analytical value over a per-lesson score. [lessonId] is
/// already globally unique and traceable back to its owning
/// [CoursePathwayDef]/[CourseWeekDef] via `courseDailyLessonById` +
/// `pathwayContainingWeek` (see `lib/providers/course_progress_providers.dart`),
/// so this document deliberately does *not* denormalize a pathway/week id
/// of its own -- one less field to keep in sync, derived instead of stored.
@freezed
class LessonAttemptModel with _$LessonAttemptModel {
  const factory LessonAttemptModel({
    required String id,
    required String childId,
    required String lessonId,
    required String kind,
    required int correctCount,
    required int totalCount,
    required int completedAtMillis,
    /// Milliseconds spent on each question, in order, for `kind: 'quiz'`
    /// attempts only (Ghost Mode racing needs a per-question pace, not
    /// just a total) -- `@Default(<int>[])` rather than required so every
    /// pre-existing `LessonAttempts` document (written before this field
    /// existed) still deserializes cleanly via `fromJson`, and every
    /// non-quiz `kind` can keep omitting it without a special case.
    @Default(<int>[]) List<int> perQuestionMillis,
  }) = _LessonAttemptModel;

  factory LessonAttemptModel.fromJson(Map<String, dynamic> json) =>
      _$LessonAttemptModelFromJson(json);
}

/// Derived scoring helpers -- kept off the Freezed class itself (Freezed
/// getters can't be added inside the `@freezed` class body) so
/// [LessonAttemptModel] stays a plain data carrier.
extension LessonAttemptScoring on LessonAttemptModel {
  /// 0-100. [totalCount] is 0 only for a malformed record (shouldn't occur
  /// in practice, since every lesson kind has at least one question/item);
  /// treated as a perfect score rather than dividing by zero.
  int get scorePercent =>
      totalCount == 0 ? 100 : ((correctCount / totalCount) * 100).round();

  /// Sum of [perQuestionMillis]. `0` for any attempt that predates the
  /// field or wasn't a timed `kind` -- callers ranking by speed (Ghost
  /// Mode, a leaderboard) MUST filter on [hasTiming] first, never sort
  /// raw [totalMillis] values directly: an untimed `0` is "no data", not
  /// "instant", and would otherwise look artificially fastest.
  int get totalMillis => perQuestionMillis.fold(0, (sum, ms) => sum + ms);

  /// Whether this attempt actually recorded per-question timing --
  /// `false` for anything written before [perQuestionMillis] existed or
  /// for a non-quiz `kind`. See [totalMillis]'s doc comment for why this
  /// must gate every speed comparison.
  bool get hasTiming => perQuestionMillis.isNotEmpty;
}
