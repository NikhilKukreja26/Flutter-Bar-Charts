import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class SimpleLineChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final data = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 15),
      LineSalesModel(year: 3, sales: 40),
      LineSalesModel(year: 4, sales: 100),
      LineSalesModel(year: 5, sales: 75),
      LineSalesModel(year: 6, sales: 85),
    ];
    return [
      charts.Series<LineSalesModel, int>(
        id: 'Sales',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Line Chart'),
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
