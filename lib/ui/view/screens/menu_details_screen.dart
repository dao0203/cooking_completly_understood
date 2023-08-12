import 'package:recipe_lite/utils/constants.dart';
import 'package:flutter/material.dart';

class MenuDetailsScreen extends StatelessWidget {
  const MenuDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> recipeData = {
      jsonRecipeName: "肉じゃが",
      jsonRecipeDescription: "肉じゃがは、日本の定番料理であり、ジャガイモを使った人気のあるレシピです。",
      jsonRecipeIngredients: [
        {
          jsonIngredientName: "豚肉（または鶏肉）",
          jsoningredientQuantity: "300g（一口大のサイズに切る）"
        },
        {
          jsonIngredientName: "ジャガイモ",
          jsoningredientQuantity: "3〜4個（中サイズ、皮をむき一口大に切る）"
        },
        {jsonIngredientName: "にんじん", jsoningredientQuantity: "1本（一口大に切る）"},
        {jsonIngredientName: "玉ねぎ", jsoningredientQuantity: "1個（みじん切り）"},
        {jsonIngredientName: "しょうが", jsoningredientQuantity: "1片（みじん切り）"},
        {jsonIngredientName: "にんにく", jsoningredientQuantity: "2片（みじん切り）"},
        {jsonIngredientName: "醤油", jsoningredientQuantity: "3大さじ"},
        {jsonIngredientName: "みりん", jsoningredientQuantity: "2大さじ"},
        {jsonIngredientName: "砂糖", jsoningredientQuantity: "1大さじ"},
        {jsonIngredientName: "水またはだし汁", jsoningredientQuantity: "200ml"},
        {jsonIngredientName: "サラダ油", jsoningredientQuantity: "大さじ1"},
        {jsonIngredientName: "塩", jsoningredientQuantity: "お好みで適量"},
        {jsonIngredientName: "ごま油", jsoningredientQuantity: "数滴（仕上げ用、オプション）"}
      ],
      jsonRecipeSteps: [
        {
          jsonStepNumber: "1",
          jsonStepDescription: "フライパンにサラダ油を熱し、しょうがとにんにくを香りが出るまで炒めます。"
        },
        {jsonStepNumber: "2", jsonStepDescription: "豚肉を加え、色が変わるまで炒めます。"},
        {jsonStepNumber: "3", jsonStepDescription: "玉ねぎを加え、透明になるまで炒めます。"},
        {jsonStepNumber: "4", jsonStepDescription: "醤油、みりん、砂糖を加えて調味料を絡めます。"},
        {
          jsonStepNumber: "5",
          jsonStepDescription: "ジャガイモとにんじんを加え、全体が均一に混ざるように炒めます。"
        },
        {
          jsonStepNumber: "6",
          jsonStepDescription: "水またはだし汁を加え、具材がひたひたになるくらいまで注ぎます。"
        },
        {
          jsonStepNumber: "7",
          jsonStepDescription: "弱火にして蓋をし、ジャガイモとにんじんが柔らかくなるまで煮込みます（約15〜20分）。"
        },
        {jsonStepNumber: "8", jsonStepDescription: "味を見て、必要に応じて塩で調整します。"},
        {
          jsonStepNumber: "9",
          jsonStepDescription: "ごま油を数滴たらし、仕上げに混ぜます（オプション）。"
        },
        {
          jsonStepNumber: "10",
          jsonStepDescription:
              "煮込みが終わったら、肉じゃがは完成です。ご飯やおかずと一緒にお召し上がりください。お好みで青ネギや赤唐辛子をトッピングしても美味しくいただけます。"
        }
      ],
      jsonRecipeNutrition: {
        jsonCalorie: "カロリー",
        jsonProtein: "タンパク質",
        jsonFat: "脂質",
        jsonCarbohydrate: "炭水化物"
      }
    };

    return Scaffold(
      appBar: AppBar(title: const Text('肉じゃが完全理解')),
      body: SingleChildScrollView(
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.timer_rounded),
                    Text('10分'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month_rounded),
                    Text('2023/1/1'),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text('材料',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ...recipeData[jsonRecipeIngredients].map((ingredient) {
                  return Text(
                    '${ingredient[jsonIngredientName]}: ${ingredient[jsoningredientQuantity]}',
                    style: const TextStyle(fontSize: 16),
                  );
                }).toList(),
                const SizedBox(height: 20),
                const Text('手順',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                ...recipeData[jsonRecipeSteps].map((step) {
                  return ListTile(
                    leading: Text(step[jsonStepNumber],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    title: Text(
                      step[jsonStepDescription],
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
