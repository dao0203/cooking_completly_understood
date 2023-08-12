import 'package:recipe_lite/domain/models/weather/weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const CurrentWeather._();
  const factory CurrentWeather({
    @JsonKey(name: 'temperature', defaultValue: 0.0)
    required double temperature,
    @JsonKey(name: 'weathercode', defaultValue: 0) required int weatherCode,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  //currentWeatherからWeatherに変換するメソッド
  Weather toWeather() {
    return Weather(
      temperature: temperature,
      weatherCode: weatherCode,
    );
  }
}
