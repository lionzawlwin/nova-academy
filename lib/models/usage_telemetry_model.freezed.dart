// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usage_telemetry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UsageTelemetryModel _$UsageTelemetryModelFromJson(Map<String, dynamic> json) {
  return _UsageTelemetryModel.fromJson(json);
}

/// @nodoc
mixin _$UsageTelemetryModel {
  String get id => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get dateYyyymmdd => throw _privateConstructorUsedError;
  int get estimatedReads => throw _privateConstructorUsedError;
  int get estimatedWrites => throw _privateConstructorUsedError;
  SubscriptionTier get tier => throw _privateConstructorUsedError;
  int get lastUpdatedAtMillis => throw _privateConstructorUsedError;

  /// Serializes this UsageTelemetryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsageTelemetryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageTelemetryModelCopyWith<UsageTelemetryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageTelemetryModelCopyWith<$Res> {
  factory $UsageTelemetryModelCopyWith(
    UsageTelemetryModel value,
    $Res Function(UsageTelemetryModel) then,
  ) = _$UsageTelemetryModelCopyWithImpl<$Res, UsageTelemetryModel>;
  @useResult
  $Res call({
    String id,
    String uid,
    String dateYyyymmdd,
    int estimatedReads,
    int estimatedWrites,
    SubscriptionTier tier,
    int lastUpdatedAtMillis,
  });
}

/// @nodoc
class _$UsageTelemetryModelCopyWithImpl<$Res, $Val extends UsageTelemetryModel>
    implements $UsageTelemetryModelCopyWith<$Res> {
  _$UsageTelemetryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsageTelemetryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? dateYyyymmdd = null,
    Object? estimatedReads = null,
    Object? estimatedWrites = null,
    Object? tier = null,
    Object? lastUpdatedAtMillis = null,
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
            dateYyyymmdd: null == dateYyyymmdd
                ? _value.dateYyyymmdd
                : dateYyyymmdd // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedReads: null == estimatedReads
                ? _value.estimatedReads
                : estimatedReads // ignore: cast_nullable_to_non_nullable
                      as int,
            estimatedWrites: null == estimatedWrites
                ? _value.estimatedWrites
                : estimatedWrites // ignore: cast_nullable_to_non_nullable
                      as int,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as SubscriptionTier,
            lastUpdatedAtMillis: null == lastUpdatedAtMillis
                ? _value.lastUpdatedAtMillis
                : lastUpdatedAtMillis // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UsageTelemetryModelImplCopyWith<$Res>
    implements $UsageTelemetryModelCopyWith<$Res> {
  factory _$$UsageTelemetryModelImplCopyWith(
    _$UsageTelemetryModelImpl value,
    $Res Function(_$UsageTelemetryModelImpl) then,
  ) = __$$UsageTelemetryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String uid,
    String dateYyyymmdd,
    int estimatedReads,
    int estimatedWrites,
    SubscriptionTier tier,
    int lastUpdatedAtMillis,
  });
}

/// @nodoc
class __$$UsageTelemetryModelImplCopyWithImpl<$Res>
    extends _$UsageTelemetryModelCopyWithImpl<$Res, _$UsageTelemetryModelImpl>
    implements _$$UsageTelemetryModelImplCopyWith<$Res> {
  __$$UsageTelemetryModelImplCopyWithImpl(
    _$UsageTelemetryModelImpl _value,
    $Res Function(_$UsageTelemetryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UsageTelemetryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? dateYyyymmdd = null,
    Object? estimatedReads = null,
    Object? estimatedWrites = null,
    Object? tier = null,
    Object? lastUpdatedAtMillis = null,
  }) {
    return _then(
      _$UsageTelemetryModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        uid: null == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as String,
        dateYyyymmdd: null == dateYyyymmdd
            ? _value.dateYyyymmdd
            : dateYyyymmdd // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedReads: null == estimatedReads
            ? _value.estimatedReads
            : estimatedReads // ignore: cast_nullable_to_non_nullable
                  as int,
        estimatedWrites: null == estimatedWrites
            ? _value.estimatedWrites
            : estimatedWrites // ignore: cast_nullable_to_non_nullable
                  as int,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as SubscriptionTier,
        lastUpdatedAtMillis: null == lastUpdatedAtMillis
            ? _value.lastUpdatedAtMillis
            : lastUpdatedAtMillis // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageTelemetryModelImpl implements _UsageTelemetryModel {
  const _$UsageTelemetryModelImpl({
    required this.id,
    required this.uid,
    required this.dateYyyymmdd,
    this.estimatedReads = 0,
    this.estimatedWrites = 0,
    required this.tier,
    required this.lastUpdatedAtMillis,
  });

  factory _$UsageTelemetryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageTelemetryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String uid;
  @override
  final String dateYyyymmdd;
  @override
  @JsonKey()
  final int estimatedReads;
  @override
  @JsonKey()
  final int estimatedWrites;
  @override
  final SubscriptionTier tier;
  @override
  final int lastUpdatedAtMillis;

  @override
  String toString() {
    return 'UsageTelemetryModel(id: $id, uid: $uid, dateYyyymmdd: $dateYyyymmdd, estimatedReads: $estimatedReads, estimatedWrites: $estimatedWrites, tier: $tier, lastUpdatedAtMillis: $lastUpdatedAtMillis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageTelemetryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.dateYyyymmdd, dateYyyymmdd) ||
                other.dateYyyymmdd == dateYyyymmdd) &&
            (identical(other.estimatedReads, estimatedReads) ||
                other.estimatedReads == estimatedReads) &&
            (identical(other.estimatedWrites, estimatedWrites) ||
                other.estimatedWrites == estimatedWrites) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.lastUpdatedAtMillis, lastUpdatedAtMillis) ||
                other.lastUpdatedAtMillis == lastUpdatedAtMillis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    uid,
    dateYyyymmdd,
    estimatedReads,
    estimatedWrites,
    tier,
    lastUpdatedAtMillis,
  );

  /// Create a copy of UsageTelemetryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageTelemetryModelImplCopyWith<_$UsageTelemetryModelImpl> get copyWith =>
      __$$UsageTelemetryModelImplCopyWithImpl<_$UsageTelemetryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageTelemetryModelImplToJson(this);
  }
}

abstract class _UsageTelemetryModel implements UsageTelemetryModel {
  const factory _UsageTelemetryModel({
    required final String id,
    required final String uid,
    required final String dateYyyymmdd,
    final int estimatedReads,
    final int estimatedWrites,
    required final SubscriptionTier tier,
    required final int lastUpdatedAtMillis,
  }) = _$UsageTelemetryModelImpl;

  factory _UsageTelemetryModel.fromJson(Map<String, dynamic> json) =
      _$UsageTelemetryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get uid;
  @override
  String get dateYyyymmdd;
  @override
  int get estimatedReads;
  @override
  int get estimatedWrites;
  @override
  SubscriptionTier get tier;
  @override
  int get lastUpdatedAtMillis;

  /// Create a copy of UsageTelemetryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageTelemetryModelImplCopyWith<_$UsageTelemetryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
