import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'pattern_forward_hatch_bar_chart_screen.dart';

class HorizontalPatternForwardHatchBarChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Pattern Forward Hatch Bar Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              PatternForwardHatchBarChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.grouped,
              vertical: false,
            ),
          ),
        ),
      ),
    );
  }
}
