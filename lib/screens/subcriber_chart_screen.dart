import 'package:flutter/material.dart';

import '../models/subcriber_series_model.dart';
import '../widgets/subcriber_chart.dart';

class SubcriberChartScreen extends StatelessWidget {
  final List<SubcriberSeriesModel> data = [
    SubcriberSeriesModel(
      year: '2013',
      subscribers: 5500000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2014',
      subscribers: 10000000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2015',
      subscribers: 11000000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2016',
      subscribers: 12000000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2017',
      subscribers: 10000000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2018',
      subscribers: 8500000,
      barColor: Colors.blue,
    ),
    SubcriberSeriesModel(
      year: '2019',
      subscribers: 7700000,
      barColor: Colors.green,
    ),
    SubcriberSeriesModel(
      year: '2020',
      subscribers: 7600000,
      barColor: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("World of Warcraft Subscribers"),
      ),
      body: Center(
        child: SubscriberChart(
          data: data,
        ),
      ),
    );
  }
}
