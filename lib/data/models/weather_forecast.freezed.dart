// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call({@JsonKey(name: 'current_weather') CurrentWeather currentWeather});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

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
abstract class _$$_WeatherForecastCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$_WeatherForecastCopyWith(
          _$_WeatherForecast value, $Res Function(_$_WeatherForecast) then) =
      __$$_WeatherForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'current_weather') CurrentWeather currentWeather});

  @override
  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$_WeatherForecastCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$_WeatherForecast>
    implements _$$_WeatherForecastCopyWith<$Res> {
  __$$_WeatherForecastCopyWithImpl(
      _$_WeatherForecast _value, $Res Function(_$_WeatherForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$_WeatherForecast(
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherForecast implements _WeatherForecast {
  const _$_WeatherForecast(
      {@JsonKey(name: 'current_weather') required this.currentWeather});

  factory _$_WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherForecastFromJson(json);

  @override
  @JsonKey(name: 'current_weather')
  final CurrentWeather currentWeather;

  @override
  String toString() {
    return 'WeatherForecast(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherForecast &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherForecastCopyWith<_$_WeatherForecast> get copyWith =>
      __$$_WeatherForecastCopyWithImpl<_$_WeatherForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherForecastToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  const factory _WeatherForecast(
      {@JsonKey(name: 'current_weather')
          required final CurrentWeather currentWeather}) = _$_WeatherForecast;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$_WeatherForecast.fromJson;

  @override
  @JsonKey(name: 'current_weather')
  CurrentWeather get currentWeather;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherForecastCopyWith<_$_WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
