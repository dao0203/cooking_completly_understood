import 'package:cooking_completly_understood/data/services/chat_service.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late ChatService chatService;
  late String promptString;
  late String sendedMessage;
  await dotenv.load(fileName: '.env');
  OpenAI.apiKey = dotenv.get('OPEN_AI_API_KEY');
  setUpAll(() async {
    //大根を使ったレシピを教えてを英語で
    promptString = "please give me a recipe that uses daikon";
    sendedMessage = messageThatUserInputtedInEnglish(promptString, '30', '3');
    chatService = ChatService();
    chatService.sendInitialMessage();
  });

  test('send message and receive message is not null', () async {
    final response =
        await chatService.sendMessageAndReceiveMessage(promptString);
    debugPrint(response.toString());
    expect(response, isNotNull);
  });
}
