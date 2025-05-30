import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/workoutDetails.dart';
import 'details/ArchiveGoal.dart';
import 'details/Header.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'details/WorkoutGoalAndNotes.dart';

class WorkoutDetailsView extends StatelessWidget {
  final WorkoutDetails details;

  const WorkoutDetailsView({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(
      'EEEE d MMMM yyyy',
      'fr_FR',
    ).format(details.date);

    return Padding(
      //      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 8),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderDetails(type: details.type, duration: details.duration),
          const SizedBox(height: 8),
          Visibility(
            visible: details.focusOfTheDay != null,
            child: Text(
              details.focusOfTheDay!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Text(formattedDate),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          WorkoutGoalAndNotes(
            isGoalAchieved: this.details.achievedGoal,
            notes: this.details.notes,
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
