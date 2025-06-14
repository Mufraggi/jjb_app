import 'package:isar/isar.dart';
import 'package:jjb_app/core/domain/trainingDuration.dart';
import '../../../../../core/domain/ratingOnTen.dart';
import '../../../../../core/domain/trainingHour.dart';
import '../../../../../core/domain/workoutId.brand.dart';
import '../../../../../domain/training/TechnicCategory.dart';
import '../../../../../domain/training/workoutType.dart';
import '../../../trainingCreate/data/models/training_form_entity.dart';
import '../../domain/entities/trainingDetails.dart';
import '../../domain/repository/training_details_repository.dart';

class TrainingRepositoryInMemoryImpl implements TrainingRepository {
  @override
  Future<TrainingDetails> getTrainingById(TrainingId trainingId) async {
    await Future.delayed(const Duration(milliseconds: 500)); // simulate loading
    // TODO: implement getTrainingById
    return TrainingDetails(
      id: trainingId,
      type: TrainingType.jjbGi,
      date: DateTime.now().subtract(const Duration(days: 1)),
      duration: TrainingDuration.fromMinutes(60),
      feeling: RatingOnTen(10),
      energyLevel: RatingOnTen(10),
      motivationLevel: RatingOnTen(10),
      stressLevel: RatingOnTen(10),
      sleepQuality: RatingOnTen(10),
      focusOfTheDay: "Blabla",
      achievedGoal: true,
      notes: "supercombat",
      category: TechniqueCategory.takedowns,
      trainingHour: TrainingHour(12, 0),
    );
  }
}

class TrainingRepositoryIsarImpl implements TrainingRepository {
  final Isar isar;

  TrainingRepositoryIsarImpl(this.isar);

  @override
  Future<TrainingDetails> getTrainingById(TrainingId id) async {
    final entity = await isar.trainingFormEntitys
        .filter()
        .uuidEqualTo(id.toString())
        .findFirst();

    if (entity == null) {
      throw Exception('No training found with id: $id');
    }

    return TrainingDetails(
      id: id,
      type: TrainingTypeExtension.fromLabel(entity.selectedTrainingTypes),
      date: entity.selectedDate,
      duration: TrainingDuration.fromMinutes(60),
      // valeur par défaut ?
      trainingHour: TrainingHour(entity.selectedHour, entity.selectedMinute),
      category: TechniqueCategoryExtension.fromLabel(entity.selectedCategory),
      feeling: RatingOnTen(entity.feeling.round()),
      energyLevel: RatingOnTen(entity.energy.round()),
      motivationLevel: RatingOnTen(entity.motivation.round()),
      stressLevel: RatingOnTen(entity.stress.round()),
      sleepQuality: RatingOnTen(entity.sleepQuality.round()),
      focusOfTheDay: entity.selectedTechnique,
      //todo le rajouter
      achievedGoal: true,
      notes: entity.note,
    );
  }
}
