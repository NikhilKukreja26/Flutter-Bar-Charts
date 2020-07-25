import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class DashedLinePatternLineChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final myDesktopData = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 75),
    ];

    var myTabletData = [
      LineSalesModel(year: 0, sales: 10),
      LineSalesModel(year: 1, sales: 50),
      LineSalesModel(year: 2, sales: 200),
      LineSalesModel(year: 3, sales: 150),
    ];

    var myMobileData = [
      LineSalesModel(year: 0, sales: 15),
      LineSalesModel(year: 1, sales: 75),
      LineSalesModel(year: 2, sales: 300),
      LineSalesModel(year: 3, sales: 225),
    ];

    return [
      charts.Series<LineSalesModel, int>(
        id: 'Desktop',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: myDesktopData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Tablet',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        dashPatternFn: (_, __) => [2, 2],
        data: myTabletData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      charts.Series<LineSalesModel, int>(
        id: 'Mobile',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        dashPatternFn: (_, __) => [8, 3, 2, 3],
        data: myMobileData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashed Pattern Line Chart'),
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
            ),
          ),
        ),
      ),
    );
  }
}
