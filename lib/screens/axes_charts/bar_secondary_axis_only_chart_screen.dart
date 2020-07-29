import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class BarSecondaryAxisOnlyChartScreen extends StatelessWidget {
  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';

  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2016', sales: 500),
      OrdinalSalesModel(year: '2017', sales: 2500),
      OrdinalSalesModel(year: '2018', sales: 1000),
      OrdinalSalesModel(year: '2019', sales: 7500),
      OrdinalSalesModel(year: '2020', sales: 3000),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: globalSalesData,
      )..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Secondary Axis Only Axes Chart'),
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
            ),
          ),
        ),
      ),
    );
  }
}
