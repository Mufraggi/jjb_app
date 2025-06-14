// training_form_state.dart
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../../../domain/training/TechnicCategory.dart';

enum TrainingFormStatus { initial, loading, success, failure }

class TrainingFormBlocState extends Equatable {
  final int currentStep;
  final TrainingFormStatus status;
  final String? errorMessage;

  // Données aplaties de tous les steps
  // WhenStep data
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  // FeelingsStep data
  final double currentFeelingSliderValue;
  final double currentEnergySliderValue;
  final double currentMotivationSliderValue;
  final double currentStressSliderValue;
  final double currentSleepQualitySliderValue;

  // TrainingStep data
  final TechniqueCategory? selectedCategory;
  final String? selectedTechnique;
  final List<bool> selectedTrainingType;
  final String? note;

  const TrainingFormBlocState({
    this.currentStep = 0,
    this.status = TrainingFormStatus.initial,
    this.errorMessage,

    // WhenStep defaults
    this.selectedDate,
    this.selectedTime,

    // FeelingsStep defaults
    this.currentFeelingSliderValue = 5,
    this.currentEnergySliderValue = 5,
    this.currentMotivationSliderValue = 5,
    this.currentStressSliderValue = 5,
    this.currentSleepQualitySliderValue = 5,

    // TrainingStep defaults
    this.selectedCategory,
    this.selectedTechnique,
    this.selectedTrainingType = const [true, false, false], // ✅ Valeur par défaut
    this.note,
  });

  // Factory constructor pour créer l'état initial avec les valeurs par défaut
  factory TrainingFormBlocState.initial() {
    return TrainingFormBlocState(
      selectedDate: DateTime.now(),
      selectedTime: TimeOfDay.now(),
    );
  }

  TrainingFormBlocState copyWith({
    int? currentStep,
    TrainingFormStatus? status,
    String? errorMessage,

    // WhenStep fields
    DateTime? selectedDate,
    TimeOfDay? selectedTime,

    // FeelingsStep fields
    double? currentFeelingSliderValue,
    double? currentEnergySliderValue,
    double? currentMotivationSliderValue,
    double? currentStressSliderValue,
    double? currentSleepQualitySliderValue,

    // TrainingStep fields
    TechniqueCategory? selectedCategory,
    String? selectedTechnique,
    List<bool>? selectedTrainingType,
    String? noteWrite,
  }) {
    return TrainingFormBlocState(
      currentStep: currentStep ?? this.currentStep,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,

      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,

      currentFeelingSliderValue:
          currentFeelingSliderValue ?? this.currentFeelingSliderValue,
      currentEnergySliderValue:
          currentEnergySliderValue ?? this.currentEnergySliderValue,
      currentMotivationSliderValue:
          currentMotivationSliderValue ?? this.currentMotivationSliderValue,
      currentStressSliderValue:
          currentStressSliderValue ?? this.currentStressSliderValue,
      currentSleepQualitySliderValue:
          currentSleepQualitySliderValue ?? this.currentSleepQualitySliderValue,

      selectedCategory: selectedCategory ?? this.selectedCategory,
      selectedTechnique: selectedTechnique ?? this.selectedTechnique,
      selectedTrainingType: selectedTrainingType ?? this.selectedTrainingType,
      note: noteWrite ?? this.note,
    );
  }

  @override
  List<Object?> get props => [
    currentStep,
    status,
    errorMessage,
    selectedDate,
    selectedTime,
    currentFeelingSliderValue,
    currentEnergySliderValue,
    currentMotivationSliderValue,
    currentStressSliderValue,
    currentSleepQualitySliderValue,
    selectedCategory,
    selectedTechnique,
    selectedTrainingType,
    note,
  ];
}
