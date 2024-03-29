import 'package:recipe_lite/utils/constants.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late String content;
  late OpenAIChatCompletionModel result;
  late String openAiApiKey;
  setUpAll(() async {
    await dotenv.load();
    openAiApiKey = dotenv.env['OPEN_AI_API_KEY']!;
    OpenAI.apiKey = openAiApiKey;
    await OpenAI.instance.chat.create(
      model: openAIModel,
      messages: [
        const OpenAIChatCompletionChoiceMessageModel(
          role: OpenAIChatMessageRole.system,
          content: 'あなたは、家庭料理のプロフェッショナルです',
        ),
      ],
    );
  });

  group("日本語でのテスト", () {
    group('大根を使ったレシピを教えてと送った時のテスト', () {
      setUpAll(() async {
        content = messageThatUserInputted("大根を使ったレシピを教えてください", '30', '3');
        result = await OpenAI.instance.chat.create(
          model: openAIModel,
          messages: [
            OpenAIChatCompletionChoiceMessageModel(
              role: OpenAIChatMessageRole.user,
              content: content,
            ),
          ],
        );
        debugPrint(result.choices.first.message.content);
      });
      test('メッセージが空ではないこと', () async {
        expect(result.choices.first.message.content, isNotNull);
      });
    });

    group('ポテトを使ったレシピを教えてと送った時のテスト', () {
      setUpAll(() async {
        content = messageThatUserInputted("ポテトを使ったレシピを教えてください", '30', '3');
        result = await OpenAI.instance.chat.create(
          model: openAIModel,
          messages: [
            OpenAIChatCompletionChoiceMessageModel(
              role: OpenAIChatMessageRole.user,
              content: content,
            ),
          ],
        );
        debugPrint(result.choices.first.message.content);
      });
      test('メッセージが空ではないこと', () async {
        expect(result.choices.first.message.content, isNotNull);
      });
    });
  });
}
