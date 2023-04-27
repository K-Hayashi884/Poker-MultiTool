import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({
    super.key,
  });

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<FlSpot>? data = [FlSpot(0, 1), FlSpot(1, 2), FlSpot(2, 5)];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: LineChart(
          LineChartData(
              lineBarsData: [LineChartBarData(spots: data)],
              lineTouchData:
                  LineTouchData(touchTooltipData: LineTouchTooltipData())),
        ),
      ),
    );
  }
}
