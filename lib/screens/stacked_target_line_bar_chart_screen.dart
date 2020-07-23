import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'grouped_target_line_bar_chart_screen.dart';

class StackedTargetLineBarChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stacked Target Line Bar Chart"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              GroupedTargetLineBarChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.stacked,
              customSeriesRenderers: [
                new charts.BarTargetLineRendererConfig<String>(
                  customRendererId: 'customTargetLine',
                  groupingType: charts.BarGroupingType.stacked,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
