// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learning_module_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LearningModuleModelImpl _$$LearningModuleModelImplFromJson(
  Map<String, dynamic> json,
) => _$LearningModuleModelImpl(
  id: json['id'] as String,
  subject: json['subject'] as String,
  grade: const GradeJsonConverter().fromJson(json['grade'] as String),
  contentType: json['contentType'] as String,
  titleEn: json['titleEn'] as String,
  titleMy: json['titleMy'] as String,
  descriptionEn: json['descriptionEn'] as String,
  descriptionMy: json['descriptionMy'] as String,
  starsReward: (json['starsReward'] as num?)?.toInt() ?? 0,
  pathId: json['pathId'] as String? ?? '',
  pathTitleEn: json['pathTitleEn'] as String? ?? '',
  pathTitleMy: json['pathTitleMy'] as String? ?? '',
  pathOrder: (json['pathOrder'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$LearningModuleModelImplToJson(
  _$LearningModuleModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'subject': instance.subject,
  'grade': const GradeJsonConverter().toJson(instance.grade),
  'contentType': instance.contentType,
  'titleEn': instance.titleEn,
  'titleMy': instance.titleMy,
  'descriptionEn': instance.descriptionEn,
  'descriptionMy': instance.descriptionMy,
  'starsReward': instance.starsReward,
  'pathId': instance.pathId,
  'pathTitleEn': instance.pathTitleEn,
  'pathTitleMy': instance.pathTitleMy,
  'pathOrder': instance.pathOrder,
};
