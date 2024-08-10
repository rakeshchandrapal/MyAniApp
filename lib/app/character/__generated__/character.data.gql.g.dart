// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharacterData> _$gCharacterDataSerializer =
    new _$GCharacterDataSerializer();
Serializer<GCharacterData_Character> _$gCharacterDataCharacterSerializer =
    new _$GCharacterData_CharacterSerializer();
Serializer<GCharacterData_Character_name>
    _$gCharacterDataCharacterNameSerializer =
    new _$GCharacterData_Character_nameSerializer();
Serializer<GCharacterData_Character_image>
    _$gCharacterDataCharacterImageSerializer =
    new _$GCharacterData_Character_imageSerializer();
Serializer<GCharacterData_Character_dateOfBirth>
    _$gCharacterDataCharacterDateOfBirthSerializer =
    new _$GCharacterData_Character_dateOfBirthSerializer();
Serializer<GCharacterData_Character_media>
    _$gCharacterDataCharacterMediaSerializer =
    new _$GCharacterData_Character_mediaSerializer();
Serializer<GCharacterData_Character_media_pageInfo>
    _$gCharacterDataCharacterMediaPageInfoSerializer =
    new _$GCharacterData_Character_media_pageInfoSerializer();
Serializer<GCharacterData_Character_media_edges>
    _$gCharacterDataCharacterMediaEdgesSerializer =
    new _$GCharacterData_Character_media_edgesSerializer();
Serializer<GCharacterData_Character_media_edges_voiceActorRoles>
    _$gCharacterDataCharacterMediaEdgesVoiceActorRolesSerializer =
    new _$GCharacterData_Character_media_edges_voiceActorRolesSerializer();
Serializer<GCharacterData_Character_media_edges_voiceActorRoles_voiceActor>
    _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorSerializer =
    new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActorSerializer();
Serializer<GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name>
    _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorNameSerializer =
    new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameSerializer();
Serializer<
        GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image>
    _$gCharacterDataCharacterMediaEdgesVoiceActorRolesVoiceActorImageSerializer =
    new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageSerializer();
Serializer<GCharacterData_Character_media_edges_node>
    _$gCharacterDataCharacterMediaEdgesNodeSerializer =
    new _$GCharacterData_Character_media_edges_nodeSerializer();
Serializer<GCharacterData_Character_media_edges_node_title>
    _$gCharacterDataCharacterMediaEdgesNodeTitleSerializer =
    new _$GCharacterData_Character_media_edges_node_titleSerializer();
Serializer<GCharacterData_Character_media_edges_node_coverImage>
    _$gCharacterDataCharacterMediaEdgesNodeCoverImageSerializer =
    new _$GCharacterData_Character_media_edges_node_coverImageSerializer();

class _$GCharacterDataSerializer
    implements StructuredSerializer<GCharacterData> {
  @override
  final Iterable<Type> types = const [GCharacterData, _$GCharacterData];
  @override
  final String wireName = 'GCharacterData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCharacterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Character;
    if (value != null) {
      result
        ..add('Character')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterData_Character)));
    }
    return result;
  }

  @override
  GCharacterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterDataBuilder();

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
        case 'Character':
          result.Character.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCharacterData_Character))!
              as GCharacterData_Character);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_CharacterSerializer
    implements StructuredSerializer<GCharacterData_Character> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character,
    _$GCharacterData_Character
  ];
  @override
  final String wireName = 'GCharacterData_Character';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterData_Character_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterData_Character_image)));
    }
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
    value = object.age;
    if (value != null) {
      result
        ..add('age')
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
    value = object.siteUrl;
    if (value != null) {
      result
        ..add('siteUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favourites;
    if (value != null) {
      result
        ..add('favourites')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterData_Character_dateOfBirth)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharacterData_Character_media)));
    }
    return result;
  }

  @override
  GCharacterData_Character deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_CharacterBuilder();

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
                  specifiedType: const FullType(GCharacterData_Character_name))!
              as GCharacterData_Character_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharacterData_Character_image))!
              as GCharacterData_Character_image);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
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
        case 'siteUrl':
          result.siteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFavouriteBlocked':
          result.isFavouriteBlocked = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'favourites':
          result.favourites = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharacterData_Character_dateOfBirth))!
              as GCharacterData_Character_dateOfBirth);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharacterData_Character_media))!
              as GCharacterData_Character_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_nameSerializer
    implements StructuredSerializer<GCharacterData_Character_name> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_name,
    _$GCharacterData_Character_name
  ];
  @override
  final String wireName = 'GCharacterData_Character_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_name object,
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
  GCharacterData_Character_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_nameBuilder();

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

class _$GCharacterData_Character_imageSerializer
    implements StructuredSerializer<GCharacterData_Character_image> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_image,
    _$GCharacterData_Character_image
  ];
  @override
  final String wireName = 'GCharacterData_Character_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_image object,
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
  GCharacterData_Character_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_imageBuilder();

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

class _$GCharacterData_Character_dateOfBirthSerializer
    implements StructuredSerializer<GCharacterData_Character_dateOfBirth> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_dateOfBirth,
    _$GCharacterData_Character_dateOfBirth
  ];
  @override
  final String wireName = 'GCharacterData_Character_dateOfBirth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_dateOfBirth object,
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
  GCharacterData_Character_dateOfBirth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_dateOfBirthBuilder();

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

class _$GCharacterData_Character_mediaSerializer
    implements StructuredSerializer<GCharacterData_Character_media> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media,
    _$GCharacterData_Character_media
  ];
  @override
  final String wireName = 'GCharacterData_Character_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_media object,
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
                const FullType(GCharacterData_Character_media_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GCharacterData_Character_media_edges)
            ])));
    }
    return result;
  }

  @override
  GCharacterData_Character_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_mediaBuilder();

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
                      const FullType(GCharacterData_Character_media_pageInfo))!
              as GCharacterData_Character_media_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GCharacterData_Character_media_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_media_pageInfoSerializer
    implements StructuredSerializer<GCharacterData_Character_media_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_pageInfo,
    _$GCharacterData_Character_media_pageInfo
  ];
  @override
  final String wireName = 'GCharacterData_Character_media_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_media_pageInfo object,
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
  GCharacterData_Character_media_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_media_pageInfoBuilder();

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

class _$GCharacterData_Character_media_edgesSerializer
    implements StructuredSerializer<GCharacterData_Character_media_edges> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges,
    _$GCharacterData_Character_media_edges
  ];
  @override
  final String wireName = 'GCharacterData_Character_media_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_media_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.voiceActorRoles;
    if (value != null) {
      result
        ..add('voiceActorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GCharacterData_Character_media_edges_voiceActorRoles)
            ])));
    }
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharacterData_Character_media_edges_node)));
    }
    return result;
  }

  @override
  GCharacterData_Character_media_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_media_edgesBuilder();

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
        case 'voiceActorRoles':
          result.voiceActorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GCharacterData_Character_media_edges_voiceActorRoles)
              ]))! as BuiltList<Object?>);
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterData_Character_media_edges_node))!
              as GCharacterData_Character_media_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRolesSerializer
    implements
        StructuredSerializer<
            GCharacterData_Character_media_edges_voiceActorRoles> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_voiceActorRoles,
    _$GCharacterData_Character_media_edges_voiceActorRoles
  ];
  @override
  final String wireName =
      'GCharacterData_Character_media_edges_voiceActorRoles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterData_Character_media_edges_voiceActorRoles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.roleNotes;
    if (value != null) {
      result
        ..add('roleNotes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dubGroup;
    if (value != null) {
      result
        ..add('dubGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.voiceActor;
    if (value != null) {
      result
        ..add('voiceActor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterData_Character_media_edges_voiceActorRoles_voiceActor)));
    }
    return result;
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterData_Character_media_edges_voiceActorRolesBuilder();

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
        case 'roleNotes':
          result.roleNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dubGroup':
          result.dubGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'voiceActor':
          result.voiceActor.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor))!
              as GCharacterData_Character_media_edges_voiceActorRoles_voiceActor);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActorSerializer
    implements
        StructuredSerializer<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor,
    _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
  ];
  @override
  final String wireName =
      'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor object,
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
                GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image)));
    }
    value = object.languageV2;
    if (value != null) {
      result
        ..add('languageV2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder();

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
                      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name))!
              as GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image))!
              as GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image);
          break;
        case 'languageV2':
          result.languageV2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameSerializer
    implements
        StructuredSerializer<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name,
    _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
  ];
  @override
  final String wireName =
      'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
          object,
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
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder();

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

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageSerializer
    implements
        StructuredSerializer<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image,
    _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
  ];
  @override
  final String wireName =
      'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
          object,
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
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder();

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

class _$GCharacterData_Character_media_edges_nodeSerializer
    implements StructuredSerializer<GCharacterData_Character_media_edges_node> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_node,
    _$GCharacterData_Character_media_edges_node
  ];
  @override
  final String wireName = 'GCharacterData_Character_media_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharacterData_Character_media_edges_node object,
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
            specifiedType: const FullType(_i7.GMediaType)));
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
            specifiedType: const FullType(_i7.GMediaFormat)));
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
                GCharacterData_Character_media_edges_node_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharacterData_Character_media_edges_node_coverImage)));
    }
    return result;
  }

  @override
  GCharacterData_Character_media_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_media_edges_nodeBuilder();

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
              specifiedType: const FullType(_i7.GMediaType)) as _i7.GMediaType?;
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
                  specifiedType: const FullType(_i7.GMediaFormat))
              as _i7.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterData_Character_media_edges_node_title))!
              as GCharacterData_Character_media_edges_node_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharacterData_Character_media_edges_node_coverImage))!
              as GCharacterData_Character_media_edges_node_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharacterData_Character_media_edges_node_titleSerializer
    implements
        StructuredSerializer<GCharacterData_Character_media_edges_node_title> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_node_title,
    _$GCharacterData_Character_media_edges_node_title
  ];
  @override
  final String wireName = 'GCharacterData_Character_media_edges_node_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterData_Character_media_edges_node_title object,
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
  GCharacterData_Character_media_edges_node_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharacterData_Character_media_edges_node_titleBuilder();

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

class _$GCharacterData_Character_media_edges_node_coverImageSerializer
    implements
        StructuredSerializer<
            GCharacterData_Character_media_edges_node_coverImage> {
  @override
  final Iterable<Type> types = const [
    GCharacterData_Character_media_edges_node_coverImage,
    _$GCharacterData_Character_media_edges_node_coverImage
  ];
  @override
  final String wireName =
      'GCharacterData_Character_media_edges_node_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharacterData_Character_media_edges_node_coverImage object,
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
  GCharacterData_Character_media_edges_node_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharacterData_Character_media_edges_node_coverImageBuilder();

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

class _$GCharacterData extends GCharacterData {
  @override
  final String G__typename;
  @override
  final GCharacterData_Character? Character;

  factory _$GCharacterData([void Function(GCharacterDataBuilder)? updates]) =>
      (new GCharacterDataBuilder()..update(updates))._build();

  _$GCharacterData._({required this.G__typename, this.Character}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData', 'G__typename');
  }

  @override
  GCharacterData rebuild(void Function(GCharacterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterDataBuilder toBuilder() =>
      new GCharacterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData &&
        G__typename == other.G__typename &&
        Character == other.Character;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Character.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterData')
          ..add('G__typename', G__typename)
          ..add('Character', Character))
        .toString();
  }
}

class GCharacterDataBuilder
    implements Builder<GCharacterData, GCharacterDataBuilder> {
  _$GCharacterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharacterData_CharacterBuilder? _Character;
  GCharacterData_CharacterBuilder get Character =>
      _$this._Character ??= new GCharacterData_CharacterBuilder();
  set Character(GCharacterData_CharacterBuilder? Character) =>
      _$this._Character = Character;

  GCharacterDataBuilder() {
    GCharacterData._initializeBuilder(this);
  }

  GCharacterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Character = $v.Character?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData;
  }

  @override
  void update(void Function(GCharacterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData build() => _build();

  _$GCharacterData _build() {
    _$GCharacterData _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharacterData', 'G__typename'),
              Character: _Character?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Character';
        _Character?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character extends GCharacterData_Character {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterData_Character_name? name;
  @override
  final GCharacterData_Character_image? image;
  @override
  final String? description;
  @override
  final String? gender;
  @override
  final String? age;
  @override
  final String? bloodType;
  @override
  final bool isFavourite;
  @override
  final String? siteUrl;
  @override
  final bool isFavouriteBlocked;
  @override
  final int? favourites;
  @override
  final GCharacterData_Character_dateOfBirth? dateOfBirth;
  @override
  final GCharacterData_Character_media? media;

  factory _$GCharacterData_Character(
          [void Function(GCharacterData_CharacterBuilder)? updates]) =>
      (new GCharacterData_CharacterBuilder()..update(updates))._build();

  _$GCharacterData_Character._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.image,
      this.description,
      this.gender,
      this.age,
      this.bloodType,
      required this.isFavourite,
      this.siteUrl,
      required this.isFavouriteBlocked,
      this.favourites,
      this.dateOfBirth,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCharacterData_Character', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isFavourite, r'GCharacterData_Character', 'isFavourite');
    BuiltValueNullFieldError.checkNotNull(
        isFavouriteBlocked, r'GCharacterData_Character', 'isFavouriteBlocked');
  }

  @override
  GCharacterData_Character rebuild(
          void Function(GCharacterData_CharacterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_CharacterBuilder toBuilder() =>
      new GCharacterData_CharacterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        description == other.description &&
        gender == other.gender &&
        age == other.age &&
        bloodType == other.bloodType &&
        isFavourite == other.isFavourite &&
        siteUrl == other.siteUrl &&
        isFavouriteBlocked == other.isFavouriteBlocked &&
        favourites == other.favourites &&
        dateOfBirth == other.dateOfBirth &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, bloodType.hashCode);
    _$hash = $jc(_$hash, isFavourite.hashCode);
    _$hash = $jc(_$hash, siteUrl.hashCode);
    _$hash = $jc(_$hash, isFavouriteBlocked.hashCode);
    _$hash = $jc(_$hash, favourites.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterData_Character')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('description', description)
          ..add('gender', gender)
          ..add('age', age)
          ..add('bloodType', bloodType)
          ..add('isFavourite', isFavourite)
          ..add('siteUrl', siteUrl)
          ..add('isFavouriteBlocked', isFavouriteBlocked)
          ..add('favourites', favourites)
          ..add('dateOfBirth', dateOfBirth)
          ..add('media', media))
        .toString();
  }
}

class GCharacterData_CharacterBuilder
    implements
        Builder<GCharacterData_Character, GCharacterData_CharacterBuilder> {
  _$GCharacterData_Character? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterData_Character_nameBuilder? _name;
  GCharacterData_Character_nameBuilder get name =>
      _$this._name ??= new GCharacterData_Character_nameBuilder();
  set name(GCharacterData_Character_nameBuilder? name) => _$this._name = name;

  GCharacterData_Character_imageBuilder? _image;
  GCharacterData_Character_imageBuilder get image =>
      _$this._image ??= new GCharacterData_Character_imageBuilder();
  set image(GCharacterData_Character_imageBuilder? image) =>
      _$this._image = image;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _age;
  String? get age => _$this._age;
  set age(String? age) => _$this._age = age;

  String? _bloodType;
  String? get bloodType => _$this._bloodType;
  set bloodType(String? bloodType) => _$this._bloodType = bloodType;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  String? _siteUrl;
  String? get siteUrl => _$this._siteUrl;
  set siteUrl(String? siteUrl) => _$this._siteUrl = siteUrl;

  bool? _isFavouriteBlocked;
  bool? get isFavouriteBlocked => _$this._isFavouriteBlocked;
  set isFavouriteBlocked(bool? isFavouriteBlocked) =>
      _$this._isFavouriteBlocked = isFavouriteBlocked;

  int? _favourites;
  int? get favourites => _$this._favourites;
  set favourites(int? favourites) => _$this._favourites = favourites;

  GCharacterData_Character_dateOfBirthBuilder? _dateOfBirth;
  GCharacterData_Character_dateOfBirthBuilder get dateOfBirth =>
      _$this._dateOfBirth ??= new GCharacterData_Character_dateOfBirthBuilder();
  set dateOfBirth(GCharacterData_Character_dateOfBirthBuilder? dateOfBirth) =>
      _$this._dateOfBirth = dateOfBirth;

  GCharacterData_Character_mediaBuilder? _media;
  GCharacterData_Character_mediaBuilder get media =>
      _$this._media ??= new GCharacterData_Character_mediaBuilder();
  set media(GCharacterData_Character_mediaBuilder? media) =>
      _$this._media = media;

  GCharacterData_CharacterBuilder() {
    GCharacterData_Character._initializeBuilder(this);
  }

  GCharacterData_CharacterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _description = $v.description;
      _gender = $v.gender;
      _age = $v.age;
      _bloodType = $v.bloodType;
      _isFavourite = $v.isFavourite;
      _siteUrl = $v.siteUrl;
      _isFavouriteBlocked = $v.isFavouriteBlocked;
      _favourites = $v.favourites;
      _dateOfBirth = $v.dateOfBirth?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character;
  }

  @override
  void update(void Function(GCharacterData_CharacterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character build() => _build();

  _$GCharacterData_Character _build() {
    _$GCharacterData_Character _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharacterData_Character', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharacterData_Character', 'id'),
              name: _name?.build(),
              image: _image?.build(),
              description: description,
              gender: gender,
              age: age,
              bloodType: bloodType,
              isFavourite: BuiltValueNullFieldError.checkNotNull(
                  isFavourite, r'GCharacterData_Character', 'isFavourite'),
              siteUrl: siteUrl,
              isFavouriteBlocked: BuiltValueNullFieldError.checkNotNull(
                  isFavouriteBlocked,
                  r'GCharacterData_Character',
                  'isFavouriteBlocked'),
              favourites: favourites,
              dateOfBirth: _dateOfBirth?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();

        _$failedField = 'dateOfBirth';
        _dateOfBirth?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterData_Character', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_name extends GCharacterData_Character_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharacterData_Character_name(
          [void Function(GCharacterData_Character_nameBuilder)? updates]) =>
      (new GCharacterData_Character_nameBuilder()..update(updates))._build();

  _$GCharacterData_Character_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_name', 'G__typename');
  }

  @override
  GCharacterData_Character_name rebuild(
          void Function(GCharacterData_Character_nameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_nameBuilder toBuilder() =>
      new GCharacterData_Character_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_name &&
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
    return (newBuiltValueToStringHelper(r'GCharacterData_Character_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterData_Character_nameBuilder
    implements
        Builder<GCharacterData_Character_name,
            GCharacterData_Character_nameBuilder> {
  _$GCharacterData_Character_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterData_Character_nameBuilder() {
    GCharacterData_Character_name._initializeBuilder(this);
  }

  GCharacterData_Character_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_name;
  }

  @override
  void update(void Function(GCharacterData_Character_nameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_name build() => _build();

  _$GCharacterData_Character_name _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCharacterData_Character_name', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_image extends GCharacterData_Character_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharacterData_Character_image(
          [void Function(GCharacterData_Character_imageBuilder)? updates]) =>
      (new GCharacterData_Character_imageBuilder()..update(updates))._build();

  _$GCharacterData_Character_image._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_image', 'G__typename');
  }

  @override
  GCharacterData_Character_image rebuild(
          void Function(GCharacterData_Character_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_imageBuilder toBuilder() =>
      new GCharacterData_Character_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_image &&
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
    return (newBuiltValueToStringHelper(r'GCharacterData_Character_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharacterData_Character_imageBuilder
    implements
        Builder<GCharacterData_Character_image,
            GCharacterData_Character_imageBuilder> {
  _$GCharacterData_Character_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharacterData_Character_imageBuilder() {
    GCharacterData_Character_image._initializeBuilder(this);
  }

  GCharacterData_Character_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_image;
  }

  @override
  void update(void Function(GCharacterData_Character_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_image build() => _build();

  _$GCharacterData_Character_image _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCharacterData_Character_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_dateOfBirth
    extends GCharacterData_Character_dateOfBirth {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GCharacterData_Character_dateOfBirth(
          [void Function(GCharacterData_Character_dateOfBirthBuilder)?
              updates]) =>
      (new GCharacterData_Character_dateOfBirthBuilder()..update(updates))
          ._build();

  _$GCharacterData_Character_dateOfBirth._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_dateOfBirth', 'G__typename');
  }

  @override
  GCharacterData_Character_dateOfBirth rebuild(
          void Function(GCharacterData_Character_dateOfBirthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_dateOfBirthBuilder toBuilder() =>
      new GCharacterData_Character_dateOfBirthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_dateOfBirth &&
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
    return (newBuiltValueToStringHelper(r'GCharacterData_Character_dateOfBirth')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GCharacterData_Character_dateOfBirthBuilder
    implements
        Builder<GCharacterData_Character_dateOfBirth,
            GCharacterData_Character_dateOfBirthBuilder> {
  _$GCharacterData_Character_dateOfBirth? _$v;

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

  GCharacterData_Character_dateOfBirthBuilder() {
    GCharacterData_Character_dateOfBirth._initializeBuilder(this);
  }

  GCharacterData_Character_dateOfBirthBuilder get _$this {
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
  void replace(GCharacterData_Character_dateOfBirth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_dateOfBirth;
  }

  @override
  void update(
      void Function(GCharacterData_Character_dateOfBirthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_dateOfBirth build() => _build();

  _$GCharacterData_Character_dateOfBirth _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_dateOfBirth._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCharacterData_Character_dateOfBirth', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media extends GCharacterData_Character_media {
  @override
  final String G__typename;
  @override
  final GCharacterData_Character_media_pageInfo? pageInfo;
  @override
  final BuiltList<GCharacterData_Character_media_edges?>? edges;

  factory _$GCharacterData_Character_media(
          [void Function(GCharacterData_Character_mediaBuilder)? updates]) =>
      (new GCharacterData_Character_mediaBuilder()..update(updates))._build();

  _$GCharacterData_Character_media._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_media', 'G__typename');
  }

  @override
  GCharacterData_Character_media rebuild(
          void Function(GCharacterData_Character_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_mediaBuilder toBuilder() =>
      new GCharacterData_Character_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media &&
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
    return (newBuiltValueToStringHelper(r'GCharacterData_Character_media')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GCharacterData_Character_mediaBuilder
    implements
        Builder<GCharacterData_Character_media,
            GCharacterData_Character_mediaBuilder> {
  _$GCharacterData_Character_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharacterData_Character_media_pageInfoBuilder? _pageInfo;
  GCharacterData_Character_media_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GCharacterData_Character_media_pageInfoBuilder();
  set pageInfo(GCharacterData_Character_media_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GCharacterData_Character_media_edges?>? _edges;
  ListBuilder<GCharacterData_Character_media_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GCharacterData_Character_media_edges?>();
  set edges(ListBuilder<GCharacterData_Character_media_edges?>? edges) =>
      _$this._edges = edges;

  GCharacterData_Character_mediaBuilder() {
    GCharacterData_Character_media._initializeBuilder(this);
  }

  GCharacterData_Character_mediaBuilder get _$this {
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
  void replace(GCharacterData_Character_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media;
  }

  @override
  void update(void Function(GCharacterData_Character_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media build() => _build();

  _$GCharacterData_Character_media _build() {
    _$GCharacterData_Character_media _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharacterData_Character_media', 'G__typename'),
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
            r'GCharacterData_Character_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_pageInfo
    extends GCharacterData_Character_media_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GCharacterData_Character_media_pageInfo(
          [void Function(GCharacterData_Character_media_pageInfoBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_pageInfoBuilder()..update(updates))
          ._build();

  _$GCharacterData_Character_media_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_media_pageInfo', 'G__typename');
  }

  @override
  GCharacterData_Character_media_pageInfo rebuild(
          void Function(GCharacterData_Character_media_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_pageInfoBuilder toBuilder() =>
      new GCharacterData_Character_media_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_pageInfo &&
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
            r'GCharacterData_Character_media_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GCharacterData_Character_media_pageInfoBuilder
    implements
        Builder<GCharacterData_Character_media_pageInfo,
            GCharacterData_Character_media_pageInfoBuilder> {
  _$GCharacterData_Character_media_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GCharacterData_Character_media_pageInfoBuilder() {
    GCharacterData_Character_media_pageInfo._initializeBuilder(this);
  }

  GCharacterData_Character_media_pageInfoBuilder get _$this {
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
  void replace(GCharacterData_Character_media_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_pageInfo;
  }

  @override
  void update(
      void Function(GCharacterData_Character_media_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_pageInfo build() => _build();

  _$GCharacterData_Character_media_pageInfo _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_media_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCharacterData_Character_media_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges
    extends GCharacterData_Character_media_edges {
  @override
  final String G__typename;
  @override
  final BuiltList<GCharacterData_Character_media_edges_voiceActorRoles?>?
      voiceActorRoles;
  @override
  final GCharacterData_Character_media_edges_node? node;

  factory _$GCharacterData_Character_media_edges(
          [void Function(GCharacterData_Character_media_edgesBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edgesBuilder()..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges._(
      {required this.G__typename, this.voiceActorRoles, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharacterData_Character_media_edges', 'G__typename');
  }

  @override
  GCharacterData_Character_media_edges rebuild(
          void Function(GCharacterData_Character_media_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edgesBuilder toBuilder() =>
      new GCharacterData_Character_media_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_edges &&
        G__typename == other.G__typename &&
        voiceActorRoles == other.voiceActorRoles &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, voiceActorRoles.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharacterData_Character_media_edges')
          ..add('G__typename', G__typename)
          ..add('voiceActorRoles', voiceActorRoles)
          ..add('node', node))
        .toString();
  }
}

class GCharacterData_Character_media_edgesBuilder
    implements
        Builder<GCharacterData_Character_media_edges,
            GCharacterData_Character_media_edgesBuilder> {
  _$GCharacterData_Character_media_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GCharacterData_Character_media_edges_voiceActorRoles?>?
      _voiceActorRoles;
  ListBuilder<GCharacterData_Character_media_edges_voiceActorRoles?>
      get voiceActorRoles => _$this._voiceActorRoles ??= new ListBuilder<
          GCharacterData_Character_media_edges_voiceActorRoles?>();
  set voiceActorRoles(
          ListBuilder<GCharacterData_Character_media_edges_voiceActorRoles?>?
              voiceActorRoles) =>
      _$this._voiceActorRoles = voiceActorRoles;

  GCharacterData_Character_media_edges_nodeBuilder? _node;
  GCharacterData_Character_media_edges_nodeBuilder get node =>
      _$this._node ??= new GCharacterData_Character_media_edges_nodeBuilder();
  set node(GCharacterData_Character_media_edges_nodeBuilder? node) =>
      _$this._node = node;

  GCharacterData_Character_media_edgesBuilder() {
    GCharacterData_Character_media_edges._initializeBuilder(this);
  }

  GCharacterData_Character_media_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _voiceActorRoles = $v.voiceActorRoles?.toBuilder();
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_media_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_edges;
  }

  @override
  void update(
      void Function(GCharacterData_Character_media_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges build() => _build();

  _$GCharacterData_Character_media_edges _build() {
    _$GCharacterData_Character_media_edges _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character_media_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharacterData_Character_media_edges', 'G__typename'),
              voiceActorRoles: _voiceActorRoles?.build(),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voiceActorRoles';
        _voiceActorRoles?.build();
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterData_Character_media_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles
    extends GCharacterData_Character_media_edges_voiceActorRoles {
  @override
  final String G__typename;
  @override
  final String? roleNotes;
  @override
  final String? dubGroup;
  @override
  final GCharacterData_Character_media_edges_voiceActorRoles_voiceActor?
      voiceActor;

  factory _$GCharacterData_Character_media_edges_voiceActorRoles(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRolesBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_voiceActorRolesBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_voiceActorRoles._(
      {required this.G__typename,
      this.roleNotes,
      this.dubGroup,
      this.voiceActor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterData_Character_media_edges_voiceActorRoles', 'G__typename');
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles rebuild(
          void Function(
                  GCharacterData_Character_media_edges_voiceActorRolesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_voiceActorRolesBuilder toBuilder() =>
      new GCharacterData_Character_media_edges_voiceActorRolesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_edges_voiceActorRoles &&
        G__typename == other.G__typename &&
        roleNotes == other.roleNotes &&
        dubGroup == other.dubGroup &&
        voiceActor == other.voiceActor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, roleNotes.hashCode);
    _$hash = $jc(_$hash, dubGroup.hashCode);
    _$hash = $jc(_$hash, voiceActor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterData_Character_media_edges_voiceActorRoles')
          ..add('G__typename', G__typename)
          ..add('roleNotes', roleNotes)
          ..add('dubGroup', dubGroup)
          ..add('voiceActor', voiceActor))
        .toString();
  }
}

class GCharacterData_Character_media_edges_voiceActorRolesBuilder
    implements
        Builder<GCharacterData_Character_media_edges_voiceActorRoles,
            GCharacterData_Character_media_edges_voiceActorRolesBuilder> {
  _$GCharacterData_Character_media_edges_voiceActorRoles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _roleNotes;
  String? get roleNotes => _$this._roleNotes;
  set roleNotes(String? roleNotes) => _$this._roleNotes = roleNotes;

  String? _dubGroup;
  String? get dubGroup => _$this._dubGroup;
  set dubGroup(String? dubGroup) => _$this._dubGroup = dubGroup;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder?
      _voiceActor;
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
      get voiceActor => _$this._voiceActor ??=
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder();
  set voiceActor(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder?
              voiceActor) =>
      _$this._voiceActor = voiceActor;

  GCharacterData_Character_media_edges_voiceActorRolesBuilder() {
    GCharacterData_Character_media_edges_voiceActorRoles._initializeBuilder(
        this);
  }

  GCharacterData_Character_media_edges_voiceActorRolesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _roleNotes = $v.roleNotes;
      _dubGroup = $v.dubGroup;
      _voiceActor = $v.voiceActor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_media_edges_voiceActorRoles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_edges_voiceActorRoles;
  }

  @override
  void update(
      void Function(
              GCharacterData_Character_media_edges_voiceActorRolesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles build() => _build();

  _$GCharacterData_Character_media_edges_voiceActorRoles _build() {
    _$GCharacterData_Character_media_edges_voiceActorRoles _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character_media_edges_voiceActorRoles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharacterData_Character_media_edges_voiceActorRoles',
                  'G__typename'),
              roleNotes: roleNotes,
              dubGroup: dubGroup,
              voiceActor: _voiceActor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'voiceActor';
        _voiceActor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterData_Character_media_edges_voiceActorRoles',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
    extends GCharacterData_Character_media_edges_voiceActorRoles_voiceActor {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name?
      name;
  @override
  final GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image?
      image;
  @override
  final String? languageV2;

  factory _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.image,
      this.languageV2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor',
        'id');
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor rebuild(
          void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
      toBuilder() =>
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterData_Character_media_edges_voiceActorRoles_voiceActor &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image &&
        languageV2 == other.languageV2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, languageV2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image)
          ..add('languageV2', languageV2))
        .toString();
  }
}

class GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
    implements
        Builder<GCharacterData_Character_media_edges_voiceActorRoles_voiceActor,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder> {
  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder?
      _name;
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
      get name => _$this._name ??=
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder();
  set name(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder?
              name) =>
      _$this._name = name;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder?
      _image;
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
      get image => _$this._image ??=
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder();
  set image(
          GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder?
              image) =>
      _$this._image = image;

  String? _languageV2;
  String? get languageV2 => _$this._languageV2;
  set languageV2(String? languageV2) => _$this._languageV2 = languageV2;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder() {
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
        ._initializeBuilder(this);
  }

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _languageV2 = $v.languageV2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor;
  }

  @override
  void update(
      void Function(
              GCharacterData_Character_media_edges_voiceActorRoles_voiceActorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor build() =>
      _build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor _build() {
    _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor',
                  'id'),
              name: _name?.build(),
              image: _image?.build(),
              languageV2: languageV2);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
    extends GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name',
        'G__typename');
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name rebuild(
          void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
      toBuilder() =>
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name &&
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
            r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
    implements
        Builder<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder> {
  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder() {
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
        ._initializeBuilder(this);
  }

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name;
  }

  @override
  void update(
      void Function(
              GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
      build() => _build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
      _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_name',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
    extends GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image(
          [void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image',
        'G__typename');
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image rebuild(
          void Function(
                  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
      toBuilder() =>
          new GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image &&
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
            r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
    implements
        Builder<
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image,
            GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder> {
  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder() {
    GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
        ._initializeBuilder(this);
  }

  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image;
  }

  @override
  void update(
      void Function(
              GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
      build() => _build();

  _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
      _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterData_Character_media_edges_voiceActorRoles_voiceActor_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_node
    extends GCharacterData_Character_media_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i7.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i7.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GCharacterData_Character_media_edges_node_title? title;
  @override
  final GCharacterData_Character_media_edges_node_coverImage? coverImage;

  factory _$GCharacterData_Character_media_edges_node(
          [void Function(GCharacterData_Character_media_edges_nodeBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_nodeBuilder()..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_node._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterData_Character_media_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCharacterData_Character_media_edges_node', 'id');
  }

  @override
  GCharacterData_Character_media_edges_node rebuild(
          void Function(GCharacterData_Character_media_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_nodeBuilder toBuilder() =>
      new GCharacterData_Character_media_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_edges_node &&
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
            r'GCharacterData_Character_media_edges_node')
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

class GCharacterData_Character_media_edges_nodeBuilder
    implements
        Builder<GCharacterData_Character_media_edges_node,
            GCharacterData_Character_media_edges_nodeBuilder> {
  _$GCharacterData_Character_media_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i7.GMediaType? _type;
  _i7.GMediaType? get type => _$this._type;
  set type(_i7.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i7.GMediaFormat? _format;
  _i7.GMediaFormat? get format => _$this._format;
  set format(_i7.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GCharacterData_Character_media_edges_node_titleBuilder? _title;
  GCharacterData_Character_media_edges_node_titleBuilder get title =>
      _$this._title ??=
          new GCharacterData_Character_media_edges_node_titleBuilder();
  set title(GCharacterData_Character_media_edges_node_titleBuilder? title) =>
      _$this._title = title;

  GCharacterData_Character_media_edges_node_coverImageBuilder? _coverImage;
  GCharacterData_Character_media_edges_node_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GCharacterData_Character_media_edges_node_coverImageBuilder();
  set coverImage(
          GCharacterData_Character_media_edges_node_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  GCharacterData_Character_media_edges_nodeBuilder() {
    GCharacterData_Character_media_edges_node._initializeBuilder(this);
  }

  GCharacterData_Character_media_edges_nodeBuilder get _$this {
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
  void replace(GCharacterData_Character_media_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_edges_node;
  }

  @override
  void update(
      void Function(GCharacterData_Character_media_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_node build() => _build();

  _$GCharacterData_Character_media_edges_node _build() {
    _$GCharacterData_Character_media_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GCharacterData_Character_media_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharacterData_Character_media_edges_node', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharacterData_Character_media_edges_node', 'id'),
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
            r'GCharacterData_Character_media_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_node_title
    extends GCharacterData_Character_media_edges_node_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharacterData_Character_media_edges_node_title(
          [void Function(
                  GCharacterData_Character_media_edges_node_titleBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_node_titleBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_node_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterData_Character_media_edges_node_title', 'G__typename');
  }

  @override
  GCharacterData_Character_media_edges_node_title rebuild(
          void Function(GCharacterData_Character_media_edges_node_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_node_titleBuilder toBuilder() =>
      new GCharacterData_Character_media_edges_node_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_edges_node_title &&
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
            r'GCharacterData_Character_media_edges_node_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharacterData_Character_media_edges_node_titleBuilder
    implements
        Builder<GCharacterData_Character_media_edges_node_title,
            GCharacterData_Character_media_edges_node_titleBuilder> {
  _$GCharacterData_Character_media_edges_node_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharacterData_Character_media_edges_node_titleBuilder() {
    GCharacterData_Character_media_edges_node_title._initializeBuilder(this);
  }

  GCharacterData_Character_media_edges_node_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_media_edges_node_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_edges_node_title;
  }

  @override
  void update(
      void Function(GCharacterData_Character_media_edges_node_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_node_title build() => _build();

  _$GCharacterData_Character_media_edges_node_title _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_media_edges_node_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterData_Character_media_edges_node_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharacterData_Character_media_edges_node_coverImage
    extends GCharacterData_Character_media_edges_node_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GCharacterData_Character_media_edges_node_coverImage(
          [void Function(
                  GCharacterData_Character_media_edges_node_coverImageBuilder)?
              updates]) =>
      (new GCharacterData_Character_media_edges_node_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GCharacterData_Character_media_edges_node_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharacterData_Character_media_edges_node_coverImage', 'G__typename');
  }

  @override
  GCharacterData_Character_media_edges_node_coverImage rebuild(
          void Function(
                  GCharacterData_Character_media_edges_node_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharacterData_Character_media_edges_node_coverImageBuilder toBuilder() =>
      new GCharacterData_Character_media_edges_node_coverImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharacterData_Character_media_edges_node_coverImage &&
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
            r'GCharacterData_Character_media_edges_node_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GCharacterData_Character_media_edges_node_coverImageBuilder
    implements
        Builder<GCharacterData_Character_media_edges_node_coverImage,
            GCharacterData_Character_media_edges_node_coverImageBuilder> {
  _$GCharacterData_Character_media_edges_node_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GCharacterData_Character_media_edges_node_coverImageBuilder() {
    GCharacterData_Character_media_edges_node_coverImage._initializeBuilder(
        this);
  }

  GCharacterData_Character_media_edges_node_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharacterData_Character_media_edges_node_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharacterData_Character_media_edges_node_coverImage;
  }

  @override
  void update(
      void Function(
              GCharacterData_Character_media_edges_node_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharacterData_Character_media_edges_node_coverImage build() => _build();

  _$GCharacterData_Character_media_edges_node_coverImage _build() {
    final _$result = _$v ??
        new _$GCharacterData_Character_media_edges_node_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharacterData_Character_media_edges_node_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
