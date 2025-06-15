// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_form_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTrainingFormEntityCollection on Isar {
  IsarCollection<TrainingFormEntity> get trainingFormEntitys =>
      this.collection();
}

const TrainingFormEntitySchema = CollectionSchema(
  name: r'TrainingFormEntity',
  id: -1041436317203984758,
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
    r'note': PropertySchema(
      id: 4,
      name: r'note',
      type: IsarType.string,
    ),
    r'selectedCategory': PropertySchema(
      id: 5,
      name: r'selectedCategory',
      type: IsarType.string,
    ),
    r'selectedDate': PropertySchema(
      id: 6,
      name: r'selectedDate',
      type: IsarType.dateTime,
    ),
    r'selectedDuration': PropertySchema(
      id: 7,
      name: r'selectedDuration',
      type: IsarType.long,
    ),
    r'selectedHour': PropertySchema(
      id: 8,
      name: r'selectedHour',
      type: IsarType.long,
    ),
    r'selectedMinute': PropertySchema(
      id: 9,
      name: r'selectedMinute',
      type: IsarType.long,
    ),
    r'selectedTechnique': PropertySchema(
      id: 10,
      name: r'selectedTechnique',
      type: IsarType.string,
    ),
    r'selectedTrainingTypes': PropertySchema(
      id: 11,
      name: r'selectedTrainingTypes',
      type: IsarType.string,
    ),
    r'sleepQuality': PropertySchema(
      id: 12,
      name: r'sleepQuality',
      type: IsarType.double,
    ),
    r'stress': PropertySchema(
      id: 13,
      name: r'stress',
      type: IsarType.double,
    ),
    r'updatedAt': PropertySchema(
      id: 14,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 15,
      name: r'uuid',
      type: IsarType.string,
    )
  },
  estimateSize: _trainingFormEntityEstimateSize,
  serialize: _trainingFormEntitySerialize,
  deserialize: _trainingFormEntityDeserialize,
  deserializeProp: _trainingFormEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _trainingFormEntityGetId,
  getLinks: _trainingFormEntityGetLinks,
  attach: _trainingFormEntityAttach,
  version: '3.1.0+1',
);

int _trainingFormEntityEstimateSize(
  TrainingFormEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.note;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.selectedCategory.length * 3;
  {
    final value = object.selectedTechnique;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.selectedTrainingTypes.length * 3;
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _trainingFormEntitySerialize(
  TrainingFormEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeDouble(offsets[1], object.energy);
  writer.writeDouble(offsets[2], object.feeling);
  writer.writeDouble(offsets[3], object.motivation);
  writer.writeString(offsets[4], object.note);
  writer.writeString(offsets[5], object.selectedCategory);
  writer.writeDateTime(offsets[6], object.selectedDate);
  writer.writeLong(offsets[7], object.selectedDuration);
  writer.writeLong(offsets[8], object.selectedHour);
  writer.writeLong(offsets[9], object.selectedMinute);
  writer.writeString(offsets[10], object.selectedTechnique);
  writer.writeString(offsets[11], object.selectedTrainingTypes);
  writer.writeDouble(offsets[12], object.sleepQuality);
  writer.writeDouble(offsets[13], object.stress);
  writer.writeDateTime(offsets[14], object.updatedAt);
  writer.writeString(offsets[15], object.uuid);
}

TrainingFormEntity _trainingFormEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TrainingFormEntity();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.energy = reader.readDouble(offsets[1]);
  object.feeling = reader.readDouble(offsets[2]);
  object.id = id;
  object.motivation = reader.readDouble(offsets[3]);
  object.note = reader.readStringOrNull(offsets[4]);
  object.selectedCategory = reader.readString(offsets[5]);
  object.selectedDate = reader.readDateTime(offsets[6]);
  object.selectedDuration = reader.readLong(offsets[7]);
  object.selectedHour = reader.readLong(offsets[8]);
  object.selectedMinute = reader.readLong(offsets[9]);
  object.selectedTechnique = reader.readStringOrNull(offsets[10]);
  object.selectedTrainingTypes = reader.readString(offsets[11]);
  object.sleepQuality = reader.readDouble(offsets[12]);
  object.stress = reader.readDouble(offsets[13]);
  object.updatedAt = reader.readDateTime(offsets[14]);
  object.uuid = reader.readString(offsets[15]);
  return object;
}

P _trainingFormEntityDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _trainingFormEntityGetId(TrainingFormEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _trainingFormEntityGetLinks(
    TrainingFormEntity object) {
  return [];
}

void _trainingFormEntityAttach(
    IsarCollection<dynamic> col, Id id, TrainingFormEntity object) {
  object.id = id;
}

extension TrainingFormEntityQueryWhereSort
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QWhere> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TrainingFormEntityQueryWhere
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QWhereClause> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhereClause>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterWhereClause>
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

extension TrainingFormEntityQueryFilter
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QFilterCondition> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'note',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      noteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'note',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryEqualTo(
    String value, {
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryGreaterThan(
    String value, {
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryLessThan(
    String value, {
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryBetween(
    String lower,
    String upper, {
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedCategory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedCategory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedCategoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedCategory',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedDurationEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedDurationGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedDurationLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedDuration',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedDurationBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedDuration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedHourEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedMinuteEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedMinute',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedTechnique',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedTechnique',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedTechnique',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedTechnique',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTechnique',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTechniqueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedTechnique',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesEqualTo(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesGreaterThan(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesLessThan(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesBetween(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesStartsWith(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesEndsWith(
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'selectedTrainingTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'selectedTrainingTypes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedTrainingTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      selectedTrainingTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'selectedTrainingTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
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

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }
}

extension TrainingFormEntityQueryObject
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QFilterCondition> {}

extension TrainingFormEntityQueryLinks
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QFilterCondition> {}

extension TrainingFormEntityQuerySortBy
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QSortBy> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByFeelingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByMotivationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDuration', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDuration', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedTechnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedTechniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedTrainingTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTrainingTypes', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySelectedTrainingTypesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTrainingTypes', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortBySleepQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension TrainingFormEntityQuerySortThenBy
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QSortThenBy> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByFeelingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feeling', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByMotivationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'motivation', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'note', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedCategory', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDate', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDuration', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedDuration', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedHour', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedMinuteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedMinute', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedTechnique() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedTechniqueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTechnique', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedTrainingTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTrainingTypes', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySelectedTrainingTypesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectedTrainingTypes', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenBySleepQualityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sleepQuality', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }
}

extension TrainingFormEntityQueryWhereDistinct
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct> {
  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energy');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByFeeling() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feeling');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByMotivation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'motivation');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByNote({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'note', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedCategory',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedDate');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedDuration');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedHour');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedMinute() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedMinute');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedTechnique({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedTechnique',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySelectedTrainingTypes({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectedTrainingTypes',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctBySleepQuality() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sleepQuality');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stress');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<TrainingFormEntity, TrainingFormEntity, QDistinct>
      distinctByUuid({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }
}

extension TrainingFormEntityQueryProperty
    on QueryBuilder<TrainingFormEntity, TrainingFormEntity, QQueryProperty> {
  QueryBuilder<TrainingFormEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TrainingFormEntity, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<TrainingFormEntity, double, QQueryOperations> energyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energy');
    });
  }

  QueryBuilder<TrainingFormEntity, double, QQueryOperations> feelingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feeling');
    });
  }

  QueryBuilder<TrainingFormEntity, double, QQueryOperations>
      motivationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'motivation');
    });
  }

  QueryBuilder<TrainingFormEntity, String?, QQueryOperations> noteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'note');
    });
  }

  QueryBuilder<TrainingFormEntity, String, QQueryOperations>
      selectedCategoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedCategory');
    });
  }

  QueryBuilder<TrainingFormEntity, DateTime, QQueryOperations>
      selectedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedDate');
    });
  }

  QueryBuilder<TrainingFormEntity, int, QQueryOperations>
      selectedDurationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedDuration');
    });
  }

  QueryBuilder<TrainingFormEntity, int, QQueryOperations>
      selectedHourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedHour');
    });
  }

  QueryBuilder<TrainingFormEntity, int, QQueryOperations>
      selectedMinuteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedMinute');
    });
  }

  QueryBuilder<TrainingFormEntity, String?, QQueryOperations>
      selectedTechniqueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedTechnique');
    });
  }

  QueryBuilder<TrainingFormEntity, String, QQueryOperations>
      selectedTrainingTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectedTrainingTypes');
    });
  }

  QueryBuilder<TrainingFormEntity, double, QQueryOperations>
      sleepQualityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sleepQuality');
    });
  }

  QueryBuilder<TrainingFormEntity, double, QQueryOperations> stressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stress');
    });
  }

  QueryBuilder<TrainingFormEntity, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<TrainingFormEntity, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }
}
