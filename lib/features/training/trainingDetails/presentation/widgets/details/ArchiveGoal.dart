import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ArchiveGoal extends StatelessWidget {
  final bool isGoalAchieved;

  const ArchiveGoal({Key? key, required this.isGoalAchieved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Goal achieved:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Icon(
          isGoalAchieved ? Icons.check : Icons.cancel,
          color: isGoalAchieved ? Colors.green : Colors.red,
          size: 24.0,
        ),
      ],
    );
  }
}
