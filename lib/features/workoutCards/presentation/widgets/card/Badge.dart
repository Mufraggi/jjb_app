// Widget Badge
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final String label;
  final String variant;

  const Badge({
    Key? key,
    required this.label,
    this.variant = 'outline',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12),
        color: variant == 'outline' ? Colors.transparent : Colors.grey.shade200,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }
}
