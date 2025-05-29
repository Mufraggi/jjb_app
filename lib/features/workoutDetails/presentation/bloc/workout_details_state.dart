import 'package:jjb_app/features/workoutDetails/domain/entities/workoutDetails.dart';

abstract class WorkoutDetailsState {}

class WorkoutDetailsInitial extends WorkoutDetailsState {}

class WorkoutDetailsLoadInProgress extends WorkoutDetailsState {}

class WorkoutDetailsLoadSuccess extends WorkoutDetailsState {
  final WorkoutDetails Details;

  WorkoutDetailsLoadSuccess(this.Details);
}

class WorkoutDetailsLoadFailure extends WorkoutDetailsState {}
