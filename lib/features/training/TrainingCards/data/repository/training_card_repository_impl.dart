import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/domain/ratingOnTen.dart';
import '../../../../../core/domain/trainingDuration.dart';
import '../../../../../core/domain/workoutId.brand.dart';
import '../../../../../domain/workout/workoutType.dart';
import '../../../trainingCreate/data/models/training_form_entity.dart';
import '../../domain/repository/training_card_repository.dart';
import '../../domain/trainingCard.dart';

class TrainingCardRepositoryInMemoryImpl implements TrainingCardRepository {
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
}
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
    print(entity.selectedCategory);
    print(entity.selectedTrainingTypes);
    print(entity.uuid);
    print(entity.selectedDate);
    print(entity.selectedTrainingTypes[0]);
    print(entity.feeling.toInt());
    print(entity.selectedTrainingTypes);
    print(entity.note);


    return TrainingCard(
      id: TrainingId(entity.uuid),
      date: entity.selectedDate,
      type: _resolveTrainingType(entity.selectedTrainingTypes[0]),
      feeling: RatingOnTen(entity.feeling.toInt()),
      focusOfTheDay: entity.selectedTechnique ?? '',
      duration: TrainingDuration.fromMinutes(45), // à ajuster si nécessaire
      tags: [entity.selectedTrainingTypes],
      shortNote: entity.note ?? '', // ajouter un champ `note` si besoin
    );
  }

  TrainingType _resolveTrainingType(String? category) {
    switch (category?.toLowerCase()) {
      case 'jjb gi':
        return TrainingType.jjbGi;
      case 'grappling':
        return TrainingType.grappling;
      default:
        return TrainingType.jjbGi;
    }
  }
}