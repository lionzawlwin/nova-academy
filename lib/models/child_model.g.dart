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
      currentGrade:
          $enumDecodeNullable(_$GradeEnumMap, json['currentGrade']) ??
          Grade.nursery,
      totalStars: (json['totalStars'] as num?)?.toInt() ?? 0,
      completedModuleIds:
          (json['completedModuleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$ChildModelImplToJson(_$ChildModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'aliasName': instance.aliasName,
      'avatarUrl': instance.avatarUrl,
      'currentGrade': _$GradeEnumMap[instance.currentGrade]!,
      'totalStars': instance.totalStars,
      'completedModuleIds': instance.completedModuleIds,
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
