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
}
