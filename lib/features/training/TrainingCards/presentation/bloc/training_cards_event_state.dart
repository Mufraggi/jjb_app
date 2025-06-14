import '../../domain/trainingCard.dart';

abstract class TrainingCardsState {}

class TrainingCardsInitial extends TrainingCardsState {}

class TrainingCardsLoadInProgress extends TrainingCardsState {}

class TrainingCardsLoadSuccess extends TrainingCardsState {
  final List<TrainingCard> cards;

  TrainingCardsLoadSuccess(this.cards);
}

class TrainingCardsLoadFailure extends TrainingCardsState {}
