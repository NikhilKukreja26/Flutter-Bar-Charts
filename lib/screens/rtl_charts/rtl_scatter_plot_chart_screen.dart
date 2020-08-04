import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../scatter_plot/simple_scatter_plot_chart_screen.dart';

class RtlScatterPlotChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rtl Scatter Plot Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: charts.ScatterPlotChart(
                SimpleScatterPlotChartScreen.createSampleData(),
                animate: true,
                animationDuration: const Duration(milliseconds: 500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
