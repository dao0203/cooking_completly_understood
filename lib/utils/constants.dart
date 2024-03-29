import 'package:flutter/material.dart';

const Color seedColor = Color(0xFF821997);
const Color favoriteColor = Color(0xFFFFEE00);
const Color madeColor = Color(0xFF2B96DE);
const String openAIModel = 'gpt-3.5-turbo';

//--------------入力したメッセージをChatGPTに送るメッセージ-----------------
//一生使用しないと思うが、一応残しておく
String messageThatUserInputted(
        String message, String temperature, String weather) =>
    '''
以下の条件を満たすレシピを教えてください。
1.userの入力したメッセージを考慮して結果を回答してください
メッセージ: $message
2.今の天気状況にあったレシピを回答してください
温度: $temperature 天気(WMO): $weather
3.回答は下記のJson形式で「必ず」回答してください
{
  "$jsonRecipeName": "レシピ名",
  "$jsonRecipeDescription": "レシピの説明",
  "$jsonRecipeCookingTime": "調理時間（分）",
  "$jsonRecipeIngredients": [
    {
      "$jsonIngredientName": "材料名",
      "$jsoningredientQuantity": "材料の量(g)"
    },
  ],
  "$jsonRecipeSteps": [
    {
      "$jsonStepNumber": "手順番号",
      "$jsonStepDescription": "手順の説明"
    },
  ],
  "$jsonRecipeNutrition": {
    "$jsonCalorie": "カロリー(kcal)",
    "$jsonProtein": "タンパク質(g)",
    "$jsonFat": "脂質(g)",
    "$jsonCarbohydrate": "炭水化物(g)",
    "$jsonSalt": "塩分(g)"
  }
}
''';

String messageThatUserInputtedInEnglish(
        String message, String temperature, String weather) =>
    '''
Please give me a recipe that meets the following criteria
1.Please answer the result considering the message entered by the user
Message: $message
2. Please answer the result considering the weather information
temperature: $temperature weather(WMO): $weather
3. Please answer in Json format as follows.
- all types are string
- please make sure to place the comma correctly
- Please output the cooking time in minutes without including the unit name.
- Please output the quantity in grams (g) without including the unit name.
- Please output the quantity of nutrients in grams (g) without including the unit name
- Please output the quantity of ingredient quantitiy in grams (g) without including the unit name
- Please answer in Japanese
{
  "$jsonRecipeName": "recipe name",
  "$jsonRecipeDescription": "recipe description",
  "$jsonRecipeCookingTime": "cooking time",
  "$jsonRecipeIngredients": [
    {
      "$jsonIngredientName": "ingredient name",
      "$jsoningredientQuantity": "ingredient quantity"
    }
  ],
  "$jsonRecipeSteps": [
    {
      "$jsonStepNumber": "step number",
      "$jsonStepDescription": "step description"
    }
  ],
  "$jsonRecipeNutrition": {
    "$jsonCalorie": "calorie",
    "$jsonProtein": "protein",
    "$jsonFat": "fat",
    "$jsonCarbohydrate": "carbohydrate",
    "$jsonSalt": "salt"
  }
}
''';

//--------------レシピのJson形式-----------------
const jsonRecipeName = "recipe_name";
const jsonRecipeDescription = "recipe_description";
const jsonRecipeCookingTime = "recipe_cooking_time";
//材料
const jsonRecipeIngredients = "recipe_ingredients";
const jsonIngredientName = "ingredient_name";
const jsoningredientQuantity = "ingredient_quantity";
//手順
const jsonRecipeSteps = "recipe_steps";
const jsonStepNumber = "step_number";
const jsonStepDescription = "step_description";
//栄養素
const jsonRecipeNutrition = "recipe_nutrition";
const jsonCalorie = "calorie";
const jsonProtein = "protein";
const jsonFat = "fat";
const jsonCarbohydrate = "carbohydrate";
const jsonSalt = "salt";

Map<String, dynamic> getRequestBodyForPaLMApi(String promptString) {
  return {
    // 'model': 'models/test-beta-001',
    'prompt': {
      'text': promptString,
    },

    // 'temperature': 0.7,
    // 'candidateCount': 1,
    // 'top_k': 40,
    // 'top_p': 0.95,
    // 'max_output_tokens': 1024,
    // 'stop_sequences': [],
    // 'safety_settings': [
    //   {'category': 'HARM_CATEGORY_DEROGATORY', 'threshold': 1},
    //   {'category': 'HARM_CATEGORY_TOXICITY', 'threshold': 1},
    //   {'category': 'HARM_CATEGORY_VIOLENCE', 'threshold': 2},
    //   {'category': 'HARM_CATEGORY_SEXUAL', 'threshold': 2},
    //   {'category': 'HARM_CATEGORY_MEDICAL', 'threshold': 2},
    //   {'category': 'HARM_CATEGORY_DANGEROUS', 'threshold': 2},
    // ],
  };
}
