import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';
import 'index.dart';

class BuildLineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'LINE CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Simple Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Points Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PointsLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Stacked Area Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StackedAreaLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Stacked Area Custom Color Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StackedAreaCustomColorLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Area And Line Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AreaAndLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Simple Nulls Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleNullsLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Stacked Area Nulls Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StackedAreaNullsLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Dashed Pattern Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DashedLinePatternLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Segments Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SegmentsLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Line Annotation Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LineAnnotationLineChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Range Annotation Line Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RangeAnnotationLineChartScreen(),
              ),
            );
          },
        ),
        // BuildChartTypeHeading(
        //   title: 'Range Annotation Margin Line Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => RangeAnnotationMarginLineChartScreen(),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
