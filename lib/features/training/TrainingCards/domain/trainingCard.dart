import 'package:equatable/equatable.dart';

import '../../../../core/domain/ratingOnTen.dart';
import '../../../../core/domain/trainingDuration.dart';
import '../../../../core/domain/workoutId.brand.dart';
import '../../../../domain/training/workoutType.dart';

class TrainingCard extends Equatable {
  final TrainingId id;
  final DateTime date;
  final TrainingType type;
  final RatingOnTen feeling;
  final String? focusOfTheDay;
  final TrainingDuration duration;
  final List<String> tags;
  final String? shortNote;

  const TrainingCard({
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
}
