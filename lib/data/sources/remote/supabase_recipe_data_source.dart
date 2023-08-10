import 'package:cooking_completly_understood/data/models/recipe_entity/recipe_entity.dart';
import 'package:cooking_completly_understood/data/sources/interfaces/recipe_data_source.dart';
import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseRecipeDataSource implements RecipeDataSource {
  final _supabaseClient = Supabase.instance.client;
  final _tableName = 'recipes';
  @override
  Future<void> changeFavoriteStatus(Recipe recipe) async {
    await _supabaseClient
        .from(_tableName)
        .update({isFavorite: !recipe.isFavorite}).eq(primaryId, recipe.id);
  }

  @override
  Future<void> changeMadeStatus(Recipe recipe) async {
    await _supabaseClient
        .from(_tableName)
        .update({isMade: !recipe.isMade}).eq(primaryId, recipe.id);
  }

  @override
  Stream<List<RecipeEntity>> getAll() {
    return _supabaseClient
        .from(_tableName)
        .stream(primaryKey: [primaryId]).map((event) => event
            .map((e) => RecipeEntity(
                  id: e[primaryId],
                  name: e[name],
                  description: e[description],
                  cookingTimeMinutes: e[cookingTimeMinutes],
                  ingredientNames: List<String>.from(e[ingredientNames]),
                  ingredientQuantities:
                      List<String>.from(e[ingredientQuantities]),
                  stepNumbers: List<String>.from(e[stepNumbers]),
                  stepDescriptions: List<String>.from(e[stepDescriptions]),
                  calorie: double.parse(e[calorie].toString()),
                  protein: double.parse(e[protein].toString()),
                  fat: double.parse(e[fat].toString()),
                  carbohydrate: double.parse(e[carbohydrate].toString()),
                  salt: double.parse(e[salt].toString()),
                  isMade: e[isMade],
                  isFavorite: e[isFavorite],
                  createdAt: DateTime.parse(e[createdAt]),
                ))
            .toList());
  }

  @override
  Stream<RecipeEntity> getById(int id) {
    return _supabaseClient
        .from(_tableName)
        .stream(primaryKey: [primaryId])
        .eq(primaryId, id)
        .map((event) => RecipeEntity(
              id: event.first[primaryId],
              name: event.first[name],
              description: event.first[description],
              cookingTimeMinutes: event.first[cookingTimeMinutes],
              ingredientNames: List<String>.from(event.first[ingredientNames]),
              ingredientQuantities:
                  List<String>.from(event.first[ingredientQuantities]),
              stepNumbers: List<String>.from(event.first[stepNumbers]),
              stepDescriptions:
                  List<String>.from(event.first[stepDescriptions]),
              calorie: double.parse(event.first[calorie].toString()),
              protein: double.parse(event.first[protein].toString()),
              fat: double.parse(event.first[fat].toString()),
              carbohydrate: double.parse(event.first[carbohydrate].toString()),
              salt: double.parse(event.first[salt].toString()),
              isMade: event.first[isMade],
              isFavorite: event.first[isFavorite],
              createdAt: DateTime.parse(event.first[createdAt]),
            ));
  }

  @override
  Future<void> insert(Recipe recipe) async {
    await _supabaseClient.from(_tableName).insert({
      name: recipe.name,
      description: recipe.description,
      cookingTimeMinutes: recipe.cookingTimeMinutes,
      ingredientNames: recipe.ingredientNames,
      ingredientQuantities: recipe.ingredientQuantities,
      stepNumbers: recipe.stepNumbers,
      stepDescriptions: recipe.stepDescriptions,
      calorie: recipe.calorie,
      protein: recipe.protein,
      fat: recipe.fat,
      carbohydrate: recipe.carbohydrate,
      salt: recipe.salt,
      isMade: recipe.isMade,
      isFavorite: recipe.isFavorite,
    });
  }

  static String primaryId = 'id';
  static String userId = 'user_id';
  static String name = 'name';
  static String description = 'description';
  static String cookingTimeMinutes = 'cooking_time_minutes';
  static String ingredientNames = 'ingredient_names';
  static String ingredientQuantities = 'ingredient_quantities';
  static String stepNumbers = 'step_numbers';
  static String stepDescriptions = 'step_descriptions';
  static String calorie = 'calorie';
  static String protein = 'protein';
  static String fat = 'fat';
  static String carbohydrate = 'carbohydrate';
  static String salt = 'salt';
  static String isMade = 'is_made';
  static String isFavorite = 'is_favorite';
  static String createdAt = 'created_at';
}
