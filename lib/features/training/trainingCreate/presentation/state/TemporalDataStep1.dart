import 'package:flutter/material.dart';

class WhenStepState {
  DateTime selectedDate;
  TimeOfDay selectedTime;

  WhenStepState({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
  }) : selectedDate = selectedDate ?? DateTime.now(),
        selectedTime = selectedTime ?? TimeOfDay.now();

  WhenStepState copyWith({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
  }) {
    return WhenStepState(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
    );
  }
}