import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales.dart';

class SymbolAnnotationTimeSeriesChartScreen extends StatelessWidget {
  static List<charts.Series<TimeSeriesSales, DateTime>> createSampleData() {
    final myDesktopData = [
      TimeSeriesSales(timeCurrent: DateTime(2017, 9, 19), sales: 5),
      TimeSeriesSales(timeCurrent: DateTime(2017, 9, 26), sales: 25),
      TimeSeriesSales(timeCurrent: DateTime(2017, 10, 3), sales: 100),
      TimeSeriesSales(timeCurrent: DateTime(2017, 10, 10), sales: 75),
    ];

    final myTabletData = [
      TimeSeriesSales(timeCurrent: DateTime(2017, 9, 19), sales: 10),
      TimeSeriesSales(timeCurrent: DateTime(2017, 9, 26), sales: 50),
      TimeSeriesSales(timeCurrent: DateTime(2017, 10, 3), sales: 200),
      TimeSeriesSales(timeCurrent: DateTime(2017, 10, 10), sales: 150),
    ];

    final myAnnotationData1 = [
      TimeSeriesSales(
        timeCurrent: DateTime(2017, 9, 24),
        timePrevious: DateTime(2017, 9, 19),
        timeTarget: DateTime(2017, 9, 24),
      ),
      TimeSeriesSales(
        timeCurrent: DateTime(2017, 9, 29),
        timePrevious: DateTime(2017, 9, 29),
        timeTarget: DateTime(2017, 10, 4),
      ),
    ];

    final myAnnotationData2 = [
      TimeSeriesSales(
        timeCurrent: DateTime(2017, 9, 25),
        timePrevious: DateTime(2017, 9, 21),
        timeTarget: DateTime(2017, 9, 25),
      ),
      TimeSeriesSales(
        timeCurrent: DateTime(2017, 9, 31),
      ),
      TimeSeriesSales(
        timeCurrent: DateTime(2017, 10, 5),
      ),
    ];

    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Desktop',
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myDesktopData,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'Tablet',
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: myTabletData,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 1',
        colorFn: (_, __) => charts.MaterialPalette.gray.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationData1,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation shape. If not specified, this will
        // default to the same radius as the points.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Annotation Series 2',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.timeCurrent,
        domainLowerBoundFn: (TimeSeriesSales row, _) => row.timePrevious,
        domainUpperBoundFn: (TimeSeriesSales row, _) => row.timeTarget,
        // No measure values are needed for symbol annotations.
        measureFn: (_, __) => null,
        data: myAnnotationData2,
      )
        // Configure our custom symbol annotation renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customSymbolAnnotation')
        // Optional radius for the annotation shape. If not specified, this will
        // default to the same radius as the points.
        ..setAttribute(charts.boundsLineRadiusPxKey, 3.5),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symbol Annotation Time Series Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.TimeSeriesChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              dateTimeFactory: const charts.LocalDateTimeFactory(),
              customSeriesRenderers: [
                new charts.SymbolAnnotationRendererConfig(
                    // ID used to link series to this renderer.
                    customRendererId: 'customSymbolAnnotation'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
