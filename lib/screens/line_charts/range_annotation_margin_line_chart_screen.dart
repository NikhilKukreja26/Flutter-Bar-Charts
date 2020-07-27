import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class RangeAnnotationMarginLineChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final data = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 75),
    ];
    return [
      charts.Series<LineSalesModel, int>(
        id: 'Sales',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Annotation Margin Line Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.LineChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              layoutConfig: new charts.LayoutConfig(
                leftMarginSpec: new charts.MarginSpec.fixedPixel(60),
                topMarginSpec: new charts.MarginSpec.fixedPixel(20),
                rightMarginSpec: new charts.MarginSpec.fixedPixel(60),
                bottomMarginSpec: new charts.MarginSpec.fixedPixel(20),
              ),
              behaviors: [
                charts.RangeAnnotation(
                  [
                    charts.RangeAnnotationSegment(
                      0.5,
                      1.0,
                      charts.RangeAnnotationAxisType.domain,
                      startLabel: 'D1 Start',
                      endLabel: 'D1 End',
                      labelAnchor: charts.AnnotationLabelAnchor.end,
                    ),
                    charts.RangeAnnotationSegment(
                      15,
                      20,
                      charts.RangeAnnotationAxisType.domain,
                      startLabel: 'M1 Start',
                      endLabel: 'M2 Start',
                      labelAnchor: charts.AnnotationLabelAnchor.end,
                      labelDirection:
                          charts.AnnotationLabelDirection.horizontal,
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
