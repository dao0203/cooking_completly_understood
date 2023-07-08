import 'package:geolocator/geolocator.dart';

abstract class PositionRepository {
  Future<Position> getCurrentPosition();
}
