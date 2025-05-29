import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/workoutDetails/domain/repository/workout_details_repository.dart';

import 'features/workoutCards/data/repository/workout_card_repository_impl.dart';
import 'features/workoutCards/domain/repository/workout_card_repository.dart';
import 'features/workoutCards/domain/workoutCard.dart';
import 'features/workoutCards/presentation/pages/workout_cards_page.dart';
import 'features/workoutCards/presentation/widgets/Card.dart';
import 'features/workoutDetails/data/repository/workout_details_repository_impl.dart'; // pour formater la date

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WorkoutCardRepository>(
          create: (_) => WorkoutCardRepositoryInMemoryImpl(),
        ),
        RepositoryProvider<WorkoutRepository>(
          create: (_) => WorkoutRepositoryInMemoryImpl(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: WorkoutCardsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*class WorkoutCardsPage extends StatefulWidget {
  const WorkoutCardsPage({super.key});

  @override
  State<WorkoutCardsPage> createState() => _WorkoutCardsPageState();
}

class _WorkoutCardsPageState extends State<WorkoutCardsPage> {
  int? selectedIndex;

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
            padding: const EdgeInsets.all(8),
            itemCount: cards.length,
            itemBuilder: (context, index) {
              final card = cards[index];
              return CardFeedback(
                item: card,
                selected: selectedIndex == index,
                onPress: () {
                  setState(() {
                    selectedIndex = selectedIndex == index ? null : index;
                  });
                  print('Card ${index} pressed: ${cards[index].type}');
                },
              );
            },
          );
        },
      ),
    );
  }
}
*/
