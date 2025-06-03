import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/domain/workout/TechnicCategory.dart';
import '../../../../domain/workout/JbbTechnic.dart';
import '../widgets/steps/Step1When.dart';
import '../widgets/steps/Step2Feeling.dart';
import '../widgets/steps/Step3Training.dart';

class CreateWorkoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CreateWorkoutPageState();
}

class _CreateWorkoutPageState extends State<CreateWorkoutPage> {
  int _currentStep = 0;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  double _currentFeelingSliderValue = 5;
  double _currentEnergySliderValue = 5;
  double _currentMotivationSliderValue = 5;
  double _currentStressSliderValue = 5;
  double _currentSleepQualitySliderValue = 5;
  String firstDropdownValue = TechniqueCategory.takedowns.label;
  String? secondDropdownValue;
  List<bool> _selectedTrainingType = <bool>[true, false, false];

  bool get isFirstStep => _currentStep == 0;

  final _workoutNameController = TextEditingController();
  final _notesController = TextEditingController();
  TechniqueCategory? selectedCategory;
  String? selectedTechnique;

  bool get isLastStep => _currentStep == _buildSteps().length - 1;

  @override
  void dispose() {
    _workoutNameController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stepper(
        currentStep: _currentStep,
        onStepTapped: (step) => setState(() => _currentStep = step),
        onStepContinue: () {
          if (isLastStep) {
          } else {
            setState(() => _currentStep += 1);
          }
        },
        onStepCancel: isFirstStep
            ? null
            : () => setState(() => _currentStep -= 1),

        // type: StepperType.horizontal,
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
      state: _currentStep > 0 ? StepState.complete : StepState.indexed,
      title: Text('Quand'),

      content: Step1WhenContent(
        selectedDate: selectedDate,
        selectedTime: selectedTime,
        onDateChanged: (newDate) {
          setState(() {
            selectedDate = newDate;
          });
        },
        onTimeChanged: (newTime) {
          setState(() {
            selectedTime = newTime;
          });
        },
      ),
    ),

    Step(
      state: _currentStep > 1 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 1,
      title: Text('Feelings'),
      content: Step2FeelingsContent(
        currentFeelingSliderValue: _currentFeelingSliderValue,
        onFeelingChanged: (value) =>
            setState(() => _currentFeelingSliderValue = value),
        currentEnergySliderValue: _currentEnergySliderValue,
        onEnergyChanged: (value) =>
            setState(() => _currentEnergySliderValue = value),
        currentMotivationSliderValue: _currentMotivationSliderValue,
        onMotivationChanged: (value) =>
            setState(() => _currentMotivationSliderValue = value),
        currentStressSliderValue: _currentStressSliderValue,
        onStressChanged: (value) =>
            setState(() => _currentStressSliderValue = value),
        currentSleepQualitySliderValue: _currentSleepQualitySliderValue,
        onSleepQualityChanged: (value) =>
            setState(() => _currentSleepQualitySliderValue = value),
      ),
    ),
    Step(
      state: _currentStep > 2 ? StepState.complete : StepState.indexed,
      isActive: _currentStep >= 2,
      title: const Text('Training'),
      content: Step3TrainingContent(
        selectedCategory: selectedCategory,
        selectedTechnique: selectedTechnique,
        techniqueMap: techniqueMap,
        selectedWorkoutType: _selectedTrainingType,
        // Assurez-vous que techniqueMap est accessible ici
        onCategoryChanged: (newValue) {
          setState(() {
            selectedCategory = newValue;
            selectedTechnique = null; // Réinitialiser la technique
          });
        },
        onTechniqueChanged: (newValue) {
          setState(() {
            selectedTechnique = newValue;
          });
        },
        onWorkoutTypeChanged: (int index) {
          setState(() {
            for (int i = 0; i < _selectedTrainingType.length; i++) {
              _selectedTrainingType[i] = i == index;
            }
          });
        },
        formKey: GlobalKey<FormState>(),
      ),
    ),
  ];
}
