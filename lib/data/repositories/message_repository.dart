import 'dart:async';
import 'dart:convert';

import 'package:cooking_completly_understood/data/models/message/message.dart';
import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/models/weather_forecast/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/palm_api_data_source.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/my_message_data_source.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';
import 'package:cooking_completly_understood/data/sources/open_meteo_api_data_source.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:cooking_completly_understood/utils/role.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class MessageRepository {
  final PositionDataSource _positionService;
  final OpenMeteoApiDataSource _weatherService;
  final PaLMApiDataSource _makerMeteoService;
  final RecipeDataSource _recipeService;
  final MyMessageDataSource _myMessageService;
  MessageRepository(
    this._positionService,
    this._weatherService,
    this._makerMeteoService,
    this._recipeService,
    this._myMessageService,
  );

  //初期メッセージを送信する
  Future<void> sendInitialMessage() async {
    //初期メッセージを送信
    // await _chatService.sendInitialMessage();
  }

  //メッセージを送信して返信を受け取る
  Future<void> sendMessage(String inputedMessage) async {
    final myMessage = MyMessage()
      ..content = inputedMessage
      ..role = Role.user.name
      ..timeStamp = DateTime.now();

    //自分のメッセージをローカルDBに保存
    await _myMessageService.insert(myMessage);

    //
    //現在地を取得
    final position = await _positionService.getInfo();

    //天気情報を取得
    await _weatherService
        //緯度経度をもとに天気情報を取得する
        .getWeatherInfo(position.altitude, position.longitude)
        .then(
      (weatherResponse) async {
        //レスポンス成功時
        if (weatherResponse.isSuccessful) {
          //レスポンスボディをパース
          final weatherForecast =
              WeatherForecast.fromJson(json.decode(weatherResponse.bodyString));

          //パースしたデータの温度を格納
          final currentTemperature =
              weatherForecast.currentWeather.temperature.toString();

          //パースしたデータの天気を格納
          final currentWeather =
              weatherForecast.currentWeather.weatherCode.toString();

          //GoogleMLKitを使用してユーザーが入力したメッセージを英語に変換する
          const TranslateLanguage sourceLang = TranslateLanguage.japanese;
          const TranslateLanguage targetLang = TranslateLanguage.english;

          final onDeviceTranslator = OnDeviceTranslator(
            sourceLanguage: sourceLang,
            targetLanguage: targetLang,
          );

          //ユーザーが入力したメッセージを英語に変換
          final String inputedMessageInEnglish =
              await onDeviceTranslator.translateText(inputedMessage);

          debugPrint('inputedMessageInEnglish: $inputedMessageInEnglish');

          //送信するメッセージを作成
          final sendedMessage = messageThatUserInputtedInEnglish(
            inputedMessageInEnglish,
            currentTemperature,
            currentWeather,
          );

          final encodedModel =
              json.encode(getRequestBodyForMakerSuite(sendedMessage));

          //ChatGPTにメッセージを送信して返信を受け取る
          await _makerMeteoService
              .getMessage(encodedModel)
              .then((chatResponse) async {
            debugPrint('chatResponse: $chatResponse');
            //成功時(1つでも選択肢がある場合)
            if (chatResponse.isSuccessful) {
              //このようになっている
              //```json
              //{(レスポンスボディ))}
              //```

              //レスポンスボディをパース
              final parseByJsonToString = json
                  .decode(chatResponse.body)['candidates'][0]["output"]
                  .toString();

              final cuttedMessage = parseByJsonToString.substring(
                  parseByJsonToString.indexOf('{'), //最初の{の位置までを切り取る
                  parseByJsonToString.length - 3); //最後の[''']を切り取る

              //パースしたものをまたパース
              final recipe = Message.fromJson(
                json.decode(cuttedMessage),
              );

              //保存するレシピデータクラスを作成
              final insertedRecipe = Recipe()
                ..name = recipe.recipeName
                ..role = Role.assistant.name
                ..description = recipe.recipeDescription
                ..cookingTime = recipe.recipeCookingTime
                ..ingredientName =
                    recipe.recipeIngredients.map((e) => e.name).toList()
                ..ingredientQuantity =
                    recipe.recipeIngredients.map((e) => e.quantity).toList()
                ..stepNumber = recipe.recipeSteps.map((e) => e.number).toList()
                ..stepDescription =
                    recipe.recipeSteps.map((e) => e.description).toList()
                //数と小数点以外の文字を削除
                ..calorie = recipe.nutrition.calorie.replaceAll('kcal', '')
                ..protein = recipe.nutrition.protein.replaceAll('g', '')
                ..fat = recipe.nutrition.fat.replaceAll('g', '')
                ..carbohydrate =
                    recipe.nutrition.carbohydrate.replaceAll('g', '')
                ..salt = recipe.nutrition.salt.replaceAll('g', '')
                ..timeStamp = DateTime.now()
                ..isMade = false
                ..isFavorite = false;

              //レシピを保存
              await _recipeService.insert(insertedRecipe);
            } else {
              //失敗時
              //本来はエラーが起きているはChatGPTのAPIを呼び出す際にエラーが起きている（はず）
              // throw Exception('failed to get message');
            }
          });
        } else {
          //レスポンス失敗時
          throw Exception('failed to get weather info');
        }
      },
    );
  }

  //ユーザが入力したメッセージを全取得する
  Stream<List<MyMessage>> getAllMyMessages() {
    return _myMessageService.getAll();
  }
}
