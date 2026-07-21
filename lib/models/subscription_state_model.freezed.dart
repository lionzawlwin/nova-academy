// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubscriptionStateModel _$SubscriptionStateModelFromJson(
  Map<String, dynamic> json,
) {
  return _SubscriptionStateModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionStateModel {
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  BillingSource get source => throw _privateConstructorUsedError;
  int? get startedAtMillis => throw _privateConstructorUsedError;
  int? get expiresAtMillis => throw _privateConstructorUsedError;
  bool get autoRenew => throw _privateConstructorUsedError;
  int? get lastVerifiedAtMillis => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionStateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionStateModelCopyWith<SubscriptionStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateModelCopyWith<$Res> {
  factory $SubscriptionStateModelCopyWith(
    SubscriptionStateModel value,
    $Res Function(SubscriptionStateModel) then,
  ) = _$SubscriptionStateModelCopyWithImpl<$Res, SubscriptionStateModel>;
  @useResult
  $Res call({
    SubscriptionStatus status,
    BillingSource source,
    int? startedAtMillis,
    int? expiresAtMillis,
    bool autoRenew,
    int? lastVerifiedAtMillis,
  });
}

/// @nodoc
class _$SubscriptionStateModelCopyWithImpl<
  $Res,
  $Val extends SubscriptionStateModel
>
    implements $SubscriptionStateModelCopyWith<$Res> {
  _$SubscriptionStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? source = null,
    Object? startedAtMillis = freezed,
    Object? expiresAtMillis = freezed,
    Object? autoRenew = null,
    Object? lastVerifiedAtMillis = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SubscriptionStatus,
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as BillingSource,
            startedAtMillis: freezed == startedAtMillis
                ? _value.startedAtMillis
                : startedAtMillis // ignore: cast_nullable_to_non_nullable
                      as int?,
            expiresAtMillis: freezed == expiresAtMillis
                ? _value.expiresAtMillis
                : expiresAtMillis // ignore: cast_nullable_to_non_nullable
                      as int?,
            autoRenew: null == autoRenew
                ? _value.autoRenew
                : autoRenew // ignore: cast_nullable_to_non_nullable
                      as bool,
            lastVerifiedAtMillis: freezed == lastVerifiedAtMillis
                ? _value.lastVerifiedAtMillis
                : lastVerifiedAtMillis // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionStateModelImplCopyWith<$Res>
    implements $SubscriptionStateModelCopyWith<$Res> {
  factory _$$SubscriptionStateModelImplCopyWith(
    _$SubscriptionStateModelImpl value,
    $Res Function(_$SubscriptionStateModelImpl) then,
  ) = __$$SubscriptionStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SubscriptionStatus status,
    BillingSource source,
    int? startedAtMillis,
    int? expiresAtMillis,
    bool autoRenew,
    int? lastVerifiedAtMillis,
  });
}

/// @nodoc
class __$$SubscriptionStateModelImplCopyWithImpl<$Res>
    extends
        _$SubscriptionStateModelCopyWithImpl<$Res, _$SubscriptionStateModelImpl>
    implements _$$SubscriptionStateModelImplCopyWith<$Res> {
  __$$SubscriptionStateModelImplCopyWithImpl(
    _$SubscriptionStateModelImpl _value,
    $Res Function(_$SubscriptionStateModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? source = null,
    Object? startedAtMillis = freezed,
    Object? expiresAtMillis = freezed,
    Object? autoRenew = null,
    Object? lastVerifiedAtMillis = freezed,
  }) {
    return _then(
      _$SubscriptionStateModelImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SubscriptionStatus,
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as BillingSource,
        startedAtMillis: freezed == startedAtMillis
            ? _value.startedAtMillis
            : startedAtMillis // ignore: cast_nullable_to_non_nullable
                  as int?,
        expiresAtMillis: freezed == expiresAtMillis
            ? _value.expiresAtMillis
            : expiresAtMillis // ignore: cast_nullable_to_non_nullable
                  as int?,
        autoRenew: null == autoRenew
            ? _value.autoRenew
            : autoRenew // ignore: cast_nullable_to_non_nullable
                  as bool,
        lastVerifiedAtMillis: freezed == lastVerifiedAtMillis
            ? _value.lastVerifiedAtMillis
            : lastVerifiedAtMillis // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionStateModelImpl implements _SubscriptionStateModel {
  const _$SubscriptionStateModelImpl({
    this.status = SubscriptionStatus.none,
    this.source = BillingSource.manual,
    this.startedAtMillis,
    this.expiresAtMillis,
    this.autoRenew = false,
    this.lastVerifiedAtMillis,
  });

  factory _$SubscriptionStateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionStateModelImplFromJson(json);

  @override
  @JsonKey()
  final SubscriptionStatus status;
  @override
  @JsonKey()
  final BillingSource source;
  @override
  final int? startedAtMillis;
  @override
  final int? expiresAtMillis;
  @override
  @JsonKey()
  final bool autoRenew;
  @override
  final int? lastVerifiedAtMillis;

  @override
  String toString() {
    return 'SubscriptionStateModel(status: $status, source: $source, startedAtMillis: $startedAtMillis, expiresAtMillis: $expiresAtMillis, autoRenew: $autoRenew, lastVerifiedAtMillis: $lastVerifiedAtMillis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.startedAtMillis, startedAtMillis) ||
                other.startedAtMillis == startedAtMillis) &&
            (identical(other.expiresAtMillis, expiresAtMillis) ||
                other.expiresAtMillis == expiresAtMillis) &&
            (identical(other.autoRenew, autoRenew) ||
                other.autoRenew == autoRenew) &&
            (identical(other.lastVerifiedAtMillis, lastVerifiedAtMillis) ||
                other.lastVerifiedAtMillis == lastVerifiedAtMillis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    source,
    startedAtMillis,
    expiresAtMillis,
    autoRenew,
    lastVerifiedAtMillis,
  );

  /// Create a copy of SubscriptionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateModelImplCopyWith<_$SubscriptionStateModelImpl>
  get copyWith =>
      __$$SubscriptionStateModelImplCopyWithImpl<_$SubscriptionStateModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionStateModelImplToJson(this);
  }
}

abstract class _SubscriptionStateModel implements SubscriptionStateModel {
  const factory _SubscriptionStateModel({
    final SubscriptionStatus status,
    final BillingSource source,
    final int? startedAtMillis,
    final int? expiresAtMillis,
    final bool autoRenew,
    final int? lastVerifiedAtMillis,
  }) = _$SubscriptionStateModelImpl;

  factory _SubscriptionStateModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionStateModelImpl.fromJson;

  @override
  SubscriptionStatus get status;
  @override
  BillingSource get source;
  @override
  int? get startedAtMillis;
  @override
  int? get expiresAtMillis;
  @override
  bool get autoRenew;
  @override
  int? get lastVerifiedAtMillis;

  /// Create a copy of SubscriptionStateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionStateModelImplCopyWith<_$SubscriptionStateModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
