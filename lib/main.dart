import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/workoutCards/data/repository/workout_card_repository_impl.dart';
import 'features/workoutCards/domain/repository/workout_card_repository.dart';
import 'features/workoutCards/domain/workoutCard.dart';
import 'package:intl/intl.dart'; // pour formater la date

void main() {
  runApp(
    RepositoryProvider<WorkoutCardRepository>(
      create: (_) => WorkoutCardRepositoryInMemoryImpl(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Workout Cards Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WorkoutCardsPage(),
    );
  }
}

class WorkoutCardsPage extends StatelessWidget {
  const WorkoutCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = RepositoryProvider.of<WorkoutCardRepository>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Workout Cards')),
      body: FutureBuilder<List<WorkoutCard>>(
        future: repository.getAllCards(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Aucune carte trouvée'));
          }

          final cards = snapshot.data!;
          return ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, index) {
              final card = cards[index];
              return WorkoutCardWidget(card: card);
            },
          );
        },
      ),
    );
  }
}

class WorkoutCardWidget extends StatelessWidget {
  final WorkoutCard card;
  const WorkoutCardWidget({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat('MMMM d').format(card.date);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dateFormatted,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text('Type: ${card.type.name}'),
            Text('Focus: ${card.focusOfTheDay}'),
            Text('Durée: ${card.duration.inMinutes} min'),
            Text('Feeling: ${card.feeling.value}/10'),
            if (card.shortNote!.isEmpty) ...[
              const SizedBox(height: 8),
              Text('Note: ${card.shortNote}', style: const TextStyle(fontStyle: FontStyle.italic)),
            ],
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              children: card.tags.map((tag) => Chip(label: Text(tag))).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
