import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../bar_charts/stacked_bar_chart_screen.dart';

class PercentOfDomainInteractionsBehaviourChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Percent Of Domain Interactions Behaviour Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              StackedBarChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.stacked,
              primaryMeasureAxis: charts.PercentAxisSpec(),
              behaviors: [
                new charts.PercentInjector(
                    totalType: charts.PercentInjectorTotalType.domain)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
