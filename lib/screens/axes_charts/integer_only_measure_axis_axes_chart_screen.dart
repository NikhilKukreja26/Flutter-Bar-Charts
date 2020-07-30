import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/my_row_model.dart';

class IntegerOnlyMeasureAxisAxesChartScreen extends StatelessWidget {
  static List<charts.Series<MyRowModel, DateTime>> createSampleData() {
    final data = [
      MyRowModel(timeStamp: DateTime(2020, 6, 25), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 6, 26), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 6, 27), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 6, 28), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 6, 29), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 6, 30), headCount: 0),
      MyRowModel(timeStamp: DateTime(2020, 7, 01), headCount: 1),
      MyRowModel(timeStamp: DateTime(2020, 7, 02), headCount: 1),
      MyRowModel(timeStamp: DateTime(2020, 7, 03), headCount: 1),
      MyRowModel(timeStamp: DateTime(2020, 7, 04), headCount: 1),
      MyRowModel(timeStamp: DateTime(2020, 7, 05), headCount: 1),
    ];

    return [
      charts.Series<MyRowModel, DateTime>(
        id: 'HeadCount',
        domainFn: (MyRowModel row, _) => row.timeStamp,
        measureFn: (MyRowModel row, _) => row.headCount,
        colorFn: (_, __) => charts.MaterialPalette.deepOrange.shadeDefault,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integer Only Measure Axis Axes Chart'),
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
                tickProviderSpec: charts.BasicNumericTickProviderSpec(
                  dataIsInWholeNumbers: true,
                  desiredTickCount: 5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
