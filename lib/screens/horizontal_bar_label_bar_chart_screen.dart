import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/ordinal_sales_model.dart';

class HorizontalBarLabelBarChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final data = [
      new OrdinalSalesModel(year: '2017', sales: 5),
      new OrdinalSalesModel(year: '2018', sales: 25),
      new OrdinalSalesModel(year: '2019', sales: 100),
      new OrdinalSalesModel(year: '2020', sales: 75),
    ];

    return [
      new charts.Series<OrdinalSalesModel, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: data,
        labelAccessorFn: (OrdinalSalesModel sales, _) =>
            '${sales.year}: \$${sales.sales}',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Bar Label Bar Chart'),
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
              vertical: false,
              barRendererDecorator: new charts.BarLabelDecorator<String>(
                insideLabelStyleSpec: charts.TextStyleSpec(
                  fontSize: 20,
                ),
                outsideLabelStyleSpec: charts.TextStyleSpec(
                  fontSize: 20,
                ),
              ), // to show the label values
              domainAxis: new charts.OrdinalAxisSpec(
                  // renderSpec: new charts.NoneRenderSpec(), // to hide the y axis values
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
