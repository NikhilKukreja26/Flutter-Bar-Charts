import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'simple_bar_chart_screen.dart';

class CustomRoundedBarChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Rounded Bar Chart'),
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
              defaultRenderer: new charts.BarRendererConfig(
                // By default, bar renderer will draw rounded bars with a constant
                // radius of 100.
                // To not have any rounded corners, use [NoCornerStrategy]
                // To change the radius of the bars, use [ConstCornerStrategy]
                cornerStrategy: const charts.ConstCornerStrategy(30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
