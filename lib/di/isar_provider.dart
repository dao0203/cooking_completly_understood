import 'package:cooking_completly_understood/data/models/recipe/recipe.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

final isarProvider = FutureProvider((ref) async {
  // データベースの保存先のパスを取得
  final dir = await getApplicationDocumentsDirectory();

  // データベースを開く
  return await Isar.open(
    [RecipeSchema], // 保存するデータモデルのリスト
    directory: dir.path, // データベースの保存先のパス
  );
});