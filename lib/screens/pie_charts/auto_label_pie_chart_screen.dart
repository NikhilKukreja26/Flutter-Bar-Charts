import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'simple_pie_chart_screen.dart';

class AutoLabelPieChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auto Label Pie Chart'),
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
              defaultRenderer: charts.ArcRendererConfig(
                arcWidth: 60,
                arcRendererDecorators: [
                  charts.ArcLabelDecorator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
