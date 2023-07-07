import 'dart:convert';

import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late PaLMApiDataSource paLMApiDataSource;
  late String sendedBodyString;
  late String promptString;
  setUpAll(() async {
    //「大根を使ったレシピを教えて」を英語で
    promptString = "please give me a recipe that uses daikon";

    //MakerSuiteServiceを作成
    paLMApiDataSource = PaLMApiDataSource.create();

    final sendedMessage =
        messageThatUserInputtedInEnglish(promptString, '30', '3');
    //送信するリクエストボディを作成
    sendedBodyString = json.encode(getRequestBodyForPaLMApi(sendedMessage));
  });

  //テストケースごとに実行される
  test('get message is not null', () async {
    final response = await paLMApiDataSource.getMessage(sendedBodyString);
    debugPrint(response.toString());
    expect(response, isNotNull);
  });
}
