import 'package:cooking_completly_understood/data/sources/position_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final positionDataSourceProvider = Provider<PositionService>((ref) {
  return PositionService();
});
