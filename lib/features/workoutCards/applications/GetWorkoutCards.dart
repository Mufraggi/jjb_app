import '../domain/repository/workout_card_repository.dart';
import '../domain/workoutCard.dart';

class GetWorkoutCards {
  final WorkoutCardRepository repository;

  GetWorkoutCards(this.repository);

  Future<List<WorkoutCard>> call() {
    return repository.getAllCards();
  }
}
