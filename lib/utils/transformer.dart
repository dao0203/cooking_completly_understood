import 'dart:async';

import 'package:cooking_completly_understood/domain/models/recipe/recipe.dart';
import 'package:cooking_completly_understood/data/models/my_message_model/my_message_model.dart';
import 'package:cooking_completly_understood/data/models/recipe_model/recipe_model.dart';
import 'package:cooking_completly_understood/domain/models/recipe_message/recipe_message.dart';

//RecipeからRecipeMessageへ変換するトランスフォーマー
final recipeToRecipeMessageTransformer =
    StreamTransformer<List<RecipeModel>, List<RecipeMessage>>.fromHandlers(
  handleData: (recipes, sink) {
    final recipeMessages = recipes
        .map(
          (e) => RecipeMessage(
            id: e.id,
            role: e.role,
            content: "${e.name}をおすすめします",
            timeStamp: e.timeStamp,
          ),
        )
        .toList();
    sink.add(recipeMessages);
  },
);

//MyMessageからRecipeMessageへ変換するトランスフォーマー
final myMessageToRecipeMessageTransformer =
    StreamTransformer<List<MyMessageModel>, List<RecipeMessage>>.fromHandlers(
  handleData: (myMessages, sink) {
    final recipeMessages = myMessages
        .map(
          (e) => RecipeMessage(
            id: e.id,
            role: e.role,
            content: e.content,
            timeStamp: e.timeStamp,
          ),
        )
        .toList();
    sink.add(recipeMessages);
  },
);

//RecipeをImmuRecipeに変換するトランスフォーマー
final recipeToImmuRecipeTransformer =
    StreamTransformer<List<RecipeModel>, List<Recipe>>.fromHandlers(
  handleData: (recipes, sink) {
    final immuRecipes = recipes
        .map(
          (e) => Recipe(
            id: e.id,
            role: e.role,
            name: e.name,
            description: e.description,
            cookingTime: e.cookingTime,
            ingredientName: e.ingredientName,
            ingredientQuantity: e.ingredientQuantity,
            stepNumber: e.stepNumber,
            stepDescription: e.stepDescription,
            calorie: e.calorie,
            protein: e.protein,
            fat: e.fat,
            carbohydrate: e.carbohydrate,
            salt: e.salt,
            timeStamp: e.timeStamp,
            isMade: e.isMade,
            isFavorite: e.isFavorite,
          ),
        )
        .toList();
    sink.add(immuRecipes);
  },
);
