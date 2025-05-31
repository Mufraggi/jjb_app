class WorkoutTechniqueDb {
  final String workoutId;
  final String techniqueId;

  WorkoutTechniqueDb({
    required this.workoutId,
    required this.techniqueId,
  });

  Map<String, dynamic> toMap() {
    return {
      'workout_id': workoutId,
      'technique_id': techniqueId,
    };
  }

  factory WorkoutTechniqueDb.fromMap(Map<String, dynamic> map) {
    return WorkoutTechniqueDb(
      workoutId: map['workout_id'],
      techniqueId: map['technique_id'],
    );
  }
}
