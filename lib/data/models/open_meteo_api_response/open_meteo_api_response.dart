import 'package:recipe_lite/data/models/open_meteo_api_response/current_weather/current_weather.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_meteo_api_response.freezed.dart';
part 'open_meteo_api_response.g.dart';

@freezed
abstract class OpenMeteoApiResponse with _$OpenMeteoApiResponse {
  const factory OpenMeteoApiResponse({
    @JsonKey(name: 'current_weather') required CurrentWeather currentWeather,
  }) = _OpenMeteoApiResponse;

  factory OpenMeteoApiResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenMeteoApiResponseFromJson(json);
}
