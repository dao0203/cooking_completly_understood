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
                  ingredientNames: e[ingredientNames],
                  ingredientQuantities: e[ingredientQuantities],
                  stepNumbers: e[stepNumbers],
                  stepDescriptions: e[stepDescriptions],
                  calorie: e[calorie],
                  protein: e[protein],
                  fat: e[fat],
                  carbohydrate: e[carbohydrate],
                  salt: e[salt],
                  isMade: e[isMade],
                  isFavorite: e[isFavorite],
                  createdAt: e['created_at'],
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
              ingredientNames: event.first[ingredientNames],
              ingredientQuantities: event.first[ingredientQuantities],
              stepNumbers: event.first[stepNumbers],
              stepDescriptions: event.first[stepDescriptions],
              calorie: event.first[calorie],
              protein: event.first[protein],
              fat: event.first[fat],
              carbohydrate: event.first[carbohydrate],
              salt: event.first[salt],
              isMade: event.first[isMade],
              isFavorite: event.first[isFavorite],
              createdAt: event.first[createdAt],
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
