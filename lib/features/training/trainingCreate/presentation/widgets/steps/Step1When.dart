import 'package:flutter/material.dart';

import '../widgets/DateSelector.dart';
import '../widgets/TimePickerCard.dart';

class Step1WhenContent extends StatelessWidget {
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  final double selectedDuration;
  final ValueChanged<DateTime> onDateChanged;
  final ValueChanged<TimeOfDay> onTimeChanged;
  final ValueChanged<double> onDurationChanged;

  const Step1WhenContent({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateChanged,
    required this.onTimeChanged,
    required this.selectedDuration,
    required this.onDurationChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sélectionnez la date et l\'heure de votre entraînement',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        SizedBox(height: 20),
        DatePickerCard(
          // Votre widget personnalisé
          selectedDate: selectedDate,
          onDateChanged: onDateChanged,
        ),
        SizedBox(height: 16),
        TimePickerCard(
          // Votre widget personnalisé
          selectedTime: selectedTime,
          onTimeChanged: onTimeChanged,
        ),
        SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Training Duration",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 10),
        Slider(
          value: selectedDuration,
          min: 30,
          max: 150,
          divisions: 8, // (150 - 30) / 15 = 8 steps de 15 minutes
          label: formatDuration(selectedDuration.toInt()),
          onChanged: onDurationChanged,
          activeColor: Colors.grey.shade700,
        ),
        Text(
          "Selected: ${formatDuration(selectedDuration.toInt())}",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
  String formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return "${hours}h ${mins.toString().padLeft(2, '0')}min";
    } else {
      return "${mins}min";
    }
  }
}
