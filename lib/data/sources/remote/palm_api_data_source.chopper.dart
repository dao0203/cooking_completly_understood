// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'palm_api_data_source.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PaLMApiDataSource extends PaLMApiDataSource {
  _$PaLMApiDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PaLMApiDataSource;

  @override
  Future<Response<dynamic>> getInfo(
    String body,
    String apiKey,
  ) {
    final Uri $url = Uri.parse(
        'https://generativelanguage.googleapis.com/v1beta2/models/text-bison-001:generateText?key=${apiKey}');
    final Map<String, String> $headers = {
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
