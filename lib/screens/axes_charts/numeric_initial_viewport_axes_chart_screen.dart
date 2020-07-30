import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/line_sales_model.dart';

class NumericInitialViewportAxesChartScreen extends StatelessWidget {
  static List<charts.Series<LineSalesModel, int>> createSampleData() {
    final data = [
      LineSalesModel(year: 0, sales: 5),
      LineSalesModel(year: 1, sales: 25),
      LineSalesModel(year: 2, sales: 100),
      LineSalesModel(year: 3, sales: 75),
      LineSalesModel(year: 4, sales: 55),
      LineSalesModel(year: 5, sales: 66),
      LineSalesModel(year: 6, sales: 110),
      LineSalesModel(year: 7, sales: 70),
      LineSalesModel(year: 8, sales: 20),
      LineSalesModel(year: 9, sales: 25),
      LineSalesModel(year: 10, sales: 45),
    ];
    return [
      charts.Series<LineSalesModel, int>(
        id: 'Sales,',
        domainFn: (LineSalesModel sales, _) => sales.year,
        measureFn: (LineSalesModel sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numeric Initial Viewport Axes Chart'),
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
              domainAxis: charts.NumericAxisSpec(
                viewport: charts.NumericExtents(3.0, 7.0),
              ),
              behaviors: [
                charts.PanAndZoomBehavior(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
