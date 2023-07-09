import 'dart:convert';

import 'package:cooking_completly_understood/data/models/palm_api_response/palm_api_response.dart';
import 'package:cooking_completly_understood/data/sources/remote/palm_api_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/message_repository.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MessageRepositoryImpl implements MessageRepository {
  final PaLMApiDataSource _paLMApiDataSource;

  MessageRepositoryImpl(this._paLMApiDataSource);

  @override
  Future<String> sendAndReceiveMessage(String sendedMessage) async {
    //リクエストボディを作成
    final requestBody = json.encode(getRequestBodyForPaLMApi(sendedMessage));

    //リクエストを送信してレスポンスを受け取る
    return await _paLMApiDataSource
        .getMessage(requestBody, dotenv.env['PALM_KEY']!)
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

    // //レスポンスボディをパース
    // final paLMApiRsponse = PaLMApiResponse.fromJson(json.decode(response.body));

    // //パースしたデータのoutputを返す
    // return paLMApiRsponse.candidates[0].output;
  }
}
