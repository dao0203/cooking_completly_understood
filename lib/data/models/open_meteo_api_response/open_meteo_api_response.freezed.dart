// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_meteo_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpenMeteoApiResponse _$OpenMeteoApiResponseFromJson(Map<String, dynamic> json) {
  return _OpenMeteoApiResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenMeteoApiResponse {
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenMeteoApiResponseCopyWith<OpenMeteoApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMeteoApiResponseCopyWith<$Res> {
  factory $OpenMeteoApiResponseCopyWith(OpenMeteoApiResponse value,
          $Res Function(OpenMeteoApiResponse) then) =
      _$OpenMeteoApiResponseCopyWithImpl<$Res, OpenMeteoApiResponse>;
  @useResult
  $Res call({@JsonKey(name: 'current_weather') CurrentWeather currentWeather});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$OpenMeteoApiResponseCopyWithImpl<$Res,
        $Val extends OpenMeteoApiResponse>
    implements $OpenMeteoApiResponseCopyWith<$Res> {
  _$OpenMeteoApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_value.copyWith(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OpenMeteoApiResponseCopyWith<$Res>
    implements $OpenMeteoApiResponseCopyWith<$Res> {
  factory _$$_OpenMeteoApiResponseCopyWith(_$_OpenMeteoApiResponse value,
          $Res Function(_$_OpenMeteoApiResponse) then) =
      __$$_OpenMeteoApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'current_weather') CurrentWeather currentWeather});

  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$_OpenMeteoApiResponseCopyWithImpl<$Res>
    extends _$OpenMeteoApiResponseCopyWithImpl<$Res, _$_OpenMeteoApiResponse>
    implements _$$_OpenMeteoApiResponseCopyWith<$Res> {
  __$$_OpenMeteoApiResponseCopyWithImpl(_$_OpenMeteoApiResponse _value,
      $Res Function(_$_OpenMeteoApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$_OpenMeteoApiResponse(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OpenMeteoApiResponse implements _OpenMeteoApiResponse {
  const _$_OpenMeteoApiResponse(
      {@JsonKey(name: 'current_weather') required this.currentWeather});

  factory _$_OpenMeteoApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OpenMeteoApiResponseFromJson(json);

  @override
  @JsonKey(name: 'current_weather')
  final CurrentWeather currentWeather;

  @override
  String toString() {
    return 'OpenMeteoApiResponse(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenMeteoApiResponse &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenMeteoApiResponseCopyWith<_$_OpenMeteoApiResponse> get copyWith =>
      __$$_OpenMeteoApiResponseCopyWithImpl<_$_OpenMeteoApiResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpenMeteoApiResponseToJson(
      this,
    );
  }
}

abstract class _OpenMeteoApiResponse implements OpenMeteoApiResponse {
  const factory _OpenMeteoApiResponse(
          {@JsonKey(name: 'current_weather')
              required final CurrentWeather currentWeather}) =
      _$_OpenMeteoApiResponse;

  factory _OpenMeteoApiResponse.fromJson(Map<String, dynamic> json) =
      _$_OpenMeteoApiResponse.fromJson;

  @override
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$_OpenMeteoApiResponseCopyWith<_$_OpenMeteoApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
