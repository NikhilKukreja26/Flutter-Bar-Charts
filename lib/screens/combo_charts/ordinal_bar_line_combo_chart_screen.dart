import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class OrdinalBarLineComboChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final desktopSalesData = [
      OrdinalSalesModel(year: '2015', sales: 5),
      OrdinalSalesModel(year: '2016', sales: 25),
      OrdinalSalesModel(year: '2017', sales: 100),
      OrdinalSalesModel(year: '2018', sales: 75),
      OrdinalSalesModel(year: '2019', sales: 40),
      OrdinalSalesModel(year: '2020', sales: 65),
    ];
    final tableSalesData = [
      OrdinalSalesModel(year: '2015', sales: 5),
      OrdinalSalesModel(year: '2016', sales: 25),
      OrdinalSalesModel(year: '2017', sales: 100),
      OrdinalSalesModel(year: '2018', sales: 75),
      OrdinalSalesModel(year: '2019', sales: 40),
      OrdinalSalesModel(year: '2020', sales: 65),
    ];
    final mobileSalesData = [
      OrdinalSalesModel(year: '2015', sales: 10),
      OrdinalSalesModel(year: '2016', sales: 50),
      OrdinalSalesModel(year: '2017', sales: 200),
      OrdinalSalesModel(year: '2018', sales: 150),
      OrdinalSalesModel(year: '2019', sales: 100),
      OrdinalSalesModel(year: '2020', sales: 250),
    ];
    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: desktopSalesData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Table',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: tableSalesData,
        colorFn: (_, __) => charts.MaterialPalette.cyan.shadeDefault,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Mobile',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: mobileSalesData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      )..setAttribute(charts.rendererIdKey, 'customLine'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ordinal Bar Line Combo Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.OrdinalComboChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: charts.BarRendererConfig(
                groupingType: charts.BarGroupingType.grouped,
              ),
              customSeriesRenderers: [
                charts.LineRendererConfig(
                  customRendererId: 'customLine',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
