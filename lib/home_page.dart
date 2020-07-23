import 'package:flutter/material.dart';

import './widgets/build_chart_type_heading.dart';
import './widgets/build_expansion_tile_card.dart';
import './screens/simple_bar_chart_screen.dart';
import './screens/stacked_bar_chart_screen.dart';
import './screens/grouped_bar_chart_screen.dart';
import './screens/grouped_stacked_bar_chart_screen.dart';
import './screens/grouped_target_line_bar_chart_screen.dart';
import './screens/stacked_horizontal_bar_chart_screen.dart';
import './screens/stacked_target_line_bar_chart_screen.dart';
import './screens/horizontal_bar_chart_screen.dart';
import './screens/horizontal_bar_label_bar_chart_screen.dart';
import './screens/horizontal_bar_label_custom_bar_chart_screen.dart';
import './screens/vertical_bar_label_bar_chart_screen.dart';
import './screens/spark_bar_chart_screen.dart';
import './screens/grouped_fill_bar_chart_screen.dart';
import './screens/stacked_fill_color_bar_chart_screen.dart';
import './screens/pattern_forward_hatch_bar_chart_screen.dart';
import './screens/horizontal_pattern_forward_hatch_bar_chart_screen.dart';
import './screens/grouped_stacked_weight_pattern_bar_chart_screen.dart';
import './screens/custom_rounded_bar_chart_screen.dart';

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
              BuildExpansionTileCard(
                title: 'BAR CHARTS',
                children: [
                  BuildChartTypeHeading(
                    title: 'Simple Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SimpleBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Stacked Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => StackedBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Grouped Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GroupedBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Grouped Stacked Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GroupedStackedBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Grouped Target Line Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              GroupedTargetLineBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Stacked Horizontal Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              StackedHorizontalBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Stacked Target Line Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              StackedTargetLineBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Horizontal Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HorizontalBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Horizontal Bar Label Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              HorizontalBarLabelBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Horizontal Bar Label Custom Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              HorizontalBarLabelCustomBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Vertical Bar Label Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              VerticalBarLabelBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Spark Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SparkBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Grouped Fill Color Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => GroupedFillBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Stacked Fill Color Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              StackedFillColorBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Pattern Forward Hatch Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              PatternForwardHatchBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Horizontal Pattern Forward Hatch Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              HorizontalPatternForwardHatchBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Grouped Stacked Weight Pattern Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              GroupedStackedPatternWeightBarChartScreen(),
                        ),
                      );
                    },
                  ),
                  BuildChartTypeHeading(
                    title: 'Custom Rounded Bars Bar Chart',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CustomRoundedBarChartScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
