import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'initial_selection_interactions_chart_screen.dart';

class SelectionUserManagedBehaviourChartScreen extends StatefulWidget {
  @override
  _SelectionUserManagedBehaviourChartScreenState createState() =>
      _SelectionUserManagedBehaviourChartScreenState();
}

class _SelectionUserManagedBehaviourChartScreenState
    extends State<SelectionUserManagedBehaviourChartScreen> {
  final _myState = new charts.UserManagedState<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection User Managed Behavior Chart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: charts.BarChart(
                    InitialSelectionInteractionsChartScreen.createSampleData(),
                    animate: true,
                    animationDuration: const Duration(milliseconds: 500),
                    behaviors: [
                      new charts.InitialSelection(
                        selectedDataConfig: [
                          new charts.SeriesDatumConfig<String>('Sales', '2018')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: _handleClearSelection,
            child: new Text('Clear Selection'),
          ),
        ],
      ),
    );
  }

  void _handleClearSelection() {
    // Call set state to request a rebuild, to pass in the modified selection.
    // In this case, passing in an empty [UserManagedSelectionModel] creates a
    // no selection model to clear all selection when rebuilt.
    setState(() {
      _myState.selectionModels[charts.SelectionModelType.info] =
          new charts.UserManagedSelectionModel();
    });
  }
}
