// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_steps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeSteps _$RecipeStepsFromJson(Map<String, dynamic> json) {
  return _RecipeSteps.fromJson(json);
}

/// @nodoc
mixin _$RecipeSteps {
  @JsonKey(name: 'step_number', defaultValue: '')
  String get number => throw _privateConstructorUsedError; //手順番号
  @JsonKey(name: 'step_description', defaultValue: '')
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeStepsCopyWith<RecipeSteps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStepsCopyWith<$Res> {
  factory $RecipeStepsCopyWith(
          RecipeSteps value, $Res Function(RecipeSteps) then) =
      _$RecipeStepsCopyWithImpl<$Res, RecipeSteps>;
  @useResult
  $Res call(
      {@JsonKey(name: 'step_number', defaultValue: '') String number,
      @JsonKey(name: 'step_description', defaultValue: '') String description});
}

/// @nodoc
class _$RecipeStepsCopyWithImpl<$Res, $Val extends RecipeSteps>
    implements $RecipeStepsCopyWith<$Res> {
  _$RecipeStepsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStepsCopyWith<$Res>
    implements $RecipeStepsCopyWith<$Res> {
  factory _$$_RecipeStepsCopyWith(
          _$_RecipeSteps value, $Res Function(_$_RecipeSteps) then) =
      __$$_RecipeStepsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'step_number', defaultValue: '') String number,
      @JsonKey(name: 'step_description', defaultValue: '') String description});
}

/// @nodoc
class __$$_RecipeStepsCopyWithImpl<$Res>
    extends _$RecipeStepsCopyWithImpl<$Res, _$_RecipeSteps>
    implements _$$_RecipeStepsCopyWith<$Res> {
  __$$_RecipeStepsCopyWithImpl(
      _$_RecipeSteps _value, $Res Function(_$_RecipeSteps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? description = null,
  }) {
    return _then(_$_RecipeSteps(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeSteps implements _RecipeSteps {
  const _$_RecipeSteps(
      {@JsonKey(name: 'step_number', defaultValue: '')
          required this.number,
      @JsonKey(name: 'step_description', defaultValue: '')
          required this.description});

  factory _$_RecipeSteps.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeStepsFromJson(json);

  @override
  @JsonKey(name: 'step_number', defaultValue: '')
  final String number;
//手順番号
  @override
  @JsonKey(name: 'step_description', defaultValue: '')
  final String description;

  @override
  String toString() {
    return 'RecipeSteps(number: $number, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeSteps &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStepsCopyWith<_$_RecipeSteps> get copyWith =>
      __$$_RecipeStepsCopyWithImpl<_$_RecipeSteps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeStepsToJson(
      this,
    );
  }
}

abstract class _RecipeSteps implements RecipeSteps {
  const factory _RecipeSteps(
      {@JsonKey(name: 'step_number', defaultValue: '')
          required final String number,
      @JsonKey(name: 'step_description', defaultValue: '')
          required final String description}) = _$_RecipeSteps;

  factory _RecipeSteps.fromJson(Map<String, dynamic> json) =
      _$_RecipeSteps.fromJson;

  @override
  @JsonKey(name: 'step_number', defaultValue: '')
  String get number;
  @override //手順番号
  @JsonKey(name: 'step_description', defaultValue: '')
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStepsCopyWith<_$_RecipeSteps> get copyWith =>
      throw _privateConstructorUsedError;
}
