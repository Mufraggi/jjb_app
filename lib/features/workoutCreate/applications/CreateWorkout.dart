import 'package:jjb_app/features/workoutCreate/domain/repositoy/CreateWorkoutRepository.dart';

import '../../../core/domain/workoutId.brand.dart';

class CreateWorkout {
  final CreateWorkoutRepository repository;

  CreateWorkout(this.repository);

  Future<WorkoutId> call() {
    return repository.insertWorkout();
  }
}
