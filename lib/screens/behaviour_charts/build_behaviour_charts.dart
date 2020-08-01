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
        BuildChartTypeHeading(
          title: 'Selection Highlight Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SelectionHighlightChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Selection User Managed Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    SelectionUserManagedBehaviourChartScreen(),
              ),
            );
          },
        ),
        // BuildChartTypeHeading(
        //   title: 'Selection Callback Example Interactions Behaviour Chart',
        //   onTap: () {
        //     Navigator.of(context).push(
        //       MaterialPageRoute(
        //         builder: (context) =>
        //             SelectionCallbackExampleInteractionsChartScreen(),
        //       ),
        //     );
        //   },
        // ),
        BuildChartTypeHeading(
          title: 'Chart Title Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChartTitleBehaviourChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Slider Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SliderLineBehaviourChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Sliding On Selection Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SlidingOnSelectionBehaviourChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Percent Of Domain Interactions Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    PercentOfDomainInteractionsBehaviourChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Percent Of Domain By Category Interactions Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    PercentOfDomainCategoryInteractionsChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Percent Of Series Interactions Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    PercentOfSeriesInteractionBehaviourChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Initial Hint Animation Behaviour Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    InitialHintAnimationBehaviourChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
