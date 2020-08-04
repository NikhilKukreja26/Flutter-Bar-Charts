import 'package:flutter/material.dart';

import './screens/bar_charts/index.dart';
import './screens/time_series_charts/index.dart';
import './screens/line_charts/index.dart';
import './screens/scatter_plot/index.dart';
import './screens/combo_charts/index.dart';
import './screens/pie_charts/index.dart';
import './screens/axes_charts/index.dart';
import './screens/legend_charts/index.dart';
import './screens/behaviour_charts/index.dart';
import './screens/rtl_charts/index.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Charts'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              BuildBarCharts(),
              BuildTimeSeriesCharts(),
              BuildLineCharts(),
              BuildScatterPlotCharts(),
              BuildComboCharts(),
              BuildPieCharts(),
              BuildAxesCharts(),
              BuildLegendCharts(),
              BuildBehaviourCharts(),
              BuildRtlCharts(),
            ],
          ),
        ),
      ),
    );
  }
}
