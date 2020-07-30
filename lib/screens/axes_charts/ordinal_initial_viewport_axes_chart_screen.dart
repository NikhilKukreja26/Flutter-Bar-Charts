import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class OrdinalInitialViewportAxesChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final data = [
      OrdinalSalesModel(year: '2015', sales: 5),
      OrdinalSalesModel(year: '2016', sales: 25),
      OrdinalSalesModel(year: '2017', sales: 100),
      OrdinalSalesModel(year: '2018', sales: 75),
      OrdinalSalesModel(year: '2019', sales: 33),
      OrdinalSalesModel(year: '2020', sales: 80),
      OrdinalSalesModel(year: '2021', sales: 21),
      OrdinalSalesModel(year: '2022', sales: 77),
      OrdinalSalesModel(year: '2023', sales: 8),
      OrdinalSalesModel(year: '2024', sales: 80),
      OrdinalSalesModel(year: '2025', sales: 12),
      OrdinalSalesModel(year: '2026', sales: 42),
      OrdinalSalesModel(year: '2027', sales: 70),
      OrdinalSalesModel(year: '2028', sales: 77),
      OrdinalSalesModel(year: '2029', sales: 55),
      OrdinalSalesModel(year: '2030', sales: 19),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        colorFn: (_, __) => charts.MaterialPalette.teal.shadeDefault,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordinal Initial Viewport Axes Chart'),
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
                viewport: charts.OrdinalViewport('2018', 4),
              ),
              behaviors: [
                charts.PanAndZoomBehavior(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
