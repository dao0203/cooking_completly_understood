// ignore_for_file: library_private_types_in_public_api
import 'package:cooking_completly_understood/ui/state/recipe_state.dart';
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
  var recipeIngredients = [0.0, 0.0, 0.0, 0.0, 0.0];

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
          data: (value) {
            return StreamBuilder(
              stream: value,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return const Text(
                      'エラーが発生しました。:null check operator used on a null value');
                } else {
                  final recipe = snapshot.data!;
                  var recipeLength = recipe.length;

                  var total = 0.0;

                  // カロリー
                  for (int j = 0; j < recipeLength; j++) {
                    total += double.parse(recipe[j].calorie);
                  }
                  recipeIngredients[0] = total / recipeLength;
                  total = 0;

                  // タンパク質
                  for (int j = 0; j < recipeLength; j++) {
                    total += double.parse(recipe[j].protein);
                  }
                  recipeIngredients[1] = total / recipeLength;
                  total = 0;

                  // 脂質
                  for (int j = 0; j < recipeLength; j++) {
                    total += double.parse(recipe[j].fat);
                  }
                  recipeIngredients[2] = total / recipeLength;
                  total = 0;

                  // 炭水化物
                  for (int j = 0; j < recipeLength; j++) {
                    total += double.parse(recipe[j].carbohydrate);
                  }
                  recipeIngredients[3] = total / recipeLength;
                  total = 0;

                  // 塩分
                  for (int j = 0; j < recipeLength; j++) {
                    total += double.parse(recipe[j].salt);
                  }
                  recipeIngredients[4] = total / recipeLength;
                  total = 0;

                  return Column(
                    children: [
                      
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.width * 0.9,
                            child: RadarChart(
                              RadarChartData(
                                radarTouchData: RadarTouchData(
                                  touchCallback:
                                      (FlTouchEvent event, response) {
                                    if (!event.isInterestedForInteractions) {
                                      setState(() {
                                        selectedDataSetIndex = -1;
                                      });
                                      return;
                                    }
                                    setState(() {
                                      selectedDataSetIndex = response
                                              ?.touchedSpot
                                              ?.touchedDataSetIndex ??
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground,
                                    fontSize: 14),
                                getTitle: (index, angle) {
                                  final usedAngle = relativeAngleMode
                                      ? angle + angleValue
                                      : angleValue;
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                    width: 2),
                              ),
                              swapAnimationDuration:
                                  const Duration(milliseconds: 400),
                            ),
                          )
                          
                    ],
                  );
                }
              },
            );
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
    return [
      RawDataSet(
        title: 'Nutrition',
        color: Theme.of(context).colorScheme.primary,
        values: [
          recipeIngredients[0],
          recipeIngredients[1],
          recipeIngredients[2],
          recipeIngredients[3],
          recipeIngredients[4],
        ],
      ),
    ];
  }
}
