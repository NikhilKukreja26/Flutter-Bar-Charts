import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class DonutPieChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final data = [
      LineSalesModel(year: 0, sales: 100),
      LineSalesModel(year: 1, sales: 75),
      LineSalesModel(year: 2, sales: 55),
      LineSalesModel(year: 3, sales: 25),
      LineSalesModel(year: 4, sales: 5),
    ];
    return [
      charts.Series<LineSalesModel, int>(
        id: 'Sales',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donut Pie Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.PieChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: charts.ArcRendererConfig(
                arcWidth: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
