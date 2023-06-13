import 'dart:convert';

import 'package:cooking_completly_understood/data/models/weather_forecast/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('クエリが正しく返されてきているかテスト', () async {
    // ここにテストコードを書く
    final weatherInfoDataSource = WeatherService.create();

    final response = await weatherInfoDataSource.getWeatherInfo(
      //東京の緯度経度
      35.6804,
      139.7690,
    );

    //レスポンスボディを出力：成功
    debugPrint(response.body);

    //レスポンスボディをパース：成功
    final weatherForecast =
        WeatherForecast.fromJson(json.decode(response.body));

    //パースしたデータの温度を出力
    debugPrint(weatherForecast.currentWeather.temperature.toString());
    expect(
      weatherForecast.currentWeather.temperature.toString(),
      isNotEmpty,
    );
  });
}
