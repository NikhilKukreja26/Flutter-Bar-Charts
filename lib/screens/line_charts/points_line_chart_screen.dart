import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'index.dart';

class PointsLineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Line Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.LineChart(
              SimpleLineChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: charts.LineRendererConfig(
                includePoints: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
