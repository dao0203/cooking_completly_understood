// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_ingredients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeIngredients _$RecipeIngredientsFromJson(Map<String, dynamic> json) {
  return _RecipeIngredients.fromJson(json);
}

/// @nodoc
mixin _$RecipeIngredients {
  @JsonKey(name: 'ingredient_name', defaultValue: '')
  String get name => throw _privateConstructorUsedError; //材料名
  @JsonKey(name: 'ingredient_quantity', defaultValue: '')
  String get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeIngredientsCopyWith<RecipeIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeIngredientsCopyWith<$Res> {
  factory $RecipeIngredientsCopyWith(
          RecipeIngredients value, $Res Function(RecipeIngredients) then) =
      _$RecipeIngredientsCopyWithImpl<$Res, RecipeIngredients>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ingredient_name', defaultValue: '') String name,
      @JsonKey(name: 'ingredient_quantity', defaultValue: '') String quantity});
}

/// @nodoc
class _$RecipeIngredientsCopyWithImpl<$Res, $Val extends RecipeIngredients>
    implements $RecipeIngredientsCopyWith<$Res> {
  _$RecipeIngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeIngredientsCopyWith<$Res>
    implements $RecipeIngredientsCopyWith<$Res> {
  factory _$$_RecipeIngredientsCopyWith(_$_RecipeIngredients value,
          $Res Function(_$_RecipeIngredients) then) =
      __$$_RecipeIngredientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ingredient_name', defaultValue: '') String name,
      @JsonKey(name: 'ingredient_quantity', defaultValue: '') String quantity});
}

/// @nodoc
class __$$_RecipeIngredientsCopyWithImpl<$Res>
    extends _$RecipeIngredientsCopyWithImpl<$Res, _$_RecipeIngredients>
    implements _$$_RecipeIngredientsCopyWith<$Res> {
  __$$_RecipeIngredientsCopyWithImpl(
      _$_RecipeIngredients _value, $Res Function(_$_RecipeIngredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$_RecipeIngredients(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeIngredients implements _RecipeIngredients {
  const _$_RecipeIngredients(
      {@JsonKey(name: 'ingredient_name', defaultValue: '')
          required this.name,
      @JsonKey(name: 'ingredient_quantity', defaultValue: '')
          required this.quantity});

  factory _$_RecipeIngredients.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeIngredientsFromJson(json);

  @override
  @JsonKey(name: 'ingredient_name', defaultValue: '')
  final String name;
//材料名
  @override
  @JsonKey(name: 'ingredient_quantity', defaultValue: '')
  final String quantity;

  @override
  String toString() {
    return 'RecipeIngredients(name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeIngredients &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeIngredientsCopyWith<_$_RecipeIngredients> get copyWith =>
      __$$_RecipeIngredientsCopyWithImpl<_$_RecipeIngredients>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeIngredientsToJson(
      this,
    );
  }
}

abstract class _RecipeIngredients implements RecipeIngredients {
  const factory _RecipeIngredients(
      {@JsonKey(name: 'ingredient_name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'ingredient_quantity', defaultValue: '')
          required final String quantity}) = _$_RecipeIngredients;

  factory _RecipeIngredients.fromJson(Map<String, dynamic> json) =
      _$_RecipeIngredients.fromJson;

  @override
  @JsonKey(name: 'ingredient_name', defaultValue: '')
  String get name;
  @override //材料名
  @JsonKey(name: 'ingredient_quantity', defaultValue: '')
  String get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeIngredientsCopyWith<_$_RecipeIngredients> get copyWith =>
      throw _privateConstructorUsedError;
}
