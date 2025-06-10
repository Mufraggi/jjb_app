import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/domain/RatingType.dart';

class FeelingsSelector extends StatelessWidget {
  final double currentValue;
  final Function(double) onChanged;
  final RatingType type;

  const FeelingsSelector({
    Key? key,
    required this.currentValue,
    required this.onChanged,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            type.label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 10),
        Slider(
          value: currentValue,
          max: 10,
          min: 0,
          divisions: 10,
          label: currentValue.round().toString(),
          onChanged: onChanged,
          activeColor: type.getTypeBorderColor(),
        ),
      ],
    );
  }
}
