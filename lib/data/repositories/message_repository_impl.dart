import 'dart:convert';

import 'package:cooking_completly_understood/data/models/open_ai_api_response/open_ai_api_response.dart';
import 'package:cooking_completly_understood/data/models/palm_api_response/palm_api_response.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/chat_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/message_repository.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:cooking_completly_understood/utils/open_ai_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MessageRepositoryImpl implements MessageRepository {
  final ChatDataSource _paLMApiDataSource;

  MessageRepositoryImpl(this._paLMApiDataSource);

  @override
  Future<String> sendAndReceiveMessage(String sendedMessage) async {
    return await returnMessageWithOpenAIApi(sendedMessage);
  }

  Future<String> returnMessageWithPaLMApi(String sendedMessage) async {
    //リクエストボディを作成
    final requestBody = json.encode(getRequestBodyForPaLMApi(sendedMessage));

    //リクエストを送信してレスポンスを受け取る
    return await _paLMApiDataSource
        .getInfo(requestBody, dotenv.env['PALM_KEY']!)
        .then((response) {
      if (response.isSuccessful) {
        //レスポンスボディをパース
        final paLMApiRsponse =
            PaLMApiResponse.fromJson(json.decode(response.body));

        //パースしたデータのoutputを返す
        return paLMApiRsponse.candidates[0].output;
      } else if (response.statusCode == 400) {
        //エラーを投げる
        throw Exception('invalid_argument');
      } else {
        //エラーを投げる
        throw Exception('unknown_error');
      }
    });
  }

  Future<String> returnMessageWithOpenAIApi(String sendedMessage) async {
    debugPrint('sendedMessage: $sendedMessage');
    //リクエストボディを作成
    final parameters = json.encode(getOpenAIParameters(sendedMessage));

    //リクエストを送信してレスポンスを受け取る
    return await _paLMApiDataSource
        .getInfo(parameters, 'Bearer ${dotenv.env['OPEN_AI_API_KEY']!}')
        .then((response) {
      if (response.isSuccessful) {
        //レスポンスボディをパース
        final openAIApiRsponse =
            OpenAIApiResponse.fromJson(json.decode(response.body));
        debugPrint(openAIApiRsponse.choices[0].message.content);
        //パースしたデータのoutputを返す
        return openAIApiRsponse.choices[0].message.content;
      } else if (response.statusCode == 400) {
        debugPrint(response.body);
        debugPrint(response.error.toString());
        //エラーを投げる
        throw Exception('invalid_argument');
      } else {
        //エラーを投げる
        debugPrint(response.body);
        debugPrint(response.error.toString());
        throw Exception('unknown_error');
      }
    });
  }
}
