// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_attempt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonAttemptModelImpl _$$LessonAttemptModelImplFromJson(
  Map<String, dynamic> json,
) => _$LessonAttemptModelImpl(
  id: json['id'] as String,
  childId: json['childId'] as String,
  lessonId: json['lessonId'] as String,
  kind: json['kind'] as String,
  correctCount: (json['correctCount'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  completedAtMillis: (json['completedAtMillis'] as num).toInt(),
);

Map<String, dynamic> _$$LessonAttemptModelImplToJson(
  _$LessonAttemptModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'childId': instance.childId,
  'lessonId': instance.lessonId,
  'kind': instance.kind,
  'correctCount': instance.correctCount,
  'totalCount': instance.totalCount,
  'completedAtMillis': instance.completedAtMillis,
};
