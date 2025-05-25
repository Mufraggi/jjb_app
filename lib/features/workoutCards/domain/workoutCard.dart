import 'package:equatable/equatable.dart';

import '../../../core/domain/ratingOnTen.dart';
import '../../../core/domain/trainingDuration.dart';
import '../../../core/domain/workoutId.brand.dart';
import '../../../domain/workout/workout.dart';
import '../../../domain/workout/workoutType.dart';

class WorkoutCard extends Equatable {
  final WorkoutId id;
  final DateTime date;
  final WorkoutType type;
  final RatingOnTen feeling;
  final String? focusOfTheDay;
  final TrainingDuration duration;
  final List<String> tags;
  final String? shortNote;

  const WorkoutCard({
    required this.id,
    required this.date,
    required this.type,
    required this.feeling,
    this.focusOfTheDay,
    required this.duration,
    required this.tags,
    this.shortNote,
  });

  @override
  List<Object?> get props => [
    id,
    date,
    type,
    feeling,
    focusOfTheDay,
    duration,
    tags,
    shortNote,
  ];

  factory WorkoutCard.fromWorkout(Workout workout) {
    return WorkoutCard(
      id: workout.id,
      date: workout.date,
      type: workout.type,
      feeling: workout.feeling,
      focusOfTheDay: workout.focusOfTheDay,
      duration: workout.duration,
      tags: workout.tags,
      shortNote: workout.notes != null
          ? (workout.notes!.length > 100
                ? '${workout.notes!.substring(0, 100)}...'
                : workout.notes)
          : null,
    );
  }
}
