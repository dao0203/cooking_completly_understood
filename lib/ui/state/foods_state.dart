import 'package:recipe_lite/di/repository_providers.dart';
import 'package:recipe_lite/domain/models/food/food.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foods_state.g.dart';

@riverpod
class FoodsState extends _$FoodsState {
  @override
  Stream<List<Food>> build() {
    return ref.watch(foodRepositoryProvider).getAll();
  }

  //食べ物を保存するメソッド
  Future<void> insertFood(String foodName) async {
    await ref.read(foodRepositoryProvider).insert(foodName);
  }

  //食べ物を削除するメソッド
  Future<void> deleteFood(int foodId) async {
    await ref.read(foodRepositoryProvider).delete(foodId);
  }
}
