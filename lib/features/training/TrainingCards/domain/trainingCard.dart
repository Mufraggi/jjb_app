import 'dart:ffi';

import 'package:equatable/equatable.dart';
import 'package:jjb_app/domain/training/TechnicCategory.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../../../core/domain/trainingDuration.dart';
import '../../../../core/domain/trainingHour.dart';
import '../../../../core/domain/workoutId.brand.dart';
import '../../../../domain/training/workoutType.dart';

class TrainingCard extends Equatable {
  final TrainingId id;
  final DateTime date;
  final TrainingType type;
  final RatingOnTen feeling;
  final String? focusOfTheDay;
  final TrainingDuration duration;
  final TechniqueCategory category;
  final TrainingHour trainingHour;



  final String? shortNote;

  const TrainingCard({
    required this.id,
    required this.date,
    required this.type,
    required this.feeling,
    this.focusOfTheDay,
    required this.duration,
    required this.category,
    this.shortNote,
    required this.trainingHour
  });

  @override
  List<Object?> get props => [
    id,
    date,
    type,
    feeling,
    focusOfTheDay,
    duration,
    category,
    shortNote,
    trainingHour
  ];
}
