// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_telemetry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsageTelemetryModelImpl _$$UsageTelemetryModelImplFromJson(
  Map<String, dynamic> json,
) => _$UsageTelemetryModelImpl(
  id: json['id'] as String,
  uid: json['uid'] as String,
  dateYyyymmdd: json['dateYyyymmdd'] as String,
  estimatedReads: (json['estimatedReads'] as num?)?.toInt() ?? 0,
  estimatedWrites: (json['estimatedWrites'] as num?)?.toInt() ?? 0,
  tier: $enumDecode(_$SubscriptionTierEnumMap, json['tier']),
  lastUpdatedAtMillis: (json['lastUpdatedAtMillis'] as num).toInt(),
);

Map<String, dynamic> _$$UsageTelemetryModelImplToJson(
  _$UsageTelemetryModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'uid': instance.uid,
  'dateYyyymmdd': instance.dateYyyymmdd,
  'estimatedReads': instance.estimatedReads,
  'estimatedWrites': instance.estimatedWrites,
  'tier': _$SubscriptionTierEnumMap[instance.tier]!,
  'lastUpdatedAtMillis': instance.lastUpdatedAtMillis,
};

const _$SubscriptionTierEnumMap = {
  SubscriptionTier.free: 'free',
  SubscriptionTier.premium: 'premium',
};
