enum SparringOutcome { win, lose, draw, unknown }

extension SparringOutcomeExtension on SparringOutcome {
  String get label {
    switch (this) {
      case SparringOutcome.win:
        return 'WIN';
      case SparringOutcome.lose:
        return 'LOSE';
      case SparringOutcome.draw:
        return 'DRAW';
      case SparringOutcome.unknown:
        return 'UNKNOW';
    }
  }

  static SparringOutcome fromLabel(String label) {
    switch (label) {
      case 'WIN':
        return SparringOutcome.win;
      case 'LOSE':
        return SparringOutcome.lose;
      case 'DRAW':
        return SparringOutcome.draw;
      case 'UNKNOW':
        return SparringOutcome.unknown;
      default:
        throw ArgumentError('Invalid training type label: $label');
    }
  }
}
