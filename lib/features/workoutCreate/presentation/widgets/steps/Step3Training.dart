import 'package:flutter/material.dart';
import 'package:jjb_app/domain/workout/TechnicCategory.dart';

import '../../../../../domain/workout/workoutType.dart';

List<WorkoutType> trainingsType = <WorkoutType>[
  WorkoutType.grappling,
  WorkoutType.jjbGi,
  WorkoutType.jjbNoGi,
];

List<Widget> fruits = <Widget>[
  Text(WorkoutType.grappling.label),
  Text(WorkoutType.jjbGi.label),
  Text(WorkoutType.jjbNoGi.label),
];

List<bool> listBool = <bool>[true, false, false];

class Step3TrainingContent extends StatelessWidget {
  final TechniqueCategory? selectedCategory;
  final String? selectedTechnique;
  final ValueChanged<TechniqueCategory?> onCategoryChanged;
  final ValueChanged<String?> onTechniqueChanged;
  final Map<TechniqueCategory, List<String>>
  techniqueMap; // Passez techniqueMap en paramètre
  final List<bool> selectedWorkoutType;
  final ValueChanged<int> onWorkoutTypeChanged;
  final GlobalKey<FormState> formKey;
  final ValueChanged<String?> onNoteChanged;
  final String? initialNote;
  final TextEditingController noteController; // ✅ Controller passé en paramètre

  const Step3TrainingContent({
    Key? key,
    required this.selectedCategory,
    required this.selectedTechnique,
    required this.onCategoryChanged,
    required this.onTechniqueChanged,
    required this.techniqueMap,
    required this.onWorkoutTypeChanged,
    required this.selectedWorkoutType,
    required this.formKey,
    required this.onNoteChanged,
    required this.initialNote,
    required this.noteController, // ✅ Controller requis
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
                onPressed: onWorkoutTypeChanged,
                // ✅ Utilise directement la callback
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.red[700],
                selectedColor: Colors.white,
                fillColor: Colors.red[200],
                color: Colors.red[400],
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 80.0,
                ),
                isSelected: selectedWorkoutType,
                // ✅ Utilise la prop
                children: trainingsType
                    .map((type) => Text(type.label))
                    .toList(),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              TextFormField(
                focusNode: FocusNode(),
                controller: noteController,
                decoration: InputDecoration(
                  labelText: 'Notes',
                  hintText: 'Ajoutez vos notes ici...',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                onChanged: onNoteChanged,

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
