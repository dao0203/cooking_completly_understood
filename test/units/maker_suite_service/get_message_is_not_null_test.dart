import 'dart:convert';

import 'package:cooking_completly_understood/data/services/maker_suite_service.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late MakerSuiteService makerSuiteService;
  late String sendedBodyString;
  late String promptString;
  setUpAll(() async {
    //「大根を使ったレシピを教えて」を英語で
    promptString = "please give me a recipe that uses daikon";

    //MakerSuiteServiceを作成
    makerSuiteService = MakerSuiteService.create();

    final sendedMessage = messageThatUserInputtedInEnglish(promptString, '30', '3');
    //送信するリクエストボディを作成
    sendedBodyString = json.encode(getRequestBodyForMakerSuite(sendedMessage));
  });

  //テストケースごとに実行される
  test('get message is not null', () async {
    final response = await makerSuiteService.getMessage(sendedBodyString);
    debugPrint(response.toString());
    expect(response, isNotNull);
  });
}
