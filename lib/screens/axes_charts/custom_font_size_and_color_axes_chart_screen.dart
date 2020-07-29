import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class CustomFontSizeAndColorAxesChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2016', sales: 10000),
      OrdinalSalesModel(year: '2017', sales: 50000),
      OrdinalSalesModel(year: '2018', sales: 800000),
      OrdinalSalesModel(year: '2019', sales: 100000),
      OrdinalSalesModel(year: '2020', sales: 90000),
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
        title: Text('Custom FontSize And Color Axes Chart'),
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
              domainAxis: charts.OrdinalAxisSpec(
                renderSpec: charts.SmallTickRendererSpec(
                  labelStyle: charts.TextStyleSpec(
                    color: charts.MaterialPalette.cyan.shadeDefault,
                    fontSize: 17,
                  ),
                  lineStyle: charts.LineStyleSpec(
                    color: charts.MaterialPalette.black,
                  ),
                ),
              ),
              primaryMeasureAxis: charts.NumericAxisSpec(
                renderSpec: charts.GridlineRendererSpec(
                  labelStyle: charts.TextStyleSpec(
                    color: charts.MaterialPalette.red.shadeDefault,
                    fontSize: 17,
                  ),
                  lineStyle: charts.LineStyleSpec(
                    color: charts.MaterialPalette.black,
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
