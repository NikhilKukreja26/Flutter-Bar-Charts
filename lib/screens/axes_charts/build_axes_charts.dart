import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';

import 'index.dart';

class BuildAxesCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'AXES CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Bar Secondary Axis Axes Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BarSecondaryAxisAxesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Bar Secondary Axis Only Axes Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BarSecondaryAxisOnlyChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Horizontal Bar Secondary Axis Axes Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    HorizontalBarSecondaryAxisAxesChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Flipped Vertical Axis Axes Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FlippedVerticalAxisAxesChartScreen(),
              ),
            );
          },
        ),
        // BuildChartTypeHeading(
        //   title: 'Short Tick Length Axis Axes Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => ShortTickAxisLengthAxesChartScreen(),
        //       ),
        //     );
        //   },
        // ),
        // BuildChartTypeHeading(
        //   title: 'Custom FontSize And Color Axes Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => CustomFontSizeAndColorAxesChartScreen(),
        //       ),
        //     );
        //   },
        // ),
        // BuildChartTypeHeading(
        //   title: 'Measure Axis Label Axes Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => MeasureAxisLabelAxesChartScreen(),
        //       ),
        //     );
        //   },
        // ),
        // BuildChartTypeHeading(
        //   title: 'Hideen Ticks And Label Axis Axes Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => HiddenTicksAndLabelAxisAxesChartScreen(),
        //       ),
        //     );
        //   },
        // ),
        // BuildChartTypeHeading(
        //   title: 'Custom Axis Formatters Axes Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) => CustomAxisFormattersAxesChartScreen(),
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
