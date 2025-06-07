import 'package:jjb_app/features/workoutCreate/domain/repositoy/CreateWorkoutRepository.dart';

import '../../../core/domain/workoutId.brand.dart';
import '../domain/CreateWorkout.dart';

class CreateWorkout {
  final CreateWorkoutRepository repository;

  CreateWorkout(this.repository);

  Future<WorkoutId> call( WorkoutFormData workoutData) {
    return repository.insertWorkout(workoutData);
  }
}
