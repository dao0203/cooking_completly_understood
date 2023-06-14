// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeMessage {
  int get id => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError; //timeStamp
  DateTime get timeStamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeMessageCopyWith<RecipeMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeMessageCopyWith<$Res> {
  factory $RecipeMessageCopyWith(
          RecipeMessage value, $Res Function(RecipeMessage) then) =
      _$RecipeMessageCopyWithImpl<$Res, RecipeMessage>;
  @useResult
  $Res call({int id, String role, String content, DateTime timeStamp});
}

/// @nodoc
class _$RecipeMessageCopyWithImpl<$Res, $Val extends RecipeMessage>
    implements $RecipeMessageCopyWith<$Res> {
  _$RecipeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeMessageCopyWith<$Res>
    implements $RecipeMessageCopyWith<$Res> {
  factory _$$_RecipeMessageCopyWith(
          _$_RecipeMessage value, $Res Function(_$_RecipeMessage) then) =
      __$$_RecipeMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String role, String content, DateTime timeStamp});
}

/// @nodoc
class __$$_RecipeMessageCopyWithImpl<$Res>
    extends _$RecipeMessageCopyWithImpl<$Res, _$_RecipeMessage>
    implements _$$_RecipeMessageCopyWith<$Res> {
  __$$_RecipeMessageCopyWithImpl(
      _$_RecipeMessage _value, $Res Function(_$_RecipeMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? role = null,
    Object? content = null,
    Object? timeStamp = null,
  }) {
    return _then(_$_RecipeMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_RecipeMessage implements _RecipeMessage {
  const _$_RecipeMessage(
      {required this.id = -1,
      required this.role = '',
      required this.content = '',
      required this.timeStamp = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String content;
//timeStamp
  @override
  @JsonKey()
  final DateTime timeStamp;

  @override
  String toString() {
    return 'RecipeMessage(id: $id, role: $role, content: $content, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, role, content, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeMessageCopyWith<_$_RecipeMessage> get copyWith =>
      __$$_RecipeMessageCopyWithImpl<_$_RecipeMessage>(this, _$identity);
}

abstract class _RecipeMessage implements RecipeMessage {
  const factory _RecipeMessage(
      {required final int id,
      required final String role,
      required final String content,
      required final DateTime timeStamp}) = _$_RecipeMessage;

  @override
  int get id;
  @override
  String get role;
  @override
  String get content;
  @override //timeStamp
  DateTime get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeMessageCopyWith<_$_RecipeMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
