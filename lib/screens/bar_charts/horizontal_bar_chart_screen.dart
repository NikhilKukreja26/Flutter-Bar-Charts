import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'simple_bar_chart_screen.dart';

class HorizontalBarChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Bar Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              SimpleBarChartScreen.createSampleData(),
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
