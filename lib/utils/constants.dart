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
  "$_recipeName": "レシピ名",
  "$_recipeDescription": "レシピの説明",
  "$_recipeIngredients": [
    {
      "$_ingredientName": "材料名",
      "$_ingredientQuantity": "材料の量"
    }
  ],
  "$_recipeSteps": [
    {
      "$_stepNumber": "手順番号",
      "$_stepDescription": "手順の説明"
    }
  ]
  "$_recipeNutrition": {
    "$_calorie": "カロリー",
    "$_protein": "タンパク質",
    "$_fat": "脂質",
    "$_carbohydrate": "炭水化物"
  }
}
''';

//--------------レシピのJson形式-----------------
const _recipeName = "recipe_name";
const _recipeDescription = "recipe_description";
//材料
const _recipeIngredients = "recipe_ingredients";
const _ingredientName = "ingredient_name";
const _ingredientQuantity = "ingredient_quantity";
//手順
const _recipeSteps = "recipe_steps";
const _stepNumber = "step_number";
const _stepDescription = "step_description";
//栄養素
const _recipeNutrition = "recipe_nutrition";
const _calorie = "calorie";
const _protein = "protein";
const _fat = "fat";
const _carbohydrate = "carbohydrate";
