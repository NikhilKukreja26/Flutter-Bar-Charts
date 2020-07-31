import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'legend_options_legends_chart_screen.dart';

class IconRenderer extends charts.CustomSymbolRenderer {
  final IconData iconData;

  IconRenderer(this.iconData);

  @override
  Widget build(BuildContext context, {Size size, Color color, bool enabled}) {
    // Lighten the color if the symbol is not enabled
    // Example: If user has tapped on a Series deselecting it.
    if (!enabled) {
      color = color.withOpacity(0.26);
    }

    return new SizedBox.fromSize(
        size: size, child: new Icon(iconData, color: color, size: 15.0));
  }
}

class LegendCustomSymbolLegendsChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legend Custom Symbol Legends Chart'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: charts.BarChart(
              LegendOptionsLegendsChartScreen.createSampleData(),
              animate: true,
              animationDuration: const Duration(milliseconds: 500),
              barGroupingType: charts.BarGroupingType.grouped,
              behaviors: [
                charts.SeriesLegend(),
              ],
              defaultRenderer: charts.BarRendererConfig(
                symbolRenderer: IconRenderer(Icons.cloud),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
