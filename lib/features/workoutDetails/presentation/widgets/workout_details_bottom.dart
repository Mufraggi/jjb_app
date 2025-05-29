import 'package:flutter/cupertino.dart';

import '../../domain/entities/workoutDetails.dart';

class WorkoutDetailsView extends StatelessWidget {
  final WorkoutDetails details;

  const WorkoutDetailsView({Key? key, required this.details}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Type : ${details.type}", style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 8),
          Text("Date : ${details.date.toString()}"),
          const SizedBox(height: 8),
          Text("Durée : ${details.duration.inMinutes}"),
          const SizedBox(height: 8),
          Text("Tags : ${details.tags.join(', ')}"),
          const SizedBox(height: 8),
          Text("Feeling : ${details.feeling}/10"),
        ],
      ),
    );
  }
}