import 'package:jjb_app/core/domain/trainingDuration.dart';
import 'package:jjb_app/core/domain/workoutId.brand.dart';
import 'package:jjb_app/domain/workout/workoutType.dart';
import '../../../../core/domain/ratingOnTen.dart';
import '../../domain/entities/workoutDetails.dart';
import '../../domain/repository/workout_details_repository.dart';

class WorkoutRepositoryInMemoryImpl implements WorkoutRepository {


  @override
  Future<WorkoutDetails> getWorkoutById(WorkoutId workoutId) async {
    await Future.delayed(const Duration(milliseconds: 500)); // simulate loading
    // TODO: implement getWorkoutById
    return WorkoutDetails(
        id:workoutId,
        type: WorkoutType.jjbGi,
        date: DateTime.now().subtract(const Duration(days: 1)),
        duration: TrainingDuration.fromMinutes(60),
        tags: ["kimoura", "back"],
        feeling: RatingOnTen(10),
        energyLevel: RatingOnTen(10),
        motivationLevel: RatingOnTen(10),
        stressLevel: RatingOnTen(10),
        sleepQuality: RatingOnTen(10),
        injuries: [],
        focusOfTheDay: "Blabla",
        achievedGoal: true,
        sparringRounds: [],
        notes: "supercombat"
    );
  }
}
