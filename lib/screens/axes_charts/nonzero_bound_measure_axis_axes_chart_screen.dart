import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/my_row_model.dart';

class NonzeroBoundMeasureAxisAxesChartScreen extends StatelessWidget {
  static List<charts.Series<MyRowModel, DateTime>> createSampleData() {
    final data = [
      MyRowModel(timeStamp: DateTime(2020, 6, 25), headCount: 106),
      MyRowModel(timeStamp: DateTime(2020, 6, 26), headCount: 108),
      MyRowModel(timeStamp: DateTime(2020, 6, 27), headCount: 106),
      MyRowModel(timeStamp: DateTime(2020, 6, 28), headCount: 109),
      MyRowModel(timeStamp: DateTime(2020, 6, 29), headCount: 111),
      MyRowModel(timeStamp: DateTime(2020, 6, 30), headCount: 115),
      MyRowModel(timeStamp: DateTime(2020, 7, 01), headCount: 125),
      MyRowModel(timeStamp: DateTime(2020, 7, 02), headCount: 133),
      MyRowModel(timeStamp: DateTime(2020, 7, 03), headCount: 127),
      MyRowModel(timeStamp: DateTime(2020, 7, 04), headCount: 131),
      MyRowModel(timeStamp: DateTime(2020, 7, 05), headCount: 123),
      MyRowModel(timeStamp: DateTime(2020, 7, 06), headCount: 150),
    ];
    return [
      charts.Series<MyRowModel, DateTime>(
        id: 'Headcount',
        domainFn: (MyRowModel row, _) => row.timeStamp,
        measureFn: (MyRowModel row, _) => row.headCount,
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nonzero Bound Measure Axis Axes Chart'),
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
                  zeroBound: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
