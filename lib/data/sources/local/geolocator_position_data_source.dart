import 'package:recipe_lite/data/sources/interfaces/position_data_source.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorPositionDataSource implements PositionDataSource {
  // 位置情報を取得する
  @override
  Future<Position> getInfo() => Geolocator.getCurrentPosition();
}
