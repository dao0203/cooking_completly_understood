import 'package:cooking_completly_understood/data/services/food_service.dart';
import 'package:cooking_completly_understood/di/isar_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodServiceProvider = Provider((ref) {
  return ref.read(isarProvider).then(
        (isar) => FoodService(isar),
      );
});
