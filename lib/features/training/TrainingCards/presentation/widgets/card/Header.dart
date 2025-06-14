import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../widgets/Badge.dart';
import '../../../domain/trainingCard.dart';

class CardHeader extends StatelessWidget {
  final TrainingCard item;

  const CardHeader({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDate = item.trainingHour.toString() + " " +  DateFormat('MMMM d').format(item.date);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formattedDate,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        // Badge personnalisé au lieu de Chip
        TrainingBadge(type: this.item.type),
      ],
    );
  }
}
