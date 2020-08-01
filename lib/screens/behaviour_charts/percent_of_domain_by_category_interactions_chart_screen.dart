import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../bar_charts/grouped_stacked_bar_chart_screen.dart';

class PercentOfDomainCategoryInteractionsChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percent Of Domain Category Interactions Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              GroupedStackedBarChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.groupedStacked,
              behaviors: [
                charts.PercentInjector(
                  totalType:
                      charts.PercentInjectorTotalType.domainBySeriesCategory,
                ),
              ],
              primaryMeasureAxis: charts.PercentAxisSpec(),
            ),
          ),
        ),
      ),
    );
  }
}
