import 'package:flutter/material.dart';

enum TechniqueCategory {
  fundamentalPositions,
  takedowns,
  submissionsJointLocks,
  submissionsChokes,
  sweeps,
  guardPasses,
  fundamentalMovements,
  submissionDefenses,
}

extension TechniqueCategoryExtension on TechniqueCategory {
  String get label {
    switch (this) {
      case TechniqueCategory.fundamentalPositions:
        return "Positions Fondamentales (Contrôles)";
      case TechniqueCategory.takedowns:
        return "Amenées au Sol (Takedowns)";
      case TechniqueCategory.submissionsJointLocks:
        return "Soumissions (Submissions) - Clés Articulaires";
      case TechniqueCategory.submissionsChokes:
        return "Soumissions (Submissions) - Étranglements";
      case TechniqueCategory.sweeps:
        return "Renversements (Sweeps)";
      case TechniqueCategory.guardPasses:
        return "Passages de Garde (Guard Passes)";
      case TechniqueCategory.fundamentalMovements:
        return "Mouvements Fondamentaux et Esquives";
      case TechniqueCategory.submissionDefenses:
        return "Défenses de Soumission";
    }
  }

  static TechniqueCategory fromLabel(String label) {
    for (TechniqueCategory category in TechniqueCategory.values) {
      if (category.label == label) {
        return category;
      }
    }
    throw ArgumentError('Invalid technique category label: $label');
  }

  Color get color {
    switch (this) {
      case TechniqueCategory.fundamentalPositions:
        return Colors.blue.shade700;
      case TechniqueCategory.takedowns:
        return Colors.green.shade700;
      case TechniqueCategory.submissionsJointLocks:
        return Colors.red.shade700;
      case TechniqueCategory.submissionsChokes:
        return Colors.red.shade500;
      case TechniqueCategory.sweeps:
        return Colors.orange.shade700;
      case TechniqueCategory.guardPasses:
        return Colors.purple.shade700;
      case TechniqueCategory.fundamentalMovements:
        return Colors.brown.shade700;
      case TechniqueCategory.submissionDefenses:
        return Colors.teal.shade700;
    }
  }


  String get shortName {
    switch (this) {
      case TechniqueCategory.fundamentalPositions:
        return "Positions";
      case TechniqueCategory.takedowns:
        return "Takedowns";
      case TechniqueCategory.submissionsJointLocks:
        return "Clés Articulaires";
      case TechniqueCategory.submissionsChokes:
        return "Étranglements";
      case TechniqueCategory.sweeps:
        return "Renversements";
      case TechniqueCategory.guardPasses:
        return "Passages";
      case TechniqueCategory.fundamentalMovements:
        return "Mouvements";
      case TechniqueCategory.submissionDefenses:
        return "Défenses";
    }
  }
}
