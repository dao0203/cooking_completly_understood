import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';
import 'package:cooking_completly_understood/domain/repositories/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodDataSource _foodService;
  FoodRepositoryImpl(this._foodService);

  //食べ物を全て取得するメソッド
  @override
  Stream<List<FoodModel>> getAll() {
    return _foodService.getAllFood();
  }

  //食べ物を保存するメソッド
  @override
  Future<void> insert(String foodName) async {
    final food = FoodModel()
      ..name = foodName
      ..createdAt = DateTime.now();
    await _foodService.insertFood(food);
  }

  //食べ物を削除するメソッド
  @override
  Future<void> delete(int foodId) async {
    await _foodService.deleteFood(foodId);
  }
}
