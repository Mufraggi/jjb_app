// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_form_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkoutFormEntityCollection on Isar {
  IsarCollection<WorkoutFormEntity> get workoutFormEntitys => this.collection();
}

const WorkoutFormEntitySchema = CollectionSchema(
  name: r'WorkoutFormEntity',
  id: 8745971731175788774,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'energy': PropertySchema(
      id: 1,
      name: r'energy',
      type: IsarType.double,
    ),
    r'feeling': PropertySchema(
      id: 2,
      name: r'feeling',
      type: IsarType.double,
    ),
    r'motivation': PropertySchema(
      id: 3,
      name: r'motivation',
      type: IsarType.double,
    ),
    r'selectedCategory': PropertySchema(
      id: 4,
      name: r'selectedCategory',
      type: IsarType.string,
    ),
    r'selectedDate': PropertySchema(
      id: 5,
      name: r'selectedDate',
      type: IsarType.dateTime,
    ),
    r'selectedHour': PropertySchema(
      id: 6,
      name: r'selectedHour',
      type: IsarType.long,
    ),
    r'selectedMinute': PropertySchema(
      id: 7,
      name: r'selectedMinute',
      type: IsarType.long,
    ),
    r'selectedTechnique': PropertySchema(
      id: 8,
      name: r'selectedTechnique',
      type: IsarType.string,
    ),
    r'selectedTrainingTypes': PropertySchema(
      id: 9,
      name: r'selectedTrainingTypes',
      type: IsarType.stringList,
    ),
    r'sleepQuality': PropertySchema(
      id: 10,
      name: r'sleepQuality',
      type: IsarType.double,
    ),
    r'stress': PropertySchema(
      id: 11,
      name: r'stress',
      type: IsarType.double,
    ),
    r'updatedAt': PropertySchema(
      id: 12,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 13,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _workoutFormEntityEstimateSize,
  serialize: _workoutFormEntitySerialize,
  deserialize: _workoutFormEntityDeserialize,
  deserializeProp: _workoutFormEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _workoutFormEntityGetId,
  getLinks: _workoutFormEntityGetLinks,
  attach: _workoutFormEntityAttach,
  version: '3.1.0+1',
);

int _workoutFormEntityEstimateSize(
  WorkoutFormEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.selectedCategory;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.selectedTechnique;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.selectedTrainingTypes.length * 3;
  {
    for (var i = 0; i < object.selectedTrainingTypes.length; i++) {
      final value = object.selectedTrainingTypes[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _workoutFormEntitySerialize(
  WorkoutFormEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeDouble(offsets[1], object.energy);
  writer.writeDouble(offsets[2], object.feeling);
  writer.writeDouble(offsets[3], object.motivation);
  writer.writeString(offsets[4], object.selectedCategory);
  writer.writeDateTime(offsets[5], object.selectedDate);
  writer.writeLong(offsets[6], object.selectedHour);
  writer.writeLong(offsets[7], object.selectedMinute);
  writer.writeString(offsets[8], object.selectedTechnique);
  writer.writeStringList(offsets[9], object.selectedTrainingTypes);
  writer.writeDouble(offsets[10], object.sleepQuality);
  writer.writeDouble(offsets[11], object.stress);
  writer.writeDateTime(offsets[12], object.updatedAt);
  writer.writeString(offsets[13], object.uuid);
}

WorkoutFormEntity _workoutFormEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkoutFormEntity();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.energy = reader.readDouble(offsets[1]);
  object.feeling = reader.readDouble(offsets[2]);
  object.id = id;
  object.motivation = reader.readDouble(offsets[3]);
  object.selectedCategory = reader.readStringOrNull(offsets[4]);
  object.selectedDate = reader.readDateTime(offsets[5]);
  object.selectedHour = reader.readLong(offsets[6]);
  object.selectedMinute = reader.readLong(offsets[7]);
  object.selectedTechnique = reader.readStringOrNull(offsets[8]);
  object.selectedTrainingTypes = reader.readStringList(offsets[9]) ?? [];
  object.sleepQuality = reader.readDouble(offsets[10]);
  object.stress = reader.readDouble(offsets[11]);
  object.updatedAt = reader.readDateTime(offsets[12]);
  object.uuid = reader.readString(offsets[13]);
  return object;
}

P _workoutFormEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workoutFormEntityGetId(WorkoutFormEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workoutFormEntityGetLinks(
    WorkoutFormEntity object) {
  return [];
}

void _workoutFormEntityAttach(
    IsarCollection<dynamic> col, Id id, WorkoutFormEntity object) {
  object.id = id;
}

extension WorkoutFormEntityQueryWhereSort
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QWhere> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkoutFormEntityQueryWhere
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QWhereClause> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WorkoutFormEntityQueryFilter
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QFilterCondition> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      energyEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'energy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      energyGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'energy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      energyLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'energy',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      energyBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'energy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      feelingEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feeling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      feelingGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feeling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      feelingLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feeling',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      feelingBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feeling',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      motivationEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'motivation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      motivationGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'motivation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      motivationLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'motivation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      motivationBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'motivation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedCategory',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedCategory',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedCategory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedHourEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedHour',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedHourGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedHour',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedHourLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedHour',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedHourBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedHour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedMinuteEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedMinute',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedMinuteGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedMinute',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedMinuteLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedMinute',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedMinuteBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedMinute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedTechnique',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedTechnique',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedTechnique',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedTechnique',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTechnique',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedTechnique',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedTrainingTypes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedTrainingTypes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTrainingTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedTrainingTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      selectedTrainingTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'selectedTrainingTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      sleepQualityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sleepQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      sleepQualityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sleepQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      sleepQualityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sleepQuality',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      sleepQualityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sleepQuality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      stressEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      stressGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      stressLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      stressBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension WorkoutFormEntityQueryObject
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QFilterCondition> {}

extension WorkoutFormEntityQueryLinks
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QFilterCondition> {}

extension WorkoutFormEntityQuerySortBy
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QSortBy> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByFeelingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByMotivationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedTechnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySelectedTechniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortBySleepQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension WorkoutFormEntityQuerySortThenBy
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QSortThenBy> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByFeelingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByMotivationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedTechnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySelectedTechniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenBySleepQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension WorkoutFormEntityQueryWhereDistinct
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct> {
  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energy');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feeling');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motivation');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedCategory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedDate');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedHour');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedMinute');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedTechnique({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedTechnique',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySelectedTrainingTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedTrainingTypes');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sleepQuality');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stress');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension WorkoutFormEntityQueryProperty
    on QueryBuilder<WorkoutFormEntity, WorkoutFormEntity, QQueryProperty> {
  QueryBuilder<WorkoutFormEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkoutFormEntity, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<WorkoutFormEntity, double, QQueryOperations> energyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energy');
    });
  }

  QueryBuilder<WorkoutFormEntity, double, QQueryOperations> feelingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feeling');
    });
  }

  QueryBuilder<WorkoutFormEntity, double, QQueryOperations>
      motivationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motivation');
    });
  }

  QueryBuilder<WorkoutFormEntity, String?, QQueryOperations>
      selectedCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedCategory');
    });
  }

  QueryBuilder<WorkoutFormEntity, DateTime, QQueryOperations>
      selectedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedDate');
    });
  }

  QueryBuilder<WorkoutFormEntity, int, QQueryOperations>
      selectedHourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedHour');
    });
  }

  QueryBuilder<WorkoutFormEntity, int, QQueryOperations>
      selectedMinuteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedMinute');
    });
  }

  QueryBuilder<WorkoutFormEntity, String?, QQueryOperations>
      selectedTechniqueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedTechnique');
    });
  }

  QueryBuilder<WorkoutFormEntity, List<String>, QQueryOperations>
      selectedTrainingTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedTrainingTypes');
    });
  }

  QueryBuilder<WorkoutFormEntity, double, QQueryOperations>
      sleepQualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sleepQuality');
    });
  }

  QueryBuilder<WorkoutFormEntity, double, QQueryOperations> stressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stress');
    });
  }

  QueryBuilder<WorkoutFormEntity, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<WorkoutFormEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
