// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_open_ai_chat_data_source.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ChopperOpenAIChatDataSource extends ChopperOpenAIChatDataSource {
  _$ChopperOpenAIChatDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ChopperOpenAIChatDataSource;

  @override
  Future<Response<dynamic>> getInfo(
    String body,
    String apiKey,
  ) {
    final Uri $url = Uri.parse('https://api.openai.com/v1/chat/completions');
    final Map<String, String> $headers = {
      'Authorization': apiKey,
      'Content-Type': 'application/json',
    };
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
