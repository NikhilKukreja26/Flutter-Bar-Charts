import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../line_charts/segments_line_chart_screen.dart';

class RtlLineSegmentsChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rtl Line Segments Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: charts.LineChart(
                SegmentsLineChartScreen.createSampleData(),
                animate: true,
                animationDuration: const Duration(milliseconds: 500),
                defaultRenderer: charts.LineRendererConfig(
                  includeArea: true,
                  stacked: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
