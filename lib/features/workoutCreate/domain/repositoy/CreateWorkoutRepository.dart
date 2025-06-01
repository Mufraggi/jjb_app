import '../../../../core/domain/workoutId.brand.dart';

abstract class CreateWorkoutRepository {
  Future<WorkoutId> insertWorkout();
}
