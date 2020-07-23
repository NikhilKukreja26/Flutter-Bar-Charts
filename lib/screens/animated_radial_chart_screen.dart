import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class AnimatedRadialChartScreen extends StatefulWidget {
  @override
  _AnimatedRadialChartScreenState createState() =>
      _AnimatedRadialChartScreenState();
}

class _AnimatedRadialChartScreenState extends State<AnimatedRadialChartScreen> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();

  final _chartSize = const Size(200.0, 200.0);

  double value = 50.0;
  Color labelColor = Colors.blue[200];

  void _increment() {
    setState(() {
      value += 10;
      List<CircularStackEntry> data = _generateChartData(value);
      _chartKey.currentState.updateData(data);
    });
  }

  void _decrement() {
    setState(() {
      value -= 10;
      List<CircularStackEntry> data = _generateChartData(value);
      _chartKey.currentState.updateData(data);
    });
  }

  List<CircularStackEntry> _generateChartData(double value) {
    Color dialColor = Colors.blue[200];
    if (value < 0) {
      dialColor = Colors.red[200];
    } else if (value < 50) {
      dialColor = Colors.yellow[200];
    }
    labelColor = dialColor;

    List<CircularStackEntry> data = <CircularStackEntry>[
      CircularStackEntry(
        <CircularSegmentEntry>[
          CircularSegmentEntry(
            value,
            dialColor,
            rankKey: 'percentage',
          ),
        ],
        rankKey: 'percentage',
      ),
    ];

    if (value > 100) {
      labelColor = Colors.green[200];

      data.add(
        CircularStackEntry(
          <CircularSegmentEntry>[
            CircularSegmentEntry(
              value - 100,
              Colors.green[200],
              rankKey: 'percentage',
            ),
          ],
          rankKey: 'percentage2',
        ),
      );
    }

    return data;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _lableStyle = Theme.of(context).textTheme.headline6.merge(
          TextStyle(color: labelColor),
        );
    return Scaffold(
      appBar: AppBar(
        title: Text('Percentage Dial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: AnimatedCircularChart(
                key: _chartKey,
                size: _chartSize,
                initialChartData: _generateChartData(value),
                chartType: CircularChartType.Radial,
                edgeStyle: SegmentEdgeStyle.round,
                percentageValues: true,
                holeLabel: '$value%',
                labelStyle: _lableStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: _decrement,
                  child: const Icon(Icons.remove),
                  shape: const CircleBorder(),
                  color: Colors.red[200],
                  textColor: Colors.white,
                ),
                RaisedButton(
                  onPressed: _increment,
                  child: const Icon(Icons.add),
                  shape: const CircleBorder(),
                  color: Colors.blue[200],
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
