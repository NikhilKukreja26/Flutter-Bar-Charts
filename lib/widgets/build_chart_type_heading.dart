import 'package:flutter/material.dart';

class BuildChartTypeHeading extends StatelessWidget {
  final String title;
  final Function onTap;

  const BuildChartTypeHeading({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
