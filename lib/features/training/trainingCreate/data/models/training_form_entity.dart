import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import '../../domain/CreateTraining.dart';

part 'training_form_entity.g.dart';

@Collection()
class TrainingFormEntity {
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
  late String? note;

  // Training step
  String? selectedCategory;
  String? selectedTechnique;
  late String selectedTrainingTypes ;

  TrainingFormEntity();

  /// Factory helper to convert from your domain/form class
  factory TrainingFormEntity.fromFormData(TrainingFormData form) {
    return TrainingFormEntity()
      ..uuid = Uuid().v4()
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
      ..selectedCategory = form
          .selectedCategory
          ?.name // ou id selon ton modèle
      ..selectedTechnique = form.selectedTechnique
      ..selectedTrainingTypes = form.selectedTrainingType
      ..note = form.note;
  }
}
