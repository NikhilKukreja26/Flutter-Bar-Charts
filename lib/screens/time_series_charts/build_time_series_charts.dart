import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';
import 'index.dart';

class BuildTimeSeriesCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'TIME SERIES CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Simple Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'End Points Axis Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EndPointsAxisTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Confidence Interval Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ConfidenceIntervalTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Line Annotation Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LineAnnotationTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Range Annotation Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RangeAnnotationTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Range Annotation Margin Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    RangeAnnotationMarginTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Symbol Annotation Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SymbolAnnotationTimeSeriesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'With Bar Renderer Time Series Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WithBarRendererTimeSeriesChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
