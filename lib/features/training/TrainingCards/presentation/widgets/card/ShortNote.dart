import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/trainingCard.dart';

class ShortNote extends StatelessWidget {
  final TrainingCard item;

  const ShortNote({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (item.focusOfTheDay == null || item.focusOfTheDay!.isEmpty) {
      return const SizedBox.shrink(); // Ne rien afficher
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          '📝 ${item.shortNote}',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
