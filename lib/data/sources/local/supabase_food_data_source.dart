import 'package:cooking_completly_understood/data/models/food_model/food_entity.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/food_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseFoodDataSource implements FoodDataSource {
  final Supabase _supabase = Supabase.instance;
  @override
  Future<void> deleteFood(int foodId) {
    // TODO: implement deleteFood
    throw UnimplementedError();
  }

  @override
  Stream<List<FoodEntity>> getAllFood() {
    return _supabase.client.from('foods').stream(primaryKey: ['id']).map(
        (event) => event
            .map((e) => FoodEntity(
                id: e['id'] as int,
                foodName: e['food_name'] as String,
                count: e['count'] as int,
                createdAt: DateTime.parse(e['created_at'] as String),
                updatedAt: DateTime.parse(e['updated_at'] as String)))
            .toList());
  }

  @override
  Future<void> insertFood(String foodName) async {
    await _supabase.client.from('foods').insert({
      'food_name': foodName,
    });
  }
}
