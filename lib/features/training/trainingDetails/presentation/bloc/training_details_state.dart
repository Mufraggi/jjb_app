
import '../../domain/entities/trainingDetails.dart';

abstract class TrainingDetailsState {}

class TrainingDetailsInitial extends TrainingDetailsState {}

class TrainingDetailsLoadInProgress extends TrainingDetailsState {}

class TrainingDetailsLoadSuccess extends TrainingDetailsState {
  final TrainingDetails Details;

  TrainingDetailsLoadSuccess(this.Details);
}

class TrainingDetailsLoadFailure extends TrainingDetailsState {}
