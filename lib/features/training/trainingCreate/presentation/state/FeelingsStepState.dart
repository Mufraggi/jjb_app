class FeelingsStepState {
  double currentFeelingSliderValue;
  double currentEnergySliderValue;
  double currentMotivationSliderValue;
  double currentStressSliderValue;
  double currentSleepQualitySliderValue;

  FeelingsStepState({
    this.currentFeelingSliderValue = 5,
    this.currentEnergySliderValue = 5,
    this.currentMotivationSliderValue = 5,
    this.currentStressSliderValue = 5,
    this.currentSleepQualitySliderValue = 5,
  });

  FeelingsStepState copyWith({
    double? currentFeelingSliderValue,
    double? currentEnergySliderValue,
    double? currentMotivationSliderValue,
    double? currentStressSliderValue,
    double? currentSleepQualitySliderValue,
  }) {
    return FeelingsStepState(
      currentFeelingSliderValue: currentFeelingSliderValue ?? this.currentFeelingSliderValue,
      currentEnergySliderValue: currentEnergySliderValue ?? this.currentEnergySliderValue,
      currentMotivationSliderValue: currentMotivationSliderValue ?? this.currentMotivationSliderValue,
      currentStressSliderValue: currentStressSliderValue ?? this.currentStressSliderValue,
      currentSleepQualitySliderValue: currentSleepQualitySliderValue ?? this.currentSleepQualitySliderValue,
    );
  }
}
