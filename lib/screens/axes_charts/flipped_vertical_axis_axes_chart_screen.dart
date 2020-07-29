import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class FlippedVerticalAxisAxesChartScreen extends StatelessWidget {
  static List<charts.Series<RunnerRank, String>> createSampleData() {
    final raceData = [
      RunnerRank(name: 'Akshay', place: 1),
      RunnerRank(name: 'Barry', place: 2),
      RunnerRank(name: 'Joe', place: 3),
      RunnerRank(name: 'Smith', place: 4),
      RunnerRank(name: 'John', place: 5),
    ];
    return [
      charts.Series<RunnerRank, String>(
        id: 'Race Results',
        domainFn: (RunnerRank row, _) => row.name,
        measureFn: (RunnerRank row, _) => row.place,
        data: raceData,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flipped Vertical Axis Axes Chart'),
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
              flipVerticalAxis: true,
            ),
          ),
        ),
      ),
    );
  }
}

class RunnerRank {
  final String name;
  final int place;

  RunnerRank({
    this.name,
    this.place,
  });
}
