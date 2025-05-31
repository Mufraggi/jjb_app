import 'package:jjb_app/features/workoutCards/domain/workoutCard.dart';

import '../../../../InjectionContainer.dart';
import '../../../../core/db/Helper.dart';
import '../../domain/repository/workout_card_repository.dart';

class WorkoutCardRepositoryInMemoryImpl implements WorkoutCardRepository {
  final db = getIt<DatabaseHelper>();
  @override
  Future<List<WorkoutCard>> getAllCards() {
      // TODO: implement getAllCards
      throw UnimplementedError();
  }
}

