import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class SparkBarChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final globalSalesData = [
      OrdinalSalesModel(year: '2010', sales: 3100),
      OrdinalSalesModel(year: '2011', sales: 3500),
      OrdinalSalesModel(year: '2012', sales: 5000),
      OrdinalSalesModel(year: '2013', sales: 2500),
      OrdinalSalesModel(year: '2014', sales: 3200),
      OrdinalSalesModel(year: '2015', sales: 4500),
      OrdinalSalesModel(year: '2016', sales: 4400),
      OrdinalSalesModel(year: '2017', sales: 5000),
      OrdinalSalesModel(year: '2018', sales: 5000),
      OrdinalSalesModel(year: '2019', sales: 4500),
      OrdinalSalesModel(year: '2020', sales: 4300),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: globalSalesData,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spark Bar Chart'),
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
              primaryMeasureAxis: new charts.NumericAxisSpec(
                renderSpec: new charts.NoneRenderSpec(),
              ),
              domainAxis: new charts.OrdinalAxisSpec(
                showAxisLine: true,
                renderSpec: new charts.NoneRenderSpec(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
