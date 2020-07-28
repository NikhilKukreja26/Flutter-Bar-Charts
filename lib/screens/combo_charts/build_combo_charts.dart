import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';
import 'index.dart';

class BuildComboCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'COMBO CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Ordinal Bar Line Combo Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => OrdinalBarLineComboChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Numeric Line Bar Combo Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NumericLineBarComboChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Numeric Line Point Combo Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NumericLinePointComboChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Date Time Line Plot Combo Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DateTimeLinePlotComboChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Scatter Plot Line Combo Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScatterPlotLineComboChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
