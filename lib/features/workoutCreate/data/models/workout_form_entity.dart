import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/workoutId.brand.dart';
import '../../domain/CreateWorkout.dart';

part 'workout_form_entity.g.dart';

@Collection()
class WorkoutFormEntity {
  Id id = Isar.autoIncrement;
  late String uuid; // UUID public ou externe

  late DateTime createdAt;
  late DateTime updatedAt;

  // When step
  late DateTime selectedDate;
  late int selectedHour;
  late int selectedMinute;

  // Feelings step
  late double feeling;
  late double energy;
  late double motivation;
  late double stress;
  late double sleepQuality;

  // Training step
  String? selectedCategory;
  String? selectedTechnique;
  List<String> selectedTrainingTypes = [];

  WorkoutFormEntity();

  /// Factory helper to convert from your domain/form class
  factory WorkoutFormEntity.fromFormData(WorkoutFormData form) {
    return WorkoutFormEntity()
      ..uuid =Uuid().v4()
      ..createdAt = DateTime.now()
      ..updatedAt = DateTime.now()
      ..selectedDate = form.selectedDate
      ..selectedHour = form.selectedTime.hour
      ..selectedMinute = form.selectedTime.minute
      ..feeling = form.currentFeelingSliderValue
      ..energy = form.currentEnergySliderValue
      ..motivation = form.currentMotivationSliderValue
      ..stress = form.currentStressSliderValue
      ..sleepQuality = form.currentSleepQualitySliderValue
      ..selectedCategory = form.selectedCategory?.name // ou id selon ton modèle
      ..selectedTechnique = form.selectedTechnique
      ..selectedTrainingTypes = form.selectedTrainingType.map((e) => e.toString()).toList();
  }
}
