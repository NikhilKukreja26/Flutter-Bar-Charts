import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/linear_sales.dart';

class SimpleScatterPlotChartScreen extends StatelessWidget {
  static List<charts.Series<LinearSales, int>> createSampleData() {
    final data = [
      LinearSales(year: 0, sales: 5, radius: 3.0),
      LinearSales(year: 10, sales: 25, radius: 5.0),
      LinearSales(year: 12, sales: 75, radius: 4.0),
      LinearSales(year: 13, sales: 225, radius: 5.0),
      LinearSales(year: 16, sales: 50, radius: 4.0),
      LinearSales(year: 24, sales: 75, radius: 3.0),
      LinearSales(year: 25, sales: 100, radius: 3.0),
      LinearSales(year: 34, sales: 150, radius: 5.0),
      LinearSales(year: 37, sales: 10, radius: 4.5),
      LinearSales(year: 45, sales: 300, radius: 8.0),
      LinearSales(year: 52, sales: 15, radius: 4.0),
      LinearSales(year: 56, sales: 200, radius: 7.0),
    ];

    final maxMeasure = 300.0;

    return [
      charts.Series<LinearSales, int>(
          id: 'Sales',
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: data,
          radiusPxFn: (LinearSales sales, _) => sales.radius,
          colorFn: (LinearSales sales, _) {
            final bucket = sales.sales / maxMeasure;

            if (bucket < 1 / 3) {
              return charts.MaterialPalette.blue.shadeDefault;
            } else if (bucket < 2 / 3) {
              return charts.MaterialPalette.red.shadeDefault;
            } else {
              return charts.MaterialPalette.green.shadeDefault;
            }
          }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Scatter Plot Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.ScatterPlotChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ),
    );
  }
}
