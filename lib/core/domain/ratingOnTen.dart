import 'package:equatable/equatable.dart';

class RatingOnTen extends Equatable {
  final int value;

  const RatingOnTen._(this.value);

  factory RatingOnTen(int input) {
    if (input < 0 || input > 10) {
      throw ArgumentError('Rating must be between 0 and 10. Got $input');
    }
    return RatingOnTen._(input);
  }

  @override
  List<Object?> get props => [value];

  @override
  String toString() => '$value/10';
}
