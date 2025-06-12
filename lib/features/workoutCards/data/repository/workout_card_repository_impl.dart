import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../../../core/domain/trainingDuration.dart';
import '../../../../core/domain/workoutId.brand.dart';
import '../../../../domain/workout/workoutType.dart';
import '../../../workoutCreate/data/models/workout_form_entity.dart';
import '../../domain/repository/workout_card_repository.dart';
import '../../domain/workoutCard.dart';

class WorkoutCardRepositoryInMemoryImpl implements WorkoutCardRepository {
  @override
  Future<List<WorkoutCard>> getAllCards() async {
    await Future.delayed(const Duration(milliseconds: 500)); // simulate loading

    return [
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: WorkoutType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: WorkoutType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: WorkoutType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: WorkoutType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: WorkoutType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid().toString()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: WorkoutType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
    ];
  }
}
class WorkoutCardRepositoryIsarImpl implements WorkoutCardRepository {
  final Isar _isar;

  WorkoutCardRepositoryIsarImpl(this._isar);

  @override
  Future<List<WorkoutCard>> getAllCards() async {
    final entities = await _isar.workoutFormEntitys.where().findAll();
    print(entities.length);
    print(entities);
    return entities.map(_toDomain).toList();
  }


  WorkoutCard _toDomain(WorkoutFormEntity entity) {
    print(entity.selectedCategory);
    print(entity.selectedTrainingTypes);
    print(entity.uuid);
    print(entity.selectedDate);
    print(entity.selectedTrainingTypes[0]);
    print(entity.feeling.toInt());
    print(entity.selectedTrainingTypes);
    print(entity.note);


    return WorkoutCard(
      id: WorkoutId(entity.uuid),
      date: entity.selectedDate,
      type: _resolveWorkoutType(entity.selectedTrainingTypes[0]),
      feeling: RatingOnTen(entity.feeling.toInt()),
      focusOfTheDay: entity.selectedTechnique ?? '',
      duration: TrainingDuration.fromMinutes(45), // à ajuster si nécessaire
      tags: [entity.selectedTrainingTypes],
      shortNote: entity.note ?? '', // ajouter un champ `note` si besoin
    );
  }

  WorkoutType _resolveWorkoutType(String? category) {
    switch (category?.toLowerCase()) {
      case 'jjb gi':
        return WorkoutType.jjbGi;
      case 'grappling':
        return WorkoutType.grappling;
      default:
        return WorkoutType.jjbGi;
    }
  }
}