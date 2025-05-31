import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jjb_app/features/workoutDetails/domain/repository/workout_details_repository.dart';
import 'InjectionContainer.dart';
import 'core/db/fake/FakeWorkoutDetail.dart';
import 'core/db/fake/GenerateInsertSQL.dart';
import 'features/workoutCards/data/repository/workout_card_repository_impl.dart';
import 'features/workoutCards/domain/repository/workout_card_repository.dart';
import 'features/workoutCards/presentation/pages/workout_cards_page.dart';
import 'features/workoutDetails/data/repository/workout_details_repository_impl.dart'; // pour formater la date
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final fakeDetails = generateFakeWorkoutDetails(10); // par ex. 10 entrées
  final sql = generateInsertSQL(fakeDetails);
  setupServiceLocator();
  await initializeDateFormatting('fr_FR', null);
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
