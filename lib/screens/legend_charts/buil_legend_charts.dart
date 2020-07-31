import 'package:flutter/material.dart';

import '../../widgets/build_expansion_tile_card.dart';
import '../../widgets/build_chart_type_heading.dart';

import 'index.dart';

class BuildLegendCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildExpansionTileCard(
      title: 'LEGEND CHARTS',
      children: [
        BuildChartTypeHeading(
          title: 'Simple Series Legend Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleSeriesLegendChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Legend Options Legends Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LegendOptionsLegendsChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Series with Measures Legend Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SeriesWithMeasureLegendChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Legend Custom Symbol Legends Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LegendCustomSymbolLegendsChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Default Hidden Series Legend Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DefaultHiddenSeriesLegendChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Simple Datum Legend Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SimpleDatumLegendChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Datum Options Legend Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DatumOptionsLegendChartScreen(),
              ),
            );
          },
        ),
        BuildChartTypeHeading(
          title: 'Datum Legend With Measures Legends Chart',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    DatumLegendWithMeasuresLegendsChartScreen(),
              ),
            );
          },
        ),
      ],
    );
  }
}
