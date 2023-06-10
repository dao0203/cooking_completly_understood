
import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';

class PositionDataSourceMock extends Fake implements PositionDataSource {
  @override
  Future<Position> getLocationInfo() async {
    return Position(
      // 東京駅の緯度経度を設定
      latitude: 35.658581,
      longitude: 139.745433,
      timestamp: DateTime.now(),
      accuracy: 0,
      altitude: 0,
      heading: 0,
      speed: 0,
      speedAccuracy: 0,
    );
  }
}