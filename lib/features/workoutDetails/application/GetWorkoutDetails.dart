import 'package:jjb_app/core/domain/workoutId.brand.dart';

import '../domain/entities/workoutDetails.dart';
import '../domain/repository/workout_details_repository.dart';

class GetWorkoutDetails {
  final WorkoutRepository repository;

  GetWorkoutDetails(this.repository);

  Future<WorkoutDetails> call(WorkoutId id) {
    return repository.getWorkoutById(id);
  }
}
