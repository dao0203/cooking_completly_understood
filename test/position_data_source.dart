import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test("PositionDataSourceで位置情報がしっかり返されているかどうかをテスト", () async {
    final positionDataSource = PositionDataSource();
    final position = await positionDataSource.getLocationInfo();
    final latitude = position.latitude;
    final longitude = position.longitude;
    print(latitude);
    print(longitude);
    expect(latitude, isNotNull);
    expect(longitude, isNotNull);
  });
}
