import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/domain/workoutId.brand.dart';
import '../../../trainingCreate/presentation/pages/CreateTrainingPageStep2.dart';
import '../../../trainingDetails/presentation/pages/workout_details_bottom_sheet.dart';
import '../../applications/GetTrainingCards.dart';
import '../../domain/repository/training_card_repository.dart';
import '../bloc/training_cards_event_bloc.dart';
import '../bloc/training_cards_event_event.dart';
import '../bloc/training_cards_event_state.dart';
import '../widgets/Card.dart';

class TrainingCardsPage extends StatefulWidget {
  const TrainingCardsPage({super.key});

  @override
  State<TrainingCardsPage> createState() => _TrainingCardsPageState();
}

class _TrainingCardsPageState extends State<TrainingCardsPage> {
  int? selectedIndex;
  late final TrainingCardsBloc _bloc;

  @override
  void initState() {
    super.initState();
    final repository = context.read<TrainingCardRepository>();
    _bloc = TrainingCardsBloc(GetTrainingCards(repository))
      ..add(TrainingCardsRequested());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  void _openButtonSheet(TrainingId id) {
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
      builder: (ctx) => TrainingDetailsBottomSheet(id: id),
    );
  }

  void _openButtonSheetCreateTraining() async {
    await showModalBottomSheet(
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
        child: CreateTrainingPage(),
      ),
    );
    _bloc.add(TrainingCardsRequested());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Training Cards')),
      body: BlocProvider.value(
        value: _bloc,
        child: BlocBuilder<TrainingCardsBloc, TrainingCardsState>(
          builder: (context, state) {
            if (state is TrainingCardsLoadInProgress) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is TrainingCardsLoadSuccess) {
              final cards = state.cards;
              return RefreshIndicator(
                onRefresh: () async {
                  _bloc.add(TrainingCardsRequested());
                },
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    final card = cards[index];
                    return InkWell(
                      onTap: () => _openButtonSheet(card.id),
                      child: CardFeedback(item: card),
                    );
                  },
                ),
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
          this._openButtonSheetCreateTraining();
          // Tu peux ouvrir une modale, naviguer, etc.
        },
        child: const Icon(Icons.add),
        tooltip: 'Ajouter un training',
      ),
    );
  }
}
