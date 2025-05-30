import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/workoutDetails/application/GetWorkoutDetails.dart';
import 'package:jjb_app/features/workoutDetails/presentation/bloc/workout_details_bloc.dart';
import 'package:jjb_app/features/workoutDetails/presentation/bloc/workout_details_event.dart';
import 'package:jjb_app/features/workoutDetails/presentation/bloc/workout_details_state.dart';

import '../../../../core/domain/workoutId.brand.dart';
import '../../domain/repository/workout_details_repository.dart';
import '../widgets/workout_details_bottom.dart';

class WorkoutDetailsBottomSheet extends StatefulWidget {
  final WorkoutId id;

  const WorkoutDetailsBottomSheet({super.key, required this.id});

  @override
  State<WorkoutDetailsBottomSheet> createState() =>
      _WorkoutDetailsBottomSheet();
}

class _WorkoutDetailsBottomSheet extends State<WorkoutDetailsBottomSheet> {
  int? selectedIndex;
  late final WorkoutDetailsBloc _bloc;

  @override
  void initState() {
    super.initState();
    final repository = context.read<WorkoutRepository>();
    _bloc = WorkoutDetailsBloc(GetWorkoutDetails(repository))
      ..add(WorkoutDetailsRequested(widget.id));
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
        child: BlocBuilder<WorkoutDetailsBloc, WorkoutDetailsState>(
          builder: (context, state) {
            if (state is WorkoutDetailsLoadInProgress) {
              return Container(
                width: double.infinity,
                height: 50,
                child: const Center(child: CircularProgressIndicator()),
              );
            } else if (state is WorkoutDetailsLoadSuccess) {
              final details = state.Details;
              return WorkoutDetailsView(details: details);
            } else {
              return const Center(child: Text('Erreur ou aucune donnée'));
            }
          },
        ),
      ),
    );
  }
}
