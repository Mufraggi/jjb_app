import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/domain/workoutId.brand.dart';
import '../../application/GetTrainingDetails.dart';
import '../../domain/repository/training_details_repository.dart';
import '../bloc/training_details_bloc.dart';
import '../bloc/training_details_event.dart';
import '../bloc/training_details_state.dart';
import '../widgets/workout_details_bottom.dart';

class TrainingDetailsBottomSheet extends StatefulWidget {
  final TrainingId id;

  const TrainingDetailsBottomSheet({super.key, required this.id});

  @override
  State<TrainingDetailsBottomSheet> createState() =>
      _TrainingDetailsBottomSheet();
}

class _TrainingDetailsBottomSheet extends State<TrainingDetailsBottomSheet> {
  int? selectedIndex;
  late final TrainingDetailsBloc _bloc;

  @override
  void initState() {
    super.initState();
    final repository = context.read<TrainingRepository>();
    _bloc = TrainingDetailsBloc(GetTrainingDetails(repository))
      ..add(TrainingDetailsRequested(widget.id));
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<TrainingDetailsBloc, TrainingDetailsState>(
          builder: (context, state) {
            if (state is TrainingDetailsLoadInProgress) {
              return Container(
                width: double.infinity,
                height: 50,
                child: const Center(child: CircularProgressIndicator()),
              );
            } else if (state is TrainingDetailsLoadSuccess) {
              final details = state.Details;
              return TrainingDetailsView(details: details);
            } else {
              return const Center(child: Text('Erreur ou aucune donnée'));
            }
          },
        ),
      ),
    );
  }
}
