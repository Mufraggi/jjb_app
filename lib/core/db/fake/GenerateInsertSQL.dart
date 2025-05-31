import 'package:jjb_app/models/WorkoutDetails.dart';

String generateInsertSQL(List<WorkoutDetailDB> details) {
  final buffer = StringBuffer();
  buffer.writeln('INSERT INTO workout_details ('
      'workout_id, tags, feeling, energyLevel, motivationLevel, stressLevel, '
      'sleepQuality, injuries, focusOfTheDay, achievedGoal, sparringRounds, notes, techniqueComplement'
      ') VALUES');

  for (int i = 0; i < details.length; i++) {
    final d = details[i];

    String format(String? s) =>
        s == null ? 'NULL' : "'${s.replaceAll("'", "''")}'";
    String formatList(List<String> l) => "'${l.join(',')}'";

    buffer.write(
      "(${format(d.workoutId)}, "
          "${formatList(d.tags)}, "
          "${d.feeling}, ${d.energyLevel}, ${d.motivationLevel}, ${d.stressLevel}, ${d.sleepQuality}, "
          "${format(d.injuries)}, ${format(d.focusOfTheDay)}, ${d.achievedGoal ? 1 : 0}, "
          "${formatList(d.sparringRounds)}, ${format(d.notes)}, ${format(d.techniqueComplement)})",
    );

    buffer.write(i == details.length - 1 ? ';\n' : ',\n');
  }

  return buffer.toString();
}
