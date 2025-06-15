import 'package:flutter/material.dart';

import '../../../../domain/training/TechnicCategory.dart';


class TrainingFormData {
  // Champs de WhenStepState
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  final Duration selectedDuration;

  // Champs de FeelingsStepState
  final double currentFeelingSliderValue;
  final double currentEnergySliderValue;
  final double currentMotivationSliderValue;
  final double currentStressSliderValue;
  final double currentSleepQualitySliderValue;

  // Champs de TrainingStepState
  final TechniqueCategory selectedCategory;
  final String? selectedTechnique;
  final String selectedTrainingType;
  final String? note;

  TrainingFormData({
    required this.selectedDate,
    required this.selectedTime,
    required this.currentFeelingSliderValue,
    required this.currentEnergySliderValue,
    required this.currentMotivationSliderValue,
    required this.currentStressSliderValue,
    required this.currentSleepQualitySliderValue,
    required this.selectedCategory,
    this.selectedTechnique,
    required this.selectedTrainingType,
    required this.note,
    required this.selectedDuration,
  });
}