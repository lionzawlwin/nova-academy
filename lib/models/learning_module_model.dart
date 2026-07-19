import 'package:freezed_annotation/freezed_annotation.dart';

import 'child_model.dart' show Grade;

part 'learning_module_model.freezed.dart';
part 'learning_module_model.g.dart';

/// Mirrors a document in the top-level `LearningModules` Firestore
/// collection.
///
/// Firestore document id == [id]. Bilingual fields ([titleEn]/[titleMy],
/// [descriptionEn]/[descriptionMy]) satisfy the app's strict English +
/// Burmese requirement without needing a runtime translation call.
///
/// [pathId]/[pathTitleEn]/[pathTitleMy]/[pathOrder] group modules into an
/// ordered "Learning Path" (e.g. a `pathId` of `year4-math-fractions` with
/// `pathTitleEn` "Year 4 Math: Fractions") so a large curriculum catalog can
/// be browsed as named, ordered sequences instead of a flat list. All four
/// default to empty/zero so pre-existing documents that predate this
/// grouping feature still deserialize without a migration; a module with an
/// empty [pathId] is simply ungrouped.
@freezed
class LearningModuleModel with _$LearningModuleModel {
  const factory LearningModuleModel({
    required String id,
    required String subject,
    required Grade grade,
    required String contentType,
    required String titleEn,
    required String titleMy,
    required String descriptionEn,
    required String descriptionMy,
    @Default(0) int starsReward,
    @Default('') String pathId,
    @Default('') String pathTitleEn,
    @Default('') String pathTitleMy,
    @Default(0) int pathOrder,
  }) = _LearningModuleModel;

  factory LearningModuleModel.fromJson(Map<String, dynamic> json) =>
      _$LearningModuleModelFromJson(json);
}
