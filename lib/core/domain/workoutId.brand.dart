import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class WorkoutId extends Equatable {
  final Uuid value;

  const WorkoutId(this.value);

  @override
  List<Object?> get props => [value];

  @override
  String toString() => value.toString();
}
