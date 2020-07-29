import 'package:flutter/material.dart';
import 'package:flutter_charts_demo/screens/pie_charts/index.dart';
import 'package:flutter_charts_demo/screens/pie_charts/outside_label_pie_chart_screen.dart';
import 'package:flutter_charts_demo/screens/pie_charts/simple_pie_chart_screen.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';

class BuildPieCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'PIE CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Simple Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimplePieChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'OutSide Label Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => OutSideLabelPieChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Partial Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PartialPieChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Donut Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DonutPieChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Auto Label Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AutoLabelPieChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Gauge Pie Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GaugePieChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
