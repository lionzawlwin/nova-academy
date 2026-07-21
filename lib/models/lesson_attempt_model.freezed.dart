// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_attempt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LessonAttemptModel _$LessonAttemptModelFromJson(Map<String, dynamic> json) {
  return _LessonAttemptModel.fromJson(json);
}

/// @nodoc
mixin _$LessonAttemptModel {
  String get id => throw _privateConstructorUsedError;
  String get childId => throw _privateConstructorUsedError;
  String get lessonId => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  int get correctCount => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get completedAtMillis => throw _privateConstructorUsedError;

  /// Serializes this LessonAttemptModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonAttemptModelCopyWith<LessonAttemptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonAttemptModelCopyWith<$Res> {
  factory $LessonAttemptModelCopyWith(
    LessonAttemptModel value,
    $Res Function(LessonAttemptModel) then,
  ) = _$LessonAttemptModelCopyWithImpl<$Res, LessonAttemptModel>;
  @useResult
  $Res call({
    String id,
    String childId,
    String lessonId,
    String kind,
    int correctCount,
    int totalCount,
    int completedAtMillis,
  });
}

/// @nodoc
class _$LessonAttemptModelCopyWithImpl<$Res, $Val extends LessonAttemptModel>
    implements $LessonAttemptModelCopyWith<$Res> {
  _$LessonAttemptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? lessonId = null,
    Object? kind = null,
    Object? correctCount = null,
    Object? totalCount = null,
    Object? completedAtMillis = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            childId: null == childId
                ? _value.childId
                : childId // ignore: cast_nullable_to_non_nullable
                      as String,
            lessonId: null == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as String,
            kind: null == kind
                ? _value.kind
                : kind // ignore: cast_nullable_to_non_nullable
                      as String,
            correctCount: null == correctCount
                ? _value.correctCount
                : correctCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
            completedAtMillis: null == completedAtMillis
                ? _value.completedAtMillis
                : completedAtMillis // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LessonAttemptModelImplCopyWith<$Res>
    implements $LessonAttemptModelCopyWith<$Res> {
  factory _$$LessonAttemptModelImplCopyWith(
    _$LessonAttemptModelImpl value,
    $Res Function(_$LessonAttemptModelImpl) then,
  ) = __$$LessonAttemptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String childId,
    String lessonId,
    String kind,
    int correctCount,
    int totalCount,
    int completedAtMillis,
  });
}

/// @nodoc
class __$$LessonAttemptModelImplCopyWithImpl<$Res>
    extends _$LessonAttemptModelCopyWithImpl<$Res, _$LessonAttemptModelImpl>
    implements _$$LessonAttemptModelImplCopyWith<$Res> {
  __$$LessonAttemptModelImplCopyWithImpl(
    _$LessonAttemptModelImpl _value,
    $Res Function(_$LessonAttemptModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LessonAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childId = null,
    Object? lessonId = null,
    Object? kind = null,
    Object? correctCount = null,
    Object? totalCount = null,
    Object? completedAtMillis = null,
  }) {
    return _then(
      _$LessonAttemptModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        childId: null == childId
            ? _value.childId
            : childId // ignore: cast_nullable_to_non_nullable
                  as String,
        lessonId: null == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as String,
        kind: null == kind
            ? _value.kind
            : kind // ignore: cast_nullable_to_non_nullable
                  as String,
        correctCount: null == correctCount
            ? _value.correctCount
            : correctCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        completedAtMillis: null == completedAtMillis
            ? _value.completedAtMillis
            : completedAtMillis // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonAttemptModelImpl implements _LessonAttemptModel {
  const _$LessonAttemptModelImpl({
    required this.id,
    required this.childId,
    required this.lessonId,
    required this.kind,
    required this.correctCount,
    required this.totalCount,
    required this.completedAtMillis,
  });

  factory _$LessonAttemptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonAttemptModelImplFromJson(json);

  @override
  final String id;
  @override
  final String childId;
  @override
  final String lessonId;
  @override
  final String kind;
  @override
  final int correctCount;
  @override
  final int totalCount;
  @override
  final int completedAtMillis;

  @override
  String toString() {
    return 'LessonAttemptModel(id: $id, childId: $childId, lessonId: $lessonId, kind: $kind, correctCount: $correctCount, totalCount: $totalCount, completedAtMillis: $completedAtMillis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonAttemptModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.completedAtMillis, completedAtMillis) ||
                other.completedAtMillis == completedAtMillis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    childId,
    lessonId,
    kind,
    correctCount,
    totalCount,
    completedAtMillis,
  );

  /// Create a copy of LessonAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonAttemptModelImplCopyWith<_$LessonAttemptModelImpl> get copyWith =>
      __$$LessonAttemptModelImplCopyWithImpl<_$LessonAttemptModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonAttemptModelImplToJson(this);
  }
}

abstract class _LessonAttemptModel implements LessonAttemptModel {
  const factory _LessonAttemptModel({
    required final String id,
    required final String childId,
    required final String lessonId,
    required final String kind,
    required final int correctCount,
    required final int totalCount,
    required final int completedAtMillis,
  }) = _$LessonAttemptModelImpl;

  factory _LessonAttemptModel.fromJson(Map<String, dynamic> json) =
      _$LessonAttemptModelImpl.fromJson;

  @override
  String get id;
  @override
  String get childId;
  @override
  String get lessonId;
  @override
  String get kind;
  @override
  int get correctCount;
  @override
  int get totalCount;
  @override
  int get completedAtMillis;

  /// Create a copy of LessonAttemptModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonAttemptModelImplCopyWith<_$LessonAttemptModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
