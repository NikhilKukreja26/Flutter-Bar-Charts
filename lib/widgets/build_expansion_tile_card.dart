import 'package:flutter/material.dart';

class BuildExpansionTileCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const BuildExpansionTileCard({
    Key key,
    this.title,
    this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ExpansionTile(
        expandedAlignment: Alignment.centerLeft,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
        childrenPadding: const EdgeInsets.all(8.0),
        children: children,
      ),
    );
  }
}
