import '../trainingCard.dart';

abstract class TrainingCardRepository {
  Future<List<TrainingCard>> getAllCards();
}
