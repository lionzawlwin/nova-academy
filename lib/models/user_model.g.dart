// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserModelImpl(
  id: json['id'] as String,
  email: json['email'] as String,
  role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']) ?? UserRole.parent,
  subscriptionTier:
      $enumDecodeNullable(
        _$SubscriptionTierEnumMap,
        json['subscriptionTier'],
      ) ??
      SubscriptionTier.free,
  linkedStudents:
      (json['linkedStudents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  subscriptionState: json['subscriptionState'] == null
      ? null
      : SubscriptionStateModel.fromJson(
          json['subscriptionState'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': _$UserRoleEnumMap[instance.role]!,
      'subscriptionTier': _$SubscriptionTierEnumMap[instance.subscriptionTier]!,
      'linkedStudents': instance.linkedStudents,
      'subscriptionState': instance.subscriptionState,
    };

const _$UserRoleEnumMap = {
  UserRole.owner: 'owner',
  UserRole.parent: 'parent',
  UserRole.teacher: 'teacher',
  UserRole.student: 'student',
};

const _$SubscriptionTierEnumMap = {
  SubscriptionTier.free: 'free',
  SubscriptionTier.premium: 'premium',
};
