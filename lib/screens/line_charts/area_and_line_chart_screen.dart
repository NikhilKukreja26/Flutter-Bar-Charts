import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class AreaAndLineChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final myDesktopData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 4, sales: 75),
    ];
    final myTabletData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 200),
      LineSalesModel(year: 4, sales: 150),
    ];
    return [
      charts.Series<LineSalesModel, int>(
        id: 'Desktop',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myDesktopData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      )..setAttribute(charts.rendererIdKey, 'CustomArea'),
      charts.Series<LineSalesModel, int>(
        id: 'Tablet',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myTabletData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Area And Line Chart'),
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
              customSeriesRenderers: [
                charts.LineRendererConfig(
                  customRendererId: 'CustomArea',
                  includeArea: true,
                  stacked: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
