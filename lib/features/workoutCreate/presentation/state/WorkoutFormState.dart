import 'FeelingsStepState.dart';
import 'TemporalDataStep1.dart';
import 'TrainingStepState.dart';

class WorkoutFormState {
  final WhenStepState whenStep;
  final FeelingsStepState feelingsStep;
  final TrainingStepState trainingStep;

  WorkoutFormState({
    WhenStepState? whenStep,
    FeelingsStepState? feelingsStep,
    TrainingStepState? trainingStep,
  }) : whenStep = whenStep ?? WhenStepState(),
        feelingsStep = feelingsStep ?? FeelingsStepState(),
        trainingStep = trainingStep ?? TrainingStepState();

  WorkoutFormState copyWith({
    WhenStepState? whenStep,
    FeelingsStepState? feelingsStep,
    TrainingStepState? trainingStep,
  }) {
    return WorkoutFormState(
      whenStep: whenStep ?? this.whenStep,
      feelingsStep: feelingsStep ?? this.feelingsStep,
      trainingStep: trainingStep ?? this.trainingStep,
    );
  }
}