import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../applications/GetWorkoutCards.dart';
import '../../domain/repository/workout_card_repository.dart';
import '../bloc/workout_cards_event_bloc.dart';
import '../bloc/workout_cards_event_event.dart';
import '../bloc/workout_cards_event_state.dart';
import '../widgets/WorkoutCardWidget.dart';

class WorkoutCardsPage extends StatelessWidget {
  const WorkoutCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = context.read<WorkoutCardRepository>();

    return BlocProvider(
      create: (_) => WorkoutCardsBloc(GetWorkoutCards(repository))..add(WorkoutCardsRequested()),
      child: BlocBuilder<WorkoutCardsBloc, WorkoutCardsState>(
        builder: (context, state) {
          if (state is WorkoutCardsLoadInProgress) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WorkoutCardsLoadSuccess) {
            return PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: state.cards.length,
              itemBuilder: (context, index) {
                final card = state.cards[index];
                return WorkoutCardWidget(card: card);
              },
            );
          } else {
            return const Center(child: Text('Erreur ou vide'));
          }
        },
      ),
    );
  }
}

