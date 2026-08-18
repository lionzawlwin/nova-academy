// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildModelImpl _$$ChildModelImplFromJson(Map<String, dynamic> json) =>
    _$ChildModelImpl(
      id: json['id'] as String,
      parentId: json['parentId'] as String,
      aliasName: json['aliasName'] as String,
      avatarUrl: json['avatarUrl'] as String? ?? '',
      currentGrade: json['currentGrade'] == null
          ? Grade.nursery
          : const GradeJsonConverter().fromJson(json['currentGrade'] as String),
      totalStars: (json['totalStars'] as num?)?.toInt() ?? 0,
      completedModuleIds:
          (json['completedModuleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      currentStreakDays: (json['currentStreakDays'] as num?)?.toInt() ?? 0,
      longestStreakDays: (json['longestStreakDays'] as num?)?.toInt() ?? 0,
      lastActiveDateYyyymmdd: json['lastActiveDateYyyymmdd'] as String? ?? '',
    );

Map<String, dynamic> _$$ChildModelImplToJson(_$ChildModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'aliasName': instance.aliasName,
      'avatarUrl': instance.avatarUrl,
      'currentGrade': const GradeJsonConverter().toJson(instance.currentGrade),
      'totalStars': instance.totalStars,
      'completedModuleIds': instance.completedModuleIds,
      'currentStreakDays': instance.currentStreakDays,
      'longestStreakDays': instance.longestStreakDays,
      'lastActiveDateYyyymmdd': instance.lastActiveDateYyyymmdd,
    };
