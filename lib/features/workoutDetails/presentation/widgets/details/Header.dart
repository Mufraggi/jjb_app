import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/domain/workout/workoutType.dart';

import '../../../../../core/domain/trainingDuration.dart';
import '../../../../../widgets/Badge.dart';

class HeaderDetails extends StatelessWidget {
  final WorkoutType type;
  final TrainingDuration duration;

  const HeaderDetails({Key? key, required this.type, required this.duration})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WorkoutBadge(type: this.type),
        Text(
          this.duration.formatted,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }
}
