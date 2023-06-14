import 'package:dart_openai/dart_openai.dart';
import 'package:flutter/foundation.dart';

class ChatService {
  // OpenAIのインスタンスを取得
  final openAI = OpenAI.instance;

  // 献立メッセージに遷移した時に先にメッセージを投げるメソッド
  Future<void> sendInitialMessage() async {
    // メッセージをuserロールでモデル化
    const receivedMessage = OpenAIChatCompletionChoiceMessageModel(
      content: '日本語でレシピについて相談されます。あなたは家庭料理に詳しい料理研究家です。絶対に指定されたJSON形式で返してください',
      role: OpenAIChatMessageRole.system,
    );

    // ChatGPTに聞く
    final chatCompletion = await openAI.chat.create(
      model: 'gpt-3.5-turbo',
      messages: [receivedMessage],
    );

    debugPrint('message: ${chatCompletion.choices.first.message}');
  }

  Future<OpenAIChatCompletionModel> sendMessageAndReceiveMessage(
      String message) async {
    // メッセージをuserロールでモデル化
    final newUserMessage = OpenAIChatCompletionChoiceMessageModel(
      content: message,
      role: OpenAIChatMessageRole.user,
    );

    // ChatGPTに聞く
    return await openAI.chat.create(
      model: 'gpt-3.5-turbo',
      messages: [newUserMessage],
    ).then((value) => value);
  }
}
