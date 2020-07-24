import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartScreen extends StatefulWidget {
  @override
  _PieChartScreenState createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  Map<String, double> data = Map();
  bool _loadChart = false;

  List<Color> _colors = [
    Colors.teal,
    Colors.blueAccent,
    Colors.amberAccent,
    Colors.redAccent,
  ];

  @override
  void initState() {
    super.initState();
    data.addAll({
      'Flutter': 69687,
      'React Native': 37139,
      'Xamarin': 40609,
      'Ionic': 42544
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pie Chart Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            Text(
              'Number of Questions asked on StackOverflow',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50.0),
            _loadChart
                ? PieChart(
                    dataMap: data,
                    colorList: _colors,
                    animationDuration: const Duration(milliseconds: 1500),
                    chartLegendSpacing: 32.0,
                    showChartValuesInPercentage: true,
                    showChartValueLabel: true,
                    showChartValuesOutside: true,
                    chartValueBackgroundColor: Colors.grey[200],
                    showLegends: true,
                    decimalPlaces: 1,
                    showChartValues: true,
                    initialAngle: 0.0,
                    chartValueStyle: defaultChartValueStyle.copyWith(
                      color: Colors.blueGrey[900].withOpacity(0.9),
                    ),
                    chartType: ChartType.disc, // can change to be ring
                  )
                : const SizedBox(
                    height: 150.0,
                  ),
            const SizedBox(
              height: 50,
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'Click to Show Chart',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _loadChart = !_loadChart;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
