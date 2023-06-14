import 'package:cooking_completly_understood/data/sources/chat_service.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  // .evnから環境変数を読み込む
  await dotenv.load(fileName: '.env');
  // OpenAIのAPIキーを設定
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');
  test("MessageServiceクラスでメッセージをChatGPTに送って正しく返されているかどうかを確認する単体テスト", () async {
    // ChatGPTに送るメッセージ
    const message = 'おすすめのレシピを教えてください。';
    //MessageServiceのインスタンスを作成
    final messageService = ChatService();

    final receivedMessage =
        await messageService.sendMessageAndReceiveMessage(message);
    debugPrint('receivedMessage: $receivedMessage');

    expect(receivedMessage, isNotNull);
  });
}
