// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'palm_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaLMApiResponse _$PaLMApiResponseFromJson(Map<String, dynamic> json) {
  return _PaLMApiResponse.fromJson(json);
}

/// @nodoc
mixin _$PaLMApiResponse {
  @JsonKey(name: 'candiidates')
  List<Candidate> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaLMApiResponseCopyWith<PaLMApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaLMApiResponseCopyWith<$Res> {
  factory $PaLMApiResponseCopyWith(
          PaLMApiResponse value, $Res Function(PaLMApiResponse) then) =
      _$PaLMApiResponseCopyWithImpl<$Res, PaLMApiResponse>;
  @useResult
  $Res call({@JsonKey(name: 'candiidates') List<Candidate> result});
}

/// @nodoc
class _$PaLMApiResponseCopyWithImpl<$Res, $Val extends PaLMApiResponse>
    implements $PaLMApiResponseCopyWith<$Res> {
  _$PaLMApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaLMApiResponseCopyWith<$Res>
    implements $PaLMApiResponseCopyWith<$Res> {
  factory _$$_PaLMApiResponseCopyWith(
          _$_PaLMApiResponse value, $Res Function(_$_PaLMApiResponse) then) =
      __$$_PaLMApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'candiidates') List<Candidate> result});
}

/// @nodoc
class __$$_PaLMApiResponseCopyWithImpl<$Res>
    extends _$PaLMApiResponseCopyWithImpl<$Res, _$_PaLMApiResponse>
    implements _$$_PaLMApiResponseCopyWith<$Res> {
  __$$_PaLMApiResponseCopyWithImpl(
      _$_PaLMApiResponse _value, $Res Function(_$_PaLMApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_PaLMApiResponse(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaLMApiResponse implements _PaLMApiResponse {
  const _$_PaLMApiResponse(
      {@JsonKey(name: 'candiidates') required final List<Candidate> result})
      : _result = result;

  factory _$_PaLMApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaLMApiResponseFromJson(json);

  final List<Candidate> _result;
  @override
  @JsonKey(name: 'candiidates')
  List<Candidate> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'PaLMApiResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaLMApiResponse &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaLMApiResponseCopyWith<_$_PaLMApiResponse> get copyWith =>
      __$$_PaLMApiResponseCopyWithImpl<_$_PaLMApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaLMApiResponseToJson(
      this,
    );
  }
}

abstract class _PaLMApiResponse implements PaLMApiResponse {
  const factory _PaLMApiResponse(
      {@JsonKey(name: 'candiidates')
          required final List<Candidate> result}) = _$_PaLMApiResponse;

  factory _PaLMApiResponse.fromJson(Map<String, dynamic> json) =
      _$_PaLMApiResponse.fromJson;

  @override
  @JsonKey(name: 'candiidates')
  List<Candidate> get result;
  @override
  @JsonKey(ignore: true)
  _$$_PaLMApiResponseCopyWith<_$_PaLMApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
