// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChildModel _$ChildModelFromJson(Map<String, dynamic> json) {
  return _ChildModel.fromJson(json);
}

/// @nodoc
mixin _$ChildModel {
  String get id => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  String get aliasName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  Grade get currentGrade => throw _privateConstructorUsedError;
  int get totalStars => throw _privateConstructorUsedError;

  /// Serializes this ChildModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildModelCopyWith<ChildModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildModelCopyWith<$Res> {
  factory $ChildModelCopyWith(
    ChildModel value,
    $Res Function(ChildModel) then,
  ) = _$ChildModelCopyWithImpl<$Res, ChildModel>;
  @useResult
  $Res call({
    String id,
    String parentId,
    String aliasName,
    String avatarUrl,
    Grade currentGrade,
    int totalStars,
  });
}

/// @nodoc
class _$ChildModelCopyWithImpl<$Res, $Val extends ChildModel>
    implements $ChildModelCopyWith<$Res> {
  _$ChildModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? aliasName = null,
    Object? avatarUrl = null,
    Object? currentGrade = null,
    Object? totalStars = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String,
            aliasName: null == aliasName
                ? _value.aliasName
                : aliasName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            currentGrade: null == currentGrade
                ? _value.currentGrade
                : currentGrade // ignore: cast_nullable_to_non_nullable
                      as Grade,
            totalStars: null == totalStars
                ? _value.totalStars
                : totalStars // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChildModelImplCopyWith<$Res>
    implements $ChildModelCopyWith<$Res> {
  factory _$$ChildModelImplCopyWith(
    _$ChildModelImpl value,
    $Res Function(_$ChildModelImpl) then,
  ) = __$$ChildModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String parentId,
    String aliasName,
    String avatarUrl,
    Grade currentGrade,
    int totalStars,
  });
}

/// @nodoc
class __$$ChildModelImplCopyWithImpl<$Res>
    extends _$ChildModelCopyWithImpl<$Res, _$ChildModelImpl>
    implements _$$ChildModelImplCopyWith<$Res> {
  __$$ChildModelImplCopyWithImpl(
    _$ChildModelImpl _value,
    $Res Function(_$ChildModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? aliasName = null,
    Object? avatarUrl = null,
    Object? currentGrade = null,
    Object? totalStars = null,
  }) {
    return _then(
      _$ChildModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String,
        aliasName: null == aliasName
            ? _value.aliasName
            : aliasName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        currentGrade: null == currentGrade
            ? _value.currentGrade
            : currentGrade // ignore: cast_nullable_to_non_nullable
                  as Grade,
        totalStars: null == totalStars
            ? _value.totalStars
            : totalStars // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildModelImpl implements _ChildModel {
  const _$ChildModelImpl({
    required this.id,
    required this.parentId,
    required this.aliasName,
    this.avatarUrl = '',
    this.currentGrade = Grade.nursery,
    this.totalStars = 0,
  });

  factory _$ChildModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildModelImplFromJson(json);

  @override
  final String id;
  @override
  final String parentId;
  @override
  final String aliasName;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  @JsonKey()
  final Grade currentGrade;
  @override
  @JsonKey()
  final int totalStars;

  @override
  String toString() {
    return 'ChildModel(id: $id, parentId: $parentId, aliasName: $aliasName, avatarUrl: $avatarUrl, currentGrade: $currentGrade, totalStars: $totalStars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.aliasName, aliasName) ||
                other.aliasName == aliasName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.currentGrade, currentGrade) ||
                other.currentGrade == currentGrade) &&
            (identical(other.totalStars, totalStars) ||
                other.totalStars == totalStars));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parentId,
    aliasName,
    avatarUrl,
    currentGrade,
    totalStars,
  );

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildModelImplCopyWith<_$ChildModelImpl> get copyWith =>
      __$$ChildModelImplCopyWithImpl<_$ChildModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildModelImplToJson(this);
  }
}

abstract class _ChildModel implements ChildModel {
  const factory _ChildModel({
    required final String id,
    required final String parentId,
    required final String aliasName,
    final String avatarUrl,
    final Grade currentGrade,
    final int totalStars,
  }) = _$ChildModelImpl;

  factory _ChildModel.fromJson(Map<String, dynamic> json) =
      _$ChildModelImpl.fromJson;

  @override
  String get id;
  @override
  String get parentId;
  @override
  String get aliasName;
  @override
  String get avatarUrl;
  @override
  Grade get currentGrade;
  @override
  int get totalStars;

  /// Create a copy of ChildModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildModelImplCopyWith<_$ChildModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
