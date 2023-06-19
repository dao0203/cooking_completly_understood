import 'dart:io';
import 'dart:math';

import 'package:cooking_completly_understood/data/models/my_message/my_message.dart';
import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/services/maker_suite_service.dart';
import 'package:cooking_completly_understood/data/services/my_message_service.dart';
import 'package:cooking_completly_understood/data/services/position_service.dart';
import 'package:cooking_completly_understood/data/services/recipe_service.dart';
import 'package:cooking_completly_understood/data/services/weather_service.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:path/path.dart' as path;

import '../../mocks/posisition_data_source_mock.dart';

@GenerateMocks([PositionService])
void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  late PositionService positionDataSource;
  late WeatherService weatherService;
  late MakerSuiteService messageService;
  late MessageRepository messageRepository;
  late RecipeService recipeService;
  late Directory dir;
  late Isar isar;
  late MyMessageService myMessageService;
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
    final name = Random().nextInt(pow(2, 32) as int);

    dir = Directory(
      path.join(
        Directory.current.path,
        '.dart_tool',
        'test',
        'application_support_$name',
      ),
    );
    //パスが存在しない場合は、再帰的にディレクトリを作成する
    await dir.create(recursive: true);

    //Isarを開く
    isar = await Isar.open(
      [RecipeSchema, MyMessageSchema],
      directory: dir.path,
    );

    recipeService = RecipeService(isar);
    myMessageService = MyMessageService(isar);
    // ここでモックを使うように設定
    positionDataSource = PositionServiceMock();
    weatherService = WeatherService.create();
    messageService = MakerSuiteService.create();

    messageRepository = MessageRepository(
      positionDataSource,
      weatherService,
      messageService,
      recipeService,
      myMessageService,
    );
  });
  test(
    '東京駅の気温と受け取ったメッセージからMakerSuiteの返信を受け取る単体テスト',
    () async {
      const sendedMessage = 'じゃがいいもを使ったレシピを教えて';
      debugPrint(sendedMessage);
      //
      messageRepository
          .sendMessage(sendedMessage)
          .then((value) => expect(1, 1));
    },
  );
}
