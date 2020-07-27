import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';

import 'index.dart';

class BuildScatterPlotCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'SCATTER PLOT CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Simple Scatter Plot Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleScatterPlotChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Shapes Scatter Plot Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ShapesScatterPlotChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Comparsion Points Scatter Plot Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ComparisonScatterPlotChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Bucketing Axis Scatter Plot Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BucketingAxisScatterPlotChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
