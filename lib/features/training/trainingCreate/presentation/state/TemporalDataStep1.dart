import 'package:flutter/material.dart';

class WhenStepState {
  DateTime selectedDate;
  TimeOfDay selectedTime;
  Duration selectedDuration;

  WhenStepState({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
    Duration? selectedDuration,
  }) : selectedDate = selectedDate ?? DateTime.now(),
        selectedTime = selectedTime ?? TimeOfDay.now(),
        selectedDuration = selectedDuration ?? Duration(minutes: 90);

  WhenStepState copyWith({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
    Duration? selectedDuration,
  }) {
    return WhenStepState(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      selectedDuration: selectedDuration ?? this.selectedDuration,
    );
  }
}