import 'package:cooking_completly_understood/data/services/position_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  test('PositionDataSourceで位置情報がしっかり返されているかどうかをテスト', () async {
    final positionDataSource = PositionService();
    final position = await positionDataSource.getLocationInfo();
    final latitude = position.latitude;
    final longitude = position.longitude;
    debugPrint("latitude: $latitude");
    debugPrint("longitude: $longitude");
    expect(latitude, isNotNull);
    expect(longitude, isNotNull);
  });
}
