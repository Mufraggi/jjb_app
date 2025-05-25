import '../../domain/workoutCard.dart';

abstract class WorkoutCardsState {}

class WorkoutCardsInitial extends WorkoutCardsState {}

class WorkoutCardsLoadInProgress extends WorkoutCardsState {}

class WorkoutCardsLoadSuccess extends WorkoutCardsState {
  final List<WorkoutCard> cards;

  WorkoutCardsLoadSuccess(this.cards);
}

class WorkoutCardsLoadFailure extends WorkoutCardsState {}
