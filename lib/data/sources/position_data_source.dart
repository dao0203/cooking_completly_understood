import 'package:geolocator/geolocator.dart';

abstract class PositionDataSource {
  Future<Position> getInfo();
}