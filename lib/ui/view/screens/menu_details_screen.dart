import 'package:flutter/material.dart';

class MenuDetailsScreen extends StatelessWidget {
  const MenuDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('肉じゃが完全理解')),
      body:const SingleChildScrollView(
        child:Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text('''
  肉じゃがは、日本の定番料理であり、ジャガイモを使った人気のあるレシピです。以下は、基本的な肉じゃがのレシピです:

  材料:

  豚肉（または鶏肉）：300g（一口大のサイズに切る）
  ジャガイモ：3〜4個（中サイズ、皮をむき一口大に切る）
  にんじん：1本（一口大に切る）
  玉ねぎ：1個（みじん切り）
  しょうが：1片（みじん切り）
  にんにく：2片（みじん切り）
  醤油：3大さじ
  みりん：2大さじ
  砂糖：1大さじ
  水またはだし汁：200ml
  サラダ油：大さじ1
  塩：お好みで適量
  ごま油：数滴（仕上げ用、オプション）
  手順:

  フライパンにサラダ油を熱し、しょうがとにんにくを香りが出るまで炒めます。
  豚肉を加え、色が変わるまで炒めます。
  玉ねぎを加え、透明になるまで炒めます。
  醤油、みりん、砂糖を加えて調味料を絡めます。
  ジャガイモとにんじんを加え、全体が均一に混ざるように炒めます。
  水またはだし汁を加え、具材がひたひたになるくらいまで注ぎます。
  弱火にして蓋をし、ジャガイモとにんじんが柔らかくなるまで煮込みます（約15〜20分）。
  味を見て、必要に応じて塩で調整します。
  ごま油を数滴たらし、仕上げに混ぜます（オプション）。
  煮込みが終わったら、肉じゃがは完成です。ご飯やおかずと一緒にお召し上がりください。お好みで青ネギや赤唐辛子をトッピングしても美味しくいただけます。
  aa
  a
  a
  aa
  '''),
          ),
        ]),
      ),
    );
  }
}
