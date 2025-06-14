import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:path_provider/path_provider.dart';

import 'features/training/TrainingCards/data/repository/training_card_repository_impl.dart';
import 'features/training/TrainingCards/domain/repository/training_card_repository.dart';
import 'features/training/TrainingCards/presentation/pages/training_cards_page.dart';
import 'features/training/trainingCreate/data/models/training_form_entity.dart';
import 'features/training/trainingCreate/data/repository/CreateTrainingRepositoryImpl.dart';
import 'features/training/trainingCreate/domain/repositoy/CreateWorkoutRepository.dart';
import 'features/training/trainingDetails/data/repository/training_details_repository_impl.dart';
import 'features/training/trainingDetails/domain/repository/training_details_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.openSync([
    TrainingFormEntitySchema,
  ], directory: dir.path);
  await initializeDateFormatting('fr_FR', null);
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<TrainingCardRepository>(
          create: (_) => TrainingCardRepositoryIsarImpl(isar),
        ),
        RepositoryProvider<TrainingRepository>(
          create: (_) => TrainingRepositoryInMemoryImpl(),
        ),
        RepositoryProvider<CreateTrainingRepository>(
          create: (_) => CreateTrainingImpl(isar),
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
      themeMode: ThemeMode.light,
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      /*darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),*/
      home: TrainingCardsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
