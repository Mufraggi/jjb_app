
import '../domain/repository/training_card_repository.dart';
import '../domain/trainingCard.dart';

class GetTrainingCards {
  final TrainingCardRepository repository;

  GetTrainingCards(this.repository);

  Future<List<TrainingCard>> call() {
    return repository.getAllCards();
  }
}
