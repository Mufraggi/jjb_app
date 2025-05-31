import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/core/domain/RatingType.dart';

import '../../../../../core/domain/ratingOnTen.dart';
import 'CirculareFeeling.dart';

class Feeling extends StatelessWidget {
  final RatingOnTen feeling;
  final RatingOnTen energyLevel;
  final RatingOnTen motivationLevel;
  final RatingOnTen stressLevel;
  final RatingOnTen sleepQuality;

  const Feeling({
    Key? key,
    required this.feeling,
    required this.energyLevel,
    required this.motivationLevel,
    required this.stressLevel,
    required this.sleepQuality,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Feeling",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularFeeling(type: RatingType.feeling, rating: this.feeling),

            CircularFeeling(
              type: RatingType.energyLevel,
              rating: this.energyLevel,
            ),
            CircularFeeling(
              type: RatingType.motivationLevel,
              rating: this.motivationLevel,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularFeeling(
              type: RatingType.sleepQuality,
              rating: this.sleepQuality,
            ),
            CircularFeeling(
              type: RatingType.stressLevel,
              rating: this.stressLevel,
            ),
          ],
        ),
      ],
    );
  }
}
