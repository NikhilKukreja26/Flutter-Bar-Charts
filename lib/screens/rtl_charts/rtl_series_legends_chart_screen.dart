import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../legend_charts/simple_series_legend_chart_screen.dart';

class RtlSeriesLegendsChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rtl Series Legends Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: charts.BarChart(
                SimpleSeriesLegendChartScreen.createSampleData(),
                animate: true,
                animationDuration: const Duration(milliseconds: 500),
                barGroupingType: charts.BarGroupingType.grouped,
                behaviors: [
                  charts.SeriesLegend(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
