import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class MeasureAxisLabelAxesChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2017', sales: 60000),
      OrdinalSalesModel(year: '2018', sales: 200000),
      OrdinalSalesModel(year: '2019', sales: 500000),
      OrdinalSalesModel(year: '2020', sales: 150000),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: globalSalesData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Measure Axis Label Axes Chart'),
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
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.GridlineRendererSpec(
                  labelAnchor: charts.TickLabelAnchor.before,
                  labelJustification: charts.TickLabelJustification.outside,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
