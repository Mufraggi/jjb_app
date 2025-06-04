import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/workoutId.brand.dart';
import '../../../workoutCreate/presentation/pages/CreateWorkoutPageStep2.dart';
import '../../../workoutDetails/presentation/pages/workout_details_bottom_sheet.dart';
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
    _bloc.close();
    super.dispose();
  }

  void _openButtonSheet(WorkoutId id) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      showDragHandle: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => WorkoutDetailsBottomSheet(id: id),
    );
  }

  void _openButtonSheetCreateWorkout() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      showDragHandle: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: CreateWorkoutPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Cards')),
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
                    onTap: () => this._openButtonSheet(card.id),
                    child: CardFeedback(item: card),
                  );
                },
              );
            } else {
              return const Center(child: Text('Erreur ou aucune donnée'));
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action à effectuer lorsque l'utilisateur appuie sur le bouton
          this._openButtonSheetCreateWorkout();
          // Tu peux ouvrir une modale, naviguer, etc.
        },
        child: const Icon(Icons.add),
        tooltip: 'Ajouter un workout',
      ),
    );
  }
}
