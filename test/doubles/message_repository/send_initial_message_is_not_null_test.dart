import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/sources/message_service.dart';
import 'package:cooking_completly_understood/data/sources/position_service.dart';
import 'package:cooking_completly_understood/data/sources/weather_service.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import '../../mocks/posisition_data_source_mock.dart';

@GenerateMocks([PositionService])
void main() async {
  late PositionService positionDataSource;
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  setUp(() {
    // ここでモックを使うように設定
    positionDataSource = PositionServiceMock();
  });

  test('最初に送るメッセージをRepositoryから送れるかどうかを判断するテストダブル', () async {
    final messageRepository = MessageRepository(
      positionDataSource,
      WeatherService.create(),
      MessageService(),
    );
    await messageRepository.sendInitialMessage();
  });
}
