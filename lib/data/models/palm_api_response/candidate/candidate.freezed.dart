// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'candidate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return _Candidate.fromJson(json);
}

/// @nodoc
mixin _$Candidate {
  @JsonKey(name: 'output')
  Output get output => throw _privateConstructorUsedError;
  @JsonKey(name: 'safetyRatings')
  List<SafetyRating> get safetyRatings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CandidateCopyWith<Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) then) =
      _$CandidateCopyWithImpl<$Res, Candidate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'output') Output output,
      @JsonKey(name: 'safetyRatings') List<SafetyRating> safetyRatings});

  $OutputCopyWith<$Res> get output;
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res, $Val extends Candidate>
    implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
    Object? safetyRatings = null,
  }) {
    return _then(_value.copyWith(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as Output,
      safetyRatings: null == safetyRatings
          ? _value.safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRating>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutputCopyWith<$Res> get output {
    return $OutputCopyWith<$Res>(_value.output, (value) {
      return _then(_value.copyWith(output: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CandidateCopyWith<$Res> implements $CandidateCopyWith<$Res> {
  factory _$$_CandidateCopyWith(
          _$_Candidate value, $Res Function(_$_Candidate) then) =
      __$$_CandidateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'output') Output output,
      @JsonKey(name: 'safetyRatings') List<SafetyRating> safetyRatings});

  @override
  $OutputCopyWith<$Res> get output;
}

/// @nodoc
class __$$_CandidateCopyWithImpl<$Res>
    extends _$CandidateCopyWithImpl<$Res, _$_Candidate>
    implements _$$_CandidateCopyWith<$Res> {
  __$$_CandidateCopyWithImpl(
      _$_Candidate _value, $Res Function(_$_Candidate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
    Object? safetyRatings = null,
  }) {
    return _then(_$_Candidate(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as Output,
      safetyRatings: null == safetyRatings
          ? _value._safetyRatings
          : safetyRatings // ignore: cast_nullable_to_non_nullable
              as List<SafetyRating>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Candidate implements _Candidate {
  const _$_Candidate(
      {@JsonKey(name: 'output')
          required this.output,
      @JsonKey(name: 'safetyRatings')
          required final List<SafetyRating> safetyRatings})
      : _safetyRatings = safetyRatings;

  factory _$_Candidate.fromJson(Map<String, dynamic> json) =>
      _$$_CandidateFromJson(json);

  @override
  @JsonKey(name: 'output')
  final Output output;
  final List<SafetyRating> _safetyRatings;
  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRating> get safetyRatings {
    if (_safetyRatings is EqualUnmodifiableListView) return _safetyRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_safetyRatings);
  }

  @override
  String toString() {
    return 'Candidate(output: $output, safetyRatings: $safetyRatings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Candidate &&
            (identical(other.output, output) || other.output == output) &&
            const DeepCollectionEquality()
                .equals(other._safetyRatings, _safetyRatings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, output, const DeepCollectionEquality().hash(_safetyRatings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CandidateCopyWith<_$_Candidate> get copyWith =>
      __$$_CandidateCopyWithImpl<_$_Candidate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CandidateToJson(
      this,
    );
  }
}

abstract class _Candidate implements Candidate {
  const factory _Candidate(
      {@JsonKey(name: 'output')
          required final Output output,
      @JsonKey(name: 'safetyRatings')
          required final List<SafetyRating> safetyRatings}) = _$_Candidate;

  factory _Candidate.fromJson(Map<String, dynamic> json) =
      _$_Candidate.fromJson;

  @override
  @JsonKey(name: 'output')
  Output get output;
  @override
  @JsonKey(name: 'safetyRatings')
  List<SafetyRating> get safetyRatings;
  @override
  @JsonKey(ignore: true)
  _$$_CandidateCopyWith<_$_Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}
