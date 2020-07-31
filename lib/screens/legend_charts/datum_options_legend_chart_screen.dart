import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../pie_charts/simple_pie_chart_screen.dart';

class DatumOptionsLegendChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datum Options Legend Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.PieChart(
              SimplePieChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              behaviors: [
                charts.DatumLegend(
                  position: charts.BehaviorPosition.end,
                  horizontalFirst: false,
                  desiredMaxRows: 2,
                  cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                  entryTextStyle: charts.TextStyleSpec(
                    color: charts.MaterialPalette.purple.shadeDefault,
                    fontFamily: 'Georgia',
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
