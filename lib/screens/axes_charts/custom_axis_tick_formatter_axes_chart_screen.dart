import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/custom_row_model.dart';

class CustomAxisFormattersAxesChartScreen extends StatelessWidget {
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

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Axis Formatters Axes Chart'),
      ),
    );
  }
}
