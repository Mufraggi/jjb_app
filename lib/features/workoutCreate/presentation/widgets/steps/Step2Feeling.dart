import 'package:flutter/material.dart';

import '../../../../../core/domain/RatingType.dart';
import '../widgets/FeelingsSelector.dart';

class Step2FeelingsContent extends StatelessWidget {
  final double currentFeelingSliderValue;
  final ValueChanged<double> onFeelingChanged;
  final double currentEnergySliderValue;
  final ValueChanged<double> onEnergyChanged;
  final double currentMotivationSliderValue;
  final ValueChanged<double> onMotivationChanged;
  final double currentStressSliderValue;
  final ValueChanged<double> onStressChanged;
  final double currentSleepQualitySliderValue;
  final ValueChanged<double> onSleepQualityChanged;

  const Step2FeelingsContent({
    Key? key,
    required this.currentFeelingSliderValue,
    required this.onFeelingChanged,
    required this.currentEnergySliderValue,
    required this.onEnergyChanged,
    required this.currentMotivationSliderValue,
    required this.onMotivationChanged,
    required this.currentStressSliderValue,
    required this.onStressChanged,
    required this.currentSleepQualitySliderValue,
    required this.onSleepQualityChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FeelingsSelector(
            // Votre widget personnalisé
            type: RatingType.feeling,
            currentValue: currentFeelingSliderValue,
            onChanged: onFeelingChanged,
          ),
          SizedBox(height: 10),
          FeelingsSelector(
            // Votre widget personnalisé
            type: RatingType.energyLevel,
            currentValue: currentEnergySliderValue,
            onChanged: onEnergyChanged,
          ),
          SizedBox(height: 10),
          FeelingsSelector(
            // Votre widget personnalisé
            type: RatingType.motivationLevel,
            currentValue: currentMotivationSliderValue,
            onChanged: onMotivationChanged,
          ),
          SizedBox(height: 10),
          FeelingsSelector(
            // Votre widget personnalisé
            type: RatingType.stressLevel,
            currentValue: currentStressSliderValue,
            onChanged: onStressChanged,
          ),
          SizedBox(height: 10),
          FeelingsSelector(
            // Votre widget personnalisé
            type: RatingType.sleepQuality,
            currentValue: currentSleepQualitySliderValue,
            onChanged: onSleepQualityChanged,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
