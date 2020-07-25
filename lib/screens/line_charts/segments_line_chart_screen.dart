import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/linear_sales_model.dart';

class SegmentsLineChartScreen extends StatelessWidget {
  static List<charts.Series<LinearSalesModel, int>> createSampleData() {
    final colorChangeData = [
      LinearSalesModel(
          year: 0, sales: 5, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 1, sales: 15, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 2, sales: 25, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 3, sales: 75, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 4, sales: 100, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 5, sales: 90, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 6, sales: 75, dashPattern: null, strokeWidthPx: 2.0),
    ];

    final dashPatterrnChangeData = [
      LinearSalesModel(
          year: 0, sales: 5, dashPattern: [2, 2], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 1, sales: 15, dashPattern: [2, 2], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 2, sales: 25, dashPattern: [4, 4], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 3, sales: 75, dashPattern: [4, 4], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 4, sales: 100, dashPattern: [4, 4], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 5, sales: 90, dashPattern: [8, 3, 2, 3], strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 6, sales: 75, dashPattern: [8, 3, 2, 3], strokeWidthPx: 2.0),
    ];

    final strokeWidthChangeData = [
      LinearSalesModel(
          year: 0, sales: 5, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 1, sales: 15, dashPattern: null, strokeWidthPx: 2.0),
      LinearSalesModel(
          year: 2, sales: 25, dashPattern: null, strokeWidthPx: 4.0),
      LinearSalesModel(
          year: 3, sales: 75, dashPattern: null, strokeWidthPx: 4.0),
      LinearSalesModel(
          year: 4, sales: 100, dashPattern: null, strokeWidthPx: 4.0),
      LinearSalesModel(
          year: 5, sales: 90, dashPattern: null, strokeWidthPx: 6.0),
      LinearSalesModel(
          year: 6, sales: 75, dashPattern: null, strokeWidthPx: 6.0),
    ];
    final blue = charts.MaterialPalette.blue.makeShades(2);
    final red = charts.MaterialPalette.red.makeShades(2);
    final green = charts.MaterialPalette.green.makeShades(2);

    return [
      charts.Series<LinearSalesModel, int>(
        id: 'Color Change',
        domainFn: (LinearSalesModel sales, _) => sales.year,
        measureFn: (LinearSalesModel sales, _) => sales.sales,
        data: colorChangeData,
        colorFn: (LinearSalesModel sales, _) =>
            sales.year % 2 == 0 ? blue[1] : blue[0],
        dashPatternFn: (LinearSalesModel sales, _) => sales.dashPattern,
        strokeWidthPxFn: (LinearSalesModel sales, _) => sales.strokeWidthPx,
      ),
      charts.Series<LinearSalesModel, int>(
        id: 'Dash Pattern Change',
        domainFn: (LinearSalesModel sales, _) => sales.year,
        measureFn: (LinearSalesModel sales, _) => sales.sales,
        data: dashPatterrnChangeData,
        colorFn: (LinearSalesModel sales, _) =>
            sales.year % 2 == 0 ? red[1] : red[0],
        dashPatternFn: (LinearSalesModel sales, _) => sales.dashPattern,
        strokeWidthPxFn: (LinearSalesModel sales, _) => sales.strokeWidthPx,
      ),
      charts.Series<LinearSalesModel, int>(
        id: 'Color Change',
        domainFn: (LinearSalesModel sales, _) => sales.year,
        measureFn: (LinearSalesModel sales, _) => sales.sales,
        data: strokeWidthChangeData,
        colorFn: (LinearSalesModel sales, _) =>
            sales.year % 2 == 0 ? green[1] : green[0],
        dashPatternFn: (LinearSalesModel sales, _) => sales.dashPattern,
        strokeWidthPxFn: (LinearSalesModel sales, _) => sales.strokeWidthPx,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segments Line Chart'),
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
              defaultRenderer: charts.LineRendererConfig(
                includeArea: true,
                stacked: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
