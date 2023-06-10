import 'dart:convert';

import 'package:cooking_completly_understood/data/models/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';

class MessageRepository {
  final PositionDataSource _positionDataSource;
  final WeatherInfoDataSource _weatherInfoDataSource;
  MessageRepository(this._positionDataSource, this._weatherInfoDataSource);

  //TODO: CHATGPTのメッセージを取得するメソッドだが、今は天気情報を取得するメソッドにしている
  Future<String> getMessage() async {
    final position = await _positionDataSource.getLocationInfo();
    return await _weatherInfoDataSource
        //緯度経度をもとに天気情報を取得する
        .getWeatherInfo(position.altitude, position.longitude)
        .then(
      (response) {
        //レスポンス成功時
        if (response.isSuccessful) {
          //レスポンスボディをパース
          final weatherForecast =
              WeatherForecast.fromJson(json.decode(response.bodyString));
          //パースしたデータの温度を返す
          return weatherForecast.currentWeather.temperature.toString();

          //TODO: ここから下はCHATGPTのAPIのメッセージを取得する処理を書いていく
        } else {
          //レスポンス失敗時
          //本来はエラーが起きているはChatGPTのAPIを呼び出す際にエラーが起きている（はず）
          throw Exception('エラーが発生しました');
        }
      },
    );
  }
}
