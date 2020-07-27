import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class BucketingAxisScatterPlotChartScreen extends StatelessWidget {
  static List<charts.Series<SalesLinear, int>> createSampleData() {
    final myDesktopData = [
      SalesLinear(year: 52, revenueShare: 0.75, radius: 14.0),
    ];
    final myTabletData = [
      SalesLinear(year: 45, revenueShare: 0.3, radius: 18.0),
    ];
    final myMobileData = [
      SalesLinear(year: 56, revenueShare: 0.8, radius: 17.0),
    ];
    final myChromebookData = [
      SalesLinear(year: 25, revenueShare: 0.6, radius: 13.0),
    ];
    final myHomeData = [
      SalesLinear(year: 34, revenueShare: 0.5, radius: 15.0),
    ];
    final myOtherData = [
      SalesLinear(year: 10, revenueShare: 0.25, radius: 15.0),
      SalesLinear(year: 12, revenueShare: 0.075, radius: 14.0),
      SalesLinear(year: 13, revenueShare: 0.225, radius: 15.0),
      SalesLinear(year: 16, revenueShare: 0.03, radius: 14.0),
      SalesLinear(year: 24, revenueShare: 0.04, radius: 13.0),
      SalesLinear(year: 37, revenueShare: 0.1, radius: 14.5),
    ];
    return [
      charts.Series<SalesLinear, int>(
        id: 'Desktop',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myDesktopData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.blue.shadeDefault,
      ),
      charts.Series<SalesLinear, int>(
        id: 'Tablet',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myTabletData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.red.shadeDefault,
      ),
      charts.Series<SalesLinear, int>(
        id: 'Mobile',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myMobileData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.green.shadeDefault,
      ),
      charts.Series<SalesLinear, int>(
        id: 'Chromebook',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myChromebookData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.purple.shadeDefault,
      ),
      charts.Series<SalesLinear, int>(
        id: 'Home',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myHomeData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.indigo.shadeDefault,
      ),
      charts.Series<SalesLinear, int>(
        id: 'Other',
        domainFn: (SalesLinear sales, _) => sales.year,
        measureFn: (SalesLinear sales, _) => sales.revenueShare,
        radiusPxFn: (SalesLinear sales, _) => sales.radius,
        data: myOtherData,
        colorFn: (SalesLinear sales, _) =>
            charts.MaterialPalette.gray.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bucketing Axis Scatter Plot Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.ScatterPlotChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              primaryMeasureAxis: new charts.BucketingAxisSpec(
                threshold: 0.1,
                tickProviderSpec: new charts.BucketingNumericTickProviderSpec(
                    desiredTickCount: 3),
              ),
              // Add a series legend to display the series names.
              behaviors: [
                new charts.SeriesLegend(
                  position: charts.BehaviorPosition.end,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SalesLinear {
  final int year;
  final double revenueShare;
  final double radius;

  SalesLinear({
    this.year,
    this.revenueShare,
    this.radius,
  });
}
