import 'package:jjb_app/core/domain/trainingDuration.dart';
import '../../../../../core/domain/ratingOnTen.dart';
import '../../../../../core/domain/workoutId.brand.dart';
import '../../../../../domain/workout/workoutType.dart';
import '../../domain/entities/trainingDetails.dart';
import '../../domain/repository/training_details_repository.dart';

class TrainingRepositoryInMemoryImpl implements TrainingRepository {


  @override
  Future<TrainingDetails> getTrainingById(TrainingId trainingId) async {
    await Future.delayed(const Duration(milliseconds: 500)); // simulate loading
    // TODO: implement getTrainingById
    return TrainingDetails(
        id:trainingId,
        type: TrainingType.jjbGi,
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
