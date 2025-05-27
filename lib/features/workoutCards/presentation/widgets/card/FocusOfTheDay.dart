import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/workoutCard.dart';

class FocusOfTheDay extends StatelessWidget {
  final WorkoutCard item;

  const FocusOfTheDay({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (item.focusOfTheDay == null || item.focusOfTheDay!.isEmpty) {
      return const SizedBox.shrink(); // Ne rien afficher
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Focus',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade800,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.focusOfTheDay!,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
