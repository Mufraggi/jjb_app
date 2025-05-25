import '../workoutCard.dart';

abstract class WorkoutCardRepository {
  Future<List<WorkoutCard>> getAllCards();
}
