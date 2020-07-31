import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../pie_charts/simple_pie_chart_screen.dart';

class DatumLegendWithMeasuresLegendsChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datum Legend With Measure Legends Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.PieChart(
              SimplePieChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              behaviors: [
                charts.DatumLegend(
                  position: charts.BehaviorPosition.end,
                  horizontalFirst: false,
                  cellPadding: const EdgeInsets.only(right: 4.0, bottom: 4.0),
                  showMeasures: true,
                  legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
                  measureFormatter: (num value) {
                    return value == null ? '-' : '${value}k';
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
