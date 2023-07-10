import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/data/sources/remote/open_ai_chat_data_source.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:cooking_completly_understood/utils/open_ai_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late OpenAIChatDataSource openAIChatDataSource;
  late String paramater;
  late String promptString;
  late String sendedMessage;
  late Response response;
  late String openAIApiKey;

  setUpAll(() async {
    //dotenvを初期化
    await dotenv.load(fileName: ".env");
    //.envファイルからAPIキーを取得
    openAIApiKey = "Bearer ${dotenv.env['OPEN_AI_API_KEY']!}";
    //openAIChatDataSourceを初期化
    openAIChatDataSource = OpenAIChatDataSource.create();

    final initialParamater = json.encode({
      'model': 'gpt-3.5-turbo',
      'messages': [
        {'role': 'system', 'content': 'あなたは、家庭料理のスペシャリストです'}
      ]
    });

    await openAIChatDataSource.getInfo(initialParamater, openAIApiKey);
  });

  group("日本語でのテスト", () {
    group("レシピをメッセージとして送信した時のテスト", () {
      group("大根を使ったレシピを教えてと送った時のテスト", () {
        setUpAll(() async {
          promptString = "大根を使ったレシピを教えて";
          sendedMessage = messageThatUserInputted(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
          debugPrint(response.bodyString);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });

      group("ポテトを使ったレシピを送った時のテスト", () {
        setUpAll(() async {
          promptString = "ポテトを使ったレシピを教えて";
          sendedMessage = messageThatUserInputted(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
          debugPrint(response.bodyString);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });
    });

    group("レシピ以外をメッセージとして取得した時のテスト", () {
      group("あなたの友達は何人かと送信した時のテスト", () {
        setUpAll(() async {
          promptString = "あなたの友達は何人か";
          sendedMessage = messageThatUserInputted(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });

      group("あなたの趣味は何かと送信した時のテスト", () {
        setUpAll(() async {
          promptString = "あなたの趣味は何か";
          sendedMessage = messageThatUserInputted(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });
    });
  });

  group("英語でのテスト", () {
    group("レシピをメッセージとして送信した時のテスト", () {
      group("大根を使ったレシピを教えてと送った時のテスト", () {
        setUpAll(() async {
          promptString = "Tell me a recipe using daikon";
          sendedMessage =
              messageThatUserInputtedInEnglish(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
          debugPrint(response.bodyString);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });

      group("ポテトを使ったレシピを送った時のテスト", () {
        setUpAll(() async {
          promptString = "Tell me a recipe using potato";
          sendedMessage =
              messageThatUserInputtedInEnglish(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
          debugPrint(response.bodyString);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });
    });

    group("レシピ以外をメッセージとして取得した時のテスト", () {
      group("あなたの友達は何人かと送信した時のテスト", () {
        setUpAll(() async {
          promptString = "How many friends do you have";
          sendedMessage =
              messageThatUserInputtedInEnglish(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });

      group("あなたの趣味は何かと送信した時のテスト", () {
        setUpAll(() async {
          promptString = "What is your hobby";
          sendedMessage =
              messageThatUserInputtedInEnglish(promptString, '30', '3');
          paramater = json.encode(getOpenAIParameters(sendedMessage));
          //レスポンスを取得
          response =
              await openAIChatDataSource.getInfo(paramater, openAIApiKey);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });
        test("取得したメッセージの一部にrecipe_nameが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeName));
        });
        test("取得したメッセージの一部にrecipe_descriptionが含まれていること", () {
          expect(response.bodyString, contains(jsonRecipeDescription));
        });
      });
    });
  });
}
