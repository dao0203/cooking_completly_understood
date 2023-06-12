// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  @JsonKey(name: "calorie", defaultValue: '')
  String get calorie => throw _privateConstructorUsedError; //カロリー
  @JsonKey(name: 'protein', defaultValue: '')
  String get protein => throw _privateConstructorUsedError; //タンパク質
  @JsonKey(name: 'fat', defaultValue: '')
  String get fat => throw _privateConstructorUsedError; //脂質
  @JsonKey(name: 'carbohydrate', defaultValue: '')
  String get carbohydrate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call(
      {@JsonKey(name: "calorie", defaultValue: '') String calorie,
      @JsonKey(name: 'protein', defaultValue: '') String protein,
      @JsonKey(name: 'fat', defaultValue: '') String fat,
      @JsonKey(name: 'carbohydrate', defaultValue: '') String carbohydrate});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calorie = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrate = null,
  }) {
    return _then(_value.copyWith(
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrate: null == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutritionCopyWith<$Res> implements $NutritionCopyWith<$Res> {
  factory _$$_NutritionCopyWith(
          _$_Nutrition value, $Res Function(_$_Nutrition) then) =
      __$$_NutritionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "calorie", defaultValue: '') String calorie,
      @JsonKey(name: 'protein', defaultValue: '') String protein,
      @JsonKey(name: 'fat', defaultValue: '') String fat,
      @JsonKey(name: 'carbohydrate', defaultValue: '') String carbohydrate});
}

/// @nodoc
class __$$_NutritionCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$_Nutrition>
    implements _$$_NutritionCopyWith<$Res> {
  __$$_NutritionCopyWithImpl(
      _$_Nutrition _value, $Res Function(_$_Nutrition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calorie = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrate = null,
  }) {
    return _then(_$_Nutrition(
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as String,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as String,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as String,
      carbohydrate: null == carbohydrate
          ? _value.carbohydrate
          : carbohydrate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrition implements _Nutrition {
  const _$_Nutrition(
      {@JsonKey(name: "calorie", defaultValue: '')
          required this.calorie,
      @JsonKey(name: 'protein', defaultValue: '')
          required this.protein,
      @JsonKey(name: 'fat', defaultValue: '')
          required this.fat,
      @JsonKey(name: 'carbohydrate', defaultValue: '')
          required this.carbohydrate});

  factory _$_Nutrition.fromJson(Map<String, dynamic> json) =>
      _$$_NutritionFromJson(json);

  @override
  @JsonKey(name: "calorie", defaultValue: '')
  final String calorie;
//カロリー
  @override
  @JsonKey(name: 'protein', defaultValue: '')
  final String protein;
//タンパク質
  @override
  @JsonKey(name: 'fat', defaultValue: '')
  final String fat;
//脂質
  @override
  @JsonKey(name: 'carbohydrate', defaultValue: '')
  final String carbohydrate;

  @override
  String toString() {
    return 'Nutrition(calorie: $calorie, protein: $protein, fat: $fat, carbohydrate: $carbohydrate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrition &&
            (identical(other.calorie, calorie) || other.calorie == calorie) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbohydrate, carbohydrate) ||
                other.carbohydrate == carbohydrate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, calorie, protein, fat, carbohydrate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      __$$_NutritionCopyWithImpl<_$_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutritionToJson(
      this,
    );
  }
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition(
      {@JsonKey(name: "calorie", defaultValue: '')
          required final String calorie,
      @JsonKey(name: 'protein', defaultValue: '')
          required final String protein,
      @JsonKey(name: 'fat', defaultValue: '')
          required final String fat,
      @JsonKey(name: 'carbohydrate', defaultValue: '')
          required final String carbohydrate}) = _$_Nutrition;

  factory _Nutrition.fromJson(Map<String, dynamic> json) =
      _$_Nutrition.fromJson;

  @override
  @JsonKey(name: "calorie", defaultValue: '')
  String get calorie;
  @override //カロリー
  @JsonKey(name: 'protein', defaultValue: '')
  String get protein;
  @override //タンパク質
  @JsonKey(name: 'fat', defaultValue: '')
  String get fat;
  @override //脂質
  @JsonKey(name: 'carbohydrate', defaultValue: '')
  String get carbohydrate;
  @override
  @JsonKey(ignore: true)
  _$$_NutritionCopyWith<_$_Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}
