// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SafetyRating _$SafetyRatingFromJson(Map<String, dynamic> json) {
  return _SafetyRating.fromJson(json);
}

/// @nodoc
mixin _$SafetyRating {
  @JsonKey(name: 'category')
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'probability')
  String get probability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SafetyRatingCopyWith<SafetyRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafetyRatingCopyWith<$Res> {
  factory $SafetyRatingCopyWith(
          SafetyRating value, $Res Function(SafetyRating) then) =
      _$SafetyRatingCopyWithImpl<$Res, SafetyRating>;
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'probability') String probability});
}

/// @nodoc
class _$SafetyRatingCopyWithImpl<$Res, $Val extends SafetyRating>
    implements $SafetyRatingCopyWith<$Res> {
  _$SafetyRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? probability = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SafetyRatingCopyWith<$Res>
    implements $SafetyRatingCopyWith<$Res> {
  factory _$$_SafetyRatingCopyWith(
          _$_SafetyRating value, $Res Function(_$_SafetyRating) then) =
      __$$_SafetyRatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'category') String category,
      @JsonKey(name: 'probability') String probability});
}

/// @nodoc
class __$$_SafetyRatingCopyWithImpl<$Res>
    extends _$SafetyRatingCopyWithImpl<$Res, _$_SafetyRating>
    implements _$$_SafetyRatingCopyWith<$Res> {
  __$$_SafetyRatingCopyWithImpl(
      _$_SafetyRating _value, $Res Function(_$_SafetyRating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? probability = null,
  }) {
    return _then(_$_SafetyRating(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      probability: null == probability
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SafetyRating implements _SafetyRating {
  const _$_SafetyRating(
      {@JsonKey(name: 'category') required this.category,
      @JsonKey(name: 'probability') required this.probability});

  factory _$_SafetyRating.fromJson(Map<String, dynamic> json) =>
      _$$_SafetyRatingFromJson(json);

  @override
  @JsonKey(name: 'category')
  final String category;
  @override
  @JsonKey(name: 'probability')
  final String probability;

  @override
  String toString() {
    return 'SafetyRating(category: $category, probability: $probability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SafetyRating &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.probability, probability) ||
                other.probability == probability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, probability);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SafetyRatingCopyWith<_$_SafetyRating> get copyWith =>
      __$$_SafetyRatingCopyWithImpl<_$_SafetyRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SafetyRatingToJson(
      this,
    );
  }
}

abstract class _SafetyRating implements SafetyRating {
  const factory _SafetyRating(
          {@JsonKey(name: 'category') required final String category,
          @JsonKey(name: 'probability') required final String probability}) =
      _$_SafetyRating;

  factory _SafetyRating.fromJson(Map<String, dynamic> json) =
      _$_SafetyRating.fromJson;

  @override
  @JsonKey(name: 'category')
  String get category;
  @override
  @JsonKey(name: 'probability')
  String get probability;
  @override
  @JsonKey(ignore: true)
  _$$_SafetyRatingCopyWith<_$_SafetyRating> get copyWith =>
      throw _privateConstructorUsedError;
}
