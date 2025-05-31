class WorkoutDetailDb {
  final String workoutId;
  final List<String> tags;
  final int feeling;
  final int energyLevel;
  final int motivationLevel;
  final int stressLevel;
  final int sleepQuality;
  final String? injuries;
  final String? focusOfTheDay;
  final bool achievedGoal;
  final List<String> sparringRounds;
  final String? notes;
  final String? techniqueComplement;

  WorkoutDetailDb({
    required this.workoutId,
    required this.tags,
    required this.feeling,
    required this.energyLevel,
    required this.motivationLevel,
    required this.stressLevel,
    required this.sleepQuality,
    this.injuries,
    this.focusOfTheDay,
    required this.achievedGoal,
    required this.sparringRounds,
    this.notes,
    this.techniqueComplement,
  });

  Map<String, dynamic> toMap() {
    return {
      'workout_id': workoutId,
      'tags': tags.join(','), // stockés comme chaîne CSV
      'feeling': feeling,
      'energyLevel': energyLevel,
      'motivationLevel': motivationLevel,
      'stressLevel': stressLevel,
      'sleepQuality': sleepQuality,
      'injuries': injuries,
      'focusOfTheDay': focusOfTheDay,
      'achievedGoal': achievedGoal ? 1 : 0,
      'sparringRounds': sparringRounds.join(','),
      'notes': notes,
      'techniqueComplement': techniqueComplement,
    };
  }

  factory WorkoutDetailDb.fromMap(Map<String, dynamic> map) {
    return WorkoutDetailDb(
      workoutId: map['workout_id'],
      tags: (map['tags'] as String).split(','),
      feeling: map['feeling'],
      energyLevel: map['energyLevel'],
      motivationLevel: map['motivationLevel'],
      stressLevel: map['stressLevel'],
      sleepQuality: map['sleepQuality'],
      injuries: map['injuries'],
      focusOfTheDay: map['focusOfTheDay'],
      achievedGoal: map['achievedGoal'] == 1,
      sparringRounds: (map['sparringRounds'] as String).split(','),
      notes: map['notes'],
      techniqueComplement: map['techniqueComplement'],
    );
  }
}
