import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jjb_app/domain/workout/workoutType.dart';

import '../../../domain/workoutCard.dart';

class CardHeader extends StatelessWidget {
  final WorkoutCard item;

  const CardHeader({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('MMMM d').format(item.date);
    final colorBadge = item.type.getTypeBorderColor();
    Color _getTextColor(Color backgroundColor) {
      return backgroundColor.computeLuminance() > 0.5
          ? Colors.black
          : Colors.white;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formattedDate,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade700,
          ),
        ),
        // Badge personnalisé au lieu de Chip
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: colorBadge,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: colorBadge.withOpacity(0.8),
              width: 1,
            ),
          ),
          child: Text(
            item.type.label,
            style: TextStyle(
              color: _getTextColor(colorBadge),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}