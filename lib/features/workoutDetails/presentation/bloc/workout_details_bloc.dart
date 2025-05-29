import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/workoutDetails/presentation/bloc/workout_details_event.dart';
import 'package:jjb_app/features/workoutDetails/presentation/bloc/workout_details_state.dart';

import '../../application/GetWorkoutDetails.dart';

class WorkoutDetailsBloc
    extends Bloc<WorkoutDetailsEvent, WorkoutDetailsState> {
  final GetWorkoutDetails getWorkoutDetails;

  WorkoutDetailsBloc(this.getWorkoutDetails) : super(WorkoutDetailsInitial()) {
    on<WorkoutDetailsRequested>((event, emit) async {
      emit(WorkoutDetailsLoadInProgress());
      try {
        final Details = await getWorkoutDetails(event.id);
        emit(WorkoutDetailsLoadSuccess(Details));
      } catch (_) {
        emit(WorkoutDetailsLoadFailure());
      }
    });
  }
}
