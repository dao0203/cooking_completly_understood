import 'dart:convert';

import 'package:cooking_completly_understood/data/models/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';

class MessageRepository {
  final PositionDataSource _positionDataSource;
  final WeatherInfoDataSource _weatherInfoDataSource;
  final MessageService _messageService;
  MessageRepository(
    this._positionDataSource,
    this._weatherInfoDataSource,
    this._messageService,
  );

  //初期メッセージを送信する
  Future<void> sendInitialMessage() async {
    //初期メッセージを送信
    await _messageService.sendInitialMessage();
  }


  //メッセージを送信して返信を受け取る
  Future<String> sendMessageAndReceiveMessage(String message) async {
    final position = await _positionDataSource.getLocationInfo();
    return await _weatherInfoDataSource
        //緯度経度をもとに天気情報を取得する
        .getWeatherInfo(position.altitude, position.longitude)
        .then(
      (response) async {
        //レスポンス成功時
        if (response.isSuccessful) {
          //レスポンスボディをパース
          final weatherForecast =
              WeatherForecast.fromJson(json.decode(response.bodyString));

          //パースしたデータの温度を格納
          final currentWeather =
              weatherForecast.currentWeather.temperature.toString();

          //送信するメッセージを作成
          final sendedMessage = "$message。現在地の温度は$currentWeatherです";

          //ChatGPTにメッセージを送信して返信を受け取る
          return await _messageService
              .sendMessageAndReceiveMessage(sendedMessage)
              .then((value) {
            //成功時
            if (value.isNotEmpty) {
              return value;
            } else {
              //失敗時
              //本来はエラーが起きているはChatGPTのAPIを呼び出す際にエラーが起きている（はず）
              throw Exception('エラーが発生しました');
            }
          });
        } else {
          //レスポンス失敗時
          throw Exception('エラーが発生しました');
        }
      },
    );
  }
}
