import 'package:flutter/material.dart';

const Color seedColor = Colors.blue;

//--------------入力したメッセージをChatGPTに送るメッセージ-----------------
String messageThatUserInputted(String message,String temperature,String weather) => '''
以下の条件を満たすレシピを教えてください。
1.userの入力したメッセージを考慮して結果を回答してください
メッセージ: $message
2.天気情報を考慮して結果を回答してください
温度: $message 天気(WMO): $weather
3.回答は下記のJson形式で回答してください
{
  "$recipeName": "レシピ名",
  "$recipeDescription": "レシピの説明",
  "$recipeIngredients": [
    {
      "$ingredientName": "材料名",
      "$ingredientQuantity": "材料の量"
    }
  ],
  "$recipeSteps": [
    {
      "$stepNumber": "手順番号",
      "$stepDescription": "手順の説明"
    }
  ]
  "$recipeNutrition": {
    "$calorie": "カロリー",
    "$protein": "タンパク質",
    "$fat": "脂質",
    "$carbohydrate": "炭水化物"
  }
}
''';

//--------------レシピのJson形式-----------------
const recipeName = "recipe_name";
const recipeDescription = "recipe_description";
//材料
const recipeIngredients = "recipe_ingredients";
const ingredientName = "ingredient_name";
const ingredientQuantity = "ingredient_quantity";
//手順
const recipeSteps = "recipe_steps";
const stepNumber = "step_number";
const stepDescription = "step_description";
//栄養素
const recipeNutrition = "recipe_nutrition";
const calorie = "calorie";
const protein = "protein";
const fat = "fat";
const carbohydrate = "carbohydrate";
