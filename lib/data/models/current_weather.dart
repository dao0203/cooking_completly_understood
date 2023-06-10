import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @JsonKey(name: 'temperature', defaultValue: '') required String temperature,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
