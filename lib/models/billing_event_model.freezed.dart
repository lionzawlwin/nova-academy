// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BillingEventModel _$BillingEventModelFromJson(Map<String, dynamic> json) {
  return _BillingEventModel.fromJson(json);
}

/// @nodoc
mixin _$BillingEventModel {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  BillingEventType get type => throw _privateConstructorUsedError;
  SubscriptionTier get tier => throw _privateConstructorUsedError;
  BillingSource get source => throw _privateConstructorUsedError;
  int get amountMinorUnits => throw _privateConstructorUsedError;
  String get currencyCode => throw _privateConstructorUsedError;
  int get occurredAtMillis => throw _privateConstructorUsedError;

  /// Serializes this BillingEventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillingEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillingEventModelCopyWith<BillingEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingEventModelCopyWith<$Res> {
  factory $BillingEventModelCopyWith(
    BillingEventModel value,
    $Res Function(BillingEventModel) then,
  ) = _$BillingEventModelCopyWithImpl<$Res, BillingEventModel>;
  @useResult
  $Res call({
    String id,
    String uid,
    BillingEventType type,
    SubscriptionTier tier,
    BillingSource source,
    int amountMinorUnits,
    String currencyCode,
    int occurredAtMillis,
  });
}

/// @nodoc
class _$BillingEventModelCopyWithImpl<$Res, $Val extends BillingEventModel>
    implements $BillingEventModelCopyWith<$Res> {
  _$BillingEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillingEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? type = null,
    Object? tier = null,
    Object? source = null,
    Object? amountMinorUnits = null,
    Object? currencyCode = null,
    Object? occurredAtMillis = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            uid: null == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as BillingEventType,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as SubscriptionTier,
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as BillingSource,
            amountMinorUnits: null == amountMinorUnits
                ? _value.amountMinorUnits
                : amountMinorUnits // ignore: cast_nullable_to_non_nullable
                      as int,
            currencyCode: null == currencyCode
                ? _value.currencyCode
                : currencyCode // ignore: cast_nullable_to_non_nullable
                      as String,
            occurredAtMillis: null == occurredAtMillis
                ? _value.occurredAtMillis
                : occurredAtMillis // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BillingEventModelImplCopyWith<$Res>
    implements $BillingEventModelCopyWith<$Res> {
  factory _$$BillingEventModelImplCopyWith(
    _$BillingEventModelImpl value,
    $Res Function(_$BillingEventModelImpl) then,
  ) = __$$BillingEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String uid,
    BillingEventType type,
    SubscriptionTier tier,
    BillingSource source,
    int amountMinorUnits,
    String currencyCode,
    int occurredAtMillis,
  });
}

/// @nodoc
class __$$BillingEventModelImplCopyWithImpl<$Res>
    extends _$BillingEventModelCopyWithImpl<$Res, _$BillingEventModelImpl>
    implements _$$BillingEventModelImplCopyWith<$Res> {
  __$$BillingEventModelImplCopyWithImpl(
    _$BillingEventModelImpl _value,
    $Res Function(_$BillingEventModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BillingEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? type = null,
    Object? tier = null,
    Object? source = null,
    Object? amountMinorUnits = null,
    Object? currencyCode = null,
    Object? occurredAtMillis = null,
  }) {
    return _then(
      _$BillingEventModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as BillingEventType,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as SubscriptionTier,
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as BillingSource,
        amountMinorUnits: null == amountMinorUnits
            ? _value.amountMinorUnits
            : amountMinorUnits // ignore: cast_nullable_to_non_nullable
                  as int,
        currencyCode: null == currencyCode
            ? _value.currencyCode
            : currencyCode // ignore: cast_nullable_to_non_nullable
                  as String,
        occurredAtMillis: null == occurredAtMillis
            ? _value.occurredAtMillis
            : occurredAtMillis // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BillingEventModelImpl implements _BillingEventModel {
  const _$BillingEventModelImpl({
    required this.id,
    required this.uid,
    required this.type,
    required this.tier,
    required this.source,
    this.amountMinorUnits = 0,
    this.currencyCode = 'USD',
    required this.occurredAtMillis,
  });

  factory _$BillingEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillingEventModelImplFromJson(json);

  @override
  final String id;
  @override
  final String uid;
  @override
  final BillingEventType type;
  @override
  final SubscriptionTier tier;
  @override
  final BillingSource source;
  @override
  @JsonKey()
  final int amountMinorUnits;
  @override
  @JsonKey()
  final String currencyCode;
  @override
  final int occurredAtMillis;

  @override
  String toString() {
    return 'BillingEventModel(id: $id, uid: $uid, type: $type, tier: $tier, source: $source, amountMinorUnits: $amountMinorUnits, currencyCode: $currencyCode, occurredAtMillis: $occurredAtMillis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillingEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.amountMinorUnits, amountMinorUnits) ||
                other.amountMinorUnits == amountMinorUnits) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.occurredAtMillis, occurredAtMillis) ||
                other.occurredAtMillis == occurredAtMillis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    uid,
    type,
    tier,
    source,
    amountMinorUnits,
    currencyCode,
    occurredAtMillis,
  );

  /// Create a copy of BillingEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillingEventModelImplCopyWith<_$BillingEventModelImpl> get copyWith =>
      __$$BillingEventModelImplCopyWithImpl<_$BillingEventModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BillingEventModelImplToJson(this);
  }
}

abstract class _BillingEventModel implements BillingEventModel {
  const factory _BillingEventModel({
    required final String id,
    required final String uid,
    required final BillingEventType type,
    required final SubscriptionTier tier,
    required final BillingSource source,
    final int amountMinorUnits,
    final String currencyCode,
    required final int occurredAtMillis,
  }) = _$BillingEventModelImpl;

  factory _BillingEventModel.fromJson(Map<String, dynamic> json) =
      _$BillingEventModelImpl.fromJson;

  @override
  String get id;
  @override
  String get uid;
  @override
  BillingEventType get type;
  @override
  SubscriptionTier get tier;
  @override
  BillingSource get source;
  @override
  int get amountMinorUnits;
  @override
  String get currencyCode;
  @override
  int get occurredAtMillis;

  /// Create a copy of BillingEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillingEventModelImplCopyWith<_$BillingEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
