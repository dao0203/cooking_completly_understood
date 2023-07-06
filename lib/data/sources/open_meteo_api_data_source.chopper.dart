// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_meteo_api_data_source.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OpenMeteoApiDataSource extends OpenMeteoApiDataSource {
  _$OpenMeteoApiDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OpenMeteoApiDataSource;

  @override
  Future<Response<dynamic>> getWeatherInfo(
    double latitude,
    double longtitude,
  ) {
    final Uri $url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=${latitude}&longitude=${longtitude}&current_weather=true');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
