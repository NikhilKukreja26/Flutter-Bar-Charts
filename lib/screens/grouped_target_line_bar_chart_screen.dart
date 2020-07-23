import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_charts_demo/models/ordinal_sales_model.dart';

class GroupedTargetLineBarChartScreen extends StatelessWidget {
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

    final desktopTargetLineData = [
      OrdinalSalesModel(year: '2017', sales: 4),
      OrdinalSalesModel(year: '2018', sales: 20),
      OrdinalSalesModel(year: '2019', sales: 80),
      OrdinalSalesModel(year: '2020', sales: 65),
    ];

    final tableTargetLineData = [
      OrdinalSalesModel(year: '2017', sales: 30),
      OrdinalSalesModel(year: '2018', sales: 55),
      OrdinalSalesModel(year: '2019', sales: 15),
      OrdinalSalesModel(year: '2020', sales: 25),
    ];

    final mobileTargetLineData = [
      OrdinalSalesModel(year: '2017', sales: 10),
      OrdinalSalesModel(year: '2018', sales: 5),
      OrdinalSalesModel(year: '2019', sales: 45),
      OrdinalSalesModel(year: '2020', sales: 35),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Table',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: tableSalesData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Mobile',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: mobileSalesData,
      ),
      new charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop Target Line',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: desktopTargetLineData,
      )
        // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
      new charts.Series<OrdinalSalesModel, String>(
        id: 'Tablet Target Line',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: tableTargetLineData,
      )
        // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
      new charts.Series<OrdinalSalesModel, String>(
        id: 'Mobile Target Line',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: mobileTargetLineData,
      )
        // Configure our custom bar target renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customTargetLine'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grouped Target Line Bar Chart"),
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
              customSeriesRenderers: [
                new charts.BarTargetLineRendererConfig<String>(
                  customRendererId: 'customTargetLine',
                  groupingType: charts.BarGroupingType.grouped,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
