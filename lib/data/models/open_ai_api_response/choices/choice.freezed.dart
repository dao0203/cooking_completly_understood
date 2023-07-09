// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Choice _$ChoiceFromJson(Map<String, dynamic> json) {
  return _Choice.fromJson(json);
}

/// @nodoc
mixin _$Choice {
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  Message get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'finish_reason')
  String get finishReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res, Choice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'index') int index,
      @JsonKey(name: 'message') Message message,
      @JsonKey(name: 'finish_reason') String finishReason});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res, $Val extends Choice>
    implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChoiceCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory _$$_ChoiceCopyWith(_$_Choice value, $Res Function(_$_Choice) then) =
      __$$_ChoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'index') int index,
      @JsonKey(name: 'message') Message message,
      @JsonKey(name: 'finish_reason') String finishReason});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$_ChoiceCopyWithImpl<$Res>
    extends _$ChoiceCopyWithImpl<$Res, _$_Choice>
    implements _$$_ChoiceCopyWith<$Res> {
  __$$_ChoiceCopyWithImpl(_$_Choice _value, $Res Function(_$_Choice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finishReason = null,
  }) {
    return _then(_$_Choice(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Choice implements _Choice {
  const _$_Choice(
      {@JsonKey(name: 'index') required this.index,
      @JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'finish_reason') required this.finishReason});

  factory _$_Choice.fromJson(Map<String, dynamic> json) =>
      _$$_ChoiceFromJson(json);

  @override
  @JsonKey(name: 'index')
  final int index;
  @override
  @JsonKey(name: 'message')
  final Message message;
  @override
  @JsonKey(name: 'finish_reason')
  final String finishReason;

  @override
  String toString() {
    return 'Choice(index: $index, message: $message, finishReason: $finishReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Choice &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finishReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoiceCopyWith<_$_Choice> get copyWith =>
      __$$_ChoiceCopyWithImpl<_$_Choice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoiceToJson(
      this,
    );
  }
}

abstract class _Choice implements Choice {
  const factory _Choice(
          {@JsonKey(name: 'index') required final int index,
          @JsonKey(name: 'message') required final Message message,
          @JsonKey(name: 'finish_reason') required final String finishReason}) =
      _$_Choice;

  factory _Choice.fromJson(Map<String, dynamic> json) = _$_Choice.fromJson;

  @override
  @JsonKey(name: 'index')
  int get index;
  @override
  @JsonKey(name: 'message')
  Message get message;
  @override
  @JsonKey(name: 'finish_reason')
  String get finishReason;
  @override
  @JsonKey(ignore: true)
  _$$_ChoiceCopyWith<_$_Choice> get copyWith =>
      throw _privateConstructorUsedError;
}
