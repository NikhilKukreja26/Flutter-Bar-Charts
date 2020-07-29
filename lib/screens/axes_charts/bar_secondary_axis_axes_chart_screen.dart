import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class BarSecondaryAxisAxesChartScreen extends StatelessWidget {
  static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';

  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2017', sales: 5000),
      OrdinalSalesModel(year: '2018', sales: 25000),
      OrdinalSalesModel(year: '2019', sales: 100000),
      OrdinalSalesModel(year: '2020', sales: 750000),
    ];

    final losAngelesSalesData = [
      OrdinalSalesModel(year: '2017', sales: 25),
      OrdinalSalesModel(year: '2018', sales: 50),
      OrdinalSalesModel(year: '2019', sales: 10),
      OrdinalSalesModel(year: '2020', sales: 20),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: globalSalesData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Los Angeles Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: losAngelesSalesData,
      )..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Secondary Axis Axes Chart'),
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
              barGroupingType: charts.BarGroupingType.grouped,
              primaryMeasureAxis: charts.NumericAxisSpec(
                tickProviderSpec: charts.BasicNumericTickProviderSpec(
                  desiredTickCount: 4,
                ),
              ),
              secondaryMeasureAxis: charts.NumericAxisSpec(
                tickProviderSpec: charts.BasicNumericTickProviderSpec(
                  desiredTickCount: 4,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
