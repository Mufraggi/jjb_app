import 'dart:math';
import 'package:jjb_app/models/WorkoutDetails.dart';
import 'package:uuid/uuid.dart';

List<WorkoutDetailDB> generateFakeWorkoutDetails(int count) {
  final random = Random();
  final uuid = Uuid();

  List<WorkoutDetailDB> details = [];

  for (int i = 0; i < count; i++) {
    details.add(
      WorkoutDetailDB(
        workoutId: uuid.v4(),
        tags: List.generate(3, (_) => ['cardio', 'technique', 'sparring', 'muscu'][random.nextInt(4)]),
        feeling: random.nextInt(11),
        energyLevel: random.nextInt(11),
        motivationLevel: random.nextInt(11),
        stressLevel: random.nextInt(11),
        sleepQuality: random.nextInt(11),
        injuries: random.nextBool() ? "coup au tibia" : null,
        focusOfTheDay: random.nextBool() ? "travail du timing" : null,
        achievedGoal: random.nextBool(),
        sparringRounds: List.generate(2 + random.nextInt(3), (_) => "${random.nextInt(3) + 1}min"),
        notes: random.nextBool() ? "super séance" : null,
        techniqueComplement: random.nextBool() ? "enchaînement jambe avant" : null,
      ),
    );
  }

  return details;
}
