// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeResponse _$RecipeResponseFromJson(Map<String, dynamic> json) {
  return _RecipeResponse.fromJson(json);
}

/// @nodoc
mixin _$RecipeResponse {
  @JsonKey(name: jsonRecipeName, defaultValue: '')
  String get recipeName => throw _privateConstructorUsedError; //レシピ名
  @JsonKey(name: jsonRecipeDescription, defaultValue: '')
  String get recipeDescription => throw _privateConstructorUsedError; //レシピの説明
  @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
  String get recipeCookingTime => throw _privateConstructorUsedError; //調理時間
  @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
  List<RecipeIngredients> get recipeIngredients =>
      throw _privateConstructorUsedError; //材料
  @JsonKey(name: jsonRecipeSteps, defaultValue: [])
  List<RecipeSteps> get recipeSteps => throw _privateConstructorUsedError; //手順
  @JsonKey(name: jsonRecipeNutrition)
  Nutrition get nutrition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeResponseCopyWith<RecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeResponseCopyWith<$Res> {
  factory $RecipeResponseCopyWith(
          RecipeResponse value, $Res Function(RecipeResponse) then) =
      _$RecipeResponseCopyWithImpl<$Res, RecipeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: jsonRecipeName, defaultValue: '')
          String recipeName,
      @JsonKey(name: jsonRecipeDescription, defaultValue: '')
          String recipeDescription,
      @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
          String recipeCookingTime,
      @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
          List<RecipeIngredients> recipeIngredients,
      @JsonKey(name: jsonRecipeSteps, defaultValue: [])
          List<RecipeSteps> recipeSteps,
      @JsonKey(name: jsonRecipeNutrition)
          Nutrition nutrition});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$RecipeResponseCopyWithImpl<$Res, $Val extends RecipeResponse>
    implements $RecipeResponseCopyWith<$Res> {
  _$RecipeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeName = null,
    Object? recipeDescription = null,
    Object? recipeCookingTime = null,
    Object? recipeIngredients = null,
    Object? recipeSteps = null,
    Object? nutrition = null,
  }) {
    return _then(_value.copyWith(
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeDescription: null == recipeDescription
          ? _value.recipeDescription
          : recipeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCookingTime: null == recipeCookingTime
          ? _value.recipeCookingTime
          : recipeCookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      recipeIngredients: null == recipeIngredients
          ? _value.recipeIngredients
          : recipeIngredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredients>,
      recipeSteps: null == recipeSteps
          ? _value.recipeSteps
          : recipeSteps // ignore: cast_nullable_to_non_nullable
              as List<RecipeSteps>,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeResponseCopyWith<$Res>
    implements $RecipeResponseCopyWith<$Res> {
  factory _$$_RecipeResponseCopyWith(
          _$_RecipeResponse value, $Res Function(_$_RecipeResponse) then) =
      __$$_RecipeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: jsonRecipeName, defaultValue: '')
          String recipeName,
      @JsonKey(name: jsonRecipeDescription, defaultValue: '')
          String recipeDescription,
      @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
          String recipeCookingTime,
      @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
          List<RecipeIngredients> recipeIngredients,
      @JsonKey(name: jsonRecipeSteps, defaultValue: [])
          List<RecipeSteps> recipeSteps,
      @JsonKey(name: jsonRecipeNutrition)
          Nutrition nutrition});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_RecipeResponseCopyWithImpl<$Res>
    extends _$RecipeResponseCopyWithImpl<$Res, _$_RecipeResponse>
    implements _$$_RecipeResponseCopyWith<$Res> {
  __$$_RecipeResponseCopyWithImpl(
      _$_RecipeResponse _value, $Res Function(_$_RecipeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeName = null,
    Object? recipeDescription = null,
    Object? recipeCookingTime = null,
    Object? recipeIngredients = null,
    Object? recipeSteps = null,
    Object? nutrition = null,
  }) {
    return _then(_$_RecipeResponse(
      recipeName: null == recipeName
          ? _value.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeDescription: null == recipeDescription
          ? _value.recipeDescription
          : recipeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      recipeCookingTime: null == recipeCookingTime
          ? _value.recipeCookingTime
          : recipeCookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      recipeIngredients: null == recipeIngredients
          ? _value._recipeIngredients
          : recipeIngredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredients>,
      recipeSteps: null == recipeSteps
          ? _value._recipeSteps
          : recipeSteps // ignore: cast_nullable_to_non_nullable
              as List<RecipeSteps>,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as Nutrition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeResponse extends _RecipeResponse {
  const _$_RecipeResponse(
      {@JsonKey(name: jsonRecipeName, defaultValue: '')
          required this.recipeName,
      @JsonKey(name: jsonRecipeDescription, defaultValue: '')
          required this.recipeDescription,
      @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
          required this.recipeCookingTime,
      @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
          required final List<RecipeIngredients> recipeIngredients,
      @JsonKey(name: jsonRecipeSteps, defaultValue: [])
          required final List<RecipeSteps> recipeSteps,
      @JsonKey(name: jsonRecipeNutrition)
          required this.nutrition})
      : _recipeIngredients = recipeIngredients,
        _recipeSteps = recipeSteps,
        super._();

  factory _$_RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeResponseFromJson(json);

  @override
  @JsonKey(name: jsonRecipeName, defaultValue: '')
  final String recipeName;
//レシピ名
  @override
  @JsonKey(name: jsonRecipeDescription, defaultValue: '')
  final String recipeDescription;
//レシピの説明
  @override
  @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
  final String recipeCookingTime;
//調理時間
  final List<RecipeIngredients> _recipeIngredients;
//調理時間
  @override
  @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
  List<RecipeIngredients> get recipeIngredients {
    if (_recipeIngredients is EqualUnmodifiableListView)
      return _recipeIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeIngredients);
  }

//材料
  final List<RecipeSteps> _recipeSteps;
//材料
  @override
  @JsonKey(name: jsonRecipeSteps, defaultValue: [])
  List<RecipeSteps> get recipeSteps {
    if (_recipeSteps is EqualUnmodifiableListView) return _recipeSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipeSteps);
  }

//手順
  @override
  @JsonKey(name: jsonRecipeNutrition)
  final Nutrition nutrition;

  @override
  String toString() {
    return 'RecipeResponse(recipeName: $recipeName, recipeDescription: $recipeDescription, recipeCookingTime: $recipeCookingTime, recipeIngredients: $recipeIngredients, recipeSteps: $recipeSteps, nutrition: $nutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeResponse &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.recipeDescription, recipeDescription) ||
                other.recipeDescription == recipeDescription) &&
            (identical(other.recipeCookingTime, recipeCookingTime) ||
                other.recipeCookingTime == recipeCookingTime) &&
            const DeepCollectionEquality()
                .equals(other._recipeIngredients, _recipeIngredients) &&
            const DeepCollectionEquality()
                .equals(other._recipeSteps, _recipeSteps) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeName,
      recipeDescription,
      recipeCookingTime,
      const DeepCollectionEquality().hash(_recipeIngredients),
      const DeepCollectionEquality().hash(_recipeSteps),
      nutrition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeResponseCopyWith<_$_RecipeResponse> get copyWith =>
      __$$_RecipeResponseCopyWithImpl<_$_RecipeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeResponseToJson(
      this,
    );
  }
}

abstract class _RecipeResponse extends RecipeResponse {
  const factory _RecipeResponse(
      {@JsonKey(name: jsonRecipeName, defaultValue: '')
          required final String recipeName,
      @JsonKey(name: jsonRecipeDescription, defaultValue: '')
          required final String recipeDescription,
      @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
          required final String recipeCookingTime,
      @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
          required final List<RecipeIngredients> recipeIngredients,
      @JsonKey(name: jsonRecipeSteps, defaultValue: [])
          required final List<RecipeSteps> recipeSteps,
      @JsonKey(name: jsonRecipeNutrition)
          required final Nutrition nutrition}) = _$_RecipeResponse;
  const _RecipeResponse._() : super._();

  factory _RecipeResponse.fromJson(Map<String, dynamic> json) =
      _$_RecipeResponse.fromJson;

  @override
  @JsonKey(name: jsonRecipeName, defaultValue: '')
  String get recipeName;
  @override //レシピ名
  @JsonKey(name: jsonRecipeDescription, defaultValue: '')
  String get recipeDescription;
  @override //レシピの説明
  @JsonKey(name: jsonRecipeCookingTime, defaultValue: '')
  String get recipeCookingTime;
  @override //調理時間
  @JsonKey(name: jsonRecipeIngredients, defaultValue: [])
  List<RecipeIngredients> get recipeIngredients;
  @override //材料
  @JsonKey(name: jsonRecipeSteps, defaultValue: [])
  List<RecipeSteps> get recipeSteps;
  @override //手順
  @JsonKey(name: jsonRecipeNutrition)
  Nutrition get nutrition;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeResponseCopyWith<_$_RecipeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
