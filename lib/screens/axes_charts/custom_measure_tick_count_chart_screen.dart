import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'custom_axis_tick_formatter_axes_chart_screen.dart';

class CustomMeasureTickCountChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Measure Tick Count Axes Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.TimeSeriesChart(
              CustomAxisFormattersAxesChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              primaryMeasureAxis: charts.NumericAxisSpec(
                tickProviderSpec:
                    charts.BasicNumericTickProviderSpec(desiredTickCount: 2),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
