import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jjb_app/domain/workout/workoutType.dart';

import '../../domain/workoutCard.dart';
import 'card/FeelingMeter.dart';
import 'card/FocusOfTheDay.dart';
import 'card/Header.dart';

class CardFeedback extends StatelessWidget {
  final WorkoutCard item;

  const CardFeedback({Key? key, required this.item}) : super(key: key);

  // Fonction pour obtenir la couleur du texte selon la couleur de fond

  @override
  Widget build(BuildContext context) {
    final colorBadge = item.type.getTypeBorderColor();
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border(left: BorderSide(color: colorBadge, width: 4)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CardHeader(item: item),

              const SizedBox(height: 12),

              // Focus du jour
              FocusOfTheDay(item: item),
              // Durée et feeling
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text('⏱ '),
                      Text(
                        '${item.duration} min',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                  FeelingMeter(feeling: item.feeling.value),
                ],
              ),

              // Note courte
              if (item.shortNote != null) ...[
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

              // Tags
              if (item.tags != null && item.tags!.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: item.tags!.map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
