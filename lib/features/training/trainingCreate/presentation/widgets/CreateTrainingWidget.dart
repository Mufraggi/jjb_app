import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../domain/training/TechnicCategory.dart';
import '../state/TrainingFormState.dart';
import 'steps/Step1When.dart';
import 'steps/Step2Feeling.dart';
import 'steps/Step3Training.dart';

class CreateTrainingWidget extends StatelessWidget {
  final int currentStep;
  final TrainingFormState formState;
  final Map<TechniqueCategory, List<String>> techniqueMap;


  final VoidCallback? onStepCancel;
  final VoidCallback? onStepContinue;
  final Function(int) onStepTapped;

  final Function({DateTime? selectedDate, TimeOfDay? selectedTime, Duration? selectedDuration}) onWhenStepUpdate;
  final Function({
  double? feeling,
  double? energy,
  double? motivation,
  double? stress,
  double? sleepQuality,
  }) onFeelingsStepUpdate;
  final Function({
  TechniqueCategory? category,
  String? technique,
  List<bool>? trainingType,
  String? note

  }) onTrainingStepUpdate;
  // Callback pour la création du training
  final VoidCallback onCreateTraining;
  final TextEditingController noteController; // ✅ Controller passé en paramètre


  const CreateTrainingWidget({
    Key? key,
    required this.currentStep,
    required this.formState,
    required this.techniqueMap,
    required this.onStepCancel,
    required this.onStepContinue,
    required this.onStepTapped,
    required this.onWhenStepUpdate,
    required this.onFeelingsStepUpdate,
    required this.onTrainingStepUpdate,
    required this.onCreateTraining,
    required this.noteController

  }) : super(key: key);

  bool get isFirstStep => currentStep == 0;
  bool get isLastStep => currentStep == _buildSteps().length - 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stepper(
        currentStep: currentStep,
        onStepTapped: onStepTapped,
        onStepContinue: () {
          if (isLastStep) {
            onCreateTraining();
          } else {
            onStepContinue?.call();
          }
        },
        onStepCancel: isFirstStep ? null : onStepCancel,
        controlsBuilder: (context, details) {
          return Row(
            children: [
              if (!isFirstStep)
                TextButton(
                  onPressed: details.onStepCancel,
                  child: Text('Précédent'),
                ),
              SizedBox(width: 8),
              ElevatedButton(
                onPressed: details.onStepContinue,
                child: Text(isLastStep ? 'Créer' : 'Suivant'),
              ),
            ],
          );
        },
        steps: _buildSteps(),
      ),
    );
  }

  List<Step> _buildSteps() => [
    Step(
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      title: Text('Quand'),
      content: Step1WhenContent(
        selectedDate: formState.whenStep.selectedDate,
        selectedTime: formState.whenStep.selectedTime,
        selectedDuration: formState.whenStep.selectedDuration.inMinutes.toDouble(),
        onDateChanged: (newDate) => onWhenStepUpdate(selectedDate: newDate),
        onTimeChanged: (newTime) => onWhenStepUpdate(selectedTime: newTime),
        onDurationChanged: (duration) => onWhenStepUpdate(selectedDuration: Duration(minutes: duration.toInt())),
      ),
    ),
    Step(
      state: currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 1,
      title: Text('Feelings'),
      content: Step2FeelingsContent(
        currentFeelingSliderValue: formState.feelingsStep.currentFeelingSliderValue,
        onFeelingChanged: (value) => onFeelingsStepUpdate(feeling: value),
        currentEnergySliderValue: formState.feelingsStep.currentEnergySliderValue,
        onEnergyChanged: (value) => onFeelingsStepUpdate(energy: value),
        currentMotivationSliderValue: formState.feelingsStep.currentMotivationSliderValue,
        onMotivationChanged: (value) => onFeelingsStepUpdate(motivation: value),
        currentStressSliderValue: formState.feelingsStep.currentStressSliderValue,
        onStressChanged: (value) => onFeelingsStepUpdate(stress: value),
        currentSleepQualitySliderValue: formState.feelingsStep.currentSleepQualitySliderValue,
        onSleepQualityChanged: (value) => onFeelingsStepUpdate(sleepQuality: value),
      ),
    ),
    Step(
      state: currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: currentStep >= 2,
      title: const Text('Training'),
      content: Step3TrainingContent(
        selectedCategory: formState.trainingStep.selectedCategory,
        selectedTechnique: formState.trainingStep.selectedTechnique,
        techniqueMap: techniqueMap,
        selectedTrainingType: formState.trainingStep.selectedTrainingType, // ✅ Maintenant List<bool>
        onCategoryChanged: (newValue) => onTrainingStepUpdate(
          category: newValue,
          technique: null, // Réinitialiser la technique
        ),
        onTechniqueChanged: (newValue) => onTrainingStepUpdate(technique: newValue),
        onTrainingTypeChanged: (int index) {
          List<bool> newSelection = List.generate(3, (i) => i == index);
          print(newSelection);
          onTrainingStepUpdate(trainingType: newSelection);
        },
        formKey: GlobalKey<FormState>(),
        onNoteChanged: (value) => onTrainingStepUpdate(note: value),
        initialNote: formState.trainingStep.note,
        noteController: noteController, // ✅ Passer le controller

      ),
    ),
  ];
}