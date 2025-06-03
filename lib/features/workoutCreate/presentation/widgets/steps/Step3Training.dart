import 'package:flutter/material.dart';
import 'package:jjb_app/domain/workout/TechnicCategory.dart';

import '../../../../../domain/workout/workoutType.dart';

List<Widget> fruits = <Widget>[
  Text(WorkoutType.grappling.label),
  Text(WorkoutType.jjbGi.label),
  Text(WorkoutType.jjbNoGi.label),
];

class Step3TrainingContent extends StatelessWidget {
  final TechniqueCategory? selectedCategory;
  final String? selectedTechnique;
  final ValueChanged<TechniqueCategory?> onCategoryChanged;
  final ValueChanged<String?> onTechniqueChanged;
  final Map<TechniqueCategory, List<String>>
  techniqueMap; // Passez techniqueMap en paramètre
  final List<bool> selectedWorkoutType;
  final ValueChanged<int> onWorkoutTypeChanged; // nouvelle callback
  final GlobalKey<FormState> formKey;

  const Step3TrainingContent({
    Key? key,
    required this.selectedCategory,
    required this.selectedTechnique,
    required this.onCategoryChanged,
    required this.onTechniqueChanged,
    required this.techniqueMap,
    required this.selectedWorkoutType,
    required this.onWorkoutTypeChanged, // ajout ici
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              ToggleButtons(
                direction: Axis.horizontal,
                //onPressed: onWorkoutTypeChanged,
                onPressed: (int index) {
                  var a = formKey.currentState?.validate();
                  print(a);
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.red[700],
                selectedColor: Colors.white,
                fillColor: Colors.red[200],
                color: Colors.red[400],
                constraints: const BoxConstraints(minHeight: 40.0, minWidth: 80.0),
                isSelected: selectedWorkoutType,
                children: <Widget>[
                  Text(WorkoutType.grappling.label),
                  Text(WorkoutType.jjbGi.label),
                  Text(WorkoutType.jjbNoGi.label),
                ],
              ),
              DropdownButtonFormField<TechniqueCategory>(
                validator: (data) {
                  if (data != null) return null;
                  return 'Veuillez sélectionner une catégorie';
                },
                isExpanded: true,
                value: selectedCategory,
                hint: const Text('Sélectionnez une catégorie'),
                decoration: InputDecoration(border: OutlineInputBorder()),
                onChanged: onCategoryChanged,
                items: TechniqueCategory.values
                    .map<DropdownMenuItem<TechniqueCategory>>((
                      TechniqueCategory category,
                    ) {
                      return DropdownMenuItem<TechniqueCategory>(
                        value: category,
                        child: Text(category.shortName),
                      );
                    })
                    .toList(),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                validator: (data) {
                  if (data != null) return null;
                  return 'Veuillez sélectionner une Technique';
                },
                isExpanded: true,
                value: selectedTechnique,
                hint: const Text('Sélectionnez une technique'),
                decoration: InputDecoration(border: OutlineInputBorder()),
                onChanged: selectedCategory == null ? null : onTechniqueChanged,
                items:
                    selectedCategory == null ||
                        techniqueMap[selectedCategory!] == null
                    ? []
                    : techniqueMap[selectedCategory!]!
                          .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          })
                          .toList(),
              ),
              TextFormField(
                focusNode: FocusNode(),
                controller: TextEditingController(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer une valeur';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
