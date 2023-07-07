import 'dart:convert';

import 'package:cooking_completly_understood/data/models/open_meteo_api_response/open_meteo_api_response.dart';
import 'package:cooking_completly_understood/data/sources/remote/open_meteo_api_data_source.dart';
import 'package:cooking_completly_understood/domain/models/weather/weather.dart';
import 'package:cooking_completly_understood/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final OpenMeteoApiDataSource _weatherDataSource;

  WeatherRepositoryImpl(this._weatherDataSource);

  @override
  Future<Weather> getCurrentWeather(double latitude, double longitude) async {
    //天気情報を取得
    final response = await _weatherDataSource.getInfo(latitude, longitude);

    //レスポンスボディをパース
    final responseData =
        OpenMeteoApiResponse.fromJson(json.decode(response.bodyString));

    //パースしたデータの温度と天気コードを格納
    return responseData.currentWeather.toWeather();
  }
}
