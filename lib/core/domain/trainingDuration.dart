import 'package:equatable/equatable.dart';

class TrainingDuration extends Equatable {
  final Duration value;

  const TrainingDuration._(this.value);

  factory TrainingDuration.fromMinutes(int minutes) {
    if (minutes <= 0) {
      throw ArgumentError('Training duration must be positive. Got $minutes');
    }
    return TrainingDuration._(Duration(minutes: minutes));
  }

  int get inMinutes => value.inMinutes;
  String get formatted => '${value.inMinutes} min';

  @override
  List<Object?> get props => [value];

  @override
  String toString() => formatted;
}
