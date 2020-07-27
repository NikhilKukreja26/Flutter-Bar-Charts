import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ComparisonScatterPlotChartScreen extends StatelessWidget {
  static List<charts.Series<LineaSale, int>> createSampleData() {
    final data = [
      LineaSale(
          year: 10,
          yearLower: 7,
          yearUpper: 10,
          sales: 25,
          salesLower: 20,
          salesUpper: 25,
          radius: 5.0),
      LineaSale(
          year: 13,
          yearLower: 11,
          yearUpper: 13,
          sales: 225,
          salesLower: 205,
          salesUpper: 225,
          radius: 5.0),
      LineaSale(
          year: 34,
          yearLower: 34,
          yearUpper: 24,
          sales: 150,
          salesLower: 150,
          salesUpper: 130,
          radius: 5.0),
      LineaSale(
          year: 37,
          yearLower: 37,
          yearUpper: 57,
          sales: 10,
          salesLower: 10,
          salesUpper: 12,
          radius: 6.5),
      LineaSale(
          year: 45,
          yearLower: 35,
          yearUpper: 45,
          sales: 260,
          salesLower: 300,
          salesUpper: 260,
          radius: 8.0),
      LineaSale(
          year: 56,
          yearLower: 46,
          yearUpper: 56,
          sales: 200,
          salesLower: 170,
          salesUpper: 200,
          radius: 7.0),
    ];

    final maxMeasure = 300;

    return [
      charts.Series<LineaSale, int>(
        id: 'Sales',
        domainFn: (LineaSale sales, _) => sales.year,
        domainLowerBoundFn: (LineaSale sales, _) => sales.yearLower,
        domainUpperBoundFn: (LineaSale sales, _) => sales.yearUpper,
        measureFn: (LineaSale sales, _) => sales.sales,
        measureLowerBoundFn: (LineaSale sales, _) => sales.salesLower,
        measureUpperBoundFn: (LineaSale sales, _) => sales.salesUpper,
        data: data,
        radiusPxFn: (LineaSale sales, _) => sales.radius,
        colorFn: (LineaSale sales, _) {
          // Bucket the measure column value into 3 distinct colors.
          final bucket = sales.sales / maxMeasure;

          if (bucket < 1 / 3) {
            return charts.MaterialPalette.blue.shadeDefault;
          } else if (bucket < 2 / 3) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.green.shadeDefault;
          }
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comparison Scatter Plot Chart'),
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
              defaultRenderer: charts.PointRendererConfig(
                pointRendererDecorators: [
                  charts.ComparisonPointsDecorator(
                    symbolRenderer: charts.CylinderSymbolRenderer(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LineaSale {
  final int year;
  final int yearLower;
  final int yearUpper;
  final int sales;
  final int salesLower;
  final int salesUpper;
  final double radius;

  LineaSale({
    this.year,
    this.yearLower,
    this.yearUpper,
    this.sales,
    this.salesLower,
    this.salesUpper,
    this.radius,
  });
}
