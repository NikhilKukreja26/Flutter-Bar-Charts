import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class InitialSelectionInteractionsChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final data = [
      OrdinalSalesModel(year: '2017', sales: 5),
      OrdinalSalesModel(year: '2018', sales: 25),
      OrdinalSalesModel(year: '2019', sales: 100),
      OrdinalSalesModel(year: '2020', sales: 75),
    ];
    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Sales',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Selection Interactions'),
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
              behaviors: [
                charts.InitialSelection(
                  selectedDataConfig: [
                    charts.SeriesDatumConfig<String>('Sales', '2020'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
