import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class ShapesScatterPlotChartScreen extends StatelessWidget {
  static List<charts.Series<LinearSales, int>> createSampleData() {
    final data = [
      LinearSales(
          year: 0,
          sales: 5,
          radius: 3.0,
          shape: 'circle',
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 10,
          sales: 25,
          radius: 5.0,
          shape: 'circle',
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 12,
          sales: 75,
          radius: 3.0,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 13,
          sales: 225,
          radius: 5.0,
          shape: 'circle',
          fillColor: charts.MaterialPalette.white,
          strokeWidth: 2.0),
      LinearSales(
          year: 16,
          sales: 50,
          radius: 4.0,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 24,
          sales: 75,
          radius: 3.0,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 25,
          sales: 100,
          radius: 3.0,
          shape: 'circle',
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 34,
          sales: 150,
          radius: 5.0,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 37,
          sales: 10,
          radius: 4.5,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 45,
          sales: 300,
          radius: 8.0,
          shape: 'circle',
          fillColor: charts.MaterialPalette.white,
          strokeWidth: 2.0),
      LinearSales(
          year: 52,
          sales: 15,
          radius: 4.0,
          shape: null,
          fillColor: null,
          strokeWidth: null),
      LinearSales(
          year: 56,
          sales: 200,
          radius: 7.0,
          shape: null,
          fillColor: charts.MaterialPalette.white,
          strokeWidth: 2.0),
    ];
    final maxMeasure = 300;

    return [
      charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        radiusPxFn: (LinearSales sales, _) => sales.radius,
        fillColorFn: (LinearSales row, _) => row.fillColor,
        strokeWidthPxFn: (LinearSales row, _) => row.strokeWidth,
        data: data,
        colorFn: (LinearSales sales, _) {
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
      )
        ..setAttribute(
            charts.pointSymbolRendererFnKey, (int index) => data[index].shape)
        ..setAttribute(charts.pointSymbolRendererIdKey, 'rect')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shapes Scatter Plot Chart'),
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
              defaultRenderer: charts.PointRendererConfig<num>(
                customSymbolRenderers: {
                  'circle': charts.CircleSymbolRenderer(),
                  'rect': charts.RectSymbolRenderer(),
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinearSales {
  final int year;
  final int sales;
  final double radius;
  final String shape;
  final charts.Color fillColor;
  final double strokeWidth;

  LinearSales({
    this.year,
    this.sales,
    this.radius,
    this.shape,
    this.fillColor,
    this.strokeWidth,
  });
}
