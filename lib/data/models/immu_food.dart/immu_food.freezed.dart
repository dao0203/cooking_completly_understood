// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'immu_food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImmuFood {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImmuFoodCopyWith<ImmuFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImmuFoodCopyWith<$Res> {
  factory $ImmuFoodCopyWith(ImmuFood value, $Res Function(ImmuFood) then) =
      _$ImmuFoodCopyWithImpl<$Res, ImmuFood>;
  @useResult
  $Res call({int id, String name, DateTime createdAt});
}

/// @nodoc
class _$ImmuFoodCopyWithImpl<$Res, $Val extends ImmuFood>
    implements $ImmuFoodCopyWith<$Res> {
  _$ImmuFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImmuFoodCopyWith<$Res> implements $ImmuFoodCopyWith<$Res> {
  factory _$$_ImmuFoodCopyWith(
          _$_ImmuFood value, $Res Function(_$_ImmuFood) then) =
      __$$_ImmuFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, DateTime createdAt});
}

/// @nodoc
class __$$_ImmuFoodCopyWithImpl<$Res>
    extends _$ImmuFoodCopyWithImpl<$Res, _$_ImmuFood>
    implements _$$_ImmuFoodCopyWith<$Res> {
  __$$_ImmuFoodCopyWithImpl(
      _$_ImmuFood _value, $Res Function(_$_ImmuFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_$_ImmuFood(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ImmuFood implements _ImmuFood {
  const _$_ImmuFood(
      {required this.id, required this.name, required this.createdAt});

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ImmuFood(id: $id, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImmuFood &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImmuFoodCopyWith<_$_ImmuFood> get copyWith =>
      __$$_ImmuFoodCopyWithImpl<_$_ImmuFood>(this, _$identity);
}

abstract class _ImmuFood implements ImmuFood {
  const factory _ImmuFood(
      {required final int id,
      required final String name,
      required final DateTime createdAt}) = _$_ImmuFood;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ImmuFoodCopyWith<_$_ImmuFood> get copyWith =>
      throw _privateConstructorUsedError;
}
