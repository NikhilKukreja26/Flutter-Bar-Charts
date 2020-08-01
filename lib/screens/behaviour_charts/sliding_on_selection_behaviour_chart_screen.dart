import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../axes_charts/ordinal_initial_viewport_axes_chart_screen.dart';

class SlidingOnSelectionBehaviourChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliding On Selection Behaviour Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              OrdinalInitialViewportAxesChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              domainAxis: charts.OrdinalAxisSpec(
                viewport: charts.OrdinalViewport('2018', 4),
              ),
              behaviors: [
                new charts.SlidingViewport(),
                charts.PanAndZoomBehavior(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
