
import 'package:equatable/equatable.dart';
import 'package:jjb_app/domain/workout/sparringOutcome.dart';



class SparringRound extends Equatable {
  final String partner;
  final SparringOutcome outcome;
  final String? notes;

  const SparringRound({
    required this.partner,
    required this.outcome,
    this.notes,
  });

  @override
  List<Object?> get props => [partner, outcome, notes];
}