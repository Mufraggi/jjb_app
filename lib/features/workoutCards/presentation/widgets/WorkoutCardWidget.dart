import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../domain/workoutCard.dart';

class WorkoutCardWidget extends StatelessWidget {
  final WorkoutCard card;
  final bool selected;
  final VoidCallback? onTap;

  const WorkoutCardWidget({
    Key? key,
    required this.card,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  Color _getTypeBorderColor() {
    switch (card.type.name) {
      case 'jjbGi':
        return Colors.purple;
      case 'jjbNoGi':
        return Colors.blue;
      case 'grappling':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final borderColor = _getTypeBorderColor();
    final formattedDate = DateFormat('MMMM d').format(card.date);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? Colors.purple.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border(
            left: BorderSide(color: borderColor, width: 6),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date and type badge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                _TypeBadge(label: card.type.name),
              ],
            ),

            const SizedBox(height: 12),

            // Focus of the day
            if (card.focusOfTheDay != null) ...[
              Text(
                'Focus',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                card.focusOfTheDay!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 12),
            ],

            // Duration and feeling
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '⏱ ${card.duration.inMinutes} min',
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                ),
                FeelingMeter(feeling: card.feeling),
              ],
            ),

            const SizedBox(height: 12),

            // Short note
            if (card.shortNote != null)
              Text(
                '📝 ${card.shortNote}',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey.shade600,
                  fontSize: 14,
                ),
              ),

            // Tags
            if (card.tags.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: card.tags
                      .map(
                        (tag) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        tag,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TypeBadge extends StatelessWidget {
  final String label;
  const _TypeBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (label) {
      case 'jjbGi':
        color = Colors.purple;
        break;
      case 'jjbNoGi':
        color = Colors.blue;
        break;
      case 'grappling':
        color = Colors.orange;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

// Simple FeelingMeter widget (à adapter selon ta classe RatingOnTen)
class FeelingMeter extends StatelessWidget {
  final RatingOnTen feeling;
  const FeelingMeter({required this.feeling});

  @override
  Widget build(BuildContext context) {
    // Par exemple, affichage d’étoiles ou cercle selon feeling.value
    return Row(
      children: List.generate(
        10,
            (index) => Icon(
          index < feeling.value ? Icons.star : Icons.star_border,
          size: 16,
          color: Colors.amber,
        ),
      ),
    );
  }
}
