// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCharactersData> _$gCharactersDataSerializer =
    new _$GCharactersDataSerializer();
Serializer<GCharactersData_Media> _$gCharactersDataMediaSerializer =
    new _$GCharactersData_MediaSerializer();
Serializer<GCharactersData_Media_characters>
    _$gCharactersDataMediaCharactersSerializer =
    new _$GCharactersData_Media_charactersSerializer();
Serializer<GCharactersData_Media_characters_pageInfo>
    _$gCharactersDataMediaCharactersPageInfoSerializer =
    new _$GCharactersData_Media_characters_pageInfoSerializer();
Serializer<GCharactersData_Media_characters_edges>
    _$gCharactersDataMediaCharactersEdgesSerializer =
    new _$GCharactersData_Media_characters_edgesSerializer();
Serializer<GCharactersData_Media_characters_edges_node>
    _$gCharactersDataMediaCharactersEdgesNodeSerializer =
    new _$GCharactersData_Media_characters_edges_nodeSerializer();
Serializer<GCharactersData_Media_characters_edges_node_name>
    _$gCharactersDataMediaCharactersEdgesNodeNameSerializer =
    new _$GCharactersData_Media_characters_edges_node_nameSerializer();
Serializer<GCharactersData_Media_characters_edges_node_image>
    _$gCharactersDataMediaCharactersEdgesNodeImageSerializer =
    new _$GCharactersData_Media_characters_edges_node_imageSerializer();
Serializer<GCharactersData_Media_characters_edges_voiceActorRoles>
    _$gCharactersDataMediaCharactersEdgesVoiceActorRolesSerializer =
    new _$GCharactersData_Media_characters_edges_voiceActorRolesSerializer();
Serializer<GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor>
    _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorSerializer =
    new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorSerializer();
Serializer<
        GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name>
    _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorNameSerializer =
    new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameSerializer();
Serializer<
        GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image>
    _$gCharactersDataMediaCharactersEdgesVoiceActorRolesVoiceActorImageSerializer =
    new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageSerializer();

class _$GCharactersDataSerializer
    implements StructuredSerializer<GCharactersData> {
  @override
  final Iterable<Type> types = const [GCharactersData, _$GCharactersData];
  @override
  final String wireName = 'GCharactersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCharactersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Media;
    if (value != null) {
      result
        ..add('Media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharactersData_Media)));
    }
    return result;
  }

  @override
  GCharactersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersDataBuilder();

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
        case 'Media':
          result.Media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCharactersData_Media))!
              as GCharactersData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_MediaSerializer
    implements StructuredSerializer<GCharactersData_Media> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media,
    _$GCharactersData_Media
  ];
  @override
  final String wireName = 'GCharactersData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharactersData_Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.countryOfOrigin;
    if (value != null) {
      result
        ..add('countryOfOrigin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GCountryCode)));
    }
    value = object.characters;
    if (value != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCharactersData_Media_characters)));
    }
    return result;
  }

  @override
  GCharactersData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersData_MediaBuilder();

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
        case 'countryOfOrigin':
          result.countryOfOrigin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCountryCode))!
              as _i2.GCountryCode);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCharactersData_Media_characters))!
              as GCharactersData_Media_characters);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_charactersSerializer
    implements StructuredSerializer<GCharactersData_Media_characters> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters,
    _$GCharactersData_Media_characters
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharactersData_Media_characters object,
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
                const FullType(GCharactersData_Media_characters_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GCharactersData_Media_characters_edges)
            ])));
    }
    return result;
  }

  @override
  GCharactersData_Media_characters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersData_Media_charactersBuilder();

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
                  specifiedType: const FullType(
                      GCharactersData_Media_characters_pageInfo))!
              as GCharactersData_Media_characters_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GCharactersData_Media_characters_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_characters_pageInfoSerializer
    implements StructuredSerializer<GCharactersData_Media_characters_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_pageInfo,
    _$GCharactersData_Media_characters_pageInfo
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharactersData_Media_characters_pageInfo object,
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
  GCharactersData_Media_characters_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersData_Media_characters_pageInfoBuilder();

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

class _$GCharactersData_Media_characters_edgesSerializer
    implements StructuredSerializer<GCharactersData_Media_characters_edges> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges,
    _$GCharactersData_Media_characters_edges
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCharactersData_Media_characters_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GCharacterRole)));
    }
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCharactersData_Media_characters_edges_node)));
    }
    value = object.voiceActorRoles;
    if (value != null) {
      result
        ..add('voiceActorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GCharactersData_Media_characters_edges_voiceActorRoles)
            ])));
    }
    return result;
  }

  @override
  GCharactersData_Media_characters_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersData_Media_characters_edgesBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GCharacterRole))
              as _i2.GCharacterRole?;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharactersData_Media_characters_edges_node))!
              as GCharactersData_Media_characters_edges_node);
          break;
        case 'voiceActorRoles':
          result.voiceActorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GCharactersData_Media_characters_edges_voiceActorRoles)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_characters_edges_nodeSerializer
    implements
        StructuredSerializer<GCharactersData_Media_characters_edges_node> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_node,
    _$GCharactersData_Media_characters_edges_node
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharactersData_Media_characters_edges_node object,
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
                GCharactersData_Media_characters_edges_node_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharactersData_Media_characters_edges_node_image)));
    }
    return result;
  }

  @override
  GCharactersData_Media_characters_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCharactersData_Media_characters_edges_nodeBuilder();

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
                      GCharactersData_Media_characters_edges_node_name))!
              as GCharactersData_Media_characters_edges_node_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharactersData_Media_characters_edges_node_image))!
              as GCharactersData_Media_characters_edges_node_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_characters_edges_node_nameSerializer
    implements
        StructuredSerializer<GCharactersData_Media_characters_edges_node_name> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_node_name,
    _$GCharactersData_Media_characters_edges_node_name
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters_edges_node_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharactersData_Media_characters_edges_node_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.full;
    if (value != null) {
      result
        ..add('full')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
  GCharactersData_Media_characters_edges_node_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_node_nameBuilder();

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
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'full':
          result.full = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GCharactersData_Media_characters_edges_node_imageSerializer
    implements
        StructuredSerializer<
            GCharactersData_Media_characters_edges_node_image> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_node_image,
    _$GCharactersData_Media_characters_edges_node_image
  ];
  @override
  final String wireName = 'GCharactersData_Media_characters_edges_node_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharactersData_Media_characters_edges_node_image object,
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
  GCharactersData_Media_characters_edges_node_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_node_imageBuilder();

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

class _$GCharactersData_Media_characters_edges_voiceActorRolesSerializer
    implements
        StructuredSerializer<
            GCharactersData_Media_characters_edges_voiceActorRoles> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_voiceActorRoles,
    _$GCharactersData_Media_characters_edges_voiceActorRoles
  ];
  @override
  final String wireName =
      'GCharactersData_Media_characters_edges_voiceActorRoles';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharactersData_Media_characters_edges_voiceActorRoles object,
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
                GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor)));
    }
    return result;
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_voiceActorRolesBuilder();

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
                      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor))!
              as GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorSerializer
    implements
        StructuredSerializer<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor,
    _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
  ];
  @override
  final String wireName =
      'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor object,
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
                GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name)));
    }
    value = object.languageV2;
    if (value != null) {
      result
        ..add('languageV2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image)));
    }
    return result;
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder();

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
                      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name))!
              as GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name);
          break;
        case 'languageV2':
          result.languageV2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image))!
              as GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameSerializer
    implements
        StructuredSerializer<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name,
    _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
  ];
  @override
  final String wireName =
      'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
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
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder();

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

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageSerializer
    implements
        StructuredSerializer<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image> {
  @override
  final Iterable<Type> types = const [
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image,
    _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
  ];
  @override
  final String wireName =
      'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
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
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder();

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

class _$GCharactersData extends GCharactersData {
  @override
  final String G__typename;
  @override
  final GCharactersData_Media? Media;

  factory _$GCharactersData([void Function(GCharactersDataBuilder)? updates]) =>
      (new GCharactersDataBuilder()..update(updates))._build();

  _$GCharactersData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharactersData', 'G__typename');
  }

  @override
  GCharactersData rebuild(void Function(GCharactersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersDataBuilder toBuilder() =>
      new GCharactersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData &&
        G__typename == other.G__typename &&
        Media == other.Media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharactersData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GCharactersDataBuilder
    implements Builder<GCharactersData, GCharactersDataBuilder> {
  _$GCharactersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharactersData_MediaBuilder? _Media;
  GCharactersData_MediaBuilder get Media =>
      _$this._Media ??= new GCharactersData_MediaBuilder();
  set Media(GCharactersData_MediaBuilder? Media) => _$this._Media = Media;

  GCharactersDataBuilder() {
    GCharactersData._initializeBuilder(this);
  }

  GCharactersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData;
  }

  @override
  void update(void Function(GCharactersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData build() => _build();

  _$GCharactersData _build() {
    _$GCharactersData _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharactersData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharactersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media extends GCharactersData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i2.GCountryCode? countryOfOrigin;
  @override
  final GCharactersData_Media_characters? characters;

  factory _$GCharactersData_Media(
          [void Function(GCharactersData_MediaBuilder)? updates]) =>
      (new GCharactersData_MediaBuilder()..update(updates))._build();

  _$GCharactersData_Media._(
      {required this.G__typename,
      required this.id,
      this.countryOfOrigin,
      this.characters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharactersData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GCharactersData_Media', 'id');
  }

  @override
  GCharactersData_Media rebuild(
          void Function(GCharactersData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_MediaBuilder toBuilder() =>
      new GCharactersData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media &&
        G__typename == other.G__typename &&
        id == other.id &&
        countryOfOrigin == other.countryOfOrigin &&
        characters == other.characters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, countryOfOrigin.hashCode);
    _$hash = $jc(_$hash, characters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCharactersData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('countryOfOrigin', countryOfOrigin)
          ..add('characters', characters))
        .toString();
  }
}

class GCharactersData_MediaBuilder
    implements Builder<GCharactersData_Media, GCharactersData_MediaBuilder> {
  _$GCharactersData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i2.GCountryCodeBuilder? _countryOfOrigin;
  _i2.GCountryCodeBuilder get countryOfOrigin =>
      _$this._countryOfOrigin ??= new _i2.GCountryCodeBuilder();
  set countryOfOrigin(_i2.GCountryCodeBuilder? countryOfOrigin) =>
      _$this._countryOfOrigin = countryOfOrigin;

  GCharactersData_Media_charactersBuilder? _characters;
  GCharactersData_Media_charactersBuilder get characters =>
      _$this._characters ??= new GCharactersData_Media_charactersBuilder();
  set characters(GCharactersData_Media_charactersBuilder? characters) =>
      _$this._characters = characters;

  GCharactersData_MediaBuilder() {
    GCharactersData_Media._initializeBuilder(this);
  }

  GCharactersData_MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _countryOfOrigin = $v.countryOfOrigin?.toBuilder();
      _characters = $v.characters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media;
  }

  @override
  void update(void Function(GCharactersData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media build() => _build();

  _$GCharactersData_Media _build() {
    _$GCharactersData_Media _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCharactersData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharactersData_Media', 'id'),
              countryOfOrigin: _countryOfOrigin?.build(),
              characters: _characters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'countryOfOrigin';
        _countryOfOrigin?.build();
        _$failedField = 'characters';
        _characters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharactersData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters
    extends GCharactersData_Media_characters {
  @override
  final String G__typename;
  @override
  final GCharactersData_Media_characters_pageInfo? pageInfo;
  @override
  final BuiltList<GCharactersData_Media_characters_edges?>? edges;

  factory _$GCharactersData_Media_characters(
          [void Function(GCharactersData_Media_charactersBuilder)? updates]) =>
      (new GCharactersData_Media_charactersBuilder()..update(updates))._build();

  _$GCharactersData_Media_characters._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharactersData_Media_characters', 'G__typename');
  }

  @override
  GCharactersData_Media_characters rebuild(
          void Function(GCharactersData_Media_charactersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_charactersBuilder toBuilder() =>
      new GCharactersData_Media_charactersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters &&
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
    return (newBuiltValueToStringHelper(r'GCharactersData_Media_characters')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GCharactersData_Media_charactersBuilder
    implements
        Builder<GCharactersData_Media_characters,
            GCharactersData_Media_charactersBuilder> {
  _$GCharactersData_Media_characters? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCharactersData_Media_characters_pageInfoBuilder? _pageInfo;
  GCharactersData_Media_characters_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GCharactersData_Media_characters_pageInfoBuilder();
  set pageInfo(GCharactersData_Media_characters_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GCharactersData_Media_characters_edges?>? _edges;
  ListBuilder<GCharactersData_Media_characters_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GCharactersData_Media_characters_edges?>();
  set edges(ListBuilder<GCharactersData_Media_characters_edges?>? edges) =>
      _$this._edges = edges;

  GCharactersData_Media_charactersBuilder() {
    GCharactersData_Media_characters._initializeBuilder(this);
  }

  GCharactersData_Media_charactersBuilder get _$this {
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
  void replace(GCharactersData_Media_characters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters;
  }

  @override
  void update(void Function(GCharactersData_Media_charactersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters build() => _build();

  _$GCharactersData_Media_characters _build() {
    _$GCharactersData_Media_characters _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media_characters._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharactersData_Media_characters', 'G__typename'),
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
            r'GCharactersData_Media_characters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_pageInfo
    extends GCharactersData_Media_characters_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GCharactersData_Media_characters_pageInfo(
          [void Function(GCharactersData_Media_characters_pageInfoBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_pageInfoBuilder()..update(updates))
          ._build();

  _$GCharactersData_Media_characters_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharactersData_Media_characters_pageInfo', 'G__typename');
  }

  @override
  GCharactersData_Media_characters_pageInfo rebuild(
          void Function(GCharactersData_Media_characters_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_pageInfoBuilder toBuilder() =>
      new GCharactersData_Media_characters_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_pageInfo &&
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
            r'GCharactersData_Media_characters_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GCharactersData_Media_characters_pageInfoBuilder
    implements
        Builder<GCharactersData_Media_characters_pageInfo,
            GCharactersData_Media_characters_pageInfoBuilder> {
  _$GCharactersData_Media_characters_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GCharactersData_Media_characters_pageInfoBuilder() {
    GCharactersData_Media_characters_pageInfo._initializeBuilder(this);
  }

  GCharactersData_Media_characters_pageInfoBuilder get _$this {
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
  void replace(GCharactersData_Media_characters_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_pageInfo;
  }

  @override
  void update(
      void Function(GCharactersData_Media_characters_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_pageInfo build() => _build();

  _$GCharactersData_Media_characters_pageInfo _build() {
    final _$result = _$v ??
        new _$GCharactersData_Media_characters_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GCharactersData_Media_characters_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges
    extends GCharactersData_Media_characters_edges {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final _i2.GCharacterRole? role;
  @override
  final GCharactersData_Media_characters_edges_node? node;
  @override
  final BuiltList<GCharactersData_Media_characters_edges_voiceActorRoles?>?
      voiceActorRoles;

  factory _$GCharactersData_Media_characters_edges(
          [void Function(GCharactersData_Media_characters_edgesBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edgesBuilder()..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges._(
      {required this.G__typename,
      this.name,
      this.role,
      this.node,
      this.voiceActorRoles})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCharactersData_Media_characters_edges', 'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges rebuild(
          void Function(GCharactersData_Media_characters_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edgesBuilder toBuilder() =>
      new GCharactersData_Media_characters_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_edges &&
        G__typename == other.G__typename &&
        name == other.name &&
        role == other.role &&
        node == other.node &&
        voiceActorRoles == other.voiceActorRoles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jc(_$hash, voiceActorRoles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharactersData_Media_characters_edges')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('role', role)
          ..add('node', node)
          ..add('voiceActorRoles', voiceActorRoles))
        .toString();
  }
}

class GCharactersData_Media_characters_edgesBuilder
    implements
        Builder<GCharactersData_Media_characters_edges,
            GCharactersData_Media_characters_edgesBuilder> {
  _$GCharactersData_Media_characters_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.GCharacterRole? _role;
  _i2.GCharacterRole? get role => _$this._role;
  set role(_i2.GCharacterRole? role) => _$this._role = role;

  GCharactersData_Media_characters_edges_nodeBuilder? _node;
  GCharactersData_Media_characters_edges_nodeBuilder get node =>
      _$this._node ??= new GCharactersData_Media_characters_edges_nodeBuilder();
  set node(GCharactersData_Media_characters_edges_nodeBuilder? node) =>
      _$this._node = node;

  ListBuilder<GCharactersData_Media_characters_edges_voiceActorRoles?>?
      _voiceActorRoles;
  ListBuilder<GCharactersData_Media_characters_edges_voiceActorRoles?>
      get voiceActorRoles => _$this._voiceActorRoles ??= new ListBuilder<
          GCharactersData_Media_characters_edges_voiceActorRoles?>();
  set voiceActorRoles(
          ListBuilder<GCharactersData_Media_characters_edges_voiceActorRoles?>?
              voiceActorRoles) =>
      _$this._voiceActorRoles = voiceActorRoles;

  GCharactersData_Media_characters_edgesBuilder() {
    GCharactersData_Media_characters_edges._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _role = $v.role;
      _node = $v.node?.toBuilder();
      _voiceActorRoles = $v.voiceActorRoles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersData_Media_characters_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_edges;
  }

  @override
  void update(
      void Function(GCharactersData_Media_characters_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges build() => _build();

  _$GCharactersData_Media_characters_edges _build() {
    _$GCharactersData_Media_characters_edges _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media_characters_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GCharactersData_Media_characters_edges', 'G__typename'),
              name: name,
              role: role,
              node: _node?.build(),
              voiceActorRoles: _voiceActorRoles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
        _$failedField = 'voiceActorRoles';
        _voiceActorRoles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCharactersData_Media_characters_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_node
    extends GCharactersData_Media_characters_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharactersData_Media_characters_edges_node_name? name;
  @override
  final GCharactersData_Media_characters_edges_node_image? image;

  factory _$GCharactersData_Media_characters_edges_node(
          [void Function(GCharactersData_Media_characters_edges_nodeBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_node._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharactersData_Media_characters_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GCharactersData_Media_characters_edges_node', 'id');
  }

  @override
  GCharactersData_Media_characters_edges_node rebuild(
          void Function(GCharactersData_Media_characters_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_nodeBuilder toBuilder() =>
      new GCharactersData_Media_characters_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_edges_node &&
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
            r'GCharactersData_Media_characters_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_nodeBuilder
    implements
        Builder<GCharactersData_Media_characters_edges_node,
            GCharactersData_Media_characters_edges_nodeBuilder> {
  _$GCharactersData_Media_characters_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharactersData_Media_characters_edges_node_nameBuilder? _name;
  GCharactersData_Media_characters_edges_node_nameBuilder get name =>
      _$this._name ??=
          new GCharactersData_Media_characters_edges_node_nameBuilder();
  set name(GCharactersData_Media_characters_edges_node_nameBuilder? name) =>
      _$this._name = name;

  GCharactersData_Media_characters_edges_node_imageBuilder? _image;
  GCharactersData_Media_characters_edges_node_imageBuilder get image =>
      _$this._image ??=
          new GCharactersData_Media_characters_edges_node_imageBuilder();
  set image(GCharactersData_Media_characters_edges_node_imageBuilder? image) =>
      _$this._image = image;

  GCharactersData_Media_characters_edges_nodeBuilder() {
    GCharactersData_Media_characters_edges_node._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_nodeBuilder get _$this {
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
  void replace(GCharactersData_Media_characters_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_edges_node;
  }

  @override
  void update(
      void Function(GCharactersData_Media_characters_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_node build() => _build();

  _$GCharactersData_Media_characters_edges_node _build() {
    _$GCharactersData_Media_characters_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media_characters_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharactersData_Media_characters_edges_node',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GCharactersData_Media_characters_edges_node', 'id'),
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
            r'GCharactersData_Media_characters_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_node_name
    extends GCharactersData_Media_characters_edges_node_name {
  @override
  final String G__typename;
  @override
  final String? first;
  @override
  final String? full;
  @override
  final String? userPreferred;

  factory _$GCharactersData_Media_characters_edges_node_name(
          [void Function(
                  GCharactersData_Media_characters_edges_node_nameBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_node_nameBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_node_name._(
      {required this.G__typename, this.first, this.full, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharactersData_Media_characters_edges_node_name', 'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges_node_name rebuild(
          void Function(GCharactersData_Media_characters_edges_node_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_node_nameBuilder toBuilder() =>
      new GCharactersData_Media_characters_edges_node_nameBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_edges_node_name &&
        G__typename == other.G__typename &&
        first == other.first &&
        full == other.full &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, first.hashCode);
    _$hash = $jc(_$hash, full.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharactersData_Media_characters_edges_node_name')
          ..add('G__typename', G__typename)
          ..add('first', first)
          ..add('full', full)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_node_nameBuilder
    implements
        Builder<GCharactersData_Media_characters_edges_node_name,
            GCharactersData_Media_characters_edges_node_nameBuilder> {
  _$GCharactersData_Media_characters_edges_node_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _first;
  String? get first => _$this._first;
  set first(String? first) => _$this._first = first;

  String? _full;
  String? get full => _$this._full;
  set full(String? full) => _$this._full = full;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharactersData_Media_characters_edges_node_nameBuilder() {
    GCharactersData_Media_characters_edges_node_name._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_node_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _first = $v.first;
      _full = $v.full;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersData_Media_characters_edges_node_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_edges_node_name;
  }

  @override
  void update(
      void Function(GCharactersData_Media_characters_edges_node_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_node_name build() => _build();

  _$GCharactersData_Media_characters_edges_node_name _build() {
    final _$result = _$v ??
        new _$GCharactersData_Media_characters_edges_node_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharactersData_Media_characters_edges_node_name',
                'G__typename'),
            first: first,
            full: full,
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_node_image
    extends GCharactersData_Media_characters_edges_node_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharactersData_Media_characters_edges_node_image(
          [void Function(
                  GCharactersData_Media_characters_edges_node_imageBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_node_imageBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_node_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GCharactersData_Media_characters_edges_node_image', 'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges_node_image rebuild(
          void Function(
                  GCharactersData_Media_characters_edges_node_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_node_imageBuilder toBuilder() =>
      new GCharactersData_Media_characters_edges_node_imageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_edges_node_image &&
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
            r'GCharactersData_Media_characters_edges_node_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_node_imageBuilder
    implements
        Builder<GCharactersData_Media_characters_edges_node_image,
            GCharactersData_Media_characters_edges_node_imageBuilder> {
  _$GCharactersData_Media_characters_edges_node_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharactersData_Media_characters_edges_node_imageBuilder() {
    GCharactersData_Media_characters_edges_node_image._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_node_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCharactersData_Media_characters_edges_node_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_edges_node_image;
  }

  @override
  void update(
      void Function(GCharactersData_Media_characters_edges_node_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_node_image build() => _build();

  _$GCharactersData_Media_characters_edges_node_image _build() {
    final _$result = _$v ??
        new _$GCharactersData_Media_characters_edges_node_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharactersData_Media_characters_edges_node_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles
    extends GCharactersData_Media_characters_edges_voiceActorRoles {
  @override
  final String G__typename;
  @override
  final String? roleNotes;
  @override
  final String? dubGroup;
  @override
  final GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor?
      voiceActor;

  factory _$GCharactersData_Media_characters_edges_voiceActorRoles(
          [void Function(
                  GCharactersData_Media_characters_edges_voiceActorRolesBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_voiceActorRolesBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles._(
      {required this.G__typename,
      this.roleNotes,
      this.dubGroup,
      this.voiceActor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharactersData_Media_characters_edges_voiceActorRoles',
        'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles rebuild(
          void Function(
                  GCharactersData_Media_characters_edges_voiceActorRolesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_voiceActorRolesBuilder toBuilder() =>
      new GCharactersData_Media_characters_edges_voiceActorRolesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCharactersData_Media_characters_edges_voiceActorRoles &&
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
            r'GCharactersData_Media_characters_edges_voiceActorRoles')
          ..add('G__typename', G__typename)
          ..add('roleNotes', roleNotes)
          ..add('dubGroup', dubGroup)
          ..add('voiceActor', voiceActor))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_voiceActorRolesBuilder
    implements
        Builder<GCharactersData_Media_characters_edges_voiceActorRoles,
            GCharactersData_Media_characters_edges_voiceActorRolesBuilder> {
  _$GCharactersData_Media_characters_edges_voiceActorRoles? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _roleNotes;
  String? get roleNotes => _$this._roleNotes;
  set roleNotes(String? roleNotes) => _$this._roleNotes = roleNotes;

  String? _dubGroup;
  String? get dubGroup => _$this._dubGroup;
  set dubGroup(String? dubGroup) => _$this._dubGroup = dubGroup;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder?
      _voiceActor;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
      get voiceActor => _$this._voiceActor ??=
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder();
  set voiceActor(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder?
              voiceActor) =>
      _$this._voiceActor = voiceActor;

  GCharactersData_Media_characters_edges_voiceActorRolesBuilder() {
    GCharactersData_Media_characters_edges_voiceActorRoles._initializeBuilder(
        this);
  }

  GCharactersData_Media_characters_edges_voiceActorRolesBuilder get _$this {
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
  void replace(GCharactersData_Media_characters_edges_voiceActorRoles other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCharactersData_Media_characters_edges_voiceActorRoles;
  }

  @override
  void update(
      void Function(
              GCharactersData_Media_characters_edges_voiceActorRolesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles build() => _build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles _build() {
    _$GCharactersData_Media_characters_edges_voiceActorRoles _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media_characters_edges_voiceActorRoles._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharactersData_Media_characters_edges_voiceActorRoles',
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
            r'GCharactersData_Media_characters_edges_voiceActorRoles',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
    extends GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name?
      name;
  @override
  final String? languageV2;
  @override
  final GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      image;

  factory _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor(
          [void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.languageV2,
      this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor',
        'id');
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor rebuild(
          void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
      toBuilder() =>
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        languageV2 == other.languageV2 &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, languageV2.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('languageV2', languageV2)
          ..add('image', image))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
    implements
        Builder<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder> {
  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder?
      _name;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
      get name => _$this._name ??=
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder();
  set name(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder?
              name) =>
      _$this._name = name;

  String? _languageV2;
  String? get languageV2 => _$this._languageV2;
  set languageV2(String? languageV2) => _$this._languageV2 = languageV2;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder?
      _image;
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
      get image => _$this._image ??=
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder();
  set image(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder?
              image) =>
      _$this._image = image;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder() {
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
        ._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _languageV2 = $v.languageV2;
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor;
  }

  @override
  void update(
      void Function(
              GCharactersData_Media_characters_edges_voiceActorRoles_voiceActorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor build() =>
      _build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor _build() {
    _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
        _$result;
    try {
      _$result = _$v ??
          new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor',
                  'id'),
              name: _name?.build(),
              languageV2: languageV2,
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
            r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
    extends GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name(
          [void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name',
        'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name rebuild(
          void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
      toBuilder() =>
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name &&
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
            r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
    implements
        Builder<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder> {
  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder() {
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
        ._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder
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
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name;
  }

  @override
  void update(
      void Function(
              GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
      build() => _build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
      _build() {
    final _$result = _$v ??
        new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
    extends GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image(
          [void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder)?
              updates]) =>
      (new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder()
            ..update(updates))
          ._build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image',
        'G__typename');
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image rebuild(
          void Function(
                  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
      toBuilder() =>
          new GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image &&
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
            r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
    implements
        Builder<
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image,
            GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder> {
  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder() {
    GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
        ._initializeBuilder(this);
  }

  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder
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
      GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image;
  }

  @override
  void update(
      void Function(
              GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
      build() => _build();

  _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
      _build() {
    final _$result = _$v ??
        new _$GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image',
                'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
