// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Output _$OutputFromJson(Map<String, dynamic> json) {
  return _Output.fromJson(json);
}

/// @nodoc
mixin _$Output {
  @JsonKey(name: 'output')
  String get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputCopyWith<Output> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputCopyWith<$Res> {
  factory $OutputCopyWith(Output value, $Res Function(Output) then) =
      _$OutputCopyWithImpl<$Res, Output>;
  @useResult
  $Res call({@JsonKey(name: 'output') String output});
}

/// @nodoc
class _$OutputCopyWithImpl<$Res, $Val extends Output>
    implements $OutputCopyWith<$Res> {
  _$OutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OutputCopyWith<$Res> implements $OutputCopyWith<$Res> {
  factory _$$_OutputCopyWith(_$_Output value, $Res Function(_$_Output) then) =
      __$$_OutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'output') String output});
}

/// @nodoc
class __$$_OutputCopyWithImpl<$Res>
    extends _$OutputCopyWithImpl<$Res, _$_Output>
    implements _$$_OutputCopyWith<$Res> {
  __$$_OutputCopyWithImpl(_$_Output _value, $Res Function(_$_Output) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
  }) {
    return _then(_$_Output(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Output implements _Output {
  const _$_Output({@JsonKey(name: 'output') required this.output});

  factory _$_Output.fromJson(Map<String, dynamic> json) =>
      _$$_OutputFromJson(json);

  @override
  @JsonKey(name: 'output')
  final String output;

  @override
  String toString() {
    return 'Output(output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Output &&
            (identical(other.output, output) || other.output == output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, output);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OutputCopyWith<_$_Output> get copyWith =>
      __$$_OutputCopyWithImpl<_$_Output>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutputToJson(
      this,
    );
  }
}

abstract class _Output implements Output {
  const factory _Output(
      {@JsonKey(name: 'output') required final String output}) = _$_Output;

  factory _Output.fromJson(Map<String, dynamic> json) = _$_Output.fromJson;

  @override
  @JsonKey(name: 'output')
  String get output;
  @override
  @JsonKey(ignore: true)
  _$$_OutputCopyWith<_$_Output> get copyWith =>
      throw _privateConstructorUsedError;
}
