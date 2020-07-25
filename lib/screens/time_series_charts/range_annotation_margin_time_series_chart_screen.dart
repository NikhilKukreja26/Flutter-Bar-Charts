import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'index.dart';

class RangeAnnotationMarginTimeSeriesChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Annotation Margin Time Series Chart'),
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
              layoutConfig: charts.LayoutConfig(
                leftMarginSpec: new charts.MarginSpec.fixedPixel(0),
                topMarginSpec: new charts.MarginSpec.fixedPixel(20),
                rightMarginSpec: new charts.MarginSpec.fixedPixel(0),
                bottomMarginSpec: new charts.MarginSpec.fixedPixel(20),
              ),
              behaviors: [
                charts.RangeAnnotation(
                  [
                    charts.RangeAnnotationSegment(
                      DateTime(2020, 6, 5),
                      DateTime(2020, 6, 30),
                      charts.RangeAnnotationAxisType.domain,
                      startLabel: 'D1 Start',
                      endLabel: 'D1 End',
                      labelAnchor: charts.AnnotationLabelAnchor.end,
                      color: charts.MaterialPalette.gray.shade200,
                      labelDirection:
                          charts.AnnotationLabelDirection.horizontal,
                    ),
                    charts.RangeAnnotationSegment(
                      10,
                      20,
                      charts.RangeAnnotationAxisType.measure,
                      startLabel: 'M1 Start',
                      endLabel: 'M1 End',
                      labelAnchor: charts.AnnotationLabelAnchor.end,
                      color: charts.MaterialPalette.gray.shade300,
                    ),
                    charts.RangeAnnotationSegment(
                      35,
                      65,
                      charts.RangeAnnotationAxisType.measure,
                      startLabel: 'M2 Start',
                      endLabel: 'M2 End',
                      labelAnchor: charts.AnnotationLabelAnchor.start,
                      color: charts.MaterialPalette.gray.shade300,
                    ),
                  ],
                  // defaultLabelPosition: charts.AnnotationLabelPosition.margin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
