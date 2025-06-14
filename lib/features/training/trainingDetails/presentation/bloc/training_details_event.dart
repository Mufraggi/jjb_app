import '../../../../../core/domain/workoutId.brand.dart';


abstract class TrainingDetailsEvent {}

class TrainingDetailsRequested extends TrainingDetailsEvent {
  final TrainingId id;

  TrainingDetailsRequested(this.id);

}
