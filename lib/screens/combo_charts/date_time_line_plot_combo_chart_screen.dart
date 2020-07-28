import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales_model.dart';

class DateTimeLinePlotComboChartScreen extends StatelessWidget {
  static List<charts.Series<TimeSeriesSalesModel, DateTime>>
      createSampleData() {
    final desktopSalesData = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 19), sales: 5),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 26), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 3), sales: 100),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 10), sales: 75),
    ];
    final tableSalesData = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 19), sales: 10),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 26), sales: 50),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 3), sales: 200),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 10), sales: 150),
    ];
    final mobileSalesData = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 19), sales: 10),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 26), sales: 50),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 3), sales: 200),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 10), sales: 150),
    ];
    return [
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Desktop',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: desktopSalesData,
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
      ),
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Table',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: tableSalesData,
        colorFn: (_, __) => charts.MaterialPalette.indigo.shadeDefault,
      ),
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'Mobile',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: mobileSalesData,
        colorFn: (_, __) => charts.MaterialPalette.pink.shadeDefault,
      )..setAttribute(charts.rendererIdKey, 'customPoint'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Line Plot Combo Chart'),
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
              defaultRenderer: charts.LineRendererConfig(),
              customSeriesRenderers: [
                charts.PointRendererConfig(
                  customRendererId: 'customPoint',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
