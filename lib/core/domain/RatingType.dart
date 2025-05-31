import 'package:flutter/material.dart';

enum RatingType { feeling, energyLevel, motivationLevel, stressLevel, sleepQuality }

extension WorkoutTypeExtension on RatingType {
  String get label {
    switch (this) {
      case RatingType.feeling:
        return 'Feeling';
      case RatingType.energyLevel:
        return 'Energy';
      case RatingType.motivationLevel:
        return 'Motivation';
      case RatingType.stressLevel:
        return 'Stress';
      case RatingType.sleepQuality:
        return 'Sleep quality';
    }
  }
  static RatingType fromLabel(String label) {
    switch (label) {
      case 'Feeling':
        return RatingType.feeling;
      case 'Energy':
        return RatingType.energyLevel;
      case 'Motivation':
        return RatingType.motivationLevel;
      case 'Stress':
        return RatingType.stressLevel;
      case 'Sleep quality':
        return RatingType.sleepQuality;
      default:
        throw ArgumentError('Invalid rating type type label: $label');
    }
  }
  Color getTypeBorderColor() {
    switch (this.label) {
      case 'Feeling':
        return Colors.greenAccent;
      case 'Energy':
        return Colors.blueAccent;
      case 'Motivation':
        return Colors.yellowAccent;
      case 'Stress':
        return Colors.redAccent;
      case 'Sleep quality':
        return Colors.purpleAccent;
      default:
        return Colors.grey.shade500;
    }
  }
}
