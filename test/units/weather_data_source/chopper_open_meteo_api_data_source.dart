import 'package:chopper/chopper.dart';
import 'package:recipe_lite/data/sources/remote/chopper_open_meteo_api_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late double latitude;
  late double longitude;
  late Response response;
  late ChopperOpenMeteoApiDataSource openMeteoApiDataSource;

  setUpAll(() async {
    //緯度経度を東京駅に設定
    latitude = 35.681236;
    longitude = 139.767125;
    //OpenMeteoApiDataSourceを作成
    openMeteoApiDataSource = ChopperOpenMeteoApiDataSource.create();

    //指定のメソッドを実行
    response = await openMeteoApiDataSource.getInfo(latitude, longitude);
  });

  group(
    'getInfo',
    () {
      test('response is not null', () async {
        expect(response, isNotNull);
      });
      test('response is not empty', () async {
        expect(response.body, isNotEmpty);
      });

      //
      test('response contains current_weather', () async {
        expect(response.body, contains('current_weather'));
      });

      test('response contains latitude', () async {
        expect(response.body, contains('latitude'));
      });

      test('response contains longitude', () async {
        expect(response.body, contains('longitude'));
      });
    },
  );

  //テスト終わりの処理
  tearDownAll(() async {
    //何もしない
  });
}
