import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeelingMeter extends StatelessWidget {
  final int feeling;

  const FeelingMeter({
    Key? key,
    required this.feeling,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Icon(
            Icons.circle,
            size: 8,
            color: index < feeling ? Colors.green : Colors.grey.shade300,
          ),
        );
      }),
    );
  }
}