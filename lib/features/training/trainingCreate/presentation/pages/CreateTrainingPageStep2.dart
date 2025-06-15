import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/training/JbbTechnic.dart';
import '../../../../../domain/training/TechnicCategory.dart';
import '../../domain/repositoy/CreateWorkoutRepository.dart';
import '../bloc/create_training_bloc.dart';
import '../bloc/create_training_event.dart';
import '../bloc/create_training_state.dart';
import '../state/FeelingsStepState.dart';
import '../state/TemporalDataStep1.dart';
import '../state/TrainingStepState.dart';
import '../state/TrainingFormState.dart';
import '../widgets/CreateTrainingWidget.dart';

class CreateTrainingPage extends StatefulWidget {
  @override
  State<CreateTrainingPage> createState() => _CreateTrainingPageState();
}

class _CreateTrainingPageState extends State<CreateTrainingPage> {
  final _trainingNameController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  void dispose() {
    _trainingNameController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingFormBloc(
        repository: context.read<CreateTrainingRepository>(),
      ),
      child: BlocConsumer<TrainingFormBloc, TrainingFormBlocState>(
        listener: (context, state) {
          if (state.status == TrainingFormStatus.success) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Training créé avec succès!')),
            );
            Navigator.of(context).pop();
          } else if (state.status == TrainingFormStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Erreur: ${state.errorMessage}')),
            );
          }
        },
        builder: (context, state) {
          return CreateTrainingWidget(
            currentStep: state.currentStep,

            // Conversion du blocState vers le format attendu par le widget
            formState: _createCompatibleFormState(state),
            techniqueMap: techniqueMap,
            noteController: _notesController,
            // Navigation entre les étapes
            onStepCancel: () =>
                context.read<TrainingFormBloc>().add(PreviousStepEvent()),
            onStepContinue: () =>
                context.read<TrainingFormBloc>().add(NextStepEvent()),
            onStepTapped: (step) =>
                context.read<TrainingFormBloc>().add(GoToStepEvent(step)),

            // Mises à jour pour chaque étape du formulaire
            onWhenStepUpdate:
                ({
                  DateTime? selectedDate,
                  TimeOfDay? selectedTime,
                  Duration? selectedDuration,
                }) {
                  context.read<TrainingFormBloc>().add(
                    UpdateWhenStepEvent(
                      selectedDate: selectedDate,
                      selectedTime: selectedTime,
                      selectedDuration: selectedDuration,
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
                  context.read<TrainingFormBloc>().add(
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
                  context.read<TrainingFormBloc>().add(
                    UpdateTrainingStepEvent(
                      selectedCategory: category,
                      selectedTechnique: technique,
                      selectedTrainingType: trainingType,
                      noteWrite: note,
                    ),
                  );
                },

            // Soumission finale du formulaire
            onCreateTraining: () {
              final bloc = context.read<TrainingFormBloc>();
              if (bloc.isFormValid()) {
                bloc.add(SubmitTrainingFormEvent());
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

  TrainingFormState _createCompatibleFormState(
    TrainingFormBlocState blocState,
  ) {
    return TrainingFormState(
      whenStep: WhenStepState(
        selectedDate: blocState.selectedDate,
        selectedTime: blocState.selectedTime,
        selectedDuration: blocState.selectedDuration,
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
