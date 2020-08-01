import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'selection_highlight_chart_screen.dart';

class ChartTitleBehaviourChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Title Behaviour Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.LineChart(
              SelectionHighlightChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              behaviors: [
                charts.ChartTitle(
                  'Top title text',
                  subTitle: 'Top sub-title text',
                  behaviorPosition: charts.BehaviorPosition.top,
                  titleOutsideJustification: charts.OutsideJustification.start,
                  innerPadding: 18,
                ),
                charts.ChartTitle(
                  'Bottom title text',
                  behaviorPosition: charts.BehaviorPosition.bottom,
                  titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea,
                ),
                charts.ChartTitle(
                  'Start title',
                  behaviorPosition: charts.BehaviorPosition.start,
                  titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea,
                ),
                charts.ChartTitle(
                  'End title',
                  behaviorPosition: charts.BehaviorPosition.end,
                  titleOutsideJustification:
                      charts.OutsideJustification.middleDrawArea,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
