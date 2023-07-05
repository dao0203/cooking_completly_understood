import 'package:cooking_completly_understood/data/sources/position_data_source.dart';
import 'package:geolocator/geolocator.dart';

class GeolocatorPositionDataSource implements PositionDataSource {
  // 位置情報を取得する
  @override
  Future<Position> getInfo() async {
    // 位置情報を取得できるかどうかのフラグ
    bool isLocationServiceEnabled;
    LocationPermission permission;

    // 位置情報を取得できるかどうかのフラグを取得
    isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    // 位置情報を取得できるかどうかのフラグがtrueの場合
    if (!isLocationServiceEnabled) {
      // 位置情報を取得できない場合は、エラーを投げる
      throw Future.error('位置情報が取得できませんでした');
    }

    // 位置情報を許可しているかどうかを判断
    permission = await Geolocator.checkPermission();

    // 位置情報を許可していない場合
    if (permission == LocationPermission.denied) {
      // 位置情報の許可を求める
      permission = await Geolocator.requestPermission();

      // 位置情報の許可されなかったら、エラーを投げる
      if (permission == LocationPermission.denied) {
        throw Future.error('位置情報の許可がありません');
      }
    }

    // 位置情報が永遠に許可されない場合
    if (permission == LocationPermission.deniedForever) {
      throw Future.error("位置情報の許可が永遠に許可されてません");
    }

    // 位置情報を取得
    return await Geolocator.getCurrentPosition();
  }
}
