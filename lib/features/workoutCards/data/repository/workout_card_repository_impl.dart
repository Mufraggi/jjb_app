import 'package:uuid/uuid.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../../../core/domain/trainingDuration.dart';
import '../../../../core/domain/workoutId.brand.dart';
import '../../../../domain/workout/workoutType.dart';
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
