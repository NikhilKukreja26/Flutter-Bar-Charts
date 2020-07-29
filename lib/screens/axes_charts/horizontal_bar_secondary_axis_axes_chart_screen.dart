import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'bar_secondary_axis_axes_chart_screen.dart';

class HorizontalBarSecondaryAxisAxesChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Bar Secondary Axis Axes Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              BarSecondaryAxisAxesChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              vertical: false,
            ),
          ),
        ),
      ),
    );
  }
}
