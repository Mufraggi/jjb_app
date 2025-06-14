// Widget Badge
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/workout/workoutType.dart';

class TrainingBadge extends StatelessWidget {
  final TrainingType type;

  const TrainingBadge({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorBadge = this.type.getTypeBorderColor();
    Color _getTextColor(Color backgroundColor) {
      return backgroundColor.computeLuminance() > 0.5
          ? Colors.black
          : Colors.white;
    }
    return  Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: colorBadge,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorBadge.withValues(),
          width: 1,
        ),
      ),
      child: Text(
        this.type.label,
        style: TextStyle(
          color: _getTextColor(colorBadge),
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
