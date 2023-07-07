import 'package:cooking_completly_understood/domain/models/food/food.dart';
import 'package:cooking_completly_understood/di/food_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'foods_state.g.dart';

@riverpod
class FoodsState extends _$FoodsState {
  @override
  Future<Stream<List<Food>>> build() async {
    return await ref.read(foodRepositoryProvider).then(
      (value) {
        //食べ物を全て取得するメソッド
        return value.getAllFood().map(
              (event) => event
                  .map(
                    //ImmuFoodに変換
                    (e) => Food(
                      id: e.id,
                      name: e.name,
                      createdAt: e.createdAt,
                    ),
                  )
                  .toList(),
            );
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
