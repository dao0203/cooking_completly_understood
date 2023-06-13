import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_service.dart';
import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import '../../mocks/posisition_data_source_mock.dart';

@GenerateMocks([PositionService])
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late PositionService positionDataSource;
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  setUp(() {
    // ここでモックを使うように設定
    positionDataSource = PositionServiceMock();
  });
  test(
    '東京駅の気温と受け取ったメッセージからCHATGPTの返信を受け取る単体テスト',
    () async {
      final messageRepository = MessageRepository(
        positionDataSource, //東京の緯度経度から天気情報を取得するようなモックを代入
        WeatherService.create(),
        MessageService(),
      );
      const sendedMessage = """
以下の条件を満たすレシピを教えてください。
1.userの入力したメッセージを考慮して結果を回答してください
メッセージ: じゃがいもを使ったレシピを教えて
2.天気情報を考慮して結果を回答してください
温度: 20 天気(WMO): 3
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
  "recipe_nutrition": {
    "calorie": "カロリー",
    "protein": "タンパク質",
    "fat": "脂質",
    "carbohydrate": "炭水化物"
  }
}
          """;
      await messageRepository.sendMessageAndReceiveMessage(sendedMessage).then(
        (value) {
          debugPrint(value.toString());
          expect(value, isNotNull);
        },
      );
    },
  );
}
