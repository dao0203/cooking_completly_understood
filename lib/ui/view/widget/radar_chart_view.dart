import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RadarChartView extends StatefulWidget {
  const RadarChartView({super.key});
  final gridColor = const Color.fromARGB(255, 202, 52, 52);
  final titleColor = const Color.fromARGB(255, 27, 206, 158);
  final fashionColor = const Color.fromARGB(255, 152, 221, 61);
  final artColor = const Color.fromARGB(255, 34, 76, 154);
  final boxingColor = const Color.fromARGB(255, 230, 99, 242);
  final entertainmentColor = const Color.fromARGB(255, 198, 171, 176);
  final offRoadColor = const Color.fromARGB(255, 176, 113, 31);

  @override
  State<RadarChartView> createState() => _RadarCartState();
}

class _RadarCartState extends State<RadarChartView> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                    response?.touchedSpot?.touchedDataSetIndex ?? -1;
              });
            },
          ),
          dataSets: showingDataSets(),
          radarBackgroundColor: Colors.transparent,
          borderData: FlBorderData(show: false),
          radarBorderData: const BorderSide(color: Colors.transparent),
          titlePositionPercentageOffset: 0.2,
          titleTextStyle: TextStyle(color: widget.titleColor, fontSize: 14),
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
          ticksTextStyle:
              const TextStyle(color: Colors.transparent, fontSize: 10),
          tickBorderData: const BorderSide(color: Colors.transparent),
          gridBorderData: BorderSide(color: widget.gridColor, width: 2),
        ),
        swapAnimationDuration: const Duration(milliseconds: 400),
      ),
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
        color: widget.fashionColor,
        values: [
          10,
          20,
          30,
          40,
          50,
        ],
      ),
      
    ];
  }
}

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
