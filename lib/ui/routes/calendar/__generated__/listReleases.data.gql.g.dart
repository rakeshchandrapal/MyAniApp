// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listReleases.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReleasesListData> _$gReleasesListDataSerializer =
    new _$GReleasesListDataSerializer();
Serializer<GReleasesListData_Page> _$gReleasesListDataPageSerializer =
    new _$GReleasesListData_PageSerializer();
Serializer<GReleasesListData_Page_pageInfo>
    _$gReleasesListDataPagePageInfoSerializer =
    new _$GReleasesListData_Page_pageInfoSerializer();
Serializer<GReleasesListData_Page_media>
    _$gReleasesListDataPageMediaSerializer =
    new _$GReleasesListData_Page_mediaSerializer();
Serializer<GReleasesListData_Page_media_nextAiringEpisode>
    _$gReleasesListDataPageMediaNextAiringEpisodeSerializer =
    new _$GReleasesListData_Page_media_nextAiringEpisodeSerializer();
Serializer<GReleasesListData_Page_media_airingSchedule>
    _$gReleasesListDataPageMediaAiringScheduleSerializer =
    new _$GReleasesListData_Page_media_airingScheduleSerializer();
Serializer<GReleasesListData_Page_media_airingSchedule_edges>
    _$gReleasesListDataPageMediaAiringScheduleEdgesSerializer =
    new _$GReleasesListData_Page_media_airingSchedule_edgesSerializer();
Serializer<GReleasesListData_Page_media_airingSchedule_edges_node>
    _$gReleasesListDataPageMediaAiringScheduleEdgesNodeSerializer =
    new _$GReleasesListData_Page_media_airingSchedule_edges_nodeSerializer();
Serializer<GReleasesListData_Page_media_title>
    _$gReleasesListDataPageMediaTitleSerializer =
    new _$GReleasesListData_Page_media_titleSerializer();
Serializer<GReleasesListData_Page_media_coverImage>
    _$gReleasesListDataPageMediaCoverImageSerializer =
    new _$GReleasesListData_Page_media_coverImageSerializer();

class _$GReleasesListDataSerializer
    implements StructuredSerializer<GReleasesListData> {
  @override
  final Iterable<Type> types = const [GReleasesListData, _$GReleasesListData];
  @override
  final String wireName = 'GReleasesListData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReleasesListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GReleasesListData_Page)));
    }
    return result;
  }

  @override
  GReleasesListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListDataBuilder();

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
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GReleasesListData_Page))!
              as GReleasesListData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_PageSerializer
    implements StructuredSerializer<GReleasesListData_Page> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page,
    _$GReleasesListData_Page
  ];
  @override
  final String wireName = 'GReleasesListData_Page';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasesListData_Page object,
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
            specifiedType: const FullType(GReleasesListData_Page_pageInfo)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GReleasesListData_Page_media)
            ])));
    }
    return result;
  }

  @override
  GReleasesListData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_PageBuilder();

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
                      const FullType(GReleasesListData_Page_pageInfo))!
              as GReleasesListData_Page_pageInfo);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GReleasesListData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_pageInfoSerializer
    implements StructuredSerializer<GReleasesListData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_pageInfo,
    _$GReleasesListData_Page_pageInfo
  ];
  @override
  final String wireName = 'GReleasesListData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasesListData_Page_pageInfo object,
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
  GReleasesListData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_pageInfoBuilder();

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

class _$GReleasesListData_Page_mediaSerializer
    implements StructuredSerializer<GReleasesListData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media,
    _$GReleasesListData_Page_media
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasesListData_Page_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nextAiringEpisode;
    if (value != null) {
      result
        ..add('nextAiringEpisode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GReleasesListData_Page_media_nextAiringEpisode)));
    }
    value = object.airingSchedule;
    if (value != null) {
      result
        ..add('airingSchedule')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReleasesListData_Page_media_airingSchedule)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i4.GMediaType)));
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
            specifiedType: const FullType(_i4.GMediaFormat)));
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
            specifiedType: const FullType(GReleasesListData_Page_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GReleasesListData_Page_media_coverImage)));
    }
    return result;
  }

  @override
  GReleasesListData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_mediaBuilder();

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
        case 'nextAiringEpisode':
          result.nextAiringEpisode.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReleasesListData_Page_media_nextAiringEpisode))!
              as GReleasesListData_Page_media_nextAiringEpisode);
          break;
        case 'airingSchedule':
          result.airingSchedule.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GReleasesListData_Page_media_airingSchedule))!
              as GReleasesListData_Page_media_airingSchedule);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i4.GMediaType)) as _i4.GMediaType?;
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
                  specifiedType: const FullType(_i4.GMediaFormat))
              as _i4.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReleasesListData_Page_media_title))!
              as GReleasesListData_Page_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GReleasesListData_Page_media_coverImage))!
              as GReleasesListData_Page_media_coverImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_media_nextAiringEpisodeSerializer
    implements
        StructuredSerializer<GReleasesListData_Page_media_nextAiringEpisode> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_nextAiringEpisode,
    _$GReleasesListData_Page_media_nextAiringEpisode
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media_nextAiringEpisode';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReleasesListData_Page_media_nextAiringEpisode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GReleasesListData_Page_media_nextAiringEpisode deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_media_nextAiringEpisodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_media_airingScheduleSerializer
    implements
        StructuredSerializer<GReleasesListData_Page_media_airingSchedule> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_airingSchedule,
    _$GReleasesListData_Page_media_airingSchedule
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media_airingSchedule';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReleasesListData_Page_media_airingSchedule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GReleasesListData_Page_media_airingSchedule_edges)
            ])));
    }
    return result;
  }

  @override
  GReleasesListData_Page_media_airingSchedule deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_media_airingScheduleBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GReleasesListData_Page_media_airingSchedule_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_media_airingSchedule_edgesSerializer
    implements
        StructuredSerializer<
            GReleasesListData_Page_media_airingSchedule_edges> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_airingSchedule_edges,
    _$GReleasesListData_Page_media_airingSchedule_edges
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media_airingSchedule_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReleasesListData_Page_media_airingSchedule_edges object,
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
            specifiedType: const FullType(
                GReleasesListData_Page_media_airingSchedule_edges_node)));
    }
    return result;
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GReleasesListData_Page_media_airingSchedule_edgesBuilder();

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
                      GReleasesListData_Page_media_airingSchedule_edges_node))!
              as GReleasesListData_Page_media_airingSchedule_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_media_airingSchedule_edges_nodeSerializer
    implements
        StructuredSerializer<
            GReleasesListData_Page_media_airingSchedule_edges_node> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_airingSchedule_edges_node,
    _$GReleasesListData_Page_media_airingSchedule_edges_node
  ];
  @override
  final String wireName =
      'GReleasesListData_Page_media_airingSchedule_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GReleasesListData_Page_media_airingSchedule_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'airingAt',
      serializers.serialize(object.airingAt,
          specifiedType: const FullType(int)),
      'timeUntilAiring',
      serializers.serialize(object.timeUntilAiring,
          specifiedType: const FullType(int)),
      'episode',
      serializers.serialize(object.episode, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder();

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
        case 'airingAt':
          result.airingAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'timeUntilAiring':
          result.timeUntilAiring = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'episode':
          result.episode = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListData_Page_media_titleSerializer
    implements StructuredSerializer<GReleasesListData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_title,
    _$GReleasesListData_Page_media_title
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasesListData_Page_media_title object,
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
  GReleasesListData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_media_titleBuilder();

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

class _$GReleasesListData_Page_media_coverImageSerializer
    implements StructuredSerializer<GReleasesListData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GReleasesListData_Page_media_coverImage,
    _$GReleasesListData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GReleasesListData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GReleasesListData_Page_media_coverImage object,
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
  GReleasesListData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListData_Page_media_coverImageBuilder();

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

class _$GReleasesListData extends GReleasesListData {
  @override
  final String G__typename;
  @override
  final GReleasesListData_Page? Page;

  factory _$GReleasesListData(
          [void Function(GReleasesListDataBuilder)? updates]) =>
      (new GReleasesListDataBuilder()..update(updates))._build();

  _$GReleasesListData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasesListData', 'G__typename');
  }

  @override
  GReleasesListData rebuild(void Function(GReleasesListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListDataBuilder toBuilder() =>
      new GReleasesListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReleasesListData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GReleasesListDataBuilder
    implements Builder<GReleasesListData, GReleasesListDataBuilder> {
  _$GReleasesListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReleasesListData_PageBuilder? _Page;
  GReleasesListData_PageBuilder get Page =>
      _$this._Page ??= new GReleasesListData_PageBuilder();
  set Page(GReleasesListData_PageBuilder? Page) => _$this._Page = Page;

  GReleasesListDataBuilder() {
    GReleasesListData._initializeBuilder(this);
  }

  GReleasesListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData;
  }

  @override
  void update(void Function(GReleasesListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData build() => _build();

  _$GReleasesListData _build() {
    _$GReleasesListData _$result;
    try {
      _$result = _$v ??
          new _$GReleasesListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReleasesListData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasesListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page extends GReleasesListData_Page {
  @override
  final String G__typename;
  @override
  final GReleasesListData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GReleasesListData_Page_media?>? media;

  factory _$GReleasesListData_Page(
          [void Function(GReleasesListData_PageBuilder)? updates]) =>
      (new GReleasesListData_PageBuilder()..update(updates))._build();

  _$GReleasesListData_Page._(
      {required this.G__typename, this.pageInfo, this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasesListData_Page', 'G__typename');
  }

  @override
  GReleasesListData_Page rebuild(
          void Function(GReleasesListData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_PageBuilder toBuilder() =>
      new GReleasesListData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReleasesListData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('media', media))
        .toString();
  }
}

class GReleasesListData_PageBuilder
    implements Builder<GReleasesListData_Page, GReleasesListData_PageBuilder> {
  _$GReleasesListData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReleasesListData_Page_pageInfoBuilder? _pageInfo;
  GReleasesListData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GReleasesListData_Page_pageInfoBuilder();
  set pageInfo(GReleasesListData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GReleasesListData_Page_media?>? _media;
  ListBuilder<GReleasesListData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GReleasesListData_Page_media?>();
  set media(ListBuilder<GReleasesListData_Page_media?>? media) =>
      _$this._media = media;

  GReleasesListData_PageBuilder() {
    GReleasesListData_Page._initializeBuilder(this);
  }

  GReleasesListData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page;
  }

  @override
  void update(void Function(GReleasesListData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page build() => _build();

  _$GReleasesListData_Page _build() {
    _$GReleasesListData_Page _$result;
    try {
      _$result = _$v ??
          new _$GReleasesListData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReleasesListData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasesListData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_pageInfo
    extends GReleasesListData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GReleasesListData_Page_pageInfo(
          [void Function(GReleasesListData_Page_pageInfoBuilder)? updates]) =>
      (new GReleasesListData_Page_pageInfoBuilder()..update(updates))._build();

  _$GReleasesListData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasesListData_Page_pageInfo', 'G__typename');
  }

  @override
  GReleasesListData_Page_pageInfo rebuild(
          void Function(GReleasesListData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_pageInfoBuilder toBuilder() =>
      new GReleasesListData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GReleasesListData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GReleasesListData_Page_pageInfoBuilder
    implements
        Builder<GReleasesListData_Page_pageInfo,
            GReleasesListData_Page_pageInfoBuilder> {
  _$GReleasesListData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GReleasesListData_Page_pageInfoBuilder() {
    GReleasesListData_Page_pageInfo._initializeBuilder(this);
  }

  GReleasesListData_Page_pageInfoBuilder get _$this {
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
  void replace(GReleasesListData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_pageInfo;
  }

  @override
  void update(void Function(GReleasesListData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_pageInfo build() => _build();

  _$GReleasesListData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GReleasesListData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GReleasesListData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media extends GReleasesListData_Page_media {
  @override
  final String G__typename;
  @override
  final GReleasesListData_Page_media_nextAiringEpisode? nextAiringEpisode;
  @override
  final GReleasesListData_Page_media_airingSchedule? airingSchedule;
  @override
  final int id;
  @override
  final _i4.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i4.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GReleasesListData_Page_media_title? title;
  @override
  final GReleasesListData_Page_media_coverImage? coverImage;

  factory _$GReleasesListData_Page_media(
          [void Function(GReleasesListData_Page_mediaBuilder)? updates]) =>
      (new GReleasesListData_Page_mediaBuilder()..update(updates))._build();

  _$GReleasesListData_Page_media._(
      {required this.G__typename,
      this.nextAiringEpisode,
      this.airingSchedule,
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
        G__typename, r'GReleasesListData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GReleasesListData_Page_media', 'id');
  }

  @override
  GReleasesListData_Page_media rebuild(
          void Function(GReleasesListData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_mediaBuilder toBuilder() =>
      new GReleasesListData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media &&
        G__typename == other.G__typename &&
        nextAiringEpisode == other.nextAiringEpisode &&
        airingSchedule == other.airingSchedule &&
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
    _$hash = $jc(_$hash, nextAiringEpisode.hashCode);
    _$hash = $jc(_$hash, airingSchedule.hashCode);
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
    return (newBuiltValueToStringHelper(r'GReleasesListData_Page_media')
          ..add('G__typename', G__typename)
          ..add('nextAiringEpisode', nextAiringEpisode)
          ..add('airingSchedule', airingSchedule)
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

class GReleasesListData_Page_mediaBuilder
    implements
        Builder<GReleasesListData_Page_media,
            GReleasesListData_Page_mediaBuilder> {
  _$GReleasesListData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReleasesListData_Page_media_nextAiringEpisodeBuilder? _nextAiringEpisode;
  GReleasesListData_Page_media_nextAiringEpisodeBuilder get nextAiringEpisode =>
      _$this._nextAiringEpisode ??=
          new GReleasesListData_Page_media_nextAiringEpisodeBuilder();
  set nextAiringEpisode(
          GReleasesListData_Page_media_nextAiringEpisodeBuilder?
              nextAiringEpisode) =>
      _$this._nextAiringEpisode = nextAiringEpisode;

  GReleasesListData_Page_media_airingScheduleBuilder? _airingSchedule;
  GReleasesListData_Page_media_airingScheduleBuilder get airingSchedule =>
      _$this._airingSchedule ??=
          new GReleasesListData_Page_media_airingScheduleBuilder();
  set airingSchedule(
          GReleasesListData_Page_media_airingScheduleBuilder? airingSchedule) =>
      _$this._airingSchedule = airingSchedule;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i4.GMediaType? _type;
  _i4.GMediaType? get type => _$this._type;
  set type(_i4.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i4.GMediaFormat? _format;
  _i4.GMediaFormat? get format => _$this._format;
  set format(_i4.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GReleasesListData_Page_media_titleBuilder? _title;
  GReleasesListData_Page_media_titleBuilder get title =>
      _$this._title ??= new GReleasesListData_Page_media_titleBuilder();
  set title(GReleasesListData_Page_media_titleBuilder? title) =>
      _$this._title = title;

  GReleasesListData_Page_media_coverImageBuilder? _coverImage;
  GReleasesListData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GReleasesListData_Page_media_coverImageBuilder();
  set coverImage(GReleasesListData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  GReleasesListData_Page_mediaBuilder() {
    GReleasesListData_Page_media._initializeBuilder(this);
  }

  GReleasesListData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nextAiringEpisode = $v.nextAiringEpisode?.toBuilder();
      _airingSchedule = $v.airingSchedule?.toBuilder();
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
  void replace(GReleasesListData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media;
  }

  @override
  void update(void Function(GReleasesListData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media build() => _build();

  _$GReleasesListData_Page_media _build() {
    _$GReleasesListData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GReleasesListData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GReleasesListData_Page_media', 'G__typename'),
              nextAiringEpisode: _nextAiringEpisode?.build(),
              airingSchedule: _airingSchedule?.build(),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GReleasesListData_Page_media', 'id'),
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
        _$failedField = 'nextAiringEpisode';
        _nextAiringEpisode?.build();
        _$failedField = 'airingSchedule';
        _airingSchedule?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasesListData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_nextAiringEpisode
    extends GReleasesListData_Page_media_nextAiringEpisode {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GReleasesListData_Page_media_nextAiringEpisode(
          [void Function(GReleasesListData_Page_media_nextAiringEpisodeBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_nextAiringEpisodeBuilder()
            ..update(updates))
          ._build();

  _$GReleasesListData_Page_media_nextAiringEpisode._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReleasesListData_Page_media_nextAiringEpisode', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(airingAt,
        r'GReleasesListData_Page_media_nextAiringEpisode', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(timeUntilAiring,
        r'GReleasesListData_Page_media_nextAiringEpisode', 'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(
        episode, r'GReleasesListData_Page_media_nextAiringEpisode', 'episode');
  }

  @override
  GReleasesListData_Page_media_nextAiringEpisode rebuild(
          void Function(GReleasesListData_Page_media_nextAiringEpisodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_nextAiringEpisodeBuilder toBuilder() =>
      new GReleasesListData_Page_media_nextAiringEpisodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_nextAiringEpisode &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasesListData_Page_media_nextAiringEpisode')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GReleasesListData_Page_media_nextAiringEpisodeBuilder
    implements
        Builder<GReleasesListData_Page_media_nextAiringEpisode,
            GReleasesListData_Page_media_nextAiringEpisodeBuilder> {
  _$GReleasesListData_Page_media_nextAiringEpisode? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GReleasesListData_Page_media_nextAiringEpisodeBuilder() {
    GReleasesListData_Page_media_nextAiringEpisode._initializeBuilder(this);
  }

  GReleasesListData_Page_media_nextAiringEpisodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_nextAiringEpisode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_nextAiringEpisode;
  }

  @override
  void update(
      void Function(GReleasesListData_Page_media_nextAiringEpisodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_nextAiringEpisode build() => _build();

  _$GReleasesListData_Page_media_nextAiringEpisode _build() {
    final _$result = _$v ??
        new _$GReleasesListData_Page_media_nextAiringEpisode._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GReleasesListData_Page_media_nextAiringEpisode',
                'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(airingAt,
                r'GReleasesListData_Page_media_nextAiringEpisode', 'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GReleasesListData_Page_media_nextAiringEpisode',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(episode,
                r'GReleasesListData_Page_media_nextAiringEpisode', 'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_airingSchedule
    extends GReleasesListData_Page_media_airingSchedule {
  @override
  final String G__typename;
  @override
  final BuiltList<GReleasesListData_Page_media_airingSchedule_edges?>? edges;

  factory _$GReleasesListData_Page_media_airingSchedule(
          [void Function(GReleasesListData_Page_media_airingScheduleBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_airingScheduleBuilder()
            ..update(updates))
          ._build();

  _$GReleasesListData_Page_media_airingSchedule._(
      {required this.G__typename, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReleasesListData_Page_media_airingSchedule', 'G__typename');
  }

  @override
  GReleasesListData_Page_media_airingSchedule rebuild(
          void Function(GReleasesListData_Page_media_airingScheduleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_airingScheduleBuilder toBuilder() =>
      new GReleasesListData_Page_media_airingScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_airingSchedule &&
        G__typename == other.G__typename &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasesListData_Page_media_airingSchedule')
          ..add('G__typename', G__typename)
          ..add('edges', edges))
        .toString();
  }
}

class GReleasesListData_Page_media_airingScheduleBuilder
    implements
        Builder<GReleasesListData_Page_media_airingSchedule,
            GReleasesListData_Page_media_airingScheduleBuilder> {
  _$GReleasesListData_Page_media_airingSchedule? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GReleasesListData_Page_media_airingSchedule_edges?>? _edges;
  ListBuilder<GReleasesListData_Page_media_airingSchedule_edges?> get edges =>
      _$this._edges ??=
          new ListBuilder<GReleasesListData_Page_media_airingSchedule_edges?>();
  set edges(
          ListBuilder<GReleasesListData_Page_media_airingSchedule_edges?>?
              edges) =>
      _$this._edges = edges;

  GReleasesListData_Page_media_airingScheduleBuilder() {
    GReleasesListData_Page_media_airingSchedule._initializeBuilder(this);
  }

  GReleasesListData_Page_media_airingScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_airingSchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_airingSchedule;
  }

  @override
  void update(
      void Function(GReleasesListData_Page_media_airingScheduleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_airingSchedule build() => _build();

  _$GReleasesListData_Page_media_airingSchedule _build() {
    _$GReleasesListData_Page_media_airingSchedule _$result;
    try {
      _$result = _$v ??
          new _$GReleasesListData_Page_media_airingSchedule._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GReleasesListData_Page_media_airingSchedule',
                  'G__typename'),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasesListData_Page_media_airingSchedule',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_airingSchedule_edges
    extends GReleasesListData_Page_media_airingSchedule_edges {
  @override
  final String G__typename;
  @override
  final GReleasesListData_Page_media_airingSchedule_edges_node? node;

  factory _$GReleasesListData_Page_media_airingSchedule_edges(
          [void Function(
                  GReleasesListData_Page_media_airingSchedule_edgesBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_airingSchedule_edgesBuilder()
            ..update(updates))
          ._build();

  _$GReleasesListData_Page_media_airingSchedule_edges._(
      {required this.G__typename, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GReleasesListData_Page_media_airingSchedule_edges', 'G__typename');
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges rebuild(
          void Function(
                  GReleasesListData_Page_media_airingSchedule_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_airingSchedule_edgesBuilder toBuilder() =>
      new GReleasesListData_Page_media_airingSchedule_edgesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_airingSchedule_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasesListData_Page_media_airingSchedule_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GReleasesListData_Page_media_airingSchedule_edgesBuilder
    implements
        Builder<GReleasesListData_Page_media_airingSchedule_edges,
            GReleasesListData_Page_media_airingSchedule_edgesBuilder> {
  _$GReleasesListData_Page_media_airingSchedule_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder? _node;
  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder get node =>
      _$this._node ??=
          new GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder();
  set node(
          GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder?
              node) =>
      _$this._node = node;

  GReleasesListData_Page_media_airingSchedule_edgesBuilder() {
    GReleasesListData_Page_media_airingSchedule_edges._initializeBuilder(this);
  }

  GReleasesListData_Page_media_airingSchedule_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_airingSchedule_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_airingSchedule_edges;
  }

  @override
  void update(
      void Function(GReleasesListData_Page_media_airingSchedule_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges build() => _build();

  _$GReleasesListData_Page_media_airingSchedule_edges _build() {
    _$GReleasesListData_Page_media_airingSchedule_edges _$result;
    try {
      _$result = _$v ??
          new _$GReleasesListData_Page_media_airingSchedule_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GReleasesListData_Page_media_airingSchedule_edges',
                  'G__typename'),
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GReleasesListData_Page_media_airingSchedule_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_airingSchedule_edges_node
    extends GReleasesListData_Page_media_airingSchedule_edges_node {
  @override
  final String G__typename;
  @override
  final int airingAt;
  @override
  final int timeUntilAiring;
  @override
  final int episode;

  factory _$GReleasesListData_Page_media_airingSchedule_edges_node(
          [void Function(
                  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder()
            ..update(updates))
          ._build();

  _$GReleasesListData_Page_media_airingSchedule_edges_node._(
      {required this.G__typename,
      required this.airingAt,
      required this.timeUntilAiring,
      required this.episode})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GReleasesListData_Page_media_airingSchedule_edges_node',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(airingAt,
        r'GReleasesListData_Page_media_airingSchedule_edges_node', 'airingAt');
    BuiltValueNullFieldError.checkNotNull(
        timeUntilAiring,
        r'GReleasesListData_Page_media_airingSchedule_edges_node',
        'timeUntilAiring');
    BuiltValueNullFieldError.checkNotNull(episode,
        r'GReleasesListData_Page_media_airingSchedule_edges_node', 'episode');
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges_node rebuild(
          void Function(
                  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder toBuilder() =>
      new GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_airingSchedule_edges_node &&
        G__typename == other.G__typename &&
        airingAt == other.airingAt &&
        timeUntilAiring == other.timeUntilAiring &&
        episode == other.episode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, airingAt.hashCode);
    _$hash = $jc(_$hash, timeUntilAiring.hashCode);
    _$hash = $jc(_$hash, episode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GReleasesListData_Page_media_airingSchedule_edges_node')
          ..add('G__typename', G__typename)
          ..add('airingAt', airingAt)
          ..add('timeUntilAiring', timeUntilAiring)
          ..add('episode', episode))
        .toString();
  }
}

class GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder
    implements
        Builder<GReleasesListData_Page_media_airingSchedule_edges_node,
            GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder> {
  _$GReleasesListData_Page_media_airingSchedule_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _airingAt;
  int? get airingAt => _$this._airingAt;
  set airingAt(int? airingAt) => _$this._airingAt = airingAt;

  int? _timeUntilAiring;
  int? get timeUntilAiring => _$this._timeUntilAiring;
  set timeUntilAiring(int? timeUntilAiring) =>
      _$this._timeUntilAiring = timeUntilAiring;

  int? _episode;
  int? get episode => _$this._episode;
  set episode(int? episode) => _$this._episode = episode;

  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder() {
    GReleasesListData_Page_media_airingSchedule_edges_node._initializeBuilder(
        this);
  }

  GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _airingAt = $v.airingAt;
      _timeUntilAiring = $v.timeUntilAiring;
      _episode = $v.episode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_airingSchedule_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_airingSchedule_edges_node;
  }

  @override
  void update(
      void Function(
              GReleasesListData_Page_media_airingSchedule_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_airingSchedule_edges_node build() => _build();

  _$GReleasesListData_Page_media_airingSchedule_edges_node _build() {
    final _$result = _$v ??
        new _$GReleasesListData_Page_media_airingSchedule_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GReleasesListData_Page_media_airingSchedule_edges_node',
                'G__typename'),
            airingAt: BuiltValueNullFieldError.checkNotNull(
                airingAt,
                r'GReleasesListData_Page_media_airingSchedule_edges_node',
                'airingAt'),
            timeUntilAiring: BuiltValueNullFieldError.checkNotNull(
                timeUntilAiring,
                r'GReleasesListData_Page_media_airingSchedule_edges_node',
                'timeUntilAiring'),
            episode: BuiltValueNullFieldError.checkNotNull(
                episode,
                r'GReleasesListData_Page_media_airingSchedule_edges_node',
                'episode'));
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_title
    extends GReleasesListData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GReleasesListData_Page_media_title(
          [void Function(GReleasesListData_Page_media_titleBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_titleBuilder()..update(updates))
          ._build();

  _$GReleasesListData_Page_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasesListData_Page_media_title', 'G__typename');
  }

  @override
  GReleasesListData_Page_media_title rebuild(
          void Function(GReleasesListData_Page_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_titleBuilder toBuilder() =>
      new GReleasesListData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_title &&
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
    return (newBuiltValueToStringHelper(r'GReleasesListData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GReleasesListData_Page_media_titleBuilder
    implements
        Builder<GReleasesListData_Page_media_title,
            GReleasesListData_Page_media_titleBuilder> {
  _$GReleasesListData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GReleasesListData_Page_media_titleBuilder() {
    GReleasesListData_Page_media_title._initializeBuilder(this);
  }

  GReleasesListData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_title;
  }

  @override
  void update(
      void Function(GReleasesListData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_title build() => _build();

  _$GReleasesListData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GReleasesListData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReleasesListData_Page_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GReleasesListData_Page_media_coverImage
    extends GReleasesListData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GReleasesListData_Page_media_coverImage(
          [void Function(GReleasesListData_Page_media_coverImageBuilder)?
              updates]) =>
      (new GReleasesListData_Page_media_coverImageBuilder()..update(updates))
          ._build();

  _$GReleasesListData_Page_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GReleasesListData_Page_media_coverImage', 'G__typename');
  }

  @override
  GReleasesListData_Page_media_coverImage rebuild(
          void Function(GReleasesListData_Page_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListData_Page_media_coverImageBuilder toBuilder() =>
      new GReleasesListData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListData_Page_media_coverImage &&
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
            r'GReleasesListData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GReleasesListData_Page_media_coverImageBuilder
    implements
        Builder<GReleasesListData_Page_media_coverImage,
            GReleasesListData_Page_media_coverImageBuilder> {
  _$GReleasesListData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GReleasesListData_Page_media_coverImageBuilder() {
    GReleasesListData_Page_media_coverImage._initializeBuilder(this);
  }

  GReleasesListData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListData_Page_media_coverImage;
  }

  @override
  void update(
      void Function(GReleasesListData_Page_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListData_Page_media_coverImage build() => _build();

  _$GReleasesListData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GReleasesListData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GReleasesListData_Page_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
