import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jjb_app/features/workoutCards/presentation/widgets/tmp2.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../../../core/domain/trainingDuration.dart';
import '../../../../core/domain/workoutId.brand.dart';
import '../../../../domain/workout/workoutType.dart';
import '../../domain/workoutCard.dart';

class ExampleUsage extends StatefulWidget {
  @override
  _ExampleUsageState createState() => _ExampleUsageState();
}

class _ExampleUsageState extends State<ExampleUsage> {
  List<WorkoutCard> workoutCards = [];
  int? selectedIndex;

  @override
  void initState() {
    super.initState();
    workoutCards =[
      WorkoutCard(
        id: WorkoutId(Uuid()),
        date: DateTime.now().subtract(const Duration(days: 1)),
        type: WorkoutType.jjbGi,
        feeling: RatingOnTen(7),
        focusOfTheDay: 'Respiration',
        duration: TrainingDuration.fromMinutes(45),
        tags: ['course', 'extérieur'],
        shortNote: 'Très bonne session matinale.',
      ),
      WorkoutCard(
        id: WorkoutId(Uuid()),
        date: DateTime.now().subtract(const Duration(days: 2)),
        type: WorkoutType.grappling,
        feeling: RatingOnTen(6),
        focusOfTheDay: 'Explosivité',
        duration: TrainingDuration.fromMinutes(60),
        tags: ['force', 'muscu'],
        shortNote: 'Squats et deadlifts.',
      ),
    ];;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Cards'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: workoutCards.length,
        itemBuilder: (context, index) {
          return CardFeedback(
            item: workoutCards[index],
            selected: selectedIndex == index,
            onPress: () {
              setState(() {
                selectedIndex = selectedIndex == index ? null : index;
              });
              print('Card ${index} pressed: ${workoutCards[index].type}');
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            selectedIndex = null;
          });
        },
        child: const Icon(Icons.clear),
        tooltip: 'Clear selection',
      ),
    );
  }
}