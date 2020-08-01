import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'selection_highlight_chart_screen.dart';

class SliderLineBehaviourChartScreen extends StatefulWidget {
  @override
  _SliderLineBehaviourChartScreenState createState() =>
      _SliderLineBehaviourChartScreenState();
}

class _SliderLineBehaviourChartScreenState
    extends State<SliderLineBehaviourChartScreen> {
  num _sliderDomainValue;
  String _sliderDragState;
  Point<int> _sliderPosition;

  _onSliderChange(Point<int> point, dynamic domain, String roleId,
      charts.SliderListenerDragState dragState) {
    void rebuild(_) {
      setState(() {
        _sliderDomainValue = (domain * 10).round() / 10;
        _sliderDragState = dragState.toString();
        _sliderPosition = point;
      });
    }

    SchedulerBinding.instance.addPostFrameCallback(rebuild);
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      Expanded(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: charts.LineChart(
                SelectionHighlightChartScreen.createSampleData(),
                animate: true,
                animationDuration: const Duration(milliseconds: 500),
                behaviors: [
                  charts.Slider(
                    initialDomainValue: 1.0,
                    onChangeCallback: _onSliderChange,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ];

    if (_sliderPosition != null) {
      children.add(
        new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: new Text('Slider domain value: $_sliderDomainValue'),
        ),
      );
    }
    if (_sliderPosition != null) {
      children.add(
        new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: new Text(
              'Slider position: ${_sliderPosition.x}, ${_sliderPosition.y}'),
        ),
      );
    }
    if (_sliderDragState != null) {
      children.add(
        new Padding(
          padding: new EdgeInsets.only(top: 5.0),
          child: new Text('Slider drag state: $_sliderDragState'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Behaviour Chart'),
      ),
      body: Column(
        children: children,
      ),
    );
  }
}
