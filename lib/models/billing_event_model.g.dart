// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingEventModelImpl _$$BillingEventModelImplFromJson(
  Map<String, dynamic> json,
) => _$BillingEventModelImpl(
  id: json['id'] as String,
  uid: json['uid'] as String,
  type: $enumDecode(_$BillingEventTypeEnumMap, json['type']),
  tier: $enumDecode(_$SubscriptionTierEnumMap, json['tier']),
  source: $enumDecode(_$BillingSourceEnumMap, json['source']),
  amountMinorUnits: (json['amountMinorUnits'] as num?)?.toInt() ?? 0,
  currencyCode: json['currencyCode'] as String? ?? 'USD',
  occurredAtMillis: (json['occurredAtMillis'] as num).toInt(),
);

Map<String, dynamic> _$$BillingEventModelImplToJson(
  _$BillingEventModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'uid': instance.uid,
  'type': _$BillingEventTypeEnumMap[instance.type]!,
  'tier': _$SubscriptionTierEnumMap[instance.tier]!,
  'source': _$BillingSourceEnumMap[instance.source]!,
  'amountMinorUnits': instance.amountMinorUnits,
  'currencyCode': instance.currencyCode,
  'occurredAtMillis': instance.occurredAtMillis,
};

const _$BillingEventTypeEnumMap = {
  BillingEventType.purchase: 'purchase',
  BillingEventType.renewal: 'renewal',
  BillingEventType.cancellation: 'cancellation',
  BillingEventType.refund: 'refund',
  BillingEventType.grant: 'grant',
  BillingEventType.revoke: 'revoke',
};

const _$SubscriptionTierEnumMap = {
  SubscriptionTier.free: 'free',
  SubscriptionTier.premium: 'premium',
};

const _$BillingSourceEnumMap = {
  BillingSource.manual: 'manual',
  BillingSource.iosIap: 'ios_iap',
  BillingSource.androidIap: 'android_iap',
  BillingSource.promo: 'promo',
};
