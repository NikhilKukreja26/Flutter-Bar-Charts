import 'dart:math' as math;

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class GaugePieChartScreen extends StatelessWidget {
  static List<charts.Series<GaugeSegment, String>> createSampleData() {
    final data = [
      GaugeSegment(segment: 'Low', size: 75),
      GaugeSegment(segment: 'Acceptable', size: 100),
      GaugeSegment(segment: 'High', size: 50),
      GaugeSegment(segment: 'Highly Unusal', size: 5),
    ];
    return [
      charts.Series<GaugeSegment, String>(
        id: 'Segments',
        domainFn: (GaugeSegment segment, _) => segment.segment,
        measureFn: (GaugeSegment segment, _) => segment.size,
        data: data,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gauge Pie Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.PieChart(
              createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              defaultRenderer: charts.ArcRendererConfig(
                arcWidth: 30,
                startAngle: 4 / 5 * math.pi,
                arcLength: 7 / 5 * math.pi,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GaugeSegment {
  final String segment;
  final int size;

  GaugeSegment({
    this.segment,
    this.size,
  });
}
