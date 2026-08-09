import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_entry_model.freezed.dart';
part 'leaderboard_entry_model.g.dart';

/// Mirrors a document in the top-level `LeaderboardEntries` Firestore
/// collection -- Task 6's async, Spark-plan-friendly alternative to a
/// real-time multiplayer leaderboard.
///
/// One document per `(lessonId, childId)` pair, id `"{lessonId}_{childId}"`,
/// holding that child's single best-ever attempt at that lesson --
/// **upserted** in place (`set()`, not a new doc) every time a better
/// attempt is recorded, never appended to. A child who replays a lesson
/// 50 times still owns exactly one entry, so leaderboard storage and read
/// volume both stay flat regardless of replay count -- see
/// `docs/firestore_schema.md`'s `LeaderboardEntries` section.
@freezed
class LeaderboardEntryModel with _$LeaderboardEntryModel {
  const factory LeaderboardEntryModel({
    required String id,
    required String lessonId,
    required String childId,

    /// Denormalized copy of `ChildModel.aliasName` at write time -- never
    /// a legal name (see `ChildModel.aliasName`'s own doc comment) -- so
    /// rendering a leaderboard never needs a second read per row against
    /// `Children`. Refreshed on every upsert, so it drifts back into sync
    /// with the child's current alias the next time they set a new best.
    required String aliasName,
    required int scorePercent,
    required int totalMillis,
    required int updatedAtMillis,
  }) = _LeaderboardEntryModel;

  factory LeaderboardEntryModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardEntryModelFromJson(json);
}
