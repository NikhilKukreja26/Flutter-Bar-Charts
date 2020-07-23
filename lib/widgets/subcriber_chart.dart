import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../models/subcriber_series_model.dart';

class SubscriberChart extends StatelessWidget {
  final List<SubcriberSeriesModel> data;

  SubscriberChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SubcriberSeriesModel, String>> series = [
      charts.Series(
        id: 'subcribers',
        data: data,
        domainFn: (SubcriberSeriesModel series, _) => series.year,
        measureFn: (SubcriberSeriesModel series, _) => series.subscribers,
        colorFn: (SubcriberSeriesModel series, _) =>
            charts.ColorUtil.fromDartColor(series.barColor),
      )
    ];

    return Container(
      height: 400.0,
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'World by Warcraft Subcribers by Year',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  animationDuration: const Duration(milliseconds: 500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
