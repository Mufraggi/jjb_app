import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/training/trainingDetails/presentation/bloc/training_details_event.dart';
import 'package:jjb_app/features/training/trainingDetails/presentation/bloc/training_details_state.dart';

import '../../application/GetTrainingDetails.dart';

class TrainingDetailsBloc
    extends Bloc<TrainingDetailsEvent, TrainingDetailsState> {
  final GetTrainingDetails getTrainingDetails;

  TrainingDetailsBloc(this.getTrainingDetails) : super(TrainingDetailsInitial()) {
    on<TrainingDetailsRequested>((event, emit) async {
      emit(TrainingDetailsLoadInProgress());
      try {
        final Details = await getTrainingDetails(event.id);
        emit(TrainingDetailsLoadSuccess(Details));
      } catch (_) {
        emit(TrainingDetailsLoadFailure());
      }
    });
  }
}
