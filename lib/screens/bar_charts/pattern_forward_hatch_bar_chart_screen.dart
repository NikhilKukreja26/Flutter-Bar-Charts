import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class PatternForwardHatchBarChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final desktopSalesData = [
      OrdinalSalesModel(year: '2017', sales: 5),
      OrdinalSalesModel(year: '2018', sales: 25),
      OrdinalSalesModel(year: '2019', sales: 100),
      OrdinalSalesModel(year: '2020', sales: 75),
    ];

    final tableSalesData = [
      OrdinalSalesModel(year: '2017', sales: 25),
      OrdinalSalesModel(year: '2018', sales: 50),
      OrdinalSalesModel(year: '2019', sales: 10),
      OrdinalSalesModel(year: '2020', sales: 20),
    ];

    final mobileSalesData = [
      OrdinalSalesModel(year: '2017', sales: 10),
      OrdinalSalesModel(year: '2018', sales: 15),
      OrdinalSalesModel(year: '2019', sales: 50),
      OrdinalSalesModel(year: '2020', sales: 45),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Tablet',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: tableSalesData,
        fillPatternFn: (OrdinalSalesModel sales, _) =>
            charts.FillPatternType.forwardHatch,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Mobile',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: mobileSalesData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pattern Forward Hatch Bar Chart'),
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
              barGroupingType: charts.BarGroupingType.grouped,
            ),
          ),
        ),
      ),
    );
  }
}
