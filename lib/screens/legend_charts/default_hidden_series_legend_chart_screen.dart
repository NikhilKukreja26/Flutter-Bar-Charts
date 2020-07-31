import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'legend_options_legends_chart_screen.dart';

class DefaultHiddenSeriesLegendChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default Hidden Series Legend Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              LegendOptionsLegendsChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.grouped,
              behaviors: [
                charts.SeriesLegend(
                  defaultHiddenSeries: ['Other'],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
