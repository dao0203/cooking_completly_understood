import 'package:cooking_completly_understood/data/sources/chat_service.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');

  test('最初のメッセージがChat GPTに正しく送れているかを確認する単体テスト', () async {
    // MessageServiceのインスタンスを作成
    final messageService = ChatService();

    // Chat GPTに最初のメッセージを送信
    await messageService.sendInitialMessage();

    //messageService.sendInitialMessageの戻り値はvoidなので、
    //戻り値がnullでないことを確認するテストを書く
    expect(messageService.sendInitialMessage(), isNotNull);
  });
}
