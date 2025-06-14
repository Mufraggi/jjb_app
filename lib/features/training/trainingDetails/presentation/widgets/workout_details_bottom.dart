import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jjb_app/domain/training/TechnicCategory.dart';
import '../../domain/entities/trainingDetails.dart';
import 'details/Feeling.dart';
import 'details/Header.dart';
import 'details/WorkoutGoalAndNotes.dart';

class TrainingDetailsView extends StatelessWidget {
  final TrainingDetails details;

  const TrainingDetailsView({Key? key, required this.details})
    : super(key: key);

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
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: details.category.color,
              ),
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
          TrainingGoalAndNotes(
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
          Feeling(
            feeling: this.details.feeling,
            energyLevel: this.details.energyLevel,
            motivationLevel: this.details.motivationLevel,
            stressLevel: this.details.stressLevel,
            sleepQuality: this.details.sleepQuality,
          ),
        ],
      ),
    );
  }
}
