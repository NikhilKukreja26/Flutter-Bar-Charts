import 'package:flutter/material.dart';

import '../widgets/line_chart_sample1.dart';
import '../widgets/line_chart_sample2.dart';

class LineChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff262545),
        child: ListView(
          children: [
            const SizedBox(height: 20.0),
            const Align(
              child: const Padding(
                padding: EdgeInsets.only(left: 36.0, top: 4.0),
                child: Text(
                  'Line Chart',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(
                        0xff6f6f97,
                      ),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: LineChartSample1(),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: LineChartSample2(),
            ),
          ],
        ),
      ),
    );
  }
}
