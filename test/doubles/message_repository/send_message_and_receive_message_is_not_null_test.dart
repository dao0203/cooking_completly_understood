import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/sources/chat_service.dart';
import 'package:cooking_completly_understood/data/sources/position_service.dart';
import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
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
  late WeatherService weatherService;
  late ChatService messageService;
  late MessageRepository messageRepository;
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  setUpAll(() {
    // ここでモックを使うように設定
    positionDataSource = PositionServiceMock();
    weatherService = WeatherService.create();
    messageService = ChatService();
    messageRepository = MessageRepository(
      positionDataSource,
      weatherService,
      messageService,
    );
  });
  test(
    '東京駅の気温と受け取ったメッセージからCHATGPTの返信を受け取る単体テスト',
    () async {
      final sendedMessage =
          messageThatUserInputted("じゃがいもを使った簡単なレシピを教えて", "20", "3");
      debugPrint(sendedMessage);
      await messageRepository.sendMessage(sendedMessage).then(
        (value) {
          debugPrint(value.toString());
          expect(value, isNotNull);
        },
      );
    },
  );
}
