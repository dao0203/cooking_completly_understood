import 'package:drift/drift.dart';

//ローカルDBのテーブルを作成
@DataClassName('RecipeTable')
class Recipes extends Table {
  @override
  String get tableName => 'Recipes';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name
}
