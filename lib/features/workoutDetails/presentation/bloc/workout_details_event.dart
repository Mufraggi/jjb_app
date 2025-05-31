import '../../../../core/domain/workoutId.brand.dart';


abstract class WorkoutDetailsEvent {}

class WorkoutDetailsRequested extends WorkoutDetailsEvent {
  final WorkoutId id;

  WorkoutDetailsRequested(this.id);

}
