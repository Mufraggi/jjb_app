import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar/isar.dart';
import 'package:jjb_app/features/workoutDetails/domain/repository/workout_details_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'features/workoutCards/data/repository/workout_card_repository_impl.dart';
import 'features/workoutCards/domain/repository/workout_card_repository.dart';
import 'features/workoutCards/presentation/pages/workout_cards_page.dart';
import 'features/workoutCreate/data/models/workout_form_entity.dart';
import 'features/workoutCreate/data/repository/CreateWorkoutRepositoryImpl.dart';
import 'features/workoutCreate/domain/repositoy/CreateWorkoutRepository.dart';
import 'features/workoutDetails/data/repository/workout_details_repository_impl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.openSync([
    WorkoutFormEntitySchema,
  ], directory: dir.path);
  await initializeDateFormatting('fr_FR', null);
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WorkoutCardRepository>(
          create: (_) => WorkoutCardRepositoryIsarImpl(isar),
        ),
        RepositoryProvider<WorkoutRepository>(
          create: (_) => WorkoutRepositoryInMemoryImpl(),
        ),
        RepositoryProvider<CreateWorkoutRepository>(
          create: (_) => CreateWorkoutImpl(isar),
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
      home: WorkoutCardsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
