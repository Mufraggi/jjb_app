import 'FeelingsStepState.dart';
import 'TemporalDataStep1.dart';
import 'TrainingStepState.dart';

class TrainingFormState {
  final WhenStepState whenStep;
  final FeelingsStepState feelingsStep;
  final TrainingStepState trainingStep;

  TrainingFormState({
    WhenStepState? whenStep,
    FeelingsStepState? feelingsStep,
    TrainingStepState? trainingStep,
  }) : whenStep = whenStep ?? WhenStepState(),
        feelingsStep = feelingsStep ?? FeelingsStepState(),
        trainingStep = trainingStep ?? TrainingStepState();

  TrainingFormState copyWith({
    WhenStepState? whenStep,
    FeelingsStepState? feelingsStep,
    TrainingStepState? trainingStep,
  }) {
    return TrainingFormState(
      whenStep: whenStep ?? this.whenStep,
      feelingsStep: feelingsStep ?? this.feelingsStep,
      trainingStep: trainingStep ?? this.trainingStep,
    );
  }
}