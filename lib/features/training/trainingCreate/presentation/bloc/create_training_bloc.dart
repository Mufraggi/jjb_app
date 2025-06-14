// training_form_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/workout/workoutType.dart';
import '../../domain/CreateTraining.dart';
import '../../domain/repositoy/CreateWorkoutRepository.dart';
import 'create_training_event.dart';
import 'create_training_state.dart';

class TrainingFormBloc extends Bloc<TrainingFormEvent, TrainingFormBlocState> {
  final CreateTrainingRepository repository;
  static const int maxSteps = 3;

  TrainingFormBloc({required this.repository})
    : super(TrainingFormBlocState.initial()) {
    // Navigation entre les étapes
    on<NextStepEvent>(_onNextStep);
    on<PreviousStepEvent>(_onPreviousStep);
    on<GoToStepEvent>(_onGoToStep);

    // Mise à jour des données
    on<TrainingFormDataEvent>(_onTrainingFormDataUpdate);
    on<UpdateWhenStepEvent>(_onUpdateWhenStep);
    on<UpdateFeelingsStepEvent>(_onUpdateFeelingsStep);
    on<UpdateTrainingStepEvent>(_onUpdateTrainingStep);

    // Soumission du formulaire
    on<SubmitTrainingFormEvent>(_onSubmitTrainingForm);
  }

  void _onNextStep(NextStepEvent event, Emitter<TrainingFormBlocState> emit) {
    if (state.currentStep < maxSteps - 1) {
      emit(state.copyWith(currentStep: state.currentStep + 1));
    }
  }

  void _onPreviousStep(
    PreviousStepEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) {
    if (state.currentStep > 0) {
      emit(state.copyWith(currentStep: state.currentStep - 1));
    }
  }

  void _onGoToStep(GoToStepEvent event, Emitter<TrainingFormBlocState> emit) {
    if (event.stepIndex >= 0 && event.stepIndex < maxSteps) {
      emit(state.copyWith(currentStep: event.stepIndex));
    }
  }

  void _onTrainingFormDataUpdate(
    TrainingFormDataEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) {
    emit(
      state.copyWith(
        // WhenStep updates
        selectedDate: event.selectedDate,
        selectedTime: event.selectedTime,

        // FeelingsStep updates
        currentFeelingSliderValue: event.currentFeelingSliderValue,
        currentEnergySliderValue: event.currentEnergySliderValue,
        currentMotivationSliderValue: event.currentMotivationSliderValue,
        currentStressSliderValue: event.currentStressSliderValue,
        currentSleepQualitySliderValue: event.currentSleepQualitySliderValue,

        // TrainingStep updates
        selectedCategory: event.selectedCategory,
        selectedTechnique: event.selectedTechnique,
        selectedTrainingType: event.selectedTrainingType,
      ),
    );
  }

  void _onUpdateWhenStep(
    UpdateWhenStepEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) {
    emit(
      state.copyWith(
        selectedDate: event.selectedDate,
        selectedTime: event.selectedTime,
      ),
    );
  }

  void _onUpdateFeelingsStep(
    UpdateFeelingsStepEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) {
    emit(
      state.copyWith(
        currentFeelingSliderValue: event.currentFeelingSliderValue,
        currentEnergySliderValue: event.currentEnergySliderValue,
        currentMotivationSliderValue: event.currentMotivationSliderValue,
        currentStressSliderValue: event.currentStressSliderValue,
        currentSleepQualitySliderValue: event.currentSleepQualitySliderValue,
      ),
    );
  }

  void _onUpdateTrainingStep(
    UpdateTrainingStepEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCategory: event.selectedCategory,
        selectedTechnique: event.selectedTechnique,
        selectedTrainingType: event.selectedTrainingType,
        noteWrite: event.noteWrite,
      ),
    );
  }

  Future<void> _onSubmitTrainingForm(
    SubmitTrainingFormEvent event,
    Emitter<TrainingFormBlocState> emit,
  ) async {
    emit(state.copyWith(status: TrainingFormStatus.loading));
    String selectedTrainingTypeString = _getSelectedTrainingType(state.selectedTrainingType);
    print(selectedTrainingTypeString);
    print(state.note);
    try {
      final training = TrainingFormData(
        selectedDate: state.selectedDate!,
        selectedTime: state.selectedTime!,
        currentFeelingSliderValue: state.currentFeelingSliderValue,
        currentEnergySliderValue: state.currentEnergySliderValue,
        currentMotivationSliderValue: state.currentMotivationSliderValue,
        currentStressSliderValue: state.currentStressSliderValue,
        currentSleepQualitySliderValue: state.currentSleepQualitySliderValue,
        selectedCategory: state.selectedCategory!,
        selectedTechnique: state.selectedTechnique!,
        selectedTrainingType: selectedTrainingTypeString,
        note: state.note,
      );

      await repository.insertTraining(training);

      emit(state.copyWith(status: TrainingFormStatus.success));
    } catch (error) {
      emit(
        state.copyWith(
          status: TrainingFormStatus.failure,
          errorMessage: error.toString(),
        ),
      );
    }
  }
  String _getSelectedTrainingType(List<bool> selectedList) {
    final trainingsType = [
      TrainingType.grappling,
      TrainingType.jjbGi,
      TrainingType.jjbNoGi,
    ];

    for (int i = 0; i < selectedList.length; i++) {
      if (selectedList[i]) {
        return trainingsType[i].label;
      }
    }
    return trainingsType[0].label; // valeur par défaut
  }
  // Méthodes utilitaires pour vérifier la validité de chaque étape
  bool isWhenStepValid() {
    return state.selectedDate != null && state.selectedTime != null;
  }

  bool isFeelingsStepValid() {
    return true; // Les sliders ont toujours des valeurs par défaut
  }

  bool isTrainingStepValid() {
    return state.selectedCategory != null &&
        state.selectedTechnique != null &&
        state.selectedTechnique!.isNotEmpty;
  }

  bool canGoToNextStep() {
    switch (state.currentStep) {
      case 0:
        return isWhenStepValid();
      case 1:
        return isFeelingsStepValid();
      case 2:
        return isTrainingStepValid();
      default:
        return false;
    }
  }

  bool isFormValid() {
    return isWhenStepValid() && isFeelingsStepValid() && isTrainingStepValid();
  }
}
