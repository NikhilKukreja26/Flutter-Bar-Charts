import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/ordinal_sales_model.dart';

class LegendOptionsLegendsChartScreen extends StatelessWidget {
  static List<charts.Series<OrdinalSalesModel, String>> createSampleData() {
    final myDesktopData = [
      OrdinalSalesModel(year: '2017', sales: 5),
      OrdinalSalesModel(year: '2018', sales: 25),
      OrdinalSalesModel(year: '2019', sales: 100),
      OrdinalSalesModel(year: '2020', sales: 75),
    ];

    final myTabletData = [
      OrdinalSalesModel(year: '2017', sales: 25),
      OrdinalSalesModel(year: '2018', sales: 50),
      OrdinalSalesModel(year: '2019', sales: 10),
      OrdinalSalesModel(year: '2020', sales: 20),
    ];

    final myMobileData = [
      OrdinalSalesModel(year: '2017', sales: 10),
      OrdinalSalesModel(year: '2018', sales: 15),
      OrdinalSalesModel(year: '2019', sales: 50),
      OrdinalSalesModel(year: '2020', sales: 45),
    ];

    final myOtherData = [
      OrdinalSalesModel(year: '2017', sales: 20),
      OrdinalSalesModel(year: '2018', sales: 35),
      OrdinalSalesModel(year: '2019', sales: 15),
      OrdinalSalesModel(year: '2020', sales: 10),
    ];

    return [
      charts.Series<OrdinalSalesModel, String>(
        id: 'Desktop',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: myDesktopData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Tablet',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: myTabletData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Mobile',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: myMobileData,
      ),
      charts.Series<OrdinalSalesModel, String>(
        id: 'Other',
        domainFn: (OrdinalSalesModel sales, _) => sales.year,
        measureFn: (OrdinalSalesModel sales, _) => sales.sales,
        data: myOtherData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legend Options Legend Chart'),
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
              behaviors: [
                charts.SeriesLegend(
                  position: charts.BehaviorPosition.end,
                  outsideJustification: charts.OutsideJustification.endDrawArea,
                  desiredMaxRows: 2,
                  cellPadding: const EdgeInsets.only(right: 4.0, bottom: 4.0),
                  horizontalFirst: false,
                  entryTextStyle: charts.TextStyleSpec(
                    color: charts.Color(r: 127, g: 63, b: 191),
                    // fontFamily: 'Georgia',
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
