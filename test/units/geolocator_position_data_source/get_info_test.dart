import 'package:cooking_completly_understood/data/sources/local/geolocator_position_data_source.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';

//TODO: MissingPluginException(No implementation found for method getCurrentPosition on channel flutter.baseflow.com/geolocator)
//上記エラーが出るので、テストは実行できないので、コメントアウトしておく
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  late GeolocatorPositionDataSource geolocatorPositionDataSource;
  late Position position;

  setUpAll(() async {
    //GeolocatorPositionDataSourceを作成
    geolocatorPositionDataSource = GeolocatorPositionDataSource();

    //指定のメソッドを実行
    position = await geolocatorPositionDataSource.getInfo();
  });

  group(
    'getInfo',
    () {
      test('position is not null', () async {
        expect(position, isNotNull);
      });

      test('position latitude is not null', () async {
        expect(position.latitude, isNotNull);
      });

      test('position longitude is not null', () async {
        expect(position.longitude, isNotNull);
      });
    },
  );
}
