import 'dart:convert';

import 'package:recipe_lite/data/models/open_meteo_api_response/open_meteo_api_response.dart';
import 'package:recipe_lite/data/sources/remote/chopper_open_meteo_api_data_source.dart';
import 'package:recipe_lite/domain/models/weather/weather.dart';
import 'package:recipe_lite/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final ChopperOpenMeteoApiDataSource _weatherDataSource;

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
