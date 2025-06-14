import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

class TrainingId extends Equatable {
  final String value;

  const TrainingId(this.value);

  @override
  List<Object?> get props => [value];

  @override
  String toString() => value.toString();
}
