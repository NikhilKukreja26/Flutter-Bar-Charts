import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'measure_axis_label_axes_chart_screen.dart';

class HiddenTicksAndLabelAxisAxesChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hidden Ticks And Label Axis Axes Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              MeasureAxisLabelAxesChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.NoneRenderSpec(),
              ),
              domainAxis: charts.OrdinalAxisSpec(
                showAxisLine: true,
                renderSpec: charts.NoneRenderSpec(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
