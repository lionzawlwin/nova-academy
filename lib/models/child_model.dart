import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_model.freezed.dart';
part 'child_model.g.dart';

/// The full grade span Nova Academy supports, Nursery through Year 13 --
/// Cambridge Primary (Year 1-6), Lower Secondary (Year 7-9), IGCSE
/// (Year 10-11), and A Level (Year 12-13), matching the standard
/// international Cambridge sequence. Year 12/13 are placeholders: no
/// curriculum content is authored for them yet.
///
/// Renamed from the pre-Cambridge-standard `secondary1`/`secondary2`/
/// `secondary3`/`igcse` values -- see [GradeJsonConverter] for why every
/// document written under those old values keeps working forever without
/// a live-data migration.
enum Grade {
  nursery,
  kg,
  year1,
  year2,
  year3,
  year4,
  year5,
  year6,
  year7,
  year8,
  year9,
  year10,
  year11,
  year12,
  year13,
}

/// Serializes [Grade] to/from Firestore. Writes always use the new
/// `year7`..`year13` naming; reads additionally accept the pre-rename
/// values (`secondary1`/`secondary2`/`secondary3`/`igcse`) so every
/// `Children`/`LearningModules` document written before this rename keeps
/// deserializing correctly forever -- no live-data migration is required
/// for correctness. `ChildModel`'s own save path (see
/// `children_providers.dart`) additionally rewrites any such document to
/// the new value the next time it's naturally saved, so real profiles
/// migrate to the new format gradually through normal use; this converter
/// is the permanent fallback for any document that path never reaches.
class GradeJsonConverter implements JsonConverter<Grade, String> {
  const GradeJsonConverter();

  @override
  Grade fromJson(String value) => switch (value) {
    'nursery' => Grade.nursery,
    'kg' => Grade.kg,
    'year1' => Grade.year1,
    'year2' => Grade.year2,
    'year3' => Grade.year3,
    'year4' => Grade.year4,
    'year5' => Grade.year5,
    'year6' => Grade.year6,
    'year7' => Grade.year7,
    'year8' => Grade.year8,
    'year9' => Grade.year9,
    'year10' => Grade.year10,
    'year11' => Grade.year11,
    'year12' => Grade.year12,
    'year13' => Grade.year13,
    // Pre-rename values -- kept forever, never removed.
    'secondary1' => Grade.year7,
    'secondary2' => Grade.year8,
    'secondary3' => Grade.year9,
    // A legacy 'igcse' document predates the Year 10/11 split and carries
    // no signal about which half of the two-year programme that student
    // was in. Defaults to the start of the programme -- their actual
    // week/term position inside the IGCSE pathway (tracked separately per
    // pathway id via completedModuleIds) is unaffected either way, so this
    // default only affects which label/home-tier they see, never their
    // real lesson progress.
    'igcse' => Grade.year10,
    _ => Grade.nursery,
  };

  @override
  String toJson(Grade grade) => switch (grade) {
    Grade.nursery => 'nursery',
    Grade.kg => 'kg',
    Grade.year1 => 'year1',
    Grade.year2 => 'year2',
    Grade.year3 => 'year3',
    Grade.year4 => 'year4',
    Grade.year5 => 'year5',
    Grade.year6 => 'year6',
    Grade.year7 => 'year7',
    Grade.year8 => 'year8',
    Grade.year9 => 'year9',
    Grade.year10 => 'year10',
    Grade.year11 => 'year11',
    Grade.year12 => 'year12',
    Grade.year13 => 'year13',
  };
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
    @GradeJsonConverter() @Default(Grade.nursery) Grade currentGrade,
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
