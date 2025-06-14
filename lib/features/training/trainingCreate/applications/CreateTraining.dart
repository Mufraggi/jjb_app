import '../../../../core/domain/workoutId.brand.dart';
import '../domain/CreateTraining.dart';
import '../domain/repositoy/CreateWorkoutRepository.dart';

class CreateTraining {
  final CreateTrainingRepository repository;

  CreateTraining(this.repository);

  Future<TrainingId> call(TrainingFormData trainingData) {
    return repository.insertTraining(trainingData);
  }
}
