import 'package:cooking_completly_understood/data/sources/interfaces/position_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/position_repository.dart';
import 'package:geolocator/geolocator.dart';

class PositionRepositoryImpl implements PositionRepository {
  final PositionDataSource _positionDataSource;
  PositionRepositoryImpl(this._positionDataSource);
  @override
  Future<Position> getCurrentPosition() => _positionDataSource.getInfo();
}
