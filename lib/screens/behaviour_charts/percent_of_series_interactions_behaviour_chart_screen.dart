import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class PercentOfSeriesInteractionBehaviourChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final desktopData = [
      OrdinalSalesModel(year: '2013', sales: 5),
      OrdinalSalesModel(year: '2014', sales: 25),
      OrdinalSalesModel(year: '2015', sales: 50),
      OrdinalSalesModel(year: '2016', sales: 75),
      OrdinalSalesModel(year: '2017', sales: 100),
      OrdinalSalesModel(year: '2018', sales: 125),
      OrdinalSalesModel(year: '2019', sales: 200),
      OrdinalSalesModel(year: '2020', sales: 150),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop Data',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: desktopData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percent Of Series Interaction Behaviour Chart'),
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
                charts.PercentInjector(
                  totalType: charts.PercentInjectorTotalType.series,
                ),
              ],
              primaryMeasureAxis: charts.PercentAxisSpec(),
            ),
          ),
        ),
      ),
    );
  }
}
