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
                builder: (context) => null,
              ),
            );
          },
        ),
      ],
    );
  }
}
