import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../applications/GetWorkoutCards.dart';
import '../../domain/repository/workout_card_repository.dart';
import '../bloc/workout_cards_event_bloc.dart';
import '../bloc/workout_cards_event_event.dart';
import '../bloc/workout_cards_event_state.dart';
import '../widgets/Card.dart';

class WorkoutCardsPage extends StatefulWidget {
  const WorkoutCardsPage({super.key});

  @override
  State<WorkoutCardsPage> createState() => _WorkoutCardsPageState();
}

class _WorkoutCardsPageState extends State<WorkoutCardsPage> {
  int? selectedIndex;
  late final WorkoutCardsBloc _bloc;

  @override
  void initState() {
    super.initState();
    final repository = context.read<WorkoutCardRepository>();
    _bloc = WorkoutCardsBloc(GetWorkoutCards(repository))
      ..add(WorkoutCardsRequested());
  }

  @override
  void dispose() {
    _bloc.close(); // très important pour éviter les fuites mémoire
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Cards'),
      ),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<WorkoutCardsBloc, WorkoutCardsState>(
          builder: (context, state) {
            if (state is WorkoutCardsLoadInProgress) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is WorkoutCardsLoadSuccess) {
              final cards = state.cards;
              return ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  final card = cards[index];
                  return InkWell(
                      onTap: () {
                        print('Card $index pressed: ${card.type}');
                      },
                      child: CardFeedback(
                        item: card,
                      ));
                },
              );
            } else {
              return const Center(child: Text('Erreur ou aucune donnée'));
            }
          },
        ),
      ),
    );
  }
}
