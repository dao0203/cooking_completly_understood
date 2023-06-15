import 'dart:async';
import 'dart:convert';

import 'package:cooking_completly_understood/data/models/message/message.dart';
import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/models/recipe_message/recipe_message.dart';
import 'package:cooking_completly_understood/data/models/weather_forecast/weather_forecast.dart';
import 'package:cooking_completly_understood/data/sources/maker_suite_service.dart';
import 'package:cooking_completly_understood/data/sources/my_message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_service.dart';
import 'package:cooking_completly_understood/data/sources/recipe_service.dart';
import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:rxdart/rxdart.dart';

class MessageRepository {
  final PositionService _positionService;
  final WeatherService _weatherService;
  // final ChatService _chatService;
  final MakerSuiteService _makerMeteoService;
  final RecipeService _recipeService;
  final MyMessageService _myMessageService;
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
      ..role = OpenAIChatMessageRole.user.name
      ..timeStamp = DateTime.now();

    //自分のメッセージをローカルDBに保存
    await _myMessageService.insertMyMessage(myMessage);

    //
    //現在地を取得
    final position = await _positionService.getLocationInfo();

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
            //成功時(1つでも選択肢がある場合)
            if (chatResponse.isSuccessful) {
              //レスポンスボディをパース
              final parseByJsonToString = json
                  .decode(chatResponse.body)['candidates'][0]["output"]
                  .toString();

              final cuttedPreviousMessage = parseByJsonToString.substring(
                  parseByJsonToString.indexOf('{'), //最初の{の位置までを切り取る
                  parseByJsonToString.length - 3); //最後の[''']を切り取る

              debugPrint('cuttedPreviousMessage: $cuttedPreviousMessage');
              //パースしたものをまたパース
              final recipe = Message.fromJson(
                json.decode(cuttedPreviousMessage),
              );

              //保存するレシピデータクラスを作成
              final insertedRecipe = Recipe()
                ..name = recipe.recipeName
                ..role = OpenAIChatMessageRole.assistant.name
                ..description = recipe.recipeDescription
                ..cookingTime = recipe.recipeCookingTime
                ..ingredientName =
                    recipe.recipeIngredients.map((e) => e.name).toList()
                ..ingredientQuantity =
                    recipe.recipeIngredients.map((e) => e.quantity).toList()
                ..stepNumber = recipe.recipeSteps.map((e) => e.number).toList()
                ..stepDescription =
                    recipe.recipeSteps.map((e) => e.description).toList()
                ..calorie = recipe.nutrition.calorie
                ..protein = recipe.nutrition.protein
                ..fat = recipe.nutrition.fat
                ..carbohydrate = recipe.nutrition.carbohydrate
                ..salt = recipe.nutrition.salt
                ..timeStamp = DateTime.now()
                ..isError = false
                ..isMade = false;

              //レシピを保存
              await _recipeService.insertRecipe(insertedRecipe);
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

  //自分のメッセージと相手のメッセージを一つのデータクラスに統一してメッセージに表示するメソッド
  Stream<List<RecipeMessage>> getAllMessages() {
    //レシピを全て取得
    final recipes = _recipeService.getAllRecipes();
    //自分のメッセージを全て取得
    final myMessages = _myMessageService.getAllMyMessages();

    //RecipeをRecipeMessageに変換するトランスフォーマー
    StreamTransformer<List<Recipe>, List<RecipeMessage>> recipeToRecipeMessage =
        StreamTransformer.fromHandlers(
      handleData: (recipes, sink) {
        List<RecipeMessage> recipeMessages = recipes.map((e) {
          
          return RecipeMessage(
              id: e.id,
              role: e.role,
              content: e.toString(), //TODO:ここでレシピを文字列に変換する
              timeStamp: e.timeStamp);
        }).toList();
        sink.add(recipeMessages);
      },
    );

    //MyMessageをRecipeMessageに変換するトランスフォーマー
    StreamTransformer<List<MyMessage>, List<RecipeMessage>>
        myMessageToRecipeMessage = StreamTransformer.fromHandlers(
      handleData: (myMessages, sink) {
        List<RecipeMessage> recipeMessages = myMessages.map((e) {
          return RecipeMessage(
            id: e.id,
            role: e.role,
            content: e.content,
            timeStamp: e.timeStamp,
          );
        }).toList();
        sink.add(recipeMessages);
      },
    );

    final convertedMyMessageToRecipeMessage =
        myMessages.transform(myMessageToRecipeMessage);
    final convertedRecipeToRecipeMessage =
        recipes.transform(recipeToRecipeMessage);

    //レシピと自分のメッセージを結合
    return Rx.combineLatest2<List<RecipeMessage>, List<RecipeMessage>,
        List<RecipeMessage>>(
      convertedRecipeToRecipeMessage,
      convertedMyMessageToRecipeMessage,
      (recipes, myMessages) {
        //レシピと自分のメッセージを結合
        final recipeMessages = recipes + myMessages;
        //結合したメッセージを時間順にソート
        recipeMessages.sort((a, b) => a.timeStamp.compareTo(b.timeStamp));
        return recipeMessages;
      },
    ).asBroadcastStream();
  }
}
