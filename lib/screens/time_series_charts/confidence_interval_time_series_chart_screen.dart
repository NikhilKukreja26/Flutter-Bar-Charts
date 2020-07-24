import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales_model.dart';

class ConfidenceIntervalTimeSeriesChartScreen extends StatelessWidget {
  static List<charts.Series<TimeSeriesSalesModel, DateTime>>
      createSampleData() {
    final data = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 5, 19), sales: 5),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 5, 26), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 3), sales: 100),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 10), sales: 75),
    ];

    return [
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Sales',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        measureLowerBoundFn: (TimeSeriesSalesModel sales, _) => sales.sales - 5,
        measureUpperBoundFn: (TimeSeriesSalesModel sales, _) => sales.sales + 5,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confidence Interval Time Series Chart'),
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
              dateTimeFactory: charts.LocalDateTimeFactory(),
            ),
          ),
        ),
      ),
    );
  }
}
