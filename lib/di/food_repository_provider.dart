import 'package:cooking_completly_understood/data/repositories/food_repository.dart';
import 'package:cooking_completly_understood/di/food_service_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodRespotiroyProvider = Provider((ref) {
  return ref.read(foodServiceProvider).then(
        (value) => FoodRepository(value),
      );
});
