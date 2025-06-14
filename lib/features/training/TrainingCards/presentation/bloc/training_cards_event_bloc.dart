import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/training/TrainingCards/presentation/bloc/training_cards_event_event.dart';
import 'package:jjb_app/features/training/TrainingCards/presentation/bloc/training_cards_event_state.dart';

import '../../applications/GetTrainingCards.dart';

class TrainingCardsBloc extends Bloc<TrainingCardsEvent, TrainingCardsState> {
  final GetTrainingCards getTrainingCards;

  TrainingCardsBloc(this.getTrainingCards) : super(TrainingCardsInitial()) {
    on<TrainingCardsRequested>((event, emit) async {
      emit(TrainingCardsLoadInProgress());
      try {
        final cards = await getTrainingCards();
        emit(TrainingCardsLoadSuccess(cards));
      } catch (_) {
        emit(TrainingCardsLoadFailure());
      }
    });
  }
}
