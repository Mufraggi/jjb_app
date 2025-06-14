import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/core/domain/ratingOnTen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../../../core/domain/RatingType.dart';

class CircularFeeling extends StatelessWidget {
  final RatingType type;
  final RatingOnTen rating;

  const CircularFeeling({Key? key, required this.type, required this.rating})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.type.label, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        CircularPercentIndicator(
          radius: 40,
          animation: true,
          animationDuration: 1200,
          lineWidth: 10.0,
          percent: rating.value/10,
          center: new Text(
            this.rating.value.toString(),
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          circularStrokeCap: CircularStrokeCap.butt,
          backgroundColor: Colors.grey,
          progressColor: this.type.getTypeBorderColor(),
        ),
      ],
    );
  }
}
