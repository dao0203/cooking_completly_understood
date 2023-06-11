import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import '../../mocks/posisition_data_source_mock.dart';


@GenerateMocks([PositionDataSource])
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late PositionDataSource positionDataSource;
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  setUp(() {
    // ここでモックを使うように設定
    positionDataSource = PositionDataSourceMock();
  });
  test(
    '東京駅の気温と受け取ったメッセージからCHATGPTの返信を受け取る単体テスト',
    () async {
      final messageRepository = MessageRepository(
        positionDataSource, //東京の緯度経度から天気情報を取得するようなモックを代入
        WeatherInfoDataSource.create(),
        MessageService(),
      );
      const sendedMessage = "きゅうりと鶏肉のおすすめのレシピは？";
      await messageRepository.sendMessageAndReceiveMessage(sendedMessage).then(
        (value) {
          debugPrint(value.content);
          expect(value, isNotNull);
        },
      );
    },
  );
}
