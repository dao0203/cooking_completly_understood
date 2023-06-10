//freezedライブラリを使用して緯度経度を持ったデータクラスを作成

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required double latitude, // 緯度
    required double longitude, // 経度
  }) = _Location;
}
