import 'dart:convert';

import 'package:cooking_completly_understood/data/models/weather_forecast/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/foundation.dart';

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
  Future<OpenAIChatCompletionChoiceMessageModel> sendMessageAndReceiveMessage(
      String message) async {
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
          final currentTemperature =
              weatherForecast.currentWeather.temperature.toString();

          //パースしたデータの天気を格納
          final currentWeather = weatherForecast.currentWeather.weatherCode.toString();

          //送信するメッセージを作成
          final sendedMessage = """
以下の条件を満たすレシピを教えてください。
1.userの入力したメッセージを考慮して結果を回答してください
メッセージ: $message
2.天気情報を考慮して結果を回答してください
温度: $currentTemperature 天気(WMO): $currentWeather
3.回答は下記のJson形式で回答してください
{
  "recipe_name": "レシピ名",
  "recipe_description": "レシピの説明",
  "recipe_ingredients": [
    {
      "ingredient_name": "材料名",
      "ingredient_quantity": "材料の量"
    }
  ],
  "recipe_steps": [
    {
      "step_number": "手順番号",
      "step_description": "手順の説明"
    }
  ]
}
          """;

          //ChatGPTにメッセージを送信して返信を受け取る
          return await _messageService
              .sendMessageAndReceiveMessage(sendedMessage)
              .then((value) {
            //成功時(1つでも選択肢がある場合)
            if (value.haveChoices) {
              //最初の選択肢を返す
              return value.choices.first.message;
            } else {
              //失敗時
              //本来はエラーが起きているはChatGPTのAPIを呼び出す際にエラーが起きている（はず）
              throw Exception('failed to get message');
            }
          });
        } else {
          //レスポンス失敗時
          throw Exception('failed to get weather info');
        }
      },
    );
  }
}
