import '../../../../../core/domain/workoutId.brand.dart';
import '../CreateTraining.dart';


abstract class CreateTrainingRepository {
  Future<TrainingId> insertTraining(TrainingFormData trainingData);
}
