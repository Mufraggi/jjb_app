import 'package:jjb_app/core/domain/workoutId.brand.dart';
import 'package:jjb_app/features/workoutCreate/domain/repositoy/CreateWorkoutRepository.dart';

import '../../domain/CreateWorkout.dart';

class CreateWorkoutRepositoryInMemoryImpl implements CreateWorkoutRepository {
  @override
  Future<WorkoutId> insertWorkout(WorkoutFormData workoutData) {
    print('insertWorkout called');
    print(workoutData);
    // TODO: implement insertWorkout
    throw UnimplementedError();
  }
}
