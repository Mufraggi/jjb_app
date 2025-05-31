import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../widgets/Badge.dart';
import '../../../domain/workoutCard.dart';

class CardHeader extends StatelessWidget {
  final WorkoutCard item;

  const CardHeader({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('MMMM d').format(item.date);

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
        WorkoutBadge(type: this.item.type),
      ],
    );
  }
}
