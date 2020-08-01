import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../models/time_series_sales_model.dart';

class SelectionCallbackExampleInteractionsChartScreen extends StatefulWidget {
  @override
  _SelectionCallbackExampleInteractionsChartScreenState createState() =>
      _SelectionCallbackExampleInteractionsChartScreenState();
}

class _SelectionCallbackExampleInteractionsChartScreenState
    extends State<SelectionCallbackExampleInteractionsChartScreen> {
  DateTime _time;
  Map<String, num> _measures;

  _onSelectionChanged(charts.SelectionModel selectionModel) {
    final selectedDatum = selectionModel.selectedDatum;

    DateTime time;
    final measures = <String, num>{};

    if (selectedDatum.isNotEmpty) {
      time = selectedDatum.first.datum;
      selectedDatum.forEach((charts.SeriesDatum datumPair) {
        measures[datumPair.series.displayName] = datumPair.datum.sales;
      });
    }

    setState(() {
      _time = time;
      _measures = measures;
    });
  }

  static List<charts.Series<TimeSeriesSalesModel, DateTime>>
      createSampleData() {
    final usData = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 19), sales: 5),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 26), sales: 25),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 3), sales: 78),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 10), sales: 54),
    ];

    final ukData = [
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 19), sales: 15),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 6, 26), sales: 33),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 3), sales: 68),
      TimeSeriesSalesModel(dateTime: DateTime(2020, 7, 10), sales: 48),
    ];

    return [
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'US Sales',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: usData,
      ),
      charts.Series<TimeSeriesSalesModel, DateTime>(
        id: 'UK Sales',
        domainFn: (TimeSeriesSalesModel sales, _) => sales.dateTime,
        measureFn: (TimeSeriesSalesModel sales, _) => sales.sales,
        data: ukData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      Expanded(
        child: new charts.TimeSeriesChart(
          createSampleData(),
          animate: true,
          selectionModels: [
            new charts.SelectionModelConfig(
              type: charts.SelectionModelType.info,
              changedListener: _onSelectionChanged,
            ),
          ],
        ),
      ),
    ];

    // If there is a selection, then include the details.
    if (_time != null) {
      children.add(new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: new Text(_time.toString())));
    }
    _measures?.forEach((String series, num value) {
      children.add(new Text('$series: $value'));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Callback Example Interactions'),
      ),
      body: Column(
        children: children,
      ),
    );
  }
}
