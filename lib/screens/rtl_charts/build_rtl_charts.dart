import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';
import 'index.dart';

class BuildRtlCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'RTL CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Rtl Bar Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlBarChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Rtl Line Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Rtl Line Segments Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlLineSegmentsChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Rtl Series Legends Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlSeriesLegendsChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Rtl Stacked Bar Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlStackedBarChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Rtl Scatter Plot Chart i18n',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RtlScatterPlotChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
