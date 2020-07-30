import 'dart:collection';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineDisjointAxisAxesChartScreen extends StatelessWidget {
  static List<charts.Series<LinearClicks, int>> createSampleData() {
    final desktopData = [
      LinearClicks(year: 0, clickCount: 25),
      LinearClicks(year: 1, clickCount: 125),
      LinearClicks(year: 2, clickCount: 920),
      LinearClicks(year: 3, clickCount: 375),
    ];

    final tableData = [
      LinearClicks(year: 0, clickCount: 375),
      LinearClicks(year: 1, clickCount: 1850),
      LinearClicks(year: 2, clickCount: 9700),
      LinearClicks(year: 3, clickCount: 5000),
    ];

    final mobileData = [
      LinearClicks(year: 0, clickCount: 5000),
      LinearClicks(year: 1, clickCount: 25000),
      LinearClicks(year: 2, clickCount: 100000),
      LinearClicks(year: 3, clickCount: 75000),
    ];

    final clickRateData = [
      LinearClicks(year: 0, clickRate: 0.25),
      LinearClicks(year: 1, clickRate: 0.65),
      LinearClicks(year: 2, clickRate: 0.50),
      LinearClicks(year: 3, clickRate: 0.30),
    ];

    return [
      charts.Series<LinearClicks, int>(
        id: 'Fake Data',
        domainFn: (LinearClicks clickCount, _) => clickCount.year,
        measureFn: (LinearClicks clickCount, _) => clickCount.clickCount,
        data: [],
      ),
      charts.Series<LinearClicks, int>(
        id: 'Desktop Data',
        domainFn: (LinearClicks clickCount, _) => clickCount.year,
        measureFn: (LinearClicks clickCount, _) => clickCount.clickCount,
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        data: desktopData,
      )..setAttribute(charts.measureAxisIdKey, 'axis 1'),
      charts.Series<LinearClicks, int>(
        id: 'Table Data',
        domainFn: (LinearClicks clickCount, _) => clickCount.year,
        measureFn: (LinearClicks clickCount, _) => clickCount.clickCount,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        data: tableData,
      )..setAttribute(charts.measureAxisIdKey, 'axis 2'),
      charts.Series<LinearClicks, int>(
        id: 'Mobile Data',
        domainFn: (LinearClicks clickCount, _) => clickCount.year,
        measureFn: (LinearClicks clickCount, _) => clickCount.clickCount,
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        data: mobileData,
      )..setAttribute(charts.measureAxisIdKey, 'axis 3'),
      charts.Series<LinearClicks, int>(
        id: 'Click Rate',
        domainFn: (LinearClicks clickCount, _) => clickCount.year,
        measureFn: (LinearClicks clickCount, _) => clickCount.clickRate,
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
        data: clickRateData,
      )..setAttribute(charts.measureAxisIdKey, 'axis 4'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Disjoint Axis Axes Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.LineChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              primaryMeasureAxis: charts.NumericAxisSpec(
                tickProviderSpec: charts.StaticNumericTickProviderSpec(
                  <charts.TickSpec<num>>[
                    charts.TickSpec(0, label: ''),
                    charts.TickSpec(1, label: ''),
                    charts.TickSpec(2, label: ''),
                    charts.TickSpec(3, label: ''),
                    charts.TickSpec(4, label: ''),
                  ],
                ),
              ),
              disjointMeasureAxes:
                  LinkedHashMap<String, charts.NumericAxisSpec>.from(
                {
                  'axis 1': new charts.NumericAxisSpec(),
                  'axis 2': new charts.NumericAxisSpec(),
                  'axis 3': new charts.NumericAxisSpec(),
                  'axis 4': new charts.NumericAxisSpec(),
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinearClicks {
  final int year;
  final int clickCount;
  final double clickRate;

  LinearClicks({
    this.year,
    this.clickCount,
    this.clickRate,
  });
}
