import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/workoutCard.dart';
import 'FeelingMeter.dart';

class DurationWorkout extends StatelessWidget {
  final WorkoutCard item;

  const DurationWorkout({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text('⏱ '),
            Text(
              '${item.duration} min',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
          ],
        ),
        FeelingMeter(feeling: item.feeling.value),
      ],
    );
  }
}
