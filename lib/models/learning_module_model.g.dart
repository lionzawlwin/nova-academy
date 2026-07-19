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
  grade: $enumDecode(_$GradeEnumMap, json['grade']),
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
  'grade': _$GradeEnumMap[instance.grade]!,
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

const _$GradeEnumMap = {
  Grade.nursery: 'nursery',
  Grade.kg: 'kg',
  Grade.year1: 'year1',
  Grade.year2: 'year2',
  Grade.year3: 'year3',
  Grade.year4: 'year4',
  Grade.year5: 'year5',
  Grade.year6: 'year6',
  Grade.secondary1: 'secondary1',
  Grade.secondary2: 'secondary2',
  Grade.secondary3: 'secondary3',
  Grade.igcse: 'igcse',
};
