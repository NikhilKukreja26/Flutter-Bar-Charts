import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';

import '../../models/custom_row_model.dart';

class CustomAxisFormattersAxesChartScreen extends StatelessWidget {
  final simpleCurrencyFormatter =
      new charts.BasicNumericTickFormatterSpec.fromNumberFormat(
          new NumberFormat.simpleCurrency());

  static List<charts.Series<CustomRowModel, DateTime>> createSampleData() {
    final data = [
      CustomRowModel(timeStamp: DateTime(2020, 6, 25), cost: 6),
      CustomRowModel(timeStamp: DateTime(2020, 6, 26), cost: 8),
      CustomRowModel(timeStamp: DateTime(2020, 6, 27), cost: 6),
      CustomRowModel(timeStamp: DateTime(2020, 6, 28), cost: 9),
      CustomRowModel(timeStamp: DateTime(2020, 6, 29), cost: 11),
      CustomRowModel(timeStamp: DateTime(2020, 6, 30), cost: 15),
      CustomRowModel(timeStamp: DateTime(2020, 7, 01), cost: 25),
      CustomRowModel(timeStamp: DateTime(2020, 7, 02), cost: 33),
      CustomRowModel(timeStamp: DateTime(2020, 7, 03), cost: 27),
      CustomRowModel(timeStamp: DateTime(2020, 7, 04), cost: 31),
      CustomRowModel(timeStamp: DateTime(2020, 7, 05), cost: 23),
    ];

    return [
      charts.Series<CustomRowModel, DateTime>(
        id: 'Cost',
        domainFn: (CustomRowModel row, _) => row.timeStamp,
        measureFn: (CustomRowModel row, _) => row.cost,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Axis Formatters Axes Chart'),
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
              primaryMeasureAxis: charts.NumericAxisSpec(
                tickFormatterSpec: simpleCurrencyFormatter,
              ),
              domainAxis: charts.DateTimeAxisSpec(
                tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
                  day: charts.TimeFormatterSpec(
                    format: 'd',
                    transitionFormat: 'MM/dd/yyyy',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
