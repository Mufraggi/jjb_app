import 'package:flutter/material.dart';

import '../widgets/DateSelector.dart';
import '../widgets/TimePickerCard.dart';

class Step1WhenContent extends StatelessWidget {
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  final ValueChanged<DateTime> onDateChanged;
  final ValueChanged<TimeOfDay> onTimeChanged;

  const Step1WhenContent({
    Key? key,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateChanged,
    required this.onTimeChanged,
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
      ],
    );
  }
}
