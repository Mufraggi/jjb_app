import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/domain/trainingDuration.dart';
import '../../../../../../domain/workout/workoutType.dart';
import '../../../../../../widgets/Badge.dart';

class HeaderDetails extends StatelessWidget {
  final TrainingType type;
  final TrainingDuration duration;

  const HeaderDetails({Key? key, required this.type, required this.duration})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TrainingBadge(type: this.type),
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
