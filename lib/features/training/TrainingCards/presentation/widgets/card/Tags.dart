import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../domain/trainingCard.dart';

/*class Tags extends StatelessWidget {
  final TrainingCard item;

  const Tags({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (item.focusOfTheDay == null || item.focusOfTheDay!.isEmpty) {
      return const SizedBox.shrink(); // Ne rien afficher
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: item.tags.map((tag) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                tag,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}*/
