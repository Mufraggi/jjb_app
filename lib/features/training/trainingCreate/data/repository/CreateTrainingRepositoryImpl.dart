import 'package:isar/isar.dart';

import '../../../../../core/domain/workoutId.brand.dart';
import '../../domain/CreateTraining.dart';
import '../../domain/repositoy/CreateWorkoutRepository.dart';
import '../models/training_form_entity.dart';

class CreateTrainingRepositoryInMemoryImpl implements CreateTrainingRepository {
  @override
  Future<TrainingId> insertTraining(TrainingFormData trainingData) {
    print('insertTraining called');
    print(trainingData);
    // TODO: implement insertTraining
    throw UnimplementedError();
  }
}

class CreateTrainingImpl implements CreateTrainingRepository {
  final Isar isar;

  CreateTrainingImpl(this.isar);

  @override
  Future<TrainingId> insertTraining(TrainingFormData trainingData) {
    final trainingFormEntity = TrainingFormEntity.fromFormData(trainingData);
    isar.writeTxnSync(() {
      isar.trainingFormEntitys.putSync(trainingFormEntity);
    });

    return Future.value(TrainingId(trainingFormEntity.uuid));
  }
}
