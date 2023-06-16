// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRepositorieyCollection on Isar {
  IsarCollection<Repositoriey> get repositorieys => this.collection();
}

const RepositorieySchema = CollectionSchema(
  name: r'Repositoriey',
  id: -4208175524229968584,
  properties: {
    r'cloneUrl': PropertySchema(
      id: 0,
      name: r'cloneUrl',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'forks': PropertySchema(
      id: 3,
      name: r'forks',
      type: IsarType.long,
    ),
    r'forksCount': PropertySchema(
      id: 4,
      name: r'forksCount',
      type: IsarType.long,
    ),
    r'fullName': PropertySchema(
      id: 5,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'gitUrl': PropertySchema(
      id: 6,
      name: r'gitUrl',
      type: IsarType.string,
    ),
    r'homepage': PropertySchema(
      id: 7,
      name: r'homepage',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 8,
      name: r'id',
      type: IsarType.long,
    ),
    r'language': PropertySchema(
      id: 9,
      name: r'language',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 10,
      name: r'name',
      type: IsarType.string,
    ),
    r'openIssues': PropertySchema(
      id: 11,
      name: r'openIssues',
      type: IsarType.long,
    ),
    r'pushedAt': PropertySchema(
      id: 12,
      name: r'pushedAt',
      type: IsarType.dateTime,
    ),
    r'size': PropertySchema(
      id: 13,
      name: r'size',
      type: IsarType.long,
    ),
    r'sshUrl': PropertySchema(
      id: 14,
      name: r'sshUrl',
      type: IsarType.string,
    ),
    r'topics': PropertySchema(
      id: 15,
      name: r'topics',
      type: IsarType.stringList,
    ),
    r'updatedAt': PropertySchema(
      id: 16,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'watchers': PropertySchema(
      id: 17,
      name: r'watchers',
      type: IsarType.long,
    ),
    r'watchersCount': PropertySchema(
      id: 18,
      name: r'watchersCount',
      type: IsarType.long,
    )
  },
  estimateSize: _repositorieyEstimateSize,
  serialize: _repositorieySerialize,
  deserialize: _repositorieyDeserialize,
  deserializeProp: _repositorieyDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'owner': LinkSchema(
      id: -5931171029189352422,
      name: r'owner',
      target: r'Owner',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _repositorieyGetId,
  getLinks: _repositorieyGetLinks,
  attach: _repositorieyAttach,
  version: '3.0.2',
);

int _repositorieyEstimateSize(
  Repositoriey object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cloneUrl.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.fullName.length * 3;
  bytesCount += 3 + object.gitUrl.length * 3;
  {
    final value = object.homepage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.sshUrl.length * 3;
  bytesCount += 3 + object.topics.length * 3;
  {
    for (var i = 0; i < object.topics.length; i++) {
      final value = object.topics[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _repositorieySerialize(
  Repositoriey object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cloneUrl);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.description);
  writer.writeLong(offsets[3], object.forks);
  writer.writeLong(offsets[4], object.forksCount);
  writer.writeString(offsets[5], object.fullName);
  writer.writeString(offsets[6], object.gitUrl);
  writer.writeString(offsets[7], object.homepage);
  writer.writeLong(offsets[8], object.id);
  writer.writeString(offsets[9], object.language);
  writer.writeString(offsets[10], object.name);
  writer.writeLong(offsets[11], object.openIssues);
  writer.writeDateTime(offsets[12], object.pushedAt);
  writer.writeLong(offsets[13], object.size);
  writer.writeString(offsets[14], object.sshUrl);
  writer.writeStringList(offsets[15], object.topics);
  writer.writeDateTime(offsets[16], object.updatedAt);
  writer.writeLong(offsets[17], object.watchers);
  writer.writeLong(offsets[18], object.watchersCount);
}

Repositoriey _repositorieyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Repositoriey(
    cloneUrl: reader.readString(offsets[0]),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    forks: reader.readLong(offsets[3]),
    forksCount: reader.readLongOrNull(offsets[4]),
    fullName: reader.readString(offsets[5]),
    gitUrl: reader.readString(offsets[6]),
    homepage: reader.readStringOrNull(offsets[7]),
    id: reader.readLong(offsets[8]),
    language: reader.readStringOrNull(offsets[9]),
    name: reader.readString(offsets[10]),
    openIssues: reader.readLong(offsets[11]),
    pushedAt: reader.readDateTimeOrNull(offsets[12]),
    size: reader.readLong(offsets[13]),
    sshUrl: reader.readString(offsets[14]),
    topics: reader.readStringList(offsets[15]) ?? [],
    updatedAt: reader.readDateTimeOrNull(offsets[16]),
    watchers: reader.readLong(offsets[17]),
    watchersCount: reader.readLong(offsets[18]),
  );
  return object;
}

P _repositorieyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readStringList(offset) ?? []) as P;
    case 16:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _repositorieyGetId(Repositoriey object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _repositorieyGetLinks(Repositoriey object) {
  return [object.owner];
}

void _repositorieyAttach(
    IsarCollection<dynamic> col, Id id, Repositoriey object) {
  object.owner.attach(col, col.isar.collection<Owner>(), r'owner', id);
}

extension RepositorieyQueryWhereSort
    on QueryBuilder<Repositoriey, Repositoriey, QWhere> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RepositorieyQueryWhere
    on QueryBuilder<Repositoriey, Repositoriey, QWhereClause> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RepositorieyQueryFilter
    on QueryBuilder<Repositoriey, Repositoriey, QFilterCondition> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloneUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cloneUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cloneUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloneUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      cloneUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cloneUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtLessThan(
    DateTime? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> forksEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'forks',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'forks',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> forksLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'forks',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> forksBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'forks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'forksCount',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'forksCount',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      forksCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'forksCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> gitUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> gitUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gitUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gitUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> gitUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gitUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gitUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      gitUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gitUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'homepage',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'homepage',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'homepage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homepage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homepage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      homepageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homepage',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> idGreaterThan(
    int value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'language',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      openIssuesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openIssues',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      openIssuesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openIssues',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      openIssuesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openIssues',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      openIssuesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openIssues',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pushedAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pushedAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pushedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pushedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pushedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      pushedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pushedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sizeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sizeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sizeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sizeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sshUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sshUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sshUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sshUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> sshUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sshUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sshUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      sshUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sshUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'topics',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'topics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'topics',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topics',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'topics',
        value: '',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      topicsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'topics',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime? value, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'watchers',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'watchers',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'watchers',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'watchers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      watchersCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'watchersCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RepositorieyQueryObject
    on QueryBuilder<Repositoriey, Repositoriey, QFilterCondition> {}

extension RepositorieyQueryLinks
    on QueryBuilder<Repositoriey, Repositoriey, QFilterCondition> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition> owner(
      FilterQuery<Owner> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'owner');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterFilterCondition>
      ownerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'owner', 0, true, 0, true);
    });
  }
}

extension RepositorieyQuerySortBy
    on QueryBuilder<Repositoriey, Repositoriey, QSortBy> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByCloneUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cloneUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByCloneUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cloneUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByForks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forks', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByForksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forks', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      sortByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByGitUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gitUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByGitUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gitUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByOpenIssues() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openIssues', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      sortByOpenIssuesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openIssues', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByPushedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushedAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByPushedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushedAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortBySshUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sshUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortBySshUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sshUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByWatchers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchers', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByWatchersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchers', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> sortByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      sortByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension RepositorieyQuerySortThenBy
    on QueryBuilder<Repositoriey, Repositoriey, QSortThenBy> {
  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByCloneUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cloneUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByCloneUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cloneUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByForks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forks', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByForksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forks', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      thenByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByGitUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gitUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByGitUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gitUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByHomepage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByHomepageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homepage', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByOpenIssues() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openIssues', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      thenByOpenIssuesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'openIssues', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByPushedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushedAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByPushedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pushedAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenBySshUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sshUrl', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenBySshUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sshUrl', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByWatchers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchers', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByWatchersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchers', Sort.desc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy> thenByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QAfterSortBy>
      thenByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension RepositorieyQueryWhereDistinct
    on QueryBuilder<Repositoriey, Repositoriey, QDistinct> {
  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByCloneUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cloneUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByForks() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forks');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forksCount');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByFullName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByGitUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gitUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByHomepage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homepage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByOpenIssues() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'openIssues');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByPushedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pushedAt');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctBySshUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sshUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByTopics() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'topics');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct> distinctByWatchers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchers');
    });
  }

  QueryBuilder<Repositoriey, Repositoriey, QDistinct>
      distinctByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchersCount');
    });
  }
}

extension RepositorieyQueryProperty
    on QueryBuilder<Repositoriey, Repositoriey, QQueryProperty> {
  QueryBuilder<Repositoriey, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Repositoriey, String, QQueryOperations> cloneUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cloneUrl');
    });
  }

  QueryBuilder<Repositoriey, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Repositoriey, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> forksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forks');
    });
  }

  QueryBuilder<Repositoriey, int?, QQueryOperations> forksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forksCount');
    });
  }

  QueryBuilder<Repositoriey, String, QQueryOperations> fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<Repositoriey, String, QQueryOperations> gitUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gitUrl');
    });
  }

  QueryBuilder<Repositoriey, String?, QQueryOperations> homepageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homepage');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Repositoriey, String?, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<Repositoriey, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> openIssuesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openIssues');
    });
  }

  QueryBuilder<Repositoriey, DateTime?, QQueryOperations> pushedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pushedAt');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }

  QueryBuilder<Repositoriey, String, QQueryOperations> sshUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sshUrl');
    });
  }

  QueryBuilder<Repositoriey, List<String>, QQueryOperations> topicsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'topics');
    });
  }

  QueryBuilder<Repositoriey, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> watchersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchers');
    });
  }

  QueryBuilder<Repositoriey, int, QQueryOperations> watchersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchersCount');
    });
  }
}
