import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_model.freezed.dart';
part 'child_model.g.dart';

/// The full grade span Nova Academy supports, Nursery through IGCSE.
enum Grade {
  @JsonValue('nursery')
  nursery,
  @JsonValue('kg')
  kg,
  @JsonValue('year1')
  year1,
  @JsonValue('year2')
  year2,
  @JsonValue('year3')
  year3,
  @JsonValue('year4')
  year4,
  @JsonValue('year5')
  year5,
  @JsonValue('year6')
  year6,
  @JsonValue('secondary1')
  secondary1,
  @JsonValue('secondary2')
  secondary2,
  @JsonValue('secondary3')
  secondary3,
  @JsonValue('igcse')
  igcse,
}

/// Mirrors a document in the top-level `Children` Firestore collection.
///
/// Firestore document id == [id]. [parentId] points back to the owning
/// `Users` document (the parent's uid).
@freezed
class ChildModel with _$ChildModel {
  const factory ChildModel({
    required String id,
    required String parentId,
    required String aliasName,
    @Default('') String avatarUrl,
    @Default(Grade.nursery) Grade currentGrade,
    @Default(0) int totalStars,
    @Default(<String>[]) List<String> completedModuleIds,
    // The three fields below are updated by `updateStreakForCompletion`
    // (`lib/core/services/streak_service.dart`) inside the same Firestore
    // write `markModuleCompleted` already performs when a lesson finishes --
    // there is no dedicated streak collection, and no extra read or write is
    // introduced to maintain them.
    @Default(0) int currentStreakDays,
    @Default(0) int longestStreakDays,
    @Default('') String lastActiveDateYyyymmdd,
  }) = _ChildModel;

  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);
}
