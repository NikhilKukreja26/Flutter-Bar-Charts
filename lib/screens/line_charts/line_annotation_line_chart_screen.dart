import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'index.dart';

class LineAnnotationLineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Annotation Line Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.LineChart(
              SimpleLineChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              behaviors: [
                charts.RangeAnnotation(
                  [
                    charts.LineAnnotationSegment(
                        1.0, charts.RangeAnnotationAxisType.domain,
                        startLabel: 'Domain 1'),
                    charts.LineAnnotationSegment(
                        6, charts.RangeAnnotationAxisType.domain,
                        endLabel: 'Domain 2',
                        color: charts.MaterialPalette.gray.shade200),
                    charts.LineAnnotationSegment(
                        20, charts.RangeAnnotationAxisType.measure,
                        startLabel: 'Measure 1 Start',
                        endLabel: 'Measure 1 End',
                        color: charts.MaterialPalette.gray.shade300),
                    charts.LineAnnotationSegment(
                        65, charts.RangeAnnotationAxisType.measure,
                        startLabel: 'Measure 2 Start',
                        endLabel: 'Measure 2 End',
                        color: charts.MaterialPalette.gray.shade400),
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
