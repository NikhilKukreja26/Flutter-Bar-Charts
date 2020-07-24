import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'index.dart';

class EndPointsAxisTimeSeriesChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('End Points Axis Time Series Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.TimeSeriesChart(
              SimpleTimeSeriesChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              domainAxis: charts.EndPointsTimeAxisSpec(),
            ),
          ),
        ),
      ),
    );
  }
}
