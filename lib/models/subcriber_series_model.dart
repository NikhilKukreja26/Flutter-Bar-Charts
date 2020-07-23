import 'package:flutter/material.dart';

class SubcriberSeriesModel {
  final String year;
  final int subscribers;
  final Color barColor;

  SubcriberSeriesModel({
    @required this.year,
    @required this.subscribers,
    @required this.barColor,
  });
}
