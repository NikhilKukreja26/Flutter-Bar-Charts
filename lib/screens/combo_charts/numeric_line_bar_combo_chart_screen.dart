import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class NumericLineBarComboChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final desktopData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 55),
      LineSalesModel(year: 3, sales: 75),
      LineSalesModel(year: 4, sales: 100),
      LineSalesModel(year: 5, sales: 45),
    ];

    final tableData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 55),
      LineSalesModel(year: 3, sales: 75),
      LineSalesModel(year: 4, sales: 100),
      LineSalesModel(year: 5, sales: 45),
    ];

    final mobileData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 80),
      LineSalesModel(year: 4, sales: 150),
      LineSalesModel(year: 5, sales: 200),
    ];

    return [
      charts.Series<LineSalesModel, int>(
        id: 'Desktop',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: desktopData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Table',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: tableData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Mobile',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: mobileData,
        colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
      )..setAttribute(charts.rendererIdKey, 'customLine'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeric Line Bar Combo Chart'),
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
              defaultRenderer: charts.BarRendererConfig(
                groupingType: charts.BarGroupingType.grouped,
              ),
              customSeriesRenderers: [
                charts.LineRendererConfig(
                  customRendererId: 'customLine',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
