import 'dart:convert' show json;

import 'package:chopper/chopper.dart';
import 'package:cooking_completly_understood/data/sources/remote/palm_api_chat_data_source.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late PaLMApiChatDataSource paLMApiDataSource;
  late String sendedBodyString;
  late String promptString;
  late Response response;
  late String paLMKey;
  setUpAll(() async {
    //dotenvを初期化
    await dotenv.load(fileName: ".env");
    //paLMApiDataSourceを初期化
    paLMApiDataSource = PaLMApiChatDataSource.create();
    //.envファイルからAPIキーを取得
    paLMKey = dotenv.env['PALM_KEY']!;
  });

  group("レシピをメッセージとして送信したときのテスト", () {
    group("大根を使ったレシピを教えてと送ったときのテスト", () {
      setUpAll(() async {
        //「大根を使ったレシピを教えて」を英語で
        promptString = "please give me a recipe that uses daikon";
        final sendedMessage =
            messageThatUserInputtedInEnglish(promptString, '30', '3');
        //送信するリクエストボディを作成
        sendedBodyString = json.encode(getRequestBodyForPaLMApi(sendedMessage));

        //レスポンスを取得
        response = await paLMApiDataSource.getInfo(sendedBodyString, paLMKey);
      });
      test('取得したメッセージが空ではないこと', () async {
        expect(response, isNotNull);
      });

      test('取得したメッセージの一部にrecipe_nameが含まれていること', () async {
        expect(response.bodyString, contains('recipe_name'));
      });

      test('取得したメッセージの一部にrecipe_descriptionが含まれていること', () async {
        expect(response.bodyString, contains('recipe_description'));
      });

      group("ポテトを使ったレシピを教えてと送ったときのテスト", () {
        setUpAll(() async {
          //「ポテトを使ったレシピを教えて」を英語で
          promptString = "please give me a recipe that uses potato";
          final sendedMessage =
              messageThatUserInputtedInEnglish(promptString, '30', '3');
          //送信するリクエストボディを作成
          sendedBodyString =
              json.encode(getRequestBodyForPaLMApi(sendedMessage));

          //レスポンスを取得
          response = await paLMApiDataSource.getInfo(sendedBodyString, paLMKey);
        });
        test('取得したメッセージが空ではないこと', () async {
          expect(response, isNotNull);
        });

        test('取得したメッセージの一部にrecipe_nameが含まれていること', () async {
          expect(response.bodyString, contains('recipe_name'));
        });

        test('取得したメッセージの一部にrecipe_descriptionが含まれていること', () async {
          expect(response.bodyString, contains('recipe_description'));
        });
      });
    });
  });

  group("レシピ以外をメッセージとして送信したときのテスト", () {
    group("あなたの友達は何人かとを送信したときのテスト", () {
      setUpAll(() async {
        // 「友達は何人か」を英語で
        promptString = "how many your friends do you have";
        final sendedMessage =
            messageThatUserInputtedInEnglish(promptString, '30', '3');
        //送信するリクエストボディを作成
        sendedBodyString = json.encode(getRequestBodyForPaLMApi(sendedMessage));

        //レスポンスを取得
        response = await paLMApiDataSource.getInfo(sendedBodyString, paLMKey);
      });
      test('取得したメッセージが空ではないこと', () async {
        expect(response, isNotNull);
      });

      test('取得したメッセージの一部にrecipe_nameが含まれていること', () async {
        expect(response.bodyString, contains('recipe_name'));
      });

      test('取得したメッセージの一部にrecipe_descriptionが含まれていること', () async {
        expect(response.bodyString, contains('recipe_description'));
      });
    });

    group("世界人口を教えてと送信したときのテスト", () {
      setUpAll(() async {
        // 「世界人口を教えて」を英語で
        promptString = "please tell me the world population";
        final sendedMessage =
            messageThatUserInputtedInEnglish(promptString, '30', '3');
        //送信するリクエストボディを作成
        sendedBodyString = json.encode(getRequestBodyForPaLMApi(sendedMessage));

        //レスポンスを取得
        response = await paLMApiDataSource.getInfo(sendedBodyString, paLMKey);
      });
      test('取得したメッセージが空ではないこと', () async {
        expect(response, isNotNull);
      });

      test('取得したメッセージの一部にrecipe_nameが含まれていること', () async {
        expect(response.bodyString, contains('recipe_name'));
      });

      test('取得したメッセージの一部にrecipe_descriptionが含まれていること', () async {
        expect(response.bodyString, contains('recipe_description'));
      });
    });
  });
}
