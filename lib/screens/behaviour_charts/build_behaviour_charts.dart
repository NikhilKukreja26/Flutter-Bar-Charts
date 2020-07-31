import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';
import 'index.dart';

class BuildBehaviourCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'BEHAVIOUR CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Initial Selection Interactions',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => InitialSelectionInteractionsChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
