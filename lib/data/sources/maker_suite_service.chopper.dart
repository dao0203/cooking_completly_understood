// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maker_suite_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$MakerSuiteService extends MakerSuiteService {
  _$MakerSuiteService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MakerSuiteService;

  @override
  Future<Response<dynamic>> getMessage(String body) {
    final Uri $url = Uri.parse(
        'https://generativelanguage.googleapis.com/v1beta2/models/text-bison-001:generateText?key=$palmApiKey');
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
