
import '../../../../../domain/workout/TechnicCategory.dart';

class TrainingStepState {
  TechniqueCategory? selectedCategory;
  String? selectedTechnique;
  List<bool> selectedTrainingType;
  String? note;

  TrainingStepState({
    this.selectedCategory,
    this.selectedTechnique,
    List<bool>? selectedTrainingType,
    this.note,
  }) : selectedTrainingType = selectedTrainingType ?? [true, false, false];

  TrainingStepState copyWith({
    TechniqueCategory? selectedCategory,
    String? selectedTechnique,
    List<bool>? selectedTrainingType,
  }) {
    return TrainingStepState(
      selectedCategory: selectedCategory ?? this.selectedCategory,
      selectedTechnique: selectedTechnique ?? this.selectedTechnique,
      selectedTrainingType: selectedTrainingType ?? List.from(this.selectedTrainingType),
    );
  }
}
