import 'package:cooking_completly_understood/data/models/food_model/food_model.dart';
import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final isarProvider = Provider(
  (ref) async {
    // データベースの保存先のパスを取得
    final dir = await getApplicationDocumentsDirectory();

    // データベースを開く
    return await Isar.open(
      [
        RecipeModelSchema,
        MyMessageModelSchema,
        FoodModelSchema,
      ], // 保存するデータモデルのリスト
      directory: dir.path, // データベースの保存先のパス
    );
  },
);
