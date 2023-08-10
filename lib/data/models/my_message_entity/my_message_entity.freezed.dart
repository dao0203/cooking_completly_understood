// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyMessageEntity {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyMessageEntityCopyWith<MyMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyMessageEntityCopyWith<$Res> {
  factory $MyMessageEntityCopyWith(
          MyMessageEntity value, $Res Function(MyMessageEntity) then) =
      _$MyMessageEntityCopyWithImpl<$Res, MyMessageEntity>;
  @useResult
  $Res call({int id, String content, DateTime createdAt});
}

/// @nodoc
class _$MyMessageEntityCopyWithImpl<$Res, $Val extends MyMessageEntity>
    implements $MyMessageEntityCopyWith<$Res> {
  _$MyMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyMessageEntityCopyWith<$Res>
    implements $MyMessageEntityCopyWith<$Res> {
  factory _$$_MyMessageEntityCopyWith(
          _$_MyMessageEntity value, $Res Function(_$_MyMessageEntity) then) =
      __$$_MyMessageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String content, DateTime createdAt});
}

/// @nodoc
class __$$_MyMessageEntityCopyWithImpl<$Res>
    extends _$MyMessageEntityCopyWithImpl<$Res, _$_MyMessageEntity>
    implements _$$_MyMessageEntityCopyWith<$Res> {
  __$$_MyMessageEntityCopyWithImpl(
      _$_MyMessageEntity _value, $Res Function(_$_MyMessageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? createdAt = null,
  }) {
    return _then(_$_MyMessageEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_MyMessageEntity implements _MyMessageEntity {
  const _$_MyMessageEntity(
      {required this.id, required this.content, required this.createdAt});

  @override
  final int id;
  @override
  final String content;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MyMessageEntity(id: $id, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyMessageEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyMessageEntityCopyWith<_$_MyMessageEntity> get copyWith =>
      __$$_MyMessageEntityCopyWithImpl<_$_MyMessageEntity>(this, _$identity);
}

abstract class _MyMessageEntity implements MyMessageEntity {
  const factory _MyMessageEntity(
      {required final int id,
      required final String content,
      required final DateTime createdAt}) = _$_MyMessageEntity;

  @override
  int get id;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MyMessageEntityCopyWith<_$_MyMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
