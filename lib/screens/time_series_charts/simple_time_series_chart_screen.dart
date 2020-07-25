import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales_model.dart';

class SimpleTimeSeriesChartScreen extends StatelessWidget {
  static List<charts.Series<TimeSeriesSalesModel, DateTime>>
      createSampleData() {
    final data = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 4, 5), sales: 2),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 4, 30), sales: 40),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 5, 9), sales: 15),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 5, 20), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 10), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 25), sales: 45),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 2), sales: 30),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 15), sales: 75),
      // TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 20), sales: 80),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 8, 1), sales: 35),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 8, 25), sales: 100),
    ];

    return [
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Sales',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Time Series Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.TimeSeriesChart(
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
