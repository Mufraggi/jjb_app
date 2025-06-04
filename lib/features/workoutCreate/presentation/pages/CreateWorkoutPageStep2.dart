import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/domain/workout/TechnicCategory.dart';
import '../../../../domain/workout/JbbTechnic.dart';
import '../state/WorkoutFormState.dart';
import '../widgets/CreateWorkoutWidget.dart';

class CreateWorkoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateWorkoutPageState();
}

class _CreateWorkoutPageState extends State<CreateWorkoutPage> {
  int _currentStep = 0;

  // État global du formulaire
  late WorkoutFormState _formState;

  // Contrôleurs de texte (inchangés)
  final _workoutNameController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _formState = WorkoutFormState();
  }

  @override
  void dispose() {
    _workoutNameController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  // Méthodes pour mettre à jour l'état de chaque étape
  void _updateWhenStep({DateTime? selectedDate, TimeOfDay? selectedTime}) {
    setState(() {
      _formState = _formState.copyWith(
        whenStep: _formState.whenStep.copyWith(
          selectedDate: selectedDate,
          selectedTime: selectedTime,
        ),
      );
    });
  }

  void _updateFeelingsStep({
    double? feeling,
    double? energy,
    double? motivation,
    double? stress,
    double? sleepQuality,
  }) {
    setState(() {
      _formState = _formState.copyWith(
        feelingsStep: _formState.feelingsStep.copyWith(
          currentFeelingSliderValue: feeling,
          currentEnergySliderValue: energy,
          currentMotivationSliderValue: motivation,
          currentStressSliderValue: stress,
          currentSleepQualitySliderValue: sleepQuality,
        ),
      );
    });
  }

  void _updateTrainingStep({
    TechniqueCategory? category,
    String? technique,
    List<bool>? trainingType,
  }) {
    setState(() {
      _formState = _formState.copyWith(
        trainingStep: _formState.trainingStep.copyWith(
          selectedCategory: category,
          selectedTechnique: technique,
          selectedTrainingType: trainingType,
        ),
      );
    });
  }

  void _createWorkout() {
    // Logique de création du workout avec toutes les données
    print('Date: ${_formState.whenStep.selectedDate}');
    print('Time: ${_formState.whenStep.selectedTime}');
    print('Feeling: ${_formState.feelingsStep.currentFeelingSliderValue}');
    print('Category: ${_formState.trainingStep.selectedCategory}');
    // ... etc

    // Ici vous pouvez appeler votre service/repository pour sauvegarder
  }

  void _goToNextStep() {
    setState(() {
      _currentStep += 1;
    });
  }

  void _goToPreviousStep() {
    setState(() {
      _currentStep -= 1;
    });
  }

  void _goToStep(int step) {
    setState(() {
      _currentStep = step;
    });
  }

  @override
  Widget build(BuildContext context) {
   return CreateWorkoutWidget(
      currentStep: _currentStep,
      formState: _formState,
      techniqueMap: techniqueMap,
      onStepCancel: _goToPreviousStep,
      onStepContinue: _goToNextStep,
      onStepTapped: _goToStep,
      onWhenStepUpdate: _updateWhenStep,
      onFeelingsStepUpdate: _updateFeelingsStep,
      onTrainingStepUpdate: _updateTrainingStep,
      onCreateWorkout: _createWorkout,
    );
  }
}
