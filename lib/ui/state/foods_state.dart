import 'package:cooking_completly_understood/data/models/immu_food.dart/immu_food.dart';
import 'package:cooking_completly_understood/di/food_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foods_state.g.dart';

@riverpod
class FoodsState extends _$FoodsState {
  @override
  Future<Stream<List<ImmuFood>>> build() async {
    return await ref.read(foodRepositoryProvider).then(
      (value) {
        return value.getAllFood();
      },
    );
  }

  //食べ物を保存するメソッド
  Future<void> insertFood(String foodName) async {
    await ref.read(foodRepositoryProvider).then(
      (value) {
        return value.insertFood(foodName);
      },
    );
  }

  //食べ物を削除するメソッド
  Future<void> deleteFood(int foodId) async {
    await ref.read(foodRepositoryProvider).then(
      (value) {
        return value.deleteFood(foodId);
      },
    );
  }
}
