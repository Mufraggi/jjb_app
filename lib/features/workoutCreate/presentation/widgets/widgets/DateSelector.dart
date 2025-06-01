import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerCard extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDateChanged;

  const DatePickerCard({
    Key? key,
    required this.selectedDate,
    required this.onDateChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(Icons.calendar_today, color: Colors.blue),
        title: Text('Date d\'entraînement'),
        subtitle: Text(
          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () async {
          final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(Duration(days: 365)),
          );
          if (picked != null && picked != selectedDate) {
            onDateChanged(picked);
          }
        },
      ),
    );
  }
}