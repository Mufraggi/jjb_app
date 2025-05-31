import 'package:equatable/equatable.dart';
import 'package:jjb_app/core/domain/ratingOnTen.dart';
import 'package:jjb_app/domain/workout/sparingRound.dart';
import 'package:jjb_app/core/domain/trainingDuration.dart';
import 'package:jjb_app/core/domain/workoutId.brand.dart';
import '../../../../domain/workout/workoutType.dart';

class WorkoutDetails extends Equatable {
  final WorkoutId id;
  final WorkoutType type;
  final DateTime date;
  final TrainingDuration duration;
  final List<String> tags;
  final RatingOnTen feeling;
  final RatingOnTen energyLevel;
  final RatingOnTen motivationLevel;
  final RatingOnTen stressLevel;
  final RatingOnTen sleepQuality;
  final List<String>? injuries;
  final String? focusOfTheDay;
  final bool? achievedGoal;
  final List<SparringRound>? sparringRounds;
  final String? notes;

  const WorkoutDetails({
    required this.id,
    required this.type,
    required this.date,
    required this.duration,
    required this.tags,
    required this.feeling,
    required this.energyLevel,
    required this.motivationLevel,
    required this.stressLevel,
    required this.sleepQuality,
    this.injuries,
    this.focusOfTheDay,
    this.achievedGoal,
    this.sparringRounds,
    this.notes,
  });

  @override
  List<Object?> get props => [
    id,
    type,
    date,
    duration,
    tags,
    feeling,
    energyLevel,
    motivationLevel,
    stressLevel,
    sleepQuality,
    injuries,
    focusOfTheDay,
    achievedGoal,
    sparringRounds,
    notes,
  ];
}
