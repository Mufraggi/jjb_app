import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/domain/ratingOnTen.dart';
import '../../../../../core/domain/trainingDuration.dart';
import '../../../../../core/domain/trainingHour.dart';
import '../../../../../core/domain/workoutId.brand.dart';
import '../../../../../domain/training/TechnicCategory.dart';
import '../../../../../domain/training/workoutType.dart';
import '../../../trainingCreate/data/models/training_form_entity.dart';
import '../../domain/repository/training_card_repository.dart';
import '../../domain/trainingCard.dart';

/*class TrainingCardRepositoryInMemoryImpl implements TrainingCardRepository {
  @override
  Future<List<TrainingCard>> getAllCards() async {
    await Future.delayed(const Duration(milliseconds: 500)); // simulate loading

    return [
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: TrainingType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: TrainingType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: TrainingType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: TrainingType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: TrainingType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      TrainingCard(
        id: TrainingId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: TrainingType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
    ];
  }
}*/
class TrainingCardRepositoryIsarImpl implements TrainingCardRepository {
  final Isar _isar;

  TrainingCardRepositoryIsarImpl(this._isar);

  @override
  Future<List<TrainingCard>> getAllCards() async {
    final entities = await _isar.trainingFormEntitys.where().findAll();
    print(entities.length);
    print(entities);
    return entities.map(_toDomain).toList();
  }

  TrainingCard _toDomain(TrainingFormEntity entity) {
    return TrainingCard(
      id: TrainingId(entity.uuid),
      date: entity.selectedDate,
      type: TrainingTypeExtension.fromLabel(entity.selectedTrainingTypes),
      feeling: RatingOnTen(entity.feeling.toInt()),
      focusOfTheDay: entity.selectedTechnique ?? '',
      duration: TrainingDuration.fromMinutes(45),
      shortNote: entity.note ?? '',
      category: TechniqueCategoryExtension.fromLabel(entity.selectedCategory),
      trainingHour: TrainingHour(entity.selectedHour, entity.selectedMinute),
    );
  }
}
