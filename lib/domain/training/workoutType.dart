import 'package:flutter/material.dart';

enum TrainingType { jjbGi, jjbNoGi, grappling }

extension TrainingTypeExtension on TrainingType {
  String get label {
    switch (this) {
      case TrainingType.jjbGi:
        return 'JJB GI';
      case TrainingType.jjbNoGi:
        return 'JJB NO GI';
      case TrainingType.grappling:
        return 'GRAPPLING';
    }
  }

  static TrainingType fromLabel(String label) {
    switch (label) {
      case 'JJB GI':
        return TrainingType.jjbGi;
      case 'JJB NO GI':
        return TrainingType.jjbNoGi;
      case 'GRAPPLING':
        return TrainingType.grappling;
      default:
        throw ArgumentError('Invalid training type label: $label');
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
