import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:jjb_app/domain/workout/TechnicCategory.dart';
import '../../../../domain/workout/JbbTechnic.dart';
import '../../domain/repositoy/CreateWorkoutRepository.dart';
import '../bloc/create_workout_bloc.dart';
import '../bloc/create_workout_event.dart';
import '../bloc/create_workout_state.dart';
import '../state/FeelingsStepState.dart';
import '../state/TemporalDataStep1.dart';
import '../state/TrainingStepState.dart';
import '../state/WorkoutFormState.dart';
import '../widgets/CreateWorkoutWidget.dart';

class CreateWorkoutPage extends StatefulWidget {
  @override
  State<CreateWorkoutPage> createState() => _CreateWorkoutPageState();
}

class _CreateWorkoutPageState extends State<CreateWorkoutPage> {
  final _workoutNameController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _workoutNameController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WorkoutFormBloc(repository: context.read<CreateWorkoutRepository>()),
      child: BlocConsumer<WorkoutFormBloc, WorkoutFormBlocState>(
        listener: (context, state) {
          if (state.status == WorkoutFormStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Workout créé avec succès!')),
            );
            Navigator.of(context).pop();
          } else if (state.status == WorkoutFormStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Erreur: ${state.errorMessage}')),
            );
          }
        },
        builder: (context, state) {
          return CreateWorkoutWidget(
            currentStep: state.currentStep,

            // Conversion du blocState vers le format attendu par le widget
            formState: _createCompatibleFormState(state),
            techniqueMap: techniqueMap,
            noteController: _notesController,
            // Navigation entre les étapes
            onStepCancel: () =>
                context.read<WorkoutFormBloc>().add(PreviousStepEvent()),
            onStepContinue: () =>
                context.read<WorkoutFormBloc>().add(NextStepEvent()),
            onStepTapped: (step) =>
                context.read<WorkoutFormBloc>().add(GoToStepEvent(step)),

            // Mises à jour pour chaque étape du formulaire
            onWhenStepUpdate:
                ({DateTime? selectedDate, TimeOfDay? selectedTime}) {
                  context.read<WorkoutFormBloc>().add(
                    UpdateWhenStepEvent(
                      selectedDate: selectedDate,
                      selectedTime: selectedTime,
                    ),
                  );
                },
            onFeelingsStepUpdate:
                ({
                  double? feeling,
                  double? energy,
                  double? motivation,
                  double? stress,
                  double? sleepQuality,
                }) {
                  context.read<WorkoutFormBloc>().add(
                    UpdateFeelingsStepEvent(
                      currentFeelingSliderValue: feeling,
                      currentEnergySliderValue: energy,
                      currentMotivationSliderValue: motivation,
                      currentStressSliderValue: stress,
                      currentSleepQualitySliderValue: sleepQuality,
                    ),
                  );
                },

            // 🎯 C'est ici qu'on passe la liste booléenne pour les types d'entraînement
            onTrainingStepUpdate:
                ({
                  TechniqueCategory? category,
                  String? technique,
                  List<bool>? trainingType,
                  String? note,
                }) {
                  context.read<WorkoutFormBloc>().add(
                    UpdateTrainingStepEvent(
                      selectedCategory: category,
                      selectedTechnique: technique,
                      selectedTrainingType: trainingType,
                      noteWrite: note,
                    ),
                  );
                },

            // Soumission finale du formulaire
            onCreateWorkout: () {
              final bloc = context.read<WorkoutFormBloc>();
              if (bloc.isFormValid()) {
                bloc.add(SubmitWorkoutFormEvent());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Veuillez remplir tous les champs requis'),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }

  WorkoutFormState _createCompatibleFormState(WorkoutFormBlocState blocState) {
    return WorkoutFormState(
      whenStep: WhenStepState(
        selectedDate: blocState.selectedDate,
        selectedTime: blocState.selectedTime,
      ),
      feelingsStep: FeelingsStepState(
        currentFeelingSliderValue: blocState.currentFeelingSliderValue,
        currentEnergySliderValue: blocState.currentEnergySliderValue,
        currentMotivationSliderValue: blocState.currentMotivationSliderValue,
        currentStressSliderValue: blocState.currentStressSliderValue,
        currentSleepQualitySliderValue:
            blocState.currentSleepQualitySliderValue,
      ),
      trainingStep: TrainingStepState(
        selectedCategory: blocState.selectedCategory,
        selectedTechnique: blocState.selectedTechnique,
        selectedTrainingType: blocState.selectedTrainingType,
        note: blocState.note,
      ),
    );
  }
}
