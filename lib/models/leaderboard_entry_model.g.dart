// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardEntryModelImpl _$$LeaderboardEntryModelImplFromJson(
  Map<String, dynamic> json,
) => _$LeaderboardEntryModelImpl(
  id: json['id'] as String,
  lessonId: json['lessonId'] as String,
  childId: json['childId'] as String,
  aliasName: json['aliasName'] as String,
  scorePercent: (json['scorePercent'] as num).toInt(),
  totalMillis: (json['totalMillis'] as num).toInt(),
  updatedAtMillis: (json['updatedAtMillis'] as num).toInt(),
);

Map<String, dynamic> _$$LeaderboardEntryModelImplToJson(
  _$LeaderboardEntryModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'lessonId': instance.lessonId,
  'childId': instance.childId,
  'aliasName': instance.aliasName,
  'scorePercent': instance.scorePercent,
  'totalMillis': instance.totalMillis,
  'updatedAtMillis': instance.updatedAtMillis,
};
