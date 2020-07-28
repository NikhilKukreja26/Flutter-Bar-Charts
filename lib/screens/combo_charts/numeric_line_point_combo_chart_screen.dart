import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class NumericLinePointComboChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final desktopData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 75),
    ];

    final tableData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 200),
      LineSalesModel(year: 3, sales: 150),
    ];

    final mobileData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 200),
      LineSalesModel(year: 3, sales: 150)
    ];

    return [
      charts.Series<LineSalesModel, int>(
        id: 'Desktop',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: desktopData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Table',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: tableData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Mobile',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: mobileData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      )..setAttribute(charts.rendererIdKey, 'customPoint'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeric Line Point Combo Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.NumericComboChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: new charts.LineRendererConfig(),
              // Custom renderer configuration for the point series.
              customSeriesRenderers: [
                new charts.PointRendererConfig(
                    // ID used to link series to this renderer.
                    customRendererId: 'customPoint')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
