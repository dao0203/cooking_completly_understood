// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodEntity {
  int get id => throw _privateConstructorUsedError;
  String get foodName => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodEntityCopyWith<FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEntityCopyWith<$Res> {
  factory $FoodEntityCopyWith(
          FoodEntity value, $Res Function(FoodEntity) then) =
      _$FoodEntityCopyWithImpl<$Res, FoodEntity>;
  @useResult
  $Res call(
      {int id,
      String foodName,
      int count,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$FoodEntityCopyWithImpl<$Res, $Val extends FoodEntity>
    implements $FoodEntityCopyWith<$Res> {
  _$FoodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodName = null,
    Object? count = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodEntityCopyWith<$Res>
    implements $FoodEntityCopyWith<$Res> {
  factory _$$_FoodEntityCopyWith(
          _$_FoodEntity value, $Res Function(_$_FoodEntity) then) =
      __$$_FoodEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String foodName,
      int count,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_FoodEntityCopyWithImpl<$Res>
    extends _$FoodEntityCopyWithImpl<$Res, _$_FoodEntity>
    implements _$$_FoodEntityCopyWith<$Res> {
  __$$_FoodEntityCopyWithImpl(
      _$_FoodEntity _value, $Res Function(_$_FoodEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? foodName = null,
    Object? count = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_FoodEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_FoodEntity implements _FoodEntity {
  const _$_FoodEntity(
      {required this.id,
      required this.foodName,
      required this.count,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int id;
  @override
  final String foodName;
  @override
  final int count;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FoodEntity(id: $id, foodName: $foodName, count: $count, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, foodName, count, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      __$$_FoodEntityCopyWithImpl<_$_FoodEntity>(this, _$identity);
}

abstract class _FoodEntity implements FoodEntity {
  const factory _FoodEntity(
      {required final int id,
      required final String foodName,
      required final int count,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_FoodEntity;

  @override
  int get id;
  @override
  String get foodName;
  @override
  int get count;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_FoodEntityCopyWith<_$_FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
