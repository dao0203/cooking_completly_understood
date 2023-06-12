// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  @JsonKey(name: 'recipe_name', defaultValue: '')
  String get name => throw _privateConstructorUsedError; //レシピ名
  @JsonKey(name: 'recipe_description', defaultValue: '')
  String get description => throw _privateConstructorUsedError; //レシピの説明
  @JsonKey(name: 'recipe_ingredients', defaultValue: [])
  List<RecipeIngredients> get ingredients =>
      throw _privateConstructorUsedError; //材料
  @JsonKey(name: 'recipe_steps', defaultValue: [])
  List<RecipeSteps> get steps => throw _privateConstructorUsedError; //手順
  @JsonKey(name: 'recipe_nutrition')
  Nutrition get nutrition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe_name', defaultValue: '')
          String name,
      @JsonKey(name: 'recipe_description', defaultValue: '')
          String description,
      @JsonKey(name: 'recipe_ingredients', defaultValue: [])
          List<RecipeIngredients> ingredients,
      @JsonKey(name: 'recipe_steps', defaultValue: [])
          List<RecipeSteps> steps,
      @JsonKey(name: 'recipe_nutrition')
          Nutrition nutrition});

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? nutrition = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredients>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$_RecipeCopyWith(_$_Recipe value, $Res Function(_$_Recipe) then) =
      __$$_RecipeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recipe_name', defaultValue: '')
          String name,
      @JsonKey(name: 'recipe_description', defaultValue: '')
          String description,
      @JsonKey(name: 'recipe_ingredients', defaultValue: [])
          List<RecipeIngredients> ingredients,
      @JsonKey(name: 'recipe_steps', defaultValue: [])
          List<RecipeSteps> steps,
      @JsonKey(name: 'recipe_nutrition')
          Nutrition nutrition});

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_RecipeCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$_Recipe>
    implements _$$_RecipeCopyWith<$Res> {
  __$$_RecipeCopyWithImpl(_$_Recipe _value, $Res Function(_$_Recipe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? ingredients = null,
    Object? steps = null,
    Object? nutrition = null,
  }) {
    return _then(_$_Recipe(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredients>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
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
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {@JsonKey(name: 'recipe_name', defaultValue: '')
          required this.name,
      @JsonKey(name: 'recipe_description', defaultValue: '')
          required this.description,
      @JsonKey(name: 'recipe_ingredients', defaultValue: [])
          required final List<RecipeIngredients> ingredients,
      @JsonKey(name: 'recipe_steps', defaultValue: [])
          required final List<RecipeSteps> steps,
      @JsonKey(name: 'recipe_nutrition')
          required this.nutrition})
      : _ingredients = ingredients,
        _steps = steps;

  factory _$_Recipe.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeFromJson(json);

  @override
  @JsonKey(name: 'recipe_name', defaultValue: '')
  final String name;
//レシピ名
  @override
  @JsonKey(name: 'recipe_description', defaultValue: '')
  final String description;
//レシピの説明
  final List<RecipeIngredients> _ingredients;
//レシピの説明
  @override
  @JsonKey(name: 'recipe_ingredients', defaultValue: [])
  List<RecipeIngredients> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

//材料
  final List<RecipeSteps> _steps;
//材料
  @override
  @JsonKey(name: 'recipe_steps', defaultValue: [])
  List<RecipeSteps> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

//手順
  @override
  @JsonKey(name: 'recipe_nutrition')
  final Nutrition nutrition;

  @override
  String toString() {
    return 'Recipe(name: $name, description: $description, ingredients: $ingredients, steps: $steps, nutrition: $nutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recipe &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_steps),
      nutrition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      __$$_RecipeCopyWithImpl<_$_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {@JsonKey(name: 'recipe_name', defaultValue: '')
          required final String name,
      @JsonKey(name: 'recipe_description', defaultValue: '')
          required final String description,
      @JsonKey(name: 'recipe_ingredients', defaultValue: [])
          required final List<RecipeIngredients> ingredients,
      @JsonKey(name: 'recipe_steps', defaultValue: [])
          required final List<RecipeSteps> steps,
      @JsonKey(name: 'recipe_nutrition')
          required final Nutrition nutrition}) = _$_Recipe;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$_Recipe.fromJson;

  @override
  @JsonKey(name: 'recipe_name', defaultValue: '')
  String get name;
  @override //レシピ名
  @JsonKey(name: 'recipe_description', defaultValue: '')
  String get description;
  @override //レシピの説明
  @JsonKey(name: 'recipe_ingredients', defaultValue: [])
  List<RecipeIngredients> get ingredients;
  @override //材料
  @JsonKey(name: 'recipe_steps', defaultValue: [])
  List<RecipeSteps> get steps;
  @override //手順
  @JsonKey(name: 'recipe_nutrition')
  Nutrition get nutrition;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeCopyWith<_$_Recipe> get copyWith =>
      throw _privateConstructorUsedError;
}
