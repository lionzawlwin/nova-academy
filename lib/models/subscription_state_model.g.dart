// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionStateModelImpl _$$SubscriptionStateModelImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionStateModelImpl(
  status:
      $enumDecodeNullable(_$SubscriptionStatusEnumMap, json['status']) ??
      SubscriptionStatus.none,
  source:
      $enumDecodeNullable(_$BillingSourceEnumMap, json['source']) ??
      BillingSource.manual,
  startedAtMillis: (json['startedAtMillis'] as num?)?.toInt(),
  expiresAtMillis: (json['expiresAtMillis'] as num?)?.toInt(),
  autoRenew: json['autoRenew'] as bool? ?? false,
  lastVerifiedAtMillis: (json['lastVerifiedAtMillis'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SubscriptionStateModelImplToJson(
  _$SubscriptionStateModelImpl instance,
) => <String, dynamic>{
  'status': _$SubscriptionStatusEnumMap[instance.status]!,
  'source': _$BillingSourceEnumMap[instance.source]!,
  'startedAtMillis': instance.startedAtMillis,
  'expiresAtMillis': instance.expiresAtMillis,
  'autoRenew': instance.autoRenew,
  'lastVerifiedAtMillis': instance.lastVerifiedAtMillis,
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.none: 'none',
  SubscriptionStatus.trialing: 'trialing',
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.pastDue: 'past_due',
  SubscriptionStatus.expired: 'expired',
  SubscriptionStatus.cancelled: 'cancelled',
};

const _$BillingSourceEnumMap = {
  BillingSource.manual: 'manual',
  BillingSource.iosIap: 'ios_iap',
  BillingSource.androidIap: 'android_iap',
  BillingSource.promo: 'promo',
};
