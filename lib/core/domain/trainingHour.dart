import 'package:equatable/equatable.dart';

class TrainingHour extends Equatable {
  final int hour;
  final int minute;

  const TrainingHour(this.hour, this.minute);

  @override
  List<Object?> get props => [
    [hour, minute],
  ];

  @override
  String toString() => hour.toString() + ":" + minute.toString();
}
