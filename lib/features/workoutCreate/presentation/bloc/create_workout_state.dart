
import '../../../../core/domain/workoutId.brand.dart';

abstract class CreateWorkoutState {}

class CreateWorkoutInitial extends CreateWorkoutState {}

class CreateWorkoutLoadInProgress extends CreateWorkoutState {}

class CreateWorkoutLoadSuccess extends CreateWorkoutState {
  final WorkoutId id;

  CreateWorkoutLoadSuccess(this.id);
}

class CreateWorkoutLoadFailure extends CreateWorkoutState {}
