enum WorkoutType { jjbGi, jjbNoGi, grappling }

extension WorkoutTypeExtension on WorkoutType {
  String get label {
    switch (this) {
      case WorkoutType.jjbGi:
        return 'JJB GI';
      case WorkoutType.jjbNoGi:
        return 'JJB NO GI';
      case WorkoutType.grappling:
        return 'GRAPPLING';
    }
  }

  static WorkoutType fromLabel(String label) {
    switch (label) {
      case 'JJB GI':
        return WorkoutType.jjbGi;
      case 'JJB NO GI':
        return WorkoutType.jjbNoGi;
      case 'GRAPPLING':
        return WorkoutType.grappling;
      default:
        throw ArgumentError('Invalid workout type label: $label');
    }
  }
}
