

import '../../../../../core/domain/workoutId.brand.dart';
import '../entities/trainingDetails.dart';


abstract class TrainingRepository {
  Future<TrainingDetails> getTrainingById(TrainingId id);
}
