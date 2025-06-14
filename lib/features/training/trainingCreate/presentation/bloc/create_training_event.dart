// training_form_event.dart
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../../../domain/workout/TechnicCategory.dart';

abstract class TrainingFormEvent extends Equatable {
  const TrainingFormEvent();

  @override
  List<Object?> get props => [];
}

// Classe événement pour représenter toutes les données aplaties
class TrainingFormDataEvent extends TrainingFormEvent {
  // Données de WhenStep
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  // Données de FeelingsStep
  final double? currentFeelingSliderValue;
  final double? currentEnergySliderValue;
  final double? currentMotivationSliderValue;
  final double? currentStressSliderValue;
  final double? currentSleepQualitySliderValue;

  // Données de TrainingStep
  final TechniqueCategory? selectedCategory;
  final String? selectedTechnique;
  final List<bool>? selectedTrainingType;
  final String? note;

  const TrainingFormDataEvent({
    // WhenStep fields
    this.selectedDate,
    this.selectedTime,

    // FeelingsStep fields
    this.currentFeelingSliderValue,
    this.currentEnergySliderValue,
    this.currentMotivationSliderValue,
    this.currentStressSliderValue,
    this.currentSleepQualitySliderValue,

    // TrainingStep fields
    this.selectedCategory,
    this.selectedTechnique,
    this.selectedTrainingType,
    this.note,
  });

  @override
  List<Object?> get props => [
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
  ];
}

// Événements pour la navigation entre les étapes
class NextStepEvent extends TrainingFormEvent {}

class PreviousStepEvent extends TrainingFormEvent {}

class GoToStepEvent extends TrainingFormEvent {
  final int stepIndex;

  const GoToStepEvent(this.stepIndex);

  @override
  List<Object> get props => [stepIndex];
}

// Événement pour soumettre le formulaire
class SubmitTrainingFormEvent extends TrainingFormEvent {}

// Événements spécifiques par étape (optionnels, pour plus de granularité)
class UpdateWhenStepEvent extends TrainingFormEvent {
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  const UpdateWhenStepEvent({
    this.selectedDate,
    this.selectedTime,
  });

  @override
  List<Object?> get props => [selectedDate, selectedTime];
}

class UpdateFeelingsStepEvent extends TrainingFormEvent {
  final double? currentFeelingSliderValue;
  final double? currentEnergySliderValue;
  final double? currentMotivationSliderValue;
  final double? currentStressSliderValue;
  final double? currentSleepQualitySliderValue;

  const UpdateFeelingsStepEvent({
    this.currentFeelingSliderValue,
    this.currentEnergySliderValue,
    this.currentMotivationSliderValue,
    this.currentStressSliderValue,
    this.currentSleepQualitySliderValue,
  });

  @override
  List<Object?> get props => [
    currentFeelingSliderValue,
    currentEnergySliderValue,
    currentMotivationSliderValue,
    currentStressSliderValue,
    currentSleepQualitySliderValue,
  ];
}

class UpdateTrainingStepEvent extends TrainingFormEvent {
  final TechniqueCategory? selectedCategory;
  final String? selectedTechnique;
  final List<bool>? selectedTrainingType;
  final String? noteWrite;

  const UpdateTrainingStepEvent({
    this.selectedCategory,
    this.selectedTechnique,
    required this.selectedTrainingType,
    this.noteWrite,
  });

  @override
  List<Object?> get props => [
    selectedCategory,
    selectedTechnique,
    selectedTrainingType,
    noteWrite
  ];
}