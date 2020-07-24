import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales_model.dart';

class WithBarRendererTimeSeriesChartScreen extends StatelessWidget {
  static List<charts.Series<TimeSeriesSalesModel, DateTime>>
      createSampleData() {
    final data = [
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 1), sales: 5),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 2), sales: 5),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 3), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 4), sales: 100),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 5), sales: 75),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 6), sales: 88),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 7), sales: 65),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 8), sales: 91),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 9), sales: 100),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 10), sales: 111),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 11), sales: 90),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 12), sales: 50),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 13), sales: 40),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 14), sales: 30),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 15), sales: 40),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 16), sales: 50),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 17), sales: 30),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 18), sales: 35),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 19), sales: 40),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 20), sales: 32),
      TimeSeriesSalesModel(dateTime: DateTime(2017, 9, 21), sales: 31),
    ];
    return [
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Sales',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: data,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('With Bar Renderer Time Series Chart'),
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
              defaultRenderer: charts.BarRendererConfig<DateTime>(),
              defaultInteractions: false,
              behaviors: [
                charts.SelectNearest(),
                charts.DomainHighlighter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
