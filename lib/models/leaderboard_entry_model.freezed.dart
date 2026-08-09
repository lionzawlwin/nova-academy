// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LeaderboardEntryModel _$LeaderboardEntryModelFromJson(
  Map<String, dynamic> json,
) {
  return _LeaderboardEntryModel.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardEntryModel {
  String get id => throw _privateConstructorUsedError;
  String get lessonId => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;

  /// Denormalized copy of `ChildModel.aliasName` at write time -- never
  /// a legal name (see `ChildModel.aliasName`'s own doc comment) -- so
  /// rendering a leaderboard never needs a second read per row against
  /// `Children`. Refreshed on every upsert, so it drifts back into sync
  /// with the child's current alias the next time they set a new best.
  String get aliasName => throw _privateConstructorUsedError;
  int get scorePercent => throw _privateConstructorUsedError;
  int get totalMillis => throw _privateConstructorUsedError;
  int get updatedAtMillis => throw _privateConstructorUsedError;

  /// Serializes this LeaderboardEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderboardEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderboardEntryModelCopyWith<LeaderboardEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEntryModelCopyWith<$Res> {
  factory $LeaderboardEntryModelCopyWith(
    LeaderboardEntryModel value,
    $Res Function(LeaderboardEntryModel) then,
  ) = _$LeaderboardEntryModelCopyWithImpl<$Res, LeaderboardEntryModel>;
  @useResult
  $Res call({
    String id,
    String lessonId,
    String childId,
    String aliasName,
    int scorePercent,
    int totalMillis,
    int updatedAtMillis,
  });
}

/// @nodoc
class _$LeaderboardEntryModelCopyWithImpl<
  $Res,
  $Val extends LeaderboardEntryModel
>
    implements $LeaderboardEntryModelCopyWith<$Res> {
  _$LeaderboardEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? childId = null,
    Object? aliasName = null,
    Object? scorePercent = null,
    Object? totalMillis = null,
    Object? updatedAtMillis = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            lessonId: null == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as String,
            childId: null == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                      as String,
            aliasName: null == aliasName
                ? _value.aliasName
                : aliasName // ignore: cast_nullable_to_non_nullable
                      as String,
            scorePercent: null == scorePercent
                ? _value.scorePercent
                : scorePercent // ignore: cast_nullable_to_non_nullable
                      as int,
            totalMillis: null == totalMillis
                ? _value.totalMillis
                : totalMillis // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAtMillis: null == updatedAtMillis
                ? _value.updatedAtMillis
                : updatedAtMillis // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaderboardEntryModelImplCopyWith<$Res>
    implements $LeaderboardEntryModelCopyWith<$Res> {
  factory _$$LeaderboardEntryModelImplCopyWith(
    _$LeaderboardEntryModelImpl value,
    $Res Function(_$LeaderboardEntryModelImpl) then,
  ) = __$$LeaderboardEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String lessonId,
    String childId,
    String aliasName,
    int scorePercent,
    int totalMillis,
    int updatedAtMillis,
  });
}

/// @nodoc
class __$$LeaderboardEntryModelImplCopyWithImpl<$Res>
    extends
        _$LeaderboardEntryModelCopyWithImpl<$Res, _$LeaderboardEntryModelImpl>
    implements _$$LeaderboardEntryModelImplCopyWith<$Res> {
  __$$LeaderboardEntryModelImplCopyWithImpl(
    _$LeaderboardEntryModelImpl _value,
    $Res Function(_$LeaderboardEntryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaderboardEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? childId = null,
    Object? aliasName = null,
    Object? scorePercent = null,
    Object? totalMillis = null,
    Object? updatedAtMillis = null,
  }) {
    return _then(
      _$LeaderboardEntryModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        lessonId: null == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as String,
        childId: null == childId
            ? _value.childId
            : childId // ignore: cast_nullable_to_non_nullable
                  as String,
        aliasName: null == aliasName
            ? _value.aliasName
            : aliasName // ignore: cast_nullable_to_non_nullable
                  as String,
        scorePercent: null == scorePercent
            ? _value.scorePercent
            : scorePercent // ignore: cast_nullable_to_non_nullable
                  as int,
        totalMillis: null == totalMillis
            ? _value.totalMillis
            : totalMillis // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAtMillis: null == updatedAtMillis
            ? _value.updatedAtMillis
            : updatedAtMillis // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardEntryModelImpl implements _LeaderboardEntryModel {
  const _$LeaderboardEntryModelImpl({
    required this.id,
    required this.lessonId,
    required this.childId,
    required this.aliasName,
    required this.scorePercent,
    required this.totalMillis,
    required this.updatedAtMillis,
  });

  factory _$LeaderboardEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardEntryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String lessonId;
  @override
  final String childId;

  /// Denormalized copy of `ChildModel.aliasName` at write time -- never
  /// a legal name (see `ChildModel.aliasName`'s own doc comment) -- so
  /// rendering a leaderboard never needs a second read per row against
  /// `Children`. Refreshed on every upsert, so it drifts back into sync
  /// with the child's current alias the next time they set a new best.
  @override
  final String aliasName;
  @override
  final int scorePercent;
  @override
  final int totalMillis;
  @override
  final int updatedAtMillis;

  @override
  String toString() {
    return 'LeaderboardEntryModel(id: $id, lessonId: $lessonId, childId: $childId, aliasName: $aliasName, scorePercent: $scorePercent, totalMillis: $totalMillis, updatedAtMillis: $updatedAtMillis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardEntryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.aliasName, aliasName) ||
                other.aliasName == aliasName) &&
            (identical(other.scorePercent, scorePercent) ||
                other.scorePercent == scorePercent) &&
            (identical(other.totalMillis, totalMillis) ||
                other.totalMillis == totalMillis) &&
            (identical(other.updatedAtMillis, updatedAtMillis) ||
                other.updatedAtMillis == updatedAtMillis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    lessonId,
    childId,
    aliasName,
    scorePercent,
    totalMillis,
    updatedAtMillis,
  );

  /// Create a copy of LeaderboardEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardEntryModelImplCopyWith<_$LeaderboardEntryModelImpl>
  get copyWith =>
      __$$LeaderboardEntryModelImplCopyWithImpl<_$LeaderboardEntryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardEntryModelImplToJson(this);
  }
}

abstract class _LeaderboardEntryModel implements LeaderboardEntryModel {
  const factory _LeaderboardEntryModel({
    required final String id,
    required final String lessonId,
    required final String childId,
    required final String aliasName,
    required final int scorePercent,
    required final int totalMillis,
    required final int updatedAtMillis,
  }) = _$LeaderboardEntryModelImpl;

  factory _LeaderboardEntryModel.fromJson(Map<String, dynamic> json) =
      _$LeaderboardEntryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get lessonId;
  @override
  String get childId;

  /// Denormalized copy of `ChildModel.aliasName` at write time -- never
  /// a legal name (see `ChildModel.aliasName`'s own doc comment) -- so
  /// rendering a leaderboard never needs a second read per row against
  /// `Children`. Refreshed on every upsert, so it drifts back into sync
  /// with the child's current alias the next time they set a new best.
  @override
  String get aliasName;
  @override
  int get scorePercent;
  @override
  int get totalMillis;
  @override
  int get updatedAtMillis;

  /// Create a copy of LeaderboardEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderboardEntryModelImplCopyWith<_$LeaderboardEntryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
