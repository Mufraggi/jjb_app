import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../applications/CreateWorkout.dart';
import 'create_workout_state.dart';

part 'create_workout_event.dart';

class CreateWorkoutBloc extends Bloc<CreateWorkoutEvent, CreateWorkoutState> {
  final CreateWorkout createWorkout;

  CreateWorkoutBloc(this.createWorkout) : super(CreateWorkoutInitial()) {
    on<CreateWorkoutEvent>((event, emit) async {
      emit(CreateWorkoutLoadInProgress());
      try {
        final id = await createWorkout();
        emit(CreateWorkoutLoadSuccess(id));
      } catch (_) {
        emit(CreateWorkoutLoadFailure());
      }
    });
  }
}
