import 'package:cooking_completly_understood/data/models/current_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast.freezed.dart';
part 'weather_forecast.g.dart';

@freezed
abstract class WeatherForecast with _$WeatherForecast {
  const factory WeatherForecast({
    @JsonKey(name: 'current_weather') required CurrentWeather currentWeather,
  }) = _WeatherForecast;

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);
}
