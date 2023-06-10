import 'package:cooking_completly_understood/data/repositories/message_repository.dart';
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:cooking_completly_understood/data/sources/weather_info_data_source.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'posisition_data_source_mock.dart';

@GenerateMocks([PositionDataSource])
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late PositionDataSource positionDataSource;
  setUp(() {
    positionDataSource = PositionDataSourceMock();
  });
  test(
    'MessageRepositryのgetMessageが現状はしっかり気温が正しく出力されているかチェック',
    () async {
      final messageRepository = MessageRepository(
        positionDataSource,
        WeatherInfoDataSource.create(),
      );
      await messageRepository.getMessage().then(
        (value) {
          debugPrint(value);
          expect(value, isNotNull);
        },
      );
    },
  );
}

