import 'package:flutter/material.dart';

enum WorkoutType { jjbGi, jjbNoGi, grappling }

extension WorkoutTypeExtension on WorkoutType {
  String get label {
    switch (this) {
      case WorkoutType.jjbGi:
        return 'JJB GI';
      case WorkoutType.jjbNoGi:
        return 'JJB NO GI';
      case WorkoutType.grappling:
        return 'GRAPPLING';
    }
  }

  static WorkoutType fromLabel(String label) {
    switch (label) {
      case 'JJB GI':
        return WorkoutType.jjbGi;
      case 'JJB NO GI':
        return WorkoutType.jjbNoGi;
      case 'GRAPPLING':
        return WorkoutType.grappling;
      default:
        throw ArgumentError('Invalid workout type label: $label');
    }
  }
  Color getTypeBorderColor() {
    switch (this.label) {
      case "JJB GI":
        return Colors.purple.shade500;
      case "JJB NO GI":
        return Colors.blue.shade500;
      case "GRAPPLING":
        return Colors.orange.shade500;
      default:
        return Colors.grey.shade500;
    }
  }
}
