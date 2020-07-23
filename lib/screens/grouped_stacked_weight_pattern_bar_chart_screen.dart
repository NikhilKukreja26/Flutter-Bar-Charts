import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'grouped_stacked_bar_chart_screen.dart';

class GroupedStackedPatternWeightBarChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped Stacked Pattern Weight Bar Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              GroupedStackedBarChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: new charts.BarRendererConfig(
                groupingType: charts.BarGroupingType.groupedStacked,
                weightPattern: [2, 1],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
