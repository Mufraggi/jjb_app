import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/RatingType.dart';
import '../widgets/widgets/DateSelector.dart';
import '../widgets/widgets/FeelingsSelector.dart';
import '../widgets/widgets/TimePickerCard.dart';

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

  bool get isFirstStep => _currentStep == 0;

  final _workoutNameController = TextEditingController();
  final _notesController = TextEditingController();

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
      child: Column(
        children: [
          Stepper(
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
            //type: StepperType.horizontal,
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
        ],
      ),
    );
  }

  List<Step> _buildSteps() => [
    Step(
      title: Text('Quand'),
      content: Column(
        children: [
          Text(
            'Sélectionnez la date et l\'heure de votre entraînement',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),
          DatePickerCard(
            selectedDate: selectedDate,
            onDateChanged: (DateTime newDate) {
              setState(() {
                selectedDate = newDate;
              });
            },
          ),

          SizedBox(height: 16),
          TimePickerCard(
            selectedTime: selectedTime,
            onTimeChanged: (TimeOfDay newTime) {
              setState(() {
                selectedTime = newTime;
              });
            },
          ),
        ],
      ),
    ),

    Step(
      isActive: _currentStep >= 1,
      title: Text('Feelings'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            FeelingsSelector(
              type: RatingType.feeling,
              currentValue: _currentFeelingSliderValue,
              onChanged: (value) {
                setState(() {
                  _currentFeelingSliderValue = value;
                });
              },
            ),
            SizedBox(height: 10),
            FeelingsSelector(
              type: RatingType.energyLevel,
              currentValue: _currentEnergySliderValue,
              onChanged: (value) {
                setState(() {
                  _currentEnergySliderValue = value;
                });
              },
            ),
            SizedBox(height: 10),
            FeelingsSelector(
              type: RatingType.motivationLevel,
              currentValue: _currentMotivationSliderValue,
              onChanged: (value) {
                setState(() {
                  _currentMotivationSliderValue = value;
                });
              },
            ),
            SizedBox(height: 10),
            FeelingsSelector(
              type: RatingType.stressLevel,
              currentValue: _currentStressSliderValue,
              onChanged: (value) {
                setState(() {
                  _currentStressSliderValue = value;
                });
              },
            ),
            SizedBox(height: 10),
            FeelingsSelector(
              type: RatingType.sleepQuality,
              currentValue: _currentSleepQualitySliderValue,
              onChanged: (value) {
                setState(() {
                  _currentSleepQualitySliderValue = value;
                });
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    ),
  ];
}
