import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class ShortTickAxisLengthAxesChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2016', sales: 2000),
      OrdinalSalesModel(year: '2017', sales: 5000),
      OrdinalSalesModel(year: '2018', sales: 100000),
      OrdinalSalesModel(year: '2019', sales: 750000),
      OrdinalSalesModel(year: '2020', sales: 250000),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Sales',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: globalSalesData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Short Tick Length Axis Axes Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.SmallTickRendererSpec(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
