import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/domain/training/workoutType.dart';


import '../../domain/trainingCard.dart';
import 'card/Duration.dart';
import 'card/FocusOfTheDay.dart';
import 'card/Header.dart';
import 'card/ShortNote.dart';
//import 'card/Tags.dart';

class CardFeedback extends StatelessWidget {
  final TrainingCard item;

  const CardFeedback({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorBadge = item.type.getTypeBorderColor();
    return Container(
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
            const SizedBox(height: 4),
            FocusOfTheDay(item: item),
            DurationTraining(item: item),
            ShortNote(item: item),
          //  Tags(item: item),
          ],
        ),
      ),
    );
  }
}
