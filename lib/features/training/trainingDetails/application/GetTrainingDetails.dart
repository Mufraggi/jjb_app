
import '../../../../core/domain/workoutId.brand.dart';
import '../domain/entities/trainingDetails.dart';
import '../domain/repository/training_details_repository.dart';

class GetTrainingDetails {
  final TrainingRepository repository;

  GetTrainingDetails(this.repository);

  Future<TrainingDetails> call(TrainingId id) {
    return repository.getTrainingById(id);
  }
}
