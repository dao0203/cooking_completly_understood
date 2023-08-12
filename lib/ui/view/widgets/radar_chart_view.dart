// ignore_for_file: library_private_types_in_public_api
import 'package:recipe_lite/ui/state/recipe_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}

class RadarChartView extends StatefulHookConsumerWidget {
  const RadarChartView({super.key});

  @override
  _RadarChartViewState createState() => _RadarChartViewState();
}

class _RadarChartViewState extends ConsumerState<RadarChartView> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;
  var dailyIntake = {
    'calorie': 2000.0 / 3,
    'protein': 50.0 / 3,
    'fat': 70.0 / 3,
    'carbohydrate': 310.0 / 3,
    'salt': 5.0 / 3,
  };
  var recipeIngredients = {
    'calorie': 0.0,
    'protein': 0.0,
    'fat': 0.0,
    'carbohydrate': 0.0,
    'salt': 0.0,
  };

  @override
  void initState() {
    super.initState();
    ref.read(recipeStateProvider);
  }

  @override
  Widget build(BuildContext context) {
    final recipeState = ref.watch(recipeStateProvider);

    return Column(
      children: [
        recipeState.when(
          data: (recipe) {
            final recipeLength = recipe.length;
            for (int j = 0; j < recipeLength; j++) {
              final calorie = recipe[j].calorie;
              final protein = recipe[j].protein;
              final fat = recipe[j].fat;
              final carbohydrate = recipe[j].carbohydrate;
              final salt = recipe[j].salt;

              recipeIngredients['calorie'] =
                  ((recipeIngredients['calorie'] ?? 0) + calorie);
              recipeIngredients['protein'] =
                  ((recipeIngredients['protein'] ?? 0) + protein);
              recipeIngredients['fat'] =
                  ((recipeIngredients['fat'] ?? 0) + fat);
              recipeIngredients['carbohydrate'] =
                  ((recipeIngredients['carbohydrate'] ?? 0) + carbohydrate);
              recipeIngredients['salt'] =
                  ((recipeIngredients['salt'] ?? 0) + salt);
              debugPrint(
                  [calorie, protein, fat, carbohydrate, salt].toString());
            }

            for (int j = 0; j < recipeLength; j++) {
              final calorie = recipe[j].calorie;
              final protein = recipe[j].protein;
              final fat = recipe[j].fat;
              final carbohydrate = recipe[j].carbohydrate;
              final salt = recipe[j].salt;

              recipeIngredients['calorie'] =
                  ((recipeIngredients['calorie'] ?? 0) + calorie);
              recipeIngredients['protein'] =
                  ((recipeIngredients['protein'] ?? 0) + protein);
              recipeIngredients['fat'] =
                  ((recipeIngredients['fat'] ?? 0) + fat);
              recipeIngredients['carbohydrate'] =
                  ((recipeIngredients['carbohydrate'] ?? 0) + carbohydrate);
              recipeIngredients['salt'] =
                  ((recipeIngredients['salt'] ?? 0) + salt);
            }

            recipeIngredients['calorie'] = (recipeIngredients['calorie'] ?? 0) /
                recipeLength /
                dailyIntake['calorie']!;
            recipeIngredients['protein'] = (recipeIngredients['protein'] ?? 0) /
                recipeLength /
                dailyIntake['protein']!;
            recipeIngredients['fat'] = (recipeIngredients['fat'] ?? 0) /
                recipeLength /
                dailyIntake['fat']!;
            recipeIngredients['carbohydrate'] =
                (recipeIngredients['carbohydrate'] ?? 0) /
                    recipeLength /
                    dailyIntake['carbohydrate']!;
            recipeIngredients['salt'] = (recipeIngredients['salt'] ?? 0) /
                recipeLength /
                dailyIntake['salt']!;

            return Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.9,
                  child: RadarChart(
                    RadarChartData(
                      radarTouchData: RadarTouchData(
                        touchCallback: (FlTouchEvent event, response) {
                          if (!event.isInterestedForInteractions) {
                            setState(() {
                              selectedDataSetIndex = -1;
                            });
                            return;
                          }
                          setState(() {
                            selectedDataSetIndex =
                                response?.touchedSpot?.touchedDataSetIndex ??
                                    -1;
                          });
                        },
                      ),
                      dataSets: showingDataSets(),
                      radarBackgroundColor: Colors.transparent,
                      borderData: FlBorderData(show: false),
                      radarBorderData:
                          const BorderSide(color: Colors.transparent),
                      titlePositionPercentageOffset: 0.2,
                      titleTextStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 14),
                      getTitle: (index, angle) {
                        final usedAngle =
                            relativeAngleMode ? angle + angleValue : angleValue;
                        switch (index) {
                          case 0:
                            return RadarChartTitle(
                              text: 'カロリー',
                              angle: usedAngle,
                            );
                          case 1:
                            return RadarChartTitle(
                              text: 'タンパク質',
                              angle: usedAngle,
                            );
                          case 2:
                            return RadarChartTitle(
                              text: '脂質',
                              angle: usedAngle,
                            );
                          case 3:
                            return RadarChartTitle(
                              text: '炭水化物',
                              angle: usedAngle,
                            );
                          case 4:
                            return RadarChartTitle(
                              text: '塩分',
                              angle: usedAngle,
                            );

                          default:
                            return const RadarChartTitle(text: '');
                        }
                      },
                      tickCount: 1,
                      ticksTextStyle: const TextStyle(
                          color: Colors.transparent, fontSize: 10),
                      tickBorderData:
                          const BorderSide(color: Colors.transparent),
                      gridBorderData: BorderSide(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                          width: 2),
                    ),
                    swapAnimationDuration: const Duration(milliseconds: 400),
                  ),
                )
              ],
            );
            // StreamBuilder(
            //   stream: value,
            //   builder: (context, snapshot) {
            //     if (!snapshot.hasData) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (snapshot.hasError) {
            //       return const Text(
            //           'エラーが発生しました。:null check operator used on a null value');
            //     } else {
            //       final recipe = snapshot.data!;
            //       final recipeLength = recipe.length;
            //       debugPrint('recipeLength: $recipeLength');

            //       for (int j = 0; j < recipeLength; j++) {
            //         final calorie = double.tryParse(recipe[j].calorie) ?? 0;
            //         final protein = double.tryParse(recipe[j].protein) ?? 0;
            //         final fat = double.tryParse(recipe[j].fat) ?? 0;
            //         final carbohydrate =
            //             double.tryParse(recipe[j].carbohydrate) ?? 0;
            //         final salt = double.tryParse(recipe[j].salt) ?? 0;

            //         recipeIngredients['calorie'] =
            //             ((recipeIngredients['calorie'] ?? 0) + calorie);
            //         recipeIngredients['protein'] =
            //             ((recipeIngredients['protein'] ?? 0) + protein);
            //         recipeIngredients['fat'] =
            //             ((recipeIngredients['fat'] ?? 0) + fat);
            //         recipeIngredients['carbohydrate'] =
            //             ((recipeIngredients['carbohydrate'] ?? 0) +
            //                 carbohydrate);
            //         recipeIngredients['salt'] =
            //             ((recipeIngredients['salt'] ?? 0) + salt);
            //         debugPrint(
            //             [calorie, protein, fat, carbohydrate, salt].toString());
            //       }

            //       for (int j = 0; j < recipeLength; j++) {
            //         final calorie = double.tryParse(recipe[j].calorie) ?? 0;
            //         final protein = double.tryParse(recipe[j].protein) ?? 0;
            //         final fat = double.tryParse(recipe[j].fat) ?? 0;
            //         final carbohydrate =
            //             double.tryParse(recipe[j].carbohydrate) ?? 0;
            //         final salt = double.tryParse(recipe[j].salt) ?? 0;

            //         recipeIngredients['calorie'] =
            //             ((recipeIngredients['calorie'] ?? 0) + calorie);
            //         recipeIngredients['protein'] =
            //             ((recipeIngredients['protein'] ?? 0) + protein);
            //         recipeIngredients['fat'] =
            //             ((recipeIngredients['fat'] ?? 0) + fat);
            //         recipeIngredients['carbohydrate'] =
            //             ((recipeIngredients['carbohydrate'] ?? 0) +
            //                 carbohydrate);
            //         recipeIngredients['salt'] =
            //             ((recipeIngredients['salt'] ?? 0) + salt);
            //       }

            //       recipeIngredients['calorie'] =
            //           (recipeIngredients['calorie'] ?? 0) /
            //               recipeLength /
            //               dailyIntake['calorie']!;
            //       recipeIngredients['protein'] =
            //           (recipeIngredients['protein'] ?? 0) /
            //               recipeLength /
            //               dailyIntake['protein']!;
            //       recipeIngredients['fat'] = (recipeIngredients['fat'] ?? 0) /
            //           recipeLength /
            //           dailyIntake['fat']!;
            //       recipeIngredients['carbohydrate'] =
            //           (recipeIngredients['carbohydrate'] ?? 0) /
            //               recipeLength /
            //               dailyIntake['carbohydrate']!;
            //       recipeIngredients['salt'] = (recipeIngredients['salt'] ?? 0) /
            //           recipeLength /
            //           dailyIntake['salt']!;

            //       return Column(
            //         children: [
            //           SizedBox(
            //             width: MediaQuery.of(context).size.width * 0.9,
            //             height: MediaQuery.of(context).size.width * 0.9,
            //             child: RadarChart(
            //               RadarChartData(
            //                 radarTouchData: RadarTouchData(
            //                   touchCallback: (FlTouchEvent event, response) {
            //                     if (!event.isInterestedForInteractions) {
            //                       setState(() {
            //                         selectedDataSetIndex = -1;
            //                       });
            //                       return;
            //                     }
            //                     setState(() {
            //                       selectedDataSetIndex = response
            //                               ?.touchedSpot?.touchedDataSetIndex ??
            //                           -1;
            //                     });
            //                   },
            //                 ),
            //                 dataSets: showingDataSets(),
            //                 radarBackgroundColor: Colors.transparent,
            //                 borderData: FlBorderData(show: false),
            //                 radarBorderData:
            //                     const BorderSide(color: Colors.transparent),
            //                 titlePositionPercentageOffset: 0.2,
            //                 titleTextStyle: TextStyle(
            //                     color:
            //                         Theme.of(context).colorScheme.onBackground,
            //                     fontSize: 14),
            //                 getTitle: (index, angle) {
            //                   final usedAngle = relativeAngleMode
            //                       ? angle + angleValue
            //                       : angleValue;
            //                   switch (index) {
            //                     case 0:
            //                       return RadarChartTitle(
            //                         text: 'カロリー',
            //                         angle: usedAngle,
            //                       );
            //                     case 1:
            //                       return RadarChartTitle(
            //                         text: 'タンパク質',
            //                         angle: usedAngle,
            //                       );
            //                     case 2:
            //                       return RadarChartTitle(
            //                         text: '脂質',
            //                         angle: usedAngle,
            //                       );
            //                     case 3:
            //                       return RadarChartTitle(
            //                         text: '炭水化物',
            //                         angle: usedAngle,
            //                       );
            //                     case 4:
            //                       return RadarChartTitle(
            //                         text: '塩分',
            //                         angle: usedAngle,
            //                       );

            //                     default:
            //                       return const RadarChartTitle(text: '');
            //                   }
            //                 },
            //                 tickCount: 1,
            //                 ticksTextStyle: const TextStyle(
            //                     color: Colors.transparent, fontSize: 10),
            //                 tickBorderData:
            //                     const BorderSide(color: Colors.transparent),
            //                 gridBorderData: BorderSide(
            //                     color: Theme.of(context)
            //                         .colorScheme
            //                         .surfaceVariant,
            //                     width: 2),
            //               ),
            //               swapAnimationDuration:
            //                   const Duration(milliseconds: 400),
            //             ),
            //           )
            //         ],
            //       );
            //     }
            //   },
            // );
          },
          error: (Object error, StackTrace stackTrace) {
            return const Text('エラーが発生しました。再度お試しください。');
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        )
      ],
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == selectedDataSetIndex
          ? true
          : selectedDataSetIndex == -1
              ? true
              : false;

      return RadarDataSet(
        fillColor: isSelected
            ? rawDataSet.color.withOpacity(0.2)
            : rawDataSet.color.withOpacity(0.05),
        borderColor:
            isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 3 : 2,
        dataEntries:
            rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 2.3 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    debugPrint(recipeIngredients.values.toList().toString());
    debugPrint(dailyIntake.values.toList().toString());
    return [
      RawDataSet(
        title: 'Daily Intake',
        color: Theme.of(context).colorScheme.outline.withOpacity(0.5),
        values: [1, 1, 1, 1, 1],
      ),
      RawDataSet(
        title: 'Nutrition',
        color: Theme.of(context).colorScheme.primary,
        values: recipeIngredients.values.toList(),
      ),
    ];
  }
}
