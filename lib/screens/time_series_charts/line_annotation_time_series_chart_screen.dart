import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'index.dart';

class LineAnnotationTimeSeriesChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Annotation Time Series Chart'),
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
              behaviors: [
                charts.RangeAnnotation(
                  [
                    charts.LineAnnotationSegment(
                      DateTime(2020, 6, 10),
                      charts.RangeAnnotationAxisType.domain,
                      startLabel: 'Jun 6',
                    ),
                    charts.LineAnnotationSegment(
                      DateTime(2020, 6, 30),
                      charts.RangeAnnotationAxisType.domain,
                      endLabel: 'Jun 30',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
