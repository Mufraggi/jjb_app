import 'package:jjb_app/core/domain/workoutId.brand.dart';

import '../entities/workoutDetails.dart';


abstract class WorkoutRepository {
  Future<WorkoutDetails> getWorkoutById(WorkoutId id);
}
