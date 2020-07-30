import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class StaticallyProvidesTicksAxesChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final data = [
      OrdinalSalesModel(year: '2016', sales: 50000),
      OrdinalSalesModel(year: '2017', sales: 25000),
      OrdinalSalesModel(year: '2018', sales: 100000),
      OrdinalSalesModel(year: '2019', sales: 750000),
      OrdinalSalesModel(year: '2020', sales: 550000),
    ];
    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final staticTicks = <charts.TickSpec<String>>[
      charts.TickSpec(
        '2016',
        label: 'Year 2016',
        style: charts.TextStyleSpec(
          color: new charts.Color(r: 0x4C, g: 0xAF, b: 0x50),
          fontSize: 15,
        ),
      ),
      charts.TickSpec('2017'),
      charts.TickSpec('2018'),
      charts.TickSpec('2019'),
      charts.TickSpec('2020'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Statically Provided Axes Chart'),
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
                tickProviderSpec:
                    charts.StaticOrdinalTickProviderSpec(staticTicks),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
