// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GStaffData> _$gStaffDataSerializer = new _$GStaffDataSerializer();
Serializer<GStaffData_Staff> _$gStaffDataStaffSerializer =
    new _$GStaffData_StaffSerializer();
Serializer<GStaffData_Staff_dateOfBirth>
    _$gStaffDataStaffDateOfBirthSerializer =
    new _$GStaffData_Staff_dateOfBirthSerializer();
Serializer<GStaffData_Staff_dateOfDeath>
    _$gStaffDataStaffDateOfDeathSerializer =
    new _$GStaffData_Staff_dateOfDeathSerializer();
Serializer<GStaffData_Staff_name> _$gStaffDataStaffNameSerializer =
    new _$GStaffData_Staff_nameSerializer();
Serializer<GStaffData_Staff_image> _$gStaffDataStaffImageSerializer =
    new _$GStaffData_Staff_imageSerializer();
Serializer<GStaffData_Staff_characterMedia>
    _$gStaffDataStaffCharacterMediaSerializer =
    new _$GStaffData_Staff_characterMediaSerializer();
Serializer<GStaffData_Staff_characterMedia_pageInfo>
    _$gStaffDataStaffCharacterMediaPageInfoSerializer =
    new _$GStaffData_Staff_characterMedia_pageInfoSerializer();
Serializer<GStaffData_Staff_characterMedia_edges>
    _$gStaffDataStaffCharacterMediaEdgesSerializer =
    new _$GStaffData_Staff_characterMedia_edgesSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_node>
    _$gStaffDataStaffCharacterMediaEdgesNodeSerializer =
    new _$GStaffData_Staff_characterMedia_edges_nodeSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_node_title>
    _$gStaffDataStaffCharacterMediaEdgesNodeTitleSerializer =
    new _$GStaffData_Staff_characterMedia_edges_node_titleSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_node_coverImage>
    _$gStaffDataStaffCharacterMediaEdgesNodeCoverImageSerializer =
    new _$GStaffData_Staff_characterMedia_edges_node_coverImageSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_node_startDate>
    _$gStaffDataStaffCharacterMediaEdgesNodeStartDateSerializer =
    new _$GStaffData_Staff_characterMedia_edges_node_startDateSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_characters>
    _$gStaffDataStaffCharacterMediaEdgesCharactersSerializer =
    new _$GStaffData_Staff_characterMedia_edges_charactersSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_characters_name>
    _$gStaffDataStaffCharacterMediaEdgesCharactersNameSerializer =
    new _$GStaffData_Staff_characterMedia_edges_characters_nameSerializer();
Serializer<GStaffData_Staff_characterMedia_edges_characters_image>
    _$gStaffDataStaffCharacterMediaEdgesCharactersImageSerializer =
    new _$GStaffData_Staff_characterMedia_edges_characters_imageSerializer();
Serializer<GStaffData_Staff_staffMedia> _$gStaffDataStaffStaffMediaSerializer =
    new _$GStaffData_Staff_staffMediaSerializer();
Serializer<GStaffData_Staff_staffMedia_pageInfo>
    _$gStaffDataStaffStaffMediaPageInfoSerializer =
    new _$GStaffData_Staff_staffMedia_pageInfoSerializer();
Serializer<GStaffData_Staff_staffMedia_edges>
    _$gStaffDataStaffStaffMediaEdgesSerializer =
    new _$GStaffData_Staff_staffMedia_edgesSerializer();
Serializer<GStaffData_Staff_staffMedia_edges_node>
    _$gStaffDataStaffStaffMediaEdgesNodeSerializer =
    new _$GStaffData_Staff_staffMedia_edges_nodeSerializer();
Serializer<GStaffData_Staff_staffMedia_edges_node_title>
    _$gStaffDataStaffStaffMediaEdgesNodeTitleSerializer =
    new _$GStaffData_Staff_staffMedia_edges_node_titleSerializer();
Serializer<GStaffData_Staff_staffMedia_edges_node_coverImage>
    _$gStaffDataStaffStaffMediaEdgesNodeCoverImageSerializer =
    new _$GStaffData_Staff_staffMedia_edges_node_coverImageSerializer();

class _$GStaffDataSerializer implements StructuredSerializer<GStaffData> {
  @override
  final Iterable<Type> types = const [GStaffData, _$GStaffData];
  @override
  final String wireName = 'GStaffData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStaffData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Staff;
    if (value != null) {
      result
        ..add('Staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff)));
    }
    return result;
  }

  @override
  GStaffData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Staff':
          result.Staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff))!
              as GStaffData_Staff);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_StaffSerializer
    implements StructuredSerializer<GStaffData_Staff> {
  @override
  final Iterable<Type> types = const [GStaffData_Staff, _$GStaffData_Staff];
  @override
  final String wireName = 'GStaffData_Staff';

  @override
  Iterable<Object?> serialize(Serializers serializers, GStaffData_Staff object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'isFavourite',
      serializers.serialize(object.isFavourite,
          specifiedType: const FullType(bool)),
      'isFavouriteBlocked',
      serializers.serialize(object.isFavouriteBlocked,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.language;
    if (value != null) {
      result
        ..add('language')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_dateOfBirth)));
    }
    value = object.dateOfDeath;
    if (value != null) {
      result
        ..add('dateOfDeath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_dateOfDeath)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.yearsActive;
    if (value != null) {
      result
        ..add('yearsActive')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(int)])));
    }
    value = object.homeTown;
    if (value != null) {
      result
        ..add('homeTown')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bloodType;
    if (value != null) {
      result
        ..add('bloodType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_image)));
    }
    value = object.characterMedia;
    if (value != null) {
      result
        ..add('characterMedia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_characterMedia)));
    }
    value = object.staffMedia;
    if (value != null) {
      result
        ..add('staffMedia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GStaffData_Staff_staffMedia)));
    }
    return result;
  }

  @override
  GStaffData_Staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_StaffBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff_dateOfBirth))!
              as GStaffData_Staff_dateOfBirth);
          break;
        case 'dateOfDeath':
          result.dateOfDeath.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff_dateOfDeath))!
              as GStaffData_Staff_dateOfDeath);
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'yearsActive':
          result.yearsActive.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(int)]))!
              as BuiltList<Object?>);
          break;
        case 'homeTown':
          result.homeTown = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bloodType':
          result.bloodType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'isFavouriteBlocked':
          result.isFavouriteBlocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff_name))!
              as GStaffData_Staff_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff_image))!
              as GStaffData_Staff_image);
          break;
        case 'characterMedia':
          result.characterMedia.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffData_Staff_characterMedia))!
              as GStaffData_Staff_characterMedia);
          break;
        case 'staffMedia':
          result.staffMedia.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GStaffData_Staff_staffMedia))!
              as GStaffData_Staff_staffMedia);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_dateOfBirthSerializer
    implements StructuredSerializer<GStaffData_Staff_dateOfBirth> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_dateOfBirth,
    _$GStaffData_Staff_dateOfBirth
  ];
  @override
  final String wireName = 'GStaffData_Staff_dateOfBirth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_dateOfBirth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GStaffData_Staff_dateOfBirth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_dateOfBirthBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_dateOfDeathSerializer
    implements StructuredSerializer<GStaffData_Staff_dateOfDeath> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_dateOfDeath,
    _$GStaffData_Staff_dateOfDeath
  ];
  @override
  final String wireName = 'GStaffData_Staff_dateOfDeath';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_dateOfDeath object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GStaffData_Staff_dateOfDeath deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_dateOfDeathBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_nameSerializer
    implements StructuredSerializer<GStaffData_Staff_name> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_name,
    _$GStaffData_Staff_name
  ];
  @override
  final String wireName = 'GStaffData_Staff_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_nameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_imageSerializer
    implements StructuredSerializer<GStaffData_Staff_image> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_image,
    _$GStaffData_Staff_image
  ];
  @override
  final String wireName = 'GStaffData_Staff_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_imageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMediaSerializer
    implements StructuredSerializer<GStaffData_Staff_characterMedia> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia,
    _$GStaffData_Staff_characterMedia
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_characterMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffData_Staff_characterMedia_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GStaffData_Staff_characterMedia_edges)
            ])));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_characterMediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffData_Staff_characterMedia_pageInfo))!
              as GStaffData_Staff_characterMedia_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GStaffData_Staff_characterMedia_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_pageInfoSerializer
    implements StructuredSerializer<GStaffData_Staff_characterMedia_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_pageInfo,
    _$GStaffData_Staff_characterMedia_pageInfo
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_characterMedia_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_characterMedia_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edgesSerializer
    implements StructuredSerializer<GStaffData_Staff_characterMedia_edges> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges,
    _$GStaffData_Staff_characterMedia_edges
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_characterMedia_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffData_Staff_characterMedia_edges_node)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GStaffData_Staff_characterMedia_edges_characters)
            ])));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_characterMedia_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_node))!
              as GStaffData_Staff_characterMedia_edges_node);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GStaffData_Staff_characterMedia_edges_characters)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_nodeSerializer
    implements
        StructuredSerializer<GStaffData_Staff_characterMedia_edges_node> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_node,
    _$GStaffData_Staff_characterMedia_edges_node
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_characterMedia_edges_node_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_characterMedia_edges_node_coverImage)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_characterMedia_edges_node_startDate)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_characterMedia_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i5.GMediaType)) as _i5.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GMediaFormat))
              as _i5.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_node_title))!
              as GStaffData_Staff_characterMedia_edges_node_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_node_coverImage))!
              as GStaffData_Staff_characterMedia_edges_node_coverImage);
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_node_startDate))!
              as GStaffData_Staff_characterMedia_edges_node_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_titleSerializer
    implements
        StructuredSerializer<GStaffData_Staff_characterMedia_edges_node_title> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_node_title,
    _$GStaffData_Staff_characterMedia_edges_node_title
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia_edges_node_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_node_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_node_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_coverImageSerializer
    implements
        StructuredSerializer<
            GStaffData_Staff_characterMedia_edges_node_coverImage> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_node_coverImage,
    _$GStaffData_Staff_characterMedia_edges_node_coverImage
  ];
  @override
  final String wireName =
      'GStaffData_Staff_characterMedia_edges_node_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_node_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_node_coverImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_startDateSerializer
    implements
        StructuredSerializer<
            GStaffData_Staff_characterMedia_edges_node_startDate> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_node_startDate,
    _$GStaffData_Staff_characterMedia_edges_node_startDate
  ];
  @override
  final String wireName =
      'GStaffData_Staff_characterMedia_edges_node_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_node_startDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_node_startDateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_charactersSerializer
    implements
        StructuredSerializer<GStaffData_Staff_characterMedia_edges_characters> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_characters,
    _$GStaffData_Staff_characterMedia_edges_characters
  ];
  @override
  final String wireName = 'GStaffData_Staff_characterMedia_edges_characters';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_characters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_characterMedia_edges_characters_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_characterMedia_edges_characters_image)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_charactersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_characters_name))!
              as GStaffData_Staff_characterMedia_edges_characters_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_characterMedia_edges_characters_image))!
              as GStaffData_Staff_characterMedia_edges_characters_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_characters_nameSerializer
    implements
        StructuredSerializer<
            GStaffData_Staff_characterMedia_edges_characters_name> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_characters_name,
    _$GStaffData_Staff_characterMedia_edges_characters_name
  ];
  @override
  final String wireName =
      'GStaffData_Staff_characterMedia_edges_characters_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_characters_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_characters_nameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_characterMedia_edges_characters_imageSerializer
    implements
        StructuredSerializer<
            GStaffData_Staff_characterMedia_edges_characters_image> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_characterMedia_edges_characters_image,
    _$GStaffData_Staff_characterMedia_edges_characters_image
  ];
  @override
  final String wireName =
      'GStaffData_Staff_characterMedia_edges_characters_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_characterMedia_edges_characters_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_characterMedia_edges_characters_imageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMediaSerializer
    implements StructuredSerializer<GStaffData_Staff_staffMedia> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia,
    _$GStaffData_Staff_staffMedia
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_staffMedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffData_Staff_staffMedia_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GStaffData_Staff_staffMedia_edges)
            ])));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_staffMediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffData_Staff_staffMedia_pageInfo))!
              as GStaffData_Staff_staffMedia_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GStaffData_Staff_staffMedia_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMedia_pageInfoSerializer
    implements StructuredSerializer<GStaffData_Staff_staffMedia_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia_pageInfo,
    _$GStaffData_Staff_staffMedia_pageInfo
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_staffMedia_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_staffMedia_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMedia_edgesSerializer
    implements StructuredSerializer<GStaffData_Staff_staffMedia_edges> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia_edges,
    _$GStaffData_Staff_staffMedia_edges
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_staffMedia_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffData_Staff_staffMedia_edges_node)));
    }
    value = object.staffRole;
    if (value != null) {
      result
        ..add('staffRole')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_staffMedia_edgesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GStaffData_Staff_staffMedia_edges_node))!
              as GStaffData_Staff_staffMedia_edges_node);
          break;
        case 'staffRole':
          result.staffRole = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMedia_edges_nodeSerializer
    implements StructuredSerializer<GStaffData_Staff_staffMedia_edges_node> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia_edges_node,
    _$GStaffData_Staff_staffMedia_edges_node
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GStaffData_Staff_staffMedia_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaType)));
    }
    value = object.isAdult;
    if (value != null) {
      result
        ..add('isAdult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.GMediaFormat)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GStaffData_Staff_staffMedia_edges_node_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GStaffData_Staff_staffMedia_edges_node_coverImage)));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_staffMedia_edges_nodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i5.GMediaType)) as _i5.GMediaType?;
          break;
        case 'isAdult':
          result.isAdult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.GMediaFormat))
              as _i5.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_staffMedia_edges_node_title))!
              as GStaffData_Staff_staffMedia_edges_node_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GStaffData_Staff_staffMedia_edges_node_coverImage))!
              as GStaffData_Staff_staffMedia_edges_node_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMedia_edges_node_titleSerializer
    implements
        StructuredSerializer<GStaffData_Staff_staffMedia_edges_node_title> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia_edges_node_title,
    _$GStaffData_Staff_staffMedia_edges_node_title
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia_edges_node_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_staffMedia_edges_node_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GStaffData_Staff_staffMedia_edges_node_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData_Staff_staffMedia_edges_node_coverImageSerializer
    implements
        StructuredSerializer<
            GStaffData_Staff_staffMedia_edges_node_coverImage> {
  @override
  final Iterable<Type> types = const [
    GStaffData_Staff_staffMedia_edges_node_coverImage,
    _$GStaffData_Staff_staffMedia_edges_node_coverImage
  ];
  @override
  final String wireName = 'GStaffData_Staff_staffMedia_edges_node_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GStaffData_Staff_staffMedia_edges_node_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GStaffData_Staff_staffMedia_edges_node_coverImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GStaffData extends GStaffData {
  @override
  final String G__typename;
  @override
  final GStaffData_Staff? Staff;

  factory _$GStaffData([void Function(GStaffDataBuilder)? updates]) =>
      (new GStaffDataBuilder()..update(updates))._build();

  _$GStaffData._({required this.G__typename, this.Staff}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData', 'G__typename');
  }

  @override
  GStaffData rebuild(void Function(GStaffDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffDataBuilder toBuilder() => new GStaffDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData &&
        G__typename == other.G__typename &&
        Staff == other.Staff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Staff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData')
          ..add('G__typename', G__typename)
          ..add('Staff', Staff))
        .toString();
  }
}

class GStaffDataBuilder implements Builder<GStaffData, GStaffDataBuilder> {
  _$GStaffData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffData_StaffBuilder? _Staff;
  GStaffData_StaffBuilder get Staff =>
      _$this._Staff ??= new GStaffData_StaffBuilder();
  set Staff(GStaffData_StaffBuilder? Staff) => _$this._Staff = Staff;

  GStaffDataBuilder() {
    GStaffData._initializeBuilder(this);
  }

  GStaffDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Staff = $v.Staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData;
  }

  @override
  void update(void Function(GStaffDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData build() => _build();

  _$GStaffData _build() {
    _$GStaffData _$result;
    try {
      _$result = _$v ??
          new _$GStaffData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffData', 'G__typename'),
              Staff: _Staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Staff';
        _Staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff extends GStaffData_Staff {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? description;
  @override
  final String? gender;
  @override
  final String? language;
  @override
  final GStaffData_Staff_dateOfBirth? dateOfBirth;
  @override
  final GStaffData_Staff_dateOfDeath? dateOfDeath;
  @override
  final int? age;
  @override
  final BuiltList<int?>? yearsActive;
  @override
  final String? homeTown;
  @override
  final String? bloodType;
  @override
  final bool isFavourite;
  @override
  final bool isFavouriteBlocked;
  @override
  final GStaffData_Staff_name? name;
  @override
  final GStaffData_Staff_image? image;
  @override
  final GStaffData_Staff_characterMedia? characterMedia;
  @override
  final GStaffData_Staff_staffMedia? staffMedia;

  factory _$GStaffData_Staff(
          [void Function(GStaffData_StaffBuilder)? updates]) =>
      (new GStaffData_StaffBuilder()..update(updates))._build();

  _$GStaffData_Staff._(
      {required this.G__typename,
      required this.id,
      this.description,
      this.gender,
      this.language,
      this.dateOfBirth,
      this.dateOfDeath,
      this.age,
      this.yearsActive,
      this.homeTown,
      this.bloodType,
      required this.isFavourite,
      required this.isFavouriteBlocked,
      this.name,
      this.image,
      this.characterMedia,
      this.staffMedia})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GStaffData_Staff', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isFavourite, r'GStaffData_Staff', 'isFavourite');
    BuiltValueNullFieldError.checkNotNull(
        isFavouriteBlocked, r'GStaffData_Staff', 'isFavouriteBlocked');
  }

  @override
  GStaffData_Staff rebuild(void Function(GStaffData_StaffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_StaffBuilder toBuilder() =>
      new GStaffData_StaffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff &&
        G__typename == other.G__typename &&
        id == other.id &&
        description == other.description &&
        gender == other.gender &&
        language == other.language &&
        dateOfBirth == other.dateOfBirth &&
        dateOfDeath == other.dateOfDeath &&
        age == other.age &&
        yearsActive == other.yearsActive &&
        homeTown == other.homeTown &&
        bloodType == other.bloodType &&
        isFavourite == other.isFavourite &&
        isFavouriteBlocked == other.isFavouriteBlocked &&
        name == other.name &&
        image == other.image &&
        characterMedia == other.characterMedia &&
        staffMedia == other.staffMedia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, dateOfDeath.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, yearsActive.hashCode);
    _$hash = $jc(_$hash, homeTown.hashCode);
    _$hash = $jc(_$hash, bloodType.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jc(_$hash, isFavouriteBlocked.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, characterMedia.hashCode);
    _$hash = $jc(_$hash, staffMedia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('description', description)
          ..add('gender', gender)
          ..add('language', language)
          ..add('dateOfBirth', dateOfBirth)
          ..add('dateOfDeath', dateOfDeath)
          ..add('age', age)
          ..add('yearsActive', yearsActive)
          ..add('homeTown', homeTown)
          ..add('bloodType', bloodType)
          ..add('isFavourite', isFavourite)
          ..add('isFavouriteBlocked', isFavouriteBlocked)
          ..add('name', name)
          ..add('image', image)
          ..add('characterMedia', characterMedia)
          ..add('staffMedia', staffMedia))
        .toString();
  }
}

class GStaffData_StaffBuilder
    implements Builder<GStaffData_Staff, GStaffData_StaffBuilder> {
  _$GStaffData_Staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  GStaffData_Staff_dateOfBirthBuilder? _dateOfBirth;
  GStaffData_Staff_dateOfBirthBuilder get dateOfBirth =>
      _$this._dateOfBirth ??= new GStaffData_Staff_dateOfBirthBuilder();
  set dateOfBirth(GStaffData_Staff_dateOfBirthBuilder? dateOfBirth) =>
      _$this._dateOfBirth = dateOfBirth;

  GStaffData_Staff_dateOfDeathBuilder? _dateOfDeath;
  GStaffData_Staff_dateOfDeathBuilder get dateOfDeath =>
      _$this._dateOfDeath ??= new GStaffData_Staff_dateOfDeathBuilder();
  set dateOfDeath(GStaffData_Staff_dateOfDeathBuilder? dateOfDeath) =>
      _$this._dateOfDeath = dateOfDeath;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  ListBuilder<int?>? _yearsActive;
  ListBuilder<int?> get yearsActive =>
      _$this._yearsActive ??= new ListBuilder<int?>();
  set yearsActive(ListBuilder<int?>? yearsActive) =>
      _$this._yearsActive = yearsActive;

  String? _homeTown;
  String? get homeTown => _$this._homeTown;
  set homeTown(String? homeTown) => _$this._homeTown = homeTown;

  String? _bloodType;
  String? get bloodType => _$this._bloodType;
  set bloodType(String? bloodType) => _$this._bloodType = bloodType;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  bool? _isFavouriteBlocked;
  bool? get isFavouriteBlocked => _$this._isFavouriteBlocked;
  set isFavouriteBlocked(bool? isFavouriteBlocked) =>
      _$this._isFavouriteBlocked = isFavouriteBlocked;

  GStaffData_Staff_nameBuilder? _name;
  GStaffData_Staff_nameBuilder get name =>
      _$this._name ??= new GStaffData_Staff_nameBuilder();
  set name(GStaffData_Staff_nameBuilder? name) => _$this._name = name;

  GStaffData_Staff_imageBuilder? _image;
  GStaffData_Staff_imageBuilder get image =>
      _$this._image ??= new GStaffData_Staff_imageBuilder();
  set image(GStaffData_Staff_imageBuilder? image) => _$this._image = image;

  GStaffData_Staff_characterMediaBuilder? _characterMedia;
  GStaffData_Staff_characterMediaBuilder get characterMedia =>
      _$this._characterMedia ??= new GStaffData_Staff_characterMediaBuilder();
  set characterMedia(GStaffData_Staff_characterMediaBuilder? characterMedia) =>
      _$this._characterMedia = characterMedia;

  GStaffData_Staff_staffMediaBuilder? _staffMedia;
  GStaffData_Staff_staffMediaBuilder get staffMedia =>
      _$this._staffMedia ??= new GStaffData_Staff_staffMediaBuilder();
  set staffMedia(GStaffData_Staff_staffMediaBuilder? staffMedia) =>
      _$this._staffMedia = staffMedia;

  GStaffData_StaffBuilder() {
    GStaffData_Staff._initializeBuilder(this);
  }

  GStaffData_StaffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _description = $v.description;
      _gender = $v.gender;
      _language = $v.language;
      _dateOfBirth = $v.dateOfBirth?.toBuilder();
      _dateOfDeath = $v.dateOfDeath?.toBuilder();
      _age = $v.age;
      _yearsActive = $v.yearsActive?.toBuilder();
      _homeTown = $v.homeTown;
      _bloodType = $v.bloodType;
      _isFavourite = $v.isFavourite;
      _isFavouriteBlocked = $v.isFavouriteBlocked;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _characterMedia = $v.characterMedia?.toBuilder();
      _staffMedia = $v.staffMedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff;
  }

  @override
  void update(void Function(GStaffData_StaffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff build() => _build();

  _$GStaffData_Staff _build() {
    _$GStaffData_Staff _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffData_Staff', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffData_Staff', 'id'),
              description: description,
              gender: gender,
              language: language,
              dateOfBirth: _dateOfBirth?.build(),
              dateOfDeath: _dateOfDeath?.build(),
              age: age,
              yearsActive: _yearsActive?.build(),
              homeTown: homeTown,
              bloodType: bloodType,
              isFavourite: BuiltValueNullFieldError.checkNotNull(
                  isFavourite, r'GStaffData_Staff', 'isFavourite'),
              isFavouriteBlocked: BuiltValueNullFieldError.checkNotNull(
                  isFavouriteBlocked,
                  r'GStaffData_Staff',
                  'isFavouriteBlocked'),
              name: _name?.build(),
              image: _image?.build(),
              characterMedia: _characterMedia?.build(),
              staffMedia: _staffMedia?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dateOfBirth';
        _dateOfBirth?.build();
        _$failedField = 'dateOfDeath';
        _dateOfDeath?.build();

        _$failedField = 'yearsActive';
        _yearsActive?.build();

        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
        _$failedField = 'characterMedia';
        _characterMedia?.build();
        _$failedField = 'staffMedia';
        _staffMedia?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_dateOfBirth extends GStaffData_Staff_dateOfBirth {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GStaffData_Staff_dateOfBirth(
          [void Function(GStaffData_Staff_dateOfBirthBuilder)? updates]) =>
      (new GStaffData_Staff_dateOfBirthBuilder()..update(updates))._build();

  _$GStaffData_Staff_dateOfBirth._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_dateOfBirth', 'G__typename');
  }

  @override
  GStaffData_Staff_dateOfBirth rebuild(
          void Function(GStaffData_Staff_dateOfBirthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_dateOfBirthBuilder toBuilder() =>
      new GStaffData_Staff_dateOfBirthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_dateOfBirth &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_dateOfBirth')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GStaffData_Staff_dateOfBirthBuilder
    implements
        Builder<GStaffData_Staff_dateOfBirth,
            GStaffData_Staff_dateOfBirthBuilder> {
  _$GStaffData_Staff_dateOfBirth? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GStaffData_Staff_dateOfBirthBuilder() {
    GStaffData_Staff_dateOfBirth._initializeBuilder(this);
  }

  GStaffData_Staff_dateOfBirthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_dateOfBirth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_dateOfBirth;
  }

  @override
  void update(void Function(GStaffData_Staff_dateOfBirthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_dateOfBirth build() => _build();

  _$GStaffData_Staff_dateOfBirth _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_dateOfBirth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffData_Staff_dateOfBirth', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_dateOfDeath extends GStaffData_Staff_dateOfDeath {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GStaffData_Staff_dateOfDeath(
          [void Function(GStaffData_Staff_dateOfDeathBuilder)? updates]) =>
      (new GStaffData_Staff_dateOfDeathBuilder()..update(updates))._build();

  _$GStaffData_Staff_dateOfDeath._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_dateOfDeath', 'G__typename');
  }

  @override
  GStaffData_Staff_dateOfDeath rebuild(
          void Function(GStaffData_Staff_dateOfDeathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_dateOfDeathBuilder toBuilder() =>
      new GStaffData_Staff_dateOfDeathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_dateOfDeath &&
        G__typename == other.G__typename &&
        day == other.day &&
        month == other.month &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_dateOfDeath')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GStaffData_Staff_dateOfDeathBuilder
    implements
        Builder<GStaffData_Staff_dateOfDeath,
            GStaffData_Staff_dateOfDeathBuilder> {
  _$GStaffData_Staff_dateOfDeath? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GStaffData_Staff_dateOfDeathBuilder() {
    GStaffData_Staff_dateOfDeath._initializeBuilder(this);
  }

  GStaffData_Staff_dateOfDeathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _day = $v.day;
      _month = $v.month;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_dateOfDeath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_dateOfDeath;
  }

  @override
  void update(void Function(GStaffData_Staff_dateOfDeathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_dateOfDeath build() => _build();

  _$GStaffData_Staff_dateOfDeath _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_dateOfDeath._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffData_Staff_dateOfDeath', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_name extends GStaffData_Staff_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStaffData_Staff_name(
          [void Function(GStaffData_Staff_nameBuilder)? updates]) =>
      (new GStaffData_Staff_nameBuilder()..update(updates))._build();

  _$GStaffData_Staff_name._({required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_name', 'G__typename');
  }

  @override
  GStaffData_Staff_name rebuild(
          void Function(GStaffData_Staff_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_nameBuilder toBuilder() =>
      new GStaffData_Staff_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_name &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffData_Staff_nameBuilder
    implements Builder<GStaffData_Staff_name, GStaffData_Staff_nameBuilder> {
  _$GStaffData_Staff_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStaffData_Staff_nameBuilder() {
    GStaffData_Staff_name._initializeBuilder(this);
  }

  GStaffData_Staff_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_name;
  }

  @override
  void update(void Function(GStaffData_Staff_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_name build() => _build();

  _$GStaffData_Staff_name _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffData_Staff_name', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_image extends GStaffData_Staff_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GStaffData_Staff_image(
          [void Function(GStaffData_Staff_imageBuilder)? updates]) =>
      (new GStaffData_Staff_imageBuilder()..update(updates))._build();

  _$GStaffData_Staff_image._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_image', 'G__typename');
  }

  @override
  GStaffData_Staff_image rebuild(
          void Function(GStaffData_Staff_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_imageBuilder toBuilder() =>
      new GStaffData_Staff_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_image &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GStaffData_Staff_imageBuilder
    implements Builder<GStaffData_Staff_image, GStaffData_Staff_imageBuilder> {
  _$GStaffData_Staff_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffData_Staff_imageBuilder() {
    GStaffData_Staff_image._initializeBuilder(this);
  }

  GStaffData_Staff_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_image;
  }

  @override
  void update(void Function(GStaffData_Staff_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_image build() => _build();

  _$GStaffData_Staff_image _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GStaffData_Staff_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia
    extends GStaffData_Staff_characterMedia {
  @override
  final String G__typename;
  @override
  final GStaffData_Staff_characterMedia_pageInfo? pageInfo;
  @override
  final BuiltList<GStaffData_Staff_characterMedia_edges?>? edges;

  factory _$GStaffData_Staff_characterMedia(
          [void Function(GStaffData_Staff_characterMediaBuilder)? updates]) =>
      (new GStaffData_Staff_characterMediaBuilder()..update(updates))._build();

  _$GStaffData_Staff_characterMedia._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_characterMedia', 'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia rebuild(
          void Function(GStaffData_Staff_characterMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMediaBuilder toBuilder() =>
      new GStaffData_Staff_characterMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_characterMedia')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GStaffData_Staff_characterMediaBuilder
    implements
        Builder<GStaffData_Staff_characterMedia,
            GStaffData_Staff_characterMediaBuilder> {
  _$GStaffData_Staff_characterMedia? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffData_Staff_characterMedia_pageInfoBuilder? _pageInfo;
  GStaffData_Staff_characterMedia_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GStaffData_Staff_characterMedia_pageInfoBuilder();
  set pageInfo(GStaffData_Staff_characterMedia_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GStaffData_Staff_characterMedia_edges?>? _edges;
  ListBuilder<GStaffData_Staff_characterMedia_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GStaffData_Staff_characterMedia_edges?>();
  set edges(ListBuilder<GStaffData_Staff_characterMedia_edges?>? edges) =>
      _$this._edges = edges;

  GStaffData_Staff_characterMediaBuilder() {
    GStaffData_Staff_characterMedia._initializeBuilder(this);
  }

  GStaffData_Staff_characterMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia;
  }

  @override
  void update(void Function(GStaffData_Staff_characterMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia build() => _build();

  _$GStaffData_Staff_characterMedia _build() {
    _$GStaffData_Staff_characterMedia _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_characterMedia._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffData_Staff_characterMedia', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_characterMedia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_pageInfo
    extends GStaffData_Staff_characterMedia_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GStaffData_Staff_characterMedia_pageInfo(
          [void Function(GStaffData_Staff_characterMedia_pageInfoBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_pageInfoBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_characterMedia_pageInfo', 'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_pageInfo rebuild(
          void Function(GStaffData_Staff_characterMedia_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_pageInfoBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_pageInfoBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_pageInfo,
            GStaffData_Staff_characterMedia_pageInfoBuilder> {
  _$GStaffData_Staff_characterMedia_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GStaffData_Staff_characterMedia_pageInfoBuilder() {
    GStaffData_Staff_characterMedia_pageInfo._initializeBuilder(this);
  }

  GStaffData_Staff_characterMedia_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_pageInfo;
  }

  @override
  void update(
      void Function(GStaffData_Staff_characterMedia_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_pageInfo build() => _build();

  _$GStaffData_Staff_characterMedia_pageInfo _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffData_Staff_characterMedia_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges
    extends GStaffData_Staff_characterMedia_edges {
  @override
  final String G__typename;
  @override
  final GStaffData_Staff_characterMedia_edges_node? node;
  @override
  final BuiltList<GStaffData_Staff_characterMedia_edges_characters?>?
      characters;

  factory _$GStaffData_Staff_characterMedia_edges(
          [void Function(GStaffData_Staff_characterMedia_edgesBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edgesBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges._(
      {required this.G__typename, this.node, this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_characterMedia_edges', 'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges rebuild(
          void Function(GStaffData_Staff_characterMedia_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edgesBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges &&
        G__typename == other.G__typename &&
        node == other.node &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges')
          ..add('G__typename', G__typename)
          ..add('node', node)
          ..add('characters', characters))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edgesBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges,
            GStaffData_Staff_characterMedia_edgesBuilder> {
  _$GStaffData_Staff_characterMedia_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffData_Staff_characterMedia_edges_nodeBuilder? _node;
  GStaffData_Staff_characterMedia_edges_nodeBuilder get node =>
      _$this._node ??= new GStaffData_Staff_characterMedia_edges_nodeBuilder();
  set node(GStaffData_Staff_characterMedia_edges_nodeBuilder? node) =>
      _$this._node = node;

  ListBuilder<GStaffData_Staff_characterMedia_edges_characters?>? _characters;
  ListBuilder<GStaffData_Staff_characterMedia_edges_characters?>
      get characters => _$this._characters ??=
          new ListBuilder<GStaffData_Staff_characterMedia_edges_characters?>();
  set characters(
          ListBuilder<GStaffData_Staff_characterMedia_edges_characters?>?
              characters) =>
      _$this._characters = characters;

  GStaffData_Staff_characterMedia_edgesBuilder() {
    GStaffData_Staff_characterMedia_edges._initializeBuilder(this);
  }

  GStaffData_Staff_characterMedia_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges;
  }

  @override
  void update(
      void Function(GStaffData_Staff_characterMedia_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges build() => _build();

  _$GStaffData_Staff_characterMedia_edges _build() {
    _$GStaffData_Staff_characterMedia_edges _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_characterMedia_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffData_Staff_characterMedia_edges', 'G__typename'),
              node: _node?.build(),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_characterMedia_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_node
    extends GStaffData_Staff_characterMedia_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i5.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i5.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GStaffData_Staff_characterMedia_edges_node_title? title;
  @override
  final GStaffData_Staff_characterMedia_edges_node_coverImage? coverImage;
  @override
  final GStaffData_Staff_characterMedia_edges_node_startDate? startDate;

  factory _$GStaffData_Staff_characterMedia_edges_node(
          [void Function(GStaffData_Staff_characterMedia_edges_nodeBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_nodeBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_node._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage,
      this.startDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_characterMedia_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStaffData_Staff_characterMedia_edges_node', 'id');
  }

  @override
  GStaffData_Staff_characterMedia_edges_node rebuild(
          void Function(GStaffData_Staff_characterMedia_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_nodeBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage &&
        startDate == other.startDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('startDate', startDate))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_nodeBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_node,
            GStaffData_Staff_characterMedia_edges_nodeBuilder> {
  _$GStaffData_Staff_characterMedia_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i5.GMediaType? _type;
  _i5.GMediaType? get type => _$this._type;
  set type(_i5.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i5.GMediaFormat? _format;
  _i5.GMediaFormat? get format => _$this._format;
  set format(_i5.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GStaffData_Staff_characterMedia_edges_node_titleBuilder? _title;
  GStaffData_Staff_characterMedia_edges_node_titleBuilder get title =>
      _$this._title ??=
          new GStaffData_Staff_characterMedia_edges_node_titleBuilder();
  set title(GStaffData_Staff_characterMedia_edges_node_titleBuilder? title) =>
      _$this._title = title;

  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder? _coverImage;
  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GStaffData_Staff_characterMedia_edges_node_coverImageBuilder();
  set coverImage(
          GStaffData_Staff_characterMedia_edges_node_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GStaffData_Staff_characterMedia_edges_node_startDateBuilder? _startDate;
  GStaffData_Staff_characterMedia_edges_node_startDateBuilder get startDate =>
      _$this._startDate ??=
          new GStaffData_Staff_characterMedia_edges_node_startDateBuilder();
  set startDate(
          GStaffData_Staff_characterMedia_edges_node_startDateBuilder?
              startDate) =>
      _$this._startDate = startDate;

  GStaffData_Staff_characterMedia_edges_nodeBuilder() {
    GStaffData_Staff_characterMedia_edges_node._initializeBuilder(this);
  }

  GStaffData_Staff_characterMedia_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _startDate = $v.startDate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_node;
  }

  @override
  void update(
      void Function(GStaffData_Staff_characterMedia_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_node build() => _build();

  _$GStaffData_Staff_characterMedia_edges_node _build() {
    _$GStaffData_Staff_characterMedia_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_characterMedia_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffData_Staff_characterMedia_edges_node', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffData_Staff_characterMedia_edges_node', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              startDate: _startDate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
        _$failedField = 'startDate';
        _startDate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_characterMedia_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_title
    extends GStaffData_Staff_characterMedia_edges_node_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStaffData_Staff_characterMedia_edges_node_title(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_node_titleBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_node_titleBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_node_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_characterMedia_edges_node_title', 'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_title rebuild(
          void Function(GStaffData_Staff_characterMedia_edges_node_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_node_titleBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_node_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_node_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_node_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_node_titleBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_node_title,
            GStaffData_Staff_characterMedia_edges_node_titleBuilder> {
  _$GStaffData_Staff_characterMedia_edges_node_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStaffData_Staff_characterMedia_edges_node_titleBuilder() {
    GStaffData_Staff_characterMedia_edges_node_title._initializeBuilder(this);
  }

  GStaffData_Staff_characterMedia_edges_node_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_node_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_node_title;
  }

  @override
  void update(
      void Function(GStaffData_Staff_characterMedia_edges_node_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_title build() => _build();

  _$GStaffData_Staff_characterMedia_edges_node_title _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_edges_node_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_characterMedia_edges_node_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_coverImage
    extends GStaffData_Staff_characterMedia_edges_node_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GStaffData_Staff_characterMedia_edges_node_coverImage(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_node_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_node_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GStaffData_Staff_characterMedia_edges_node_coverImage',
        'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_coverImage rebuild(
          void Function(
                  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_node_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_node_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_node_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_node_coverImageBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_node_coverImage,
            GStaffData_Staff_characterMedia_edges_node_coverImageBuilder> {
  _$GStaffData_Staff_characterMedia_edges_node_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder() {
    GStaffData_Staff_characterMedia_edges_node_coverImage._initializeBuilder(
        this);
  }

  GStaffData_Staff_characterMedia_edges_node_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_node_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_node_coverImage;
  }

  @override
  void update(
      void Function(
              GStaffData_Staff_characterMedia_edges_node_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_coverImage build() => _build();

  _$GStaffData_Staff_characterMedia_edges_node_coverImage _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_edges_node_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_characterMedia_edges_node_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_node_startDate
    extends GStaffData_Staff_characterMedia_edges_node_startDate {
  @override
  final String G__typename;
  @override
  final int? year;

  factory _$GStaffData_Staff_characterMedia_edges_node_startDate(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_node_startDateBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_node_startDateBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_node_startDate._(
      {required this.G__typename, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_characterMedia_edges_node_startDate', 'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_startDate rebuild(
          void Function(
                  GStaffData_Staff_characterMedia_edges_node_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_node_startDateBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_node_startDateBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_node_startDate &&
        G__typename == other.G__typename &&
        year == other.year;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_node_startDate')
          ..add('G__typename', G__typename)
          ..add('year', year))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_node_startDateBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_node_startDate,
            GStaffData_Staff_characterMedia_edges_node_startDateBuilder> {
  _$GStaffData_Staff_characterMedia_edges_node_startDate? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  GStaffData_Staff_characterMedia_edges_node_startDateBuilder() {
    GStaffData_Staff_characterMedia_edges_node_startDate._initializeBuilder(
        this);
  }

  GStaffData_Staff_characterMedia_edges_node_startDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _year = $v.year;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_node_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_node_startDate;
  }

  @override
  void update(
      void Function(
              GStaffData_Staff_characterMedia_edges_node_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_node_startDate build() => _build();

  _$GStaffData_Staff_characterMedia_edges_node_startDate _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_edges_node_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_characterMedia_edges_node_startDate',
                'G__typename'),
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_characters
    extends GStaffData_Staff_characterMedia_edges_characters {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GStaffData_Staff_characterMedia_edges_characters_name? name;
  @override
  final GStaffData_Staff_characterMedia_edges_characters_image? image;

  factory _$GStaffData_Staff_characterMedia_edges_characters(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_charactersBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_charactersBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_characters._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_characterMedia_edges_characters', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStaffData_Staff_characterMedia_edges_characters', 'id');
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters rebuild(
          void Function(GStaffData_Staff_characterMedia_edges_charactersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_charactersBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_charactersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_characters &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_characters')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_charactersBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_characters,
            GStaffData_Staff_characterMedia_edges_charactersBuilder> {
  _$GStaffData_Staff_characterMedia_edges_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GStaffData_Staff_characterMedia_edges_characters_nameBuilder? _name;
  GStaffData_Staff_characterMedia_edges_characters_nameBuilder get name =>
      _$this._name ??=
          new GStaffData_Staff_characterMedia_edges_characters_nameBuilder();
  set name(
          GStaffData_Staff_characterMedia_edges_characters_nameBuilder? name) =>
      _$this._name = name;

  GStaffData_Staff_characterMedia_edges_characters_imageBuilder? _image;
  GStaffData_Staff_characterMedia_edges_characters_imageBuilder get image =>
      _$this._image ??=
          new GStaffData_Staff_characterMedia_edges_characters_imageBuilder();
  set image(
          GStaffData_Staff_characterMedia_edges_characters_imageBuilder?
              image) =>
      _$this._image = image;

  GStaffData_Staff_characterMedia_edges_charactersBuilder() {
    GStaffData_Staff_characterMedia_edges_characters._initializeBuilder(this);
  }

  GStaffData_Staff_characterMedia_edges_charactersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_characters;
  }

  @override
  void update(
      void Function(GStaffData_Staff_characterMedia_edges_charactersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters build() => _build();

  _$GStaffData_Staff_characterMedia_edges_characters _build() {
    _$GStaffData_Staff_characterMedia_edges_characters _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_characterMedia_edges_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GStaffData_Staff_characterMedia_edges_characters',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GStaffData_Staff_characterMedia_edges_characters', 'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_characterMedia_edges_characters',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_characters_name
    extends GStaffData_Staff_characterMedia_edges_characters_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStaffData_Staff_characterMedia_edges_characters_name(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_characters_nameBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_characters_nameBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_characters_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GStaffData_Staff_characterMedia_edges_characters_name',
        'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_name rebuild(
          void Function(
                  GStaffData_Staff_characterMedia_edges_characters_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_characters_nameBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_characters_nameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_characters_name &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_characters_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_characters_nameBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_characters_name,
            GStaffData_Staff_characterMedia_edges_characters_nameBuilder> {
  _$GStaffData_Staff_characterMedia_edges_characters_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStaffData_Staff_characterMedia_edges_characters_nameBuilder() {
    GStaffData_Staff_characterMedia_edges_characters_name._initializeBuilder(
        this);
  }

  GStaffData_Staff_characterMedia_edges_characters_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_characters_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_characters_name;
  }

  @override
  void update(
      void Function(
              GStaffData_Staff_characterMedia_edges_characters_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_name build() => _build();

  _$GStaffData_Staff_characterMedia_edges_characters_name _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_edges_characters_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_characterMedia_edges_characters_name',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_characterMedia_edges_characters_image
    extends GStaffData_Staff_characterMedia_edges_characters_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GStaffData_Staff_characterMedia_edges_characters_image(
          [void Function(
                  GStaffData_Staff_characterMedia_edges_characters_imageBuilder)?
              updates]) =>
      (new GStaffData_Staff_characterMedia_edges_characters_imageBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_characterMedia_edges_characters_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GStaffData_Staff_characterMedia_edges_characters_image',
        'G__typename');
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_image rebuild(
          void Function(
                  GStaffData_Staff_characterMedia_edges_characters_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_characterMedia_edges_characters_imageBuilder toBuilder() =>
      new GStaffData_Staff_characterMedia_edges_characters_imageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_characterMedia_edges_characters_image &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_characterMedia_edges_characters_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GStaffData_Staff_characterMedia_edges_characters_imageBuilder
    implements
        Builder<GStaffData_Staff_characterMedia_edges_characters_image,
            GStaffData_Staff_characterMedia_edges_characters_imageBuilder> {
  _$GStaffData_Staff_characterMedia_edges_characters_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GStaffData_Staff_characterMedia_edges_characters_imageBuilder() {
    GStaffData_Staff_characterMedia_edges_characters_image._initializeBuilder(
        this);
  }

  GStaffData_Staff_characterMedia_edges_characters_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_characterMedia_edges_characters_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_characterMedia_edges_characters_image;
  }

  @override
  void update(
      void Function(
              GStaffData_Staff_characterMedia_edges_characters_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_characterMedia_edges_characters_image build() => _build();

  _$GStaffData_Staff_characterMedia_edges_characters_image _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_characterMedia_edges_characters_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_characterMedia_edges_characters_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia extends GStaffData_Staff_staffMedia {
  @override
  final String G__typename;
  @override
  final GStaffData_Staff_staffMedia_pageInfo? pageInfo;
  @override
  final BuiltList<GStaffData_Staff_staffMedia_edges?>? edges;

  factory _$GStaffData_Staff_staffMedia(
          [void Function(GStaffData_Staff_staffMediaBuilder)? updates]) =>
      (new GStaffData_Staff_staffMediaBuilder()..update(updates))._build();

  _$GStaffData_Staff_staffMedia._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_staffMedia', 'G__typename');
  }

  @override
  GStaffData_Staff_staffMedia rebuild(
          void Function(GStaffData_Staff_staffMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMediaBuilder toBuilder() =>
      new GStaffData_Staff_staffMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_staffMedia')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GStaffData_Staff_staffMediaBuilder
    implements
        Builder<GStaffData_Staff_staffMedia,
            GStaffData_Staff_staffMediaBuilder> {
  _$GStaffData_Staff_staffMedia? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffData_Staff_staffMedia_pageInfoBuilder? _pageInfo;
  GStaffData_Staff_staffMedia_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GStaffData_Staff_staffMedia_pageInfoBuilder();
  set pageInfo(GStaffData_Staff_staffMedia_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GStaffData_Staff_staffMedia_edges?>? _edges;
  ListBuilder<GStaffData_Staff_staffMedia_edges?> get edges =>
      _$this._edges ??= new ListBuilder<GStaffData_Staff_staffMedia_edges?>();
  set edges(ListBuilder<GStaffData_Staff_staffMedia_edges?>? edges) =>
      _$this._edges = edges;

  GStaffData_Staff_staffMediaBuilder() {
    GStaffData_Staff_staffMedia._initializeBuilder(this);
  }

  GStaffData_Staff_staffMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia;
  }

  @override
  void update(void Function(GStaffData_Staff_staffMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia build() => _build();

  _$GStaffData_Staff_staffMedia _build() {
    _$GStaffData_Staff_staffMedia _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_staffMedia._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GStaffData_Staff_staffMedia', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_staffMedia', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia_pageInfo
    extends GStaffData_Staff_staffMedia_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GStaffData_Staff_staffMedia_pageInfo(
          [void Function(GStaffData_Staff_staffMedia_pageInfoBuilder)?
              updates]) =>
      (new GStaffData_Staff_staffMedia_pageInfoBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_staffMedia_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_staffMedia_pageInfo', 'G__typename');
  }

  @override
  GStaffData_Staff_staffMedia_pageInfo rebuild(
          void Function(GStaffData_Staff_staffMedia_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMedia_pageInfoBuilder toBuilder() =>
      new GStaffData_Staff_staffMedia_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_staffMedia_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GStaffData_Staff_staffMedia_pageInfoBuilder
    implements
        Builder<GStaffData_Staff_staffMedia_pageInfo,
            GStaffData_Staff_staffMedia_pageInfoBuilder> {
  _$GStaffData_Staff_staffMedia_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GStaffData_Staff_staffMedia_pageInfoBuilder() {
    GStaffData_Staff_staffMedia_pageInfo._initializeBuilder(this);
  }

  GStaffData_Staff_staffMedia_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia_pageInfo;
  }

  @override
  void update(
      void Function(GStaffData_Staff_staffMedia_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia_pageInfo build() => _build();

  _$GStaffData_Staff_staffMedia_pageInfo _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_staffMedia_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffData_Staff_staffMedia_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia_edges
    extends GStaffData_Staff_staffMedia_edges {
  @override
  final String G__typename;
  @override
  final GStaffData_Staff_staffMedia_edges_node? node;
  @override
  final String? staffRole;

  factory _$GStaffData_Staff_staffMedia_edges(
          [void Function(GStaffData_Staff_staffMedia_edgesBuilder)? updates]) =>
      (new GStaffData_Staff_staffMedia_edgesBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_staffMedia_edges._(
      {required this.G__typename, this.node, this.staffRole})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_staffMedia_edges', 'G__typename');
  }

  @override
  GStaffData_Staff_staffMedia_edges rebuild(
          void Function(GStaffData_Staff_staffMedia_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMedia_edgesBuilder toBuilder() =>
      new GStaffData_Staff_staffMedia_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia_edges &&
        G__typename == other.G__typename &&
        node == other.node &&
        staffRole == other.staffRole;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, staffRole.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GStaffData_Staff_staffMedia_edges')
          ..add('G__typename', G__typename)
          ..add('node', node)
          ..add('staffRole', staffRole))
        .toString();
  }
}

class GStaffData_Staff_staffMedia_edgesBuilder
    implements
        Builder<GStaffData_Staff_staffMedia_edges,
            GStaffData_Staff_staffMedia_edgesBuilder> {
  _$GStaffData_Staff_staffMedia_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GStaffData_Staff_staffMedia_edges_nodeBuilder? _node;
  GStaffData_Staff_staffMedia_edges_nodeBuilder get node =>
      _$this._node ??= new GStaffData_Staff_staffMedia_edges_nodeBuilder();
  set node(GStaffData_Staff_staffMedia_edges_nodeBuilder? node) =>
      _$this._node = node;

  String? _staffRole;
  String? get staffRole => _$this._staffRole;
  set staffRole(String? staffRole) => _$this._staffRole = staffRole;

  GStaffData_Staff_staffMedia_edgesBuilder() {
    GStaffData_Staff_staffMedia_edges._initializeBuilder(this);
  }

  GStaffData_Staff_staffMedia_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _staffRole = $v.staffRole;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia_edges;
  }

  @override
  void update(
      void Function(GStaffData_Staff_staffMedia_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia_edges build() => _build();

  _$GStaffData_Staff_staffMedia_edges _build() {
    _$GStaffData_Staff_staffMedia_edges _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_staffMedia_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffData_Staff_staffMedia_edges', 'G__typename'),
              node: _node?.build(),
              staffRole: staffRole);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_staffMedia_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia_edges_node
    extends GStaffData_Staff_staffMedia_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i5.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i5.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GStaffData_Staff_staffMedia_edges_node_title? title;
  @override
  final GStaffData_Staff_staffMedia_edges_node_coverImage? coverImage;

  factory _$GStaffData_Staff_staffMedia_edges_node(
          [void Function(GStaffData_Staff_staffMedia_edges_nodeBuilder)?
              updates]) =>
      (new GStaffData_Staff_staffMedia_edges_nodeBuilder()..update(updates))
          ._build();

  _$GStaffData_Staff_staffMedia_edges_node._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GStaffData_Staff_staffMedia_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GStaffData_Staff_staffMedia_edges_node', 'id');
  }

  @override
  GStaffData_Staff_staffMedia_edges_node rebuild(
          void Function(GStaffData_Staff_staffMedia_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMedia_edges_nodeBuilder toBuilder() =>
      new GStaffData_Staff_staffMedia_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, isAdult.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_staffMedia_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage))
        .toString();
  }
}

class GStaffData_Staff_staffMedia_edges_nodeBuilder
    implements
        Builder<GStaffData_Staff_staffMedia_edges_node,
            GStaffData_Staff_staffMedia_edges_nodeBuilder> {
  _$GStaffData_Staff_staffMedia_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i5.GMediaType? _type;
  _i5.GMediaType? get type => _$this._type;
  set type(_i5.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i5.GMediaFormat? _format;
  _i5.GMediaFormat? get format => _$this._format;
  set format(_i5.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GStaffData_Staff_staffMedia_edges_node_titleBuilder? _title;
  GStaffData_Staff_staffMedia_edges_node_titleBuilder get title =>
      _$this._title ??=
          new GStaffData_Staff_staffMedia_edges_node_titleBuilder();
  set title(GStaffData_Staff_staffMedia_edges_node_titleBuilder? title) =>
      _$this._title = title;

  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder? _coverImage;
  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GStaffData_Staff_staffMedia_edges_node_coverImageBuilder();
  set coverImage(
          GStaffData_Staff_staffMedia_edges_node_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GStaffData_Staff_staffMedia_edges_nodeBuilder() {
    GStaffData_Staff_staffMedia_edges_node._initializeBuilder(this);
  }

  GStaffData_Staff_staffMedia_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _isAdult = $v.isAdult;
      _genres = $v.genres?.toBuilder();
      _format = $v.format;
      _description = $v.description;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia_edges_node;
  }

  @override
  void update(
      void Function(GStaffData_Staff_staffMedia_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia_edges_node build() => _build();

  _$GStaffData_Staff_staffMedia_edges_node _build() {
    _$GStaffData_Staff_staffMedia_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GStaffData_Staff_staffMedia_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GStaffData_Staff_staffMedia_edges_node', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GStaffData_Staff_staffMedia_edges_node', 'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GStaffData_Staff_staffMedia_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia_edges_node_title
    extends GStaffData_Staff_staffMedia_edges_node_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GStaffData_Staff_staffMedia_edges_node_title(
          [void Function(GStaffData_Staff_staffMedia_edges_node_titleBuilder)?
              updates]) =>
      (new GStaffData_Staff_staffMedia_edges_node_titleBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_staffMedia_edges_node_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_staffMedia_edges_node_title', 'G__typename');
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_title rebuild(
          void Function(GStaffData_Staff_staffMedia_edges_node_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMedia_edges_node_titleBuilder toBuilder() =>
      new GStaffData_Staff_staffMedia_edges_node_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia_edges_node_title &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_staffMedia_edges_node_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GStaffData_Staff_staffMedia_edges_node_titleBuilder
    implements
        Builder<GStaffData_Staff_staffMedia_edges_node_title,
            GStaffData_Staff_staffMedia_edges_node_titleBuilder> {
  _$GStaffData_Staff_staffMedia_edges_node_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GStaffData_Staff_staffMedia_edges_node_titleBuilder() {
    GStaffData_Staff_staffMedia_edges_node_title._initializeBuilder(this);
  }

  GStaffData_Staff_staffMedia_edges_node_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia_edges_node_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia_edges_node_title;
  }

  @override
  void update(
      void Function(GStaffData_Staff_staffMedia_edges_node_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_title build() => _build();

  _$GStaffData_Staff_staffMedia_edges_node_title _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_staffMedia_edges_node_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GStaffData_Staff_staffMedia_edges_node_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GStaffData_Staff_staffMedia_edges_node_coverImage
    extends GStaffData_Staff_staffMedia_edges_node_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GStaffData_Staff_staffMedia_edges_node_coverImage(
          [void Function(
                  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder)?
              updates]) =>
      (new GStaffData_Staff_staffMedia_edges_node_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GStaffData_Staff_staffMedia_edges_node_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GStaffData_Staff_staffMedia_edges_node_coverImage', 'G__typename');
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_coverImage rebuild(
          void Function(
                  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder toBuilder() =>
      new GStaffData_Staff_staffMedia_edges_node_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GStaffData_Staff_staffMedia_edges_node_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GStaffData_Staff_staffMedia_edges_node_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GStaffData_Staff_staffMedia_edges_node_coverImageBuilder
    implements
        Builder<GStaffData_Staff_staffMedia_edges_node_coverImage,
            GStaffData_Staff_staffMedia_edges_node_coverImageBuilder> {
  _$GStaffData_Staff_staffMedia_edges_node_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder() {
    GStaffData_Staff_staffMedia_edges_node_coverImage._initializeBuilder(this);
  }

  GStaffData_Staff_staffMedia_edges_node_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GStaffData_Staff_staffMedia_edges_node_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GStaffData_Staff_staffMedia_edges_node_coverImage;
  }

  @override
  void update(
      void Function(GStaffData_Staff_staffMedia_edges_node_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GStaffData_Staff_staffMedia_edges_node_coverImage build() => _build();

  _$GStaffData_Staff_staffMedia_edges_node_coverImage _build() {
    final _$result = _$v ??
        new _$GStaffData_Staff_staffMedia_edges_node_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GStaffData_Staff_staffMedia_edges_node_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
