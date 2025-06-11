import 'package:isar/isar.dart';
import 'package:jjb_app/core/domain/workoutId.brand.dart';
import 'package:jjb_app/features/workoutCreate/domain/repositoy/CreateWorkoutRepository.dart';
import 'package:uuid/uuid.dart';

import '../../domain/CreateWorkout.dart';
import '../models/workout_form_entity.dart';

class CreateWorkoutRepositoryInMemoryImpl implements CreateWorkoutRepository {
  @override
  Future<WorkoutId> insertWorkout(WorkoutFormData workoutData) {
    print('insertWorkout called');
    print(workoutData);
    // TODO: implement insertWorkout
    throw UnimplementedError();
  }
}

class CreateWorkoutImpl implements CreateWorkoutRepository {
  final Isar isar;

  CreateWorkoutImpl(this.isar);

  @override
  Future<WorkoutId> insertWorkout(WorkoutFormData workoutData) {
    final workoutFormEntity = WorkoutFormEntity.fromFormData(workoutData);
    isar.writeTxnSync(() {
      isar.workoutFormEntitys.putSync(workoutFormEntity);
    });

    return Future.value(WorkoutId(workoutFormEntity.uuid));
  }
}
