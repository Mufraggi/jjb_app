import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/workoutCards/presentation/bloc/workout_cards_event_event.dart';

import 'package:jjb_app/features/workoutCards/presentation/bloc/workout_cards_event_state.dart';

import '../../applications/GetWorkoutCards.dart';


class WorkoutCardsBloc extends Bloc<WorkoutCardsEvent, WorkoutCardsState> {
  final GetWorkoutCards getWorkoutCards;

  WorkoutCardsBloc(this.getWorkoutCards) : super(WorkoutCardsInitial()) {
    on<WorkoutCardsRequested>((event, emit) async {
      emit(WorkoutCardsLoadInProgress());
      try {
        final cards = await getWorkoutCards();
        emit(WorkoutCardsLoadSuccess(cards));
      } catch (_) {
        emit(WorkoutCardsLoadFailure());
      }
    });
  }
}
