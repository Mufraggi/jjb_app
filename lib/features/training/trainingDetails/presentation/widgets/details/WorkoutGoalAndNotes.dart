import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ArchiveGoal.dart';

class TrainingGoalAndNotes extends StatelessWidget {
  final bool? isGoalAchieved;
  final String? notes;

  const TrainingGoalAndNotes({
    Key? key,
    required this.isGoalAchieved,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "Évaluation de Séance",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Visibility(
          visible: isGoalAchieved != null,
          child: ArchiveGoal(isGoalAchieved: this.isGoalAchieved!),
        ),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Notes:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Visibility(
                visible: this.notes != null,
                child: Text(notes ?? '', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
