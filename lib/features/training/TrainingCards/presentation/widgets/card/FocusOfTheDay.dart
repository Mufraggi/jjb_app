import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/domain/training/TechnicCategory.dart';

import '../../../domain/trainingCard.dart';

class FocusOfTheDay extends StatelessWidget {
  final TrainingCard item;

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
          item.category.label,
          style: TextStyle(fontSize: 14, color: item.category.color),
        ),
        Text(
          item.focusOfTheDay!,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
