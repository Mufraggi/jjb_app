import '../../../../core/domain/workoutId.brand.dart';
import '../CreateWorkout.dart';

abstract class CreateWorkoutRepository {
  Future<WorkoutId> insertWorkout(WorkoutFormData workoutData);
}
