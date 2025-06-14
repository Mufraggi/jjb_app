import 'package:equatable/equatable.dart';
import 'package:jjb_app/core/domain/ratingOnTen.dart';
import 'package:jjb_app/core/domain/trainingDuration.dart';
import 'package:jjb_app/core/domain/trainingHour.dart';

import '../../../../../core/domain/workoutId.brand.dart';

import '../../../../../domain/training/TechnicCategory.dart';
import '../../../../../domain/training/workoutType.dart';

class TrainingDetails extends Equatable {
  final TrainingId id;
  final TrainingType type;
  final DateTime date;
  final TrainingHour trainingHour;
  final TrainingDuration duration;
  final TechniqueCategory category;
  final RatingOnTen feeling;
  final RatingOnTen energyLevel;
  final RatingOnTen motivationLevel;
  final RatingOnTen stressLevel;
  final RatingOnTen sleepQuality;
  final String? focusOfTheDay;
  final bool? achievedGoal;
  final String? notes;

  const TrainingDetails({
    required this.id,
    required this.type,
    required this.date,
    required this.duration,
    required this.feeling,
    required this.energyLevel,
    required this.motivationLevel,
    required this.stressLevel,
    required this.sleepQuality,
    required this.category,
    required this.trainingHour,

    this.focusOfTheDay,
    this.achievedGoal,
    this.notes,
  });

  @override
  List<Object?> get props => [
    id,
    type,
    date,
    duration,
    feeling,
    energyLevel,
    motivationLevel,
    stressLevel,
    sleepQuality,
    focusOfTheDay,
    achievedGoal,
    notes,
    category,
    trainingHour,
  ];
}
