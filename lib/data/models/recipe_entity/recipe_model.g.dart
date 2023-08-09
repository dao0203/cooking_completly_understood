// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRecipeModelCollection on Isar {
  IsarCollection<RecipeModel> get recipeModels => this.collection();
}

const RecipeModelSchema = CollectionSchema(
  name: r'RecipeModel',
  id: 1871555323955702891,
  properties: {
    r'calorie': PropertySchema(
      id: 0,
      name: r'calorie',
      type: IsarType.string,
    ),
    r'carbohydrate': PropertySchema(
      id: 1,
      name: r'carbohydrate',
      type: IsarType.string,
    ),
    r'cookingTime': PropertySchema(
      id: 2,
      name: r'cookingTime',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'fat': PropertySchema(
      id: 4,
      name: r'fat',
      type: IsarType.string,
    ),
    r'ingredientName': PropertySchema(
      id: 5,
      name: r'ingredientName',
      type: IsarType.stringList,
    ),
    r'ingredientQuantity': PropertySchema(
      id: 6,
      name: r'ingredientQuantity',
      type: IsarType.stringList,
    ),
    r'isFavorite': PropertySchema(
      id: 7,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'isMade': PropertySchema(
      id: 8,
      name: r'isMade',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'protein': PropertySchema(
      id: 10,
      name: r'protein',
      type: IsarType.string,
    ),
    r'role': PropertySchema(
      id: 11,
      name: r'role',
      type: IsarType.string,
    ),
    r'salt': PropertySchema(
      id: 12,
      name: r'salt',
      type: IsarType.string,
    ),
    r'stepDescription': PropertySchema(
      id: 13,
      name: r'stepDescription',
      type: IsarType.stringList,
    ),
    r'stepNumber': PropertySchema(
      id: 14,
      name: r'stepNumber',
      type: IsarType.stringList,
    ),
    r'timeStamp': PropertySchema(
      id: 15,
      name: r'timeStamp',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _recipeModelEstimateSize,
  serialize: _recipeModelSerialize,
  deserialize: _recipeModelDeserialize,
  deserializeProp: _recipeModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _recipeModelGetId,
  getLinks: _recipeModelGetLinks,
  attach: _recipeModelAttach,
  version: '3.1.0+1',
);

int _recipeModelEstimateSize(
  RecipeModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.calorie.length * 3;
  bytesCount += 3 + object.carbohydrate.length * 3;
  bytesCount += 3 + object.cookingTime.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.fat.length * 3;
  bytesCount += 3 + object.ingredientName.length * 3;
  {
    for (var i = 0; i < object.ingredientName.length; i++) {
      final value = object.ingredientName[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.ingredientQuantity.length * 3;
  {
    for (var i = 0; i < object.ingredientQuantity.length; i++) {
      final value = object.ingredientQuantity[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.protein.length * 3;
  bytesCount += 3 + object.role.length * 3;
  bytesCount += 3 + object.salt.length * 3;
  bytesCount += 3 + object.stepDescription.length * 3;
  {
    for (var i = 0; i < object.stepDescription.length; i++) {
      final value = object.stepDescription[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.stepNumber.length * 3;
  {
    for (var i = 0; i < object.stepNumber.length; i++) {
      final value = object.stepNumber[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _recipeModelSerialize(
  RecipeModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.calorie);
  writer.writeString(offsets[1], object.carbohydrate);
  writer.writeString(offsets[2], object.cookingTime);
  writer.writeString(offsets[3], object.description);
  writer.writeString(offsets[4], object.fat);
  writer.writeStringList(offsets[5], object.ingredientName);
  writer.writeStringList(offsets[6], object.ingredientQuantity);
  writer.writeBool(offsets[7], object.isFavorite);
  writer.writeBool(offsets[8], object.isMade);
  writer.writeString(offsets[9], object.name);
  writer.writeString(offsets[10], object.protein);
  writer.writeString(offsets[11], object.role);
  writer.writeString(offsets[12], object.salt);
  writer.writeStringList(offsets[13], object.stepDescription);
  writer.writeStringList(offsets[14], object.stepNumber);
  writer.writeDateTime(offsets[15], object.timeStamp);
}

RecipeModel _recipeModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RecipeModel();
  object.calorie = reader.readString(offsets[0]);
  object.carbohydrate = reader.readString(offsets[1]);
  object.cookingTime = reader.readString(offsets[2]);
  object.description = reader.readString(offsets[3]);
  object.fat = reader.readString(offsets[4]);
  object.id = id;
  object.ingredientName = reader.readStringList(offsets[5]) ?? [];
  object.ingredientQuantity = reader.readStringList(offsets[6]) ?? [];
  object.isFavorite = reader.readBool(offsets[7]);
  object.isMade = reader.readBool(offsets[8]);
  object.name = reader.readString(offsets[9]);
  object.protein = reader.readString(offsets[10]);
  object.role = reader.readString(offsets[11]);
  object.salt = reader.readString(offsets[12]);
  object.stepDescription = reader.readStringList(offsets[13]) ?? [];
  object.stepNumber = reader.readStringList(offsets[14]) ?? [];
  object.timeStamp = reader.readDateTime(offsets[15]);
  return object;
}

P _recipeModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringList(offset) ?? []) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringList(offset) ?? []) as P;
    case 14:
      return (reader.readStringList(offset) ?? []) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _recipeModelGetId(RecipeModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _recipeModelGetLinks(RecipeModel object) {
  return [];
}

void _recipeModelAttach(
    IsarCollection<dynamic> col, Id id, RecipeModel object) {
  object.id = id;
}

extension RecipeModelQueryWhereSort
    on QueryBuilder<RecipeModel, RecipeModel, QWhere> {
  QueryBuilder<RecipeModel, RecipeModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RecipeModelQueryWhere
    on QueryBuilder<RecipeModel, RecipeModel, QWhereClause> {
  QueryBuilder<RecipeModel, RecipeModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<RecipeModel, RecipeModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterWhereClause> idBetween(
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

extension RecipeModelQueryFilter
    on QueryBuilder<RecipeModel, RecipeModel, QFilterCondition> {
  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      calorieGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calorie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      calorieStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'calorie',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> calorieMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'calorie',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      calorieIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calorie',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      calorieIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'calorie',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carbohydrate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'carbohydrate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'carbohydrate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carbohydrate',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      carbohydrateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'carbohydrate',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cookingTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cookingTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cookingTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cookingTime',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      cookingTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cookingTime',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fat',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fat',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> fatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fat',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      fatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fat',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredientName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredientName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientName',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredientName',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientNameLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientName',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ingredientQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ingredientQuantity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ingredientQuantity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ingredientQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ingredientQuantity',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      ingredientQuantityLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ingredientQuantity',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      isFavoriteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> isMadeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMade',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      proteinGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'protein',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      proteinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'protein',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> proteinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'protein',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      proteinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'protein',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      proteinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'protein',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'salt',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'salt',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition> saltIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salt',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      saltIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'salt',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stepDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stepDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stepDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stepDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stepDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepDescriptionLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepDescription',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stepNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stepNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stepNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stepNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stepNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      stepNumberLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'stepNumber',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      timeStampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      timeStampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      timeStampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeStamp',
        value: value,
      ));
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterFilterCondition>
      timeStampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeStamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RecipeModelQueryObject
    on QueryBuilder<RecipeModel, RecipeModel, QFilterCondition> {}

extension RecipeModelQueryLinks
    on QueryBuilder<RecipeModel, RecipeModel, QFilterCondition> {}

extension RecipeModelQuerySortBy
    on QueryBuilder<RecipeModel, RecipeModel, QSortBy> {
  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByCalorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorie', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByCalorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorie', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByCarbohydrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbohydrate', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy>
      sortByCarbohydrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbohydrate', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByCookingTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cookingTime', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByCookingTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cookingTime', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByFat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByFatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByIsMade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMade', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByIsMadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMade', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByProtein() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protein', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByProteinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protein', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortBySalt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salt', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortBySaltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salt', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStamp', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> sortByTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStamp', Sort.desc);
    });
  }
}

extension RecipeModelQuerySortThenBy
    on QueryBuilder<RecipeModel, RecipeModel, QSortThenBy> {
  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByCalorie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorie', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByCalorieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calorie', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByCarbohydrate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbohydrate', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy>
      thenByCarbohydrateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carbohydrate', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByCookingTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cookingTime', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByCookingTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cookingTime', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByFat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByFatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fat', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByIsMade() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMade', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByIsMadeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMade', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByProtein() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protein', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByProteinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'protein', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenBySalt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salt', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenBySaltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salt', Sort.desc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStamp', Sort.asc);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QAfterSortBy> thenByTimeStampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStamp', Sort.desc);
    });
  }
}

extension RecipeModelQueryWhereDistinct
    on QueryBuilder<RecipeModel, RecipeModel, QDistinct> {
  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByCalorie(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calorie', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByCarbohydrate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carbohydrate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByCookingTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cookingTime', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByFat(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fat', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByIngredientName() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientName');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct>
      distinctByIngredientQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ingredientQuantity');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByIsMade() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMade');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByProtein(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'protein', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctBySalt(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salt', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct>
      distinctByStepDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stepDescription');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByStepNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stepNumber');
    });
  }

  QueryBuilder<RecipeModel, RecipeModel, QDistinct> distinctByTimeStamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeStamp');
    });
  }
}

extension RecipeModelQueryProperty
    on QueryBuilder<RecipeModel, RecipeModel, QQueryProperty> {
  QueryBuilder<RecipeModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> calorieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calorie');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> carbohydrateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carbohydrate');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> cookingTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cookingTime');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> fatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fat');
    });
  }

  QueryBuilder<RecipeModel, List<String>, QQueryOperations>
      ingredientNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientName');
    });
  }

  QueryBuilder<RecipeModel, List<String>, QQueryOperations>
      ingredientQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ingredientQuantity');
    });
  }

  QueryBuilder<RecipeModel, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<RecipeModel, bool, QQueryOperations> isMadeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMade');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> proteinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'protein');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<RecipeModel, String, QQueryOperations> saltProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salt');
    });
  }

  QueryBuilder<RecipeModel, List<String>, QQueryOperations>
      stepDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stepDescription');
    });
  }

  QueryBuilder<RecipeModel, List<String>, QQueryOperations>
      stepNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stepNumber');
    });
  }

  QueryBuilder<RecipeModel, DateTime, QQueryOperations> timeStampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeStamp');
    });
  }
}
