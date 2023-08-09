import 'dart:convert';

import 'package:cooking_completly_understood/data/models/recipe_response/recipe_response.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/domain/repositories/message_repository.dart';
import 'package:cooking_completly_understood/domain/repositories/my_message_repository.dart';
import 'package:cooking_completly_understood/domain/repositories/position_repository.dart';
import 'package:cooking_completly_understood/domain/repositories/recipe_repository.dart';
import 'package:cooking_completly_understood/domain/repositories/weather_repository.dart';
import 'package:cooking_completly_understood/domain/use_cases/use_case.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:geolocator/geolocator.dart';

class SuggestRecipeConsideringWeatherAndTemperatureUseCase
    implements UseCase<String, Future<void>> {
  final MyMessageRepository _myMessageRepository;
  final PositionRepository _positionRepository;
  final WeatherRepository _weatherRepository;
  final MessageRepository _messageRepository;
  final RecipeRepository _recipeRepository;

  SuggestRecipeConsideringWeatherAndTemperatureUseCase(
    this._myMessageRepository,
    this._positionRepository,
    this._weatherRepository,
    this._messageRepository,
    this._recipeRepository,
  );
  @override
  Future<void> call(String inputedMessage) async {
    //----------マイメッセージをローカルDBに保存----------

    await _myMessageRepository.insert(inputedMessage);

    //----------現在地を取得するための手続き----------

    // 位置情報を取得できるかどうかのフラグ
    await Geolocator.isLocationServiceEnabled()
        .then((isLocationServiceEnabled) async {
      if (!isLocationServiceEnabled) {
        // 位置情報を取得できない場合は、エラーを投げる
        throw Future.error('cannot_get_location');
      }

      // 位置情報を許可しているかどうかを判断
      await Geolocator.checkPermission().then((permission) async {
        if (permission == LocationPermission.denied) {
          // 位置情報の許可を求める
          await Geolocator.requestPermission().then((permission) {
            // 位置情報の許可されなかったら、エラーを投げる
            if (permission == LocationPermission.denied) {
              throw Future.error('cnannot_permit_location');
            } else if (permission == LocationPermission.deniedForever) {
              throw Future.error('cnannot_permit_location_forever');
            }
          });
        }
      });

      //現在地を取得
      final position = await _positionRepository.getCurrentPosition();

      //天気情報を取得
      final currentWeatherInfo = await _weatherRepository.getCurrentWeather(
          position.latitude, position.longitude);

      //メッセージを英語に変換 PaLM API用
      // final String translatedMessage = await OnDeviceTranslator(
      //   sourceLanguage: TranslateLanguage.japanese,
      //   targetLanguage: TranslateLanguage.english,
      // ).translateText(inputedMessage);

      //送信するメッセージを作成
      final String sendedMessage = messageThatUserInputted(
        inputedMessage,
        currentWeatherInfo.temperature.toString(),
        currentWeatherInfo.weatherCode.toString(),
      );

      //送信するメッセージをBodyに変えてエンコード
      // final String encodedBody =
      // json.encode(getRequestBodyForPaLMApi(sendedMessage));  //PaLM API用
      // json.encode(getOpenAIParameters(sendedMessage)); //OpenAI用
      //メッセージを取得

      final message =
          await _messageRepository.sendAndReceiveMessage(sendedMessage);

      //PaLM API用
      // //PaLM APIだとMarkDown形式で返ってくるので、変換する
      // final convertedMessage =
      //     message.substring(message.indexOf('{') + 1, message.length - 1);
      // //メッセージをパース
      // final recipeResponse =
      //     RecipeResponse.fromJson(json.decode(convertedMessage));
      //OpenAI時の処理

      //メッセージをパース
      final recipeResponse = RecipeResponse.fromJson(json.decode(message));
      //レシピを保存するために、レシピモデルに変換
      final insertedRecipe = Recipe(
        id: 0,
        name: recipeResponse.recipeName,
        description: recipeResponse.recipeDescription,
        cookingTimeMinutes: recipeResponse.recipeCookingTime,
        ingredientNames:
            recipeResponse.recipeIngredients.map((e) => e.name).toList(),
        ingredientQuantities:
            recipeResponse.recipeIngredients.map((e) => e.quantity).toList(),
        stepNumbers: recipeResponse.recipeSteps.map((e) => e.number).toList(),
        stepDescriptions:
            recipeResponse.recipeSteps.map((e) => e.description).toList(),
        calorie: double.parse(recipeResponse.nutrition.calorie),
        protein: double.parse(recipeResponse.nutrition.protein),
        fat: double.parse(recipeResponse.nutrition.fat),
        carbohydrate: double.parse(recipeResponse.nutrition.carbohydrate),
        salt: double.parse(recipeResponse.nutrition.salt),
        createdAt: DateTime.now(),
        isMade: false,
        isFavorite: false,
      );
      //レシピを保存
      await _recipeRepository.insert(insertedRecipe);
    });
  }
}
