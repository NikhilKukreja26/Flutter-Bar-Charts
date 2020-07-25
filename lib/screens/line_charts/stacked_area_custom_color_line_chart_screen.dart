import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class StackedAreaCustomColorLineChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final myDesktopData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 75),
      LineSalesModel(year: 4, sales: 90),
    ];
    final myTabletData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 200),
      LineSalesModel(year: 3, sales: 150),
      LineSalesModel(year: 4, sales: 210),
    ];
    final myMobileData = [
      LineSalesModel(year: 0, sales: 15),
      LineSalesModel(year: 1, sales: 75),
      LineSalesModel(year: 2, sales: 300),
      LineSalesModel(year: 3, sales: 225),
      LineSalesModel(year: 4, sales: 250),
    ];

    return [
      charts.Series<LineSalesModel, int>(
        id: 'Desktop',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myDesktopData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Tablet',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myTabletData,
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.purple.shadeDefault.lighter,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Mobile',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myMobileData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        areaColorFn: (_, __) =>
            charts.MaterialPalette.green.shadeDefault.lighter,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked Area Custom Color Line Chart'),
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
                includePoints: true,
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
