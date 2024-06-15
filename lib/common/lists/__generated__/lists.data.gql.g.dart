// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListData> _$gMediaListDataSerializer =
    new _$GMediaListDataSerializer();
Serializer<GMediaListData_MediaListCollection>
    _$gMediaListDataMediaListCollectionSerializer =
    new _$GMediaListData_MediaListCollectionSerializer();
Serializer<GMediaListData_MediaListCollection_lists>
    _$gMediaListDataMediaListCollectionListsSerializer =
    new _$GMediaListData_MediaListCollection_listsSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries>
    _$gMediaListDataMediaListCollectionListsEntriesSerializer =
    new _$GMediaListData_MediaListCollection_lists_entriesSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_startedAt>
    _$gMediaListDataMediaListCollectionListsEntriesStartedAtSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_startedAtSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_completedAt>
    _$gMediaListDataMediaListCollectionListsEntriesCompletedAtSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_completedAtSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_media>
    _$gMediaListDataMediaListCollectionListsEntriesMediaSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_mediaSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_media_title>
    _$gMediaListDataMediaListCollectionListsEntriesMediaTitleSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_media_titleSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_media_coverImage>
    _$gMediaListDataMediaListCollectionListsEntriesMediaCoverImageSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_media_coverImageSerializer();
Serializer<GMediaListData_MediaListCollection_lists_entries_media_startDate>
    _$gMediaListDataMediaListCollectionListsEntriesMediaStartDateSerializer =
    new _$GMediaListData_MediaListCollection_lists_entries_media_startDateSerializer();
Serializer<GMediaListData_MediaListCollection_user>
    _$gMediaListDataMediaListCollectionUserSerializer =
    new _$GMediaListData_MediaListCollection_userSerializer();
Serializer<GMediaListData_MediaListCollection_user_mediaListOptions>
    _$gMediaListDataMediaListCollectionUserMediaListOptionsSerializer =
    new _$GMediaListData_MediaListCollection_user_mediaListOptionsSerializer();
Serializer<GMediaListData_MediaListCollection_user_mediaListOptions_animeList>
    _$gMediaListDataMediaListCollectionUserMediaListOptionsAnimeListSerializer =
    new _$GMediaListData_MediaListCollection_user_mediaListOptions_animeListSerializer();
Serializer<GMediaListData_MediaListCollection_user_mediaListOptions_mangaList>
    _$gMediaListDataMediaListCollectionUserMediaListOptionsMangaListSerializer =
    new _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaListSerializer();

class _$GMediaListDataSerializer
    implements StructuredSerializer<GMediaListData> {
  @override
  final Iterable<Type> types = const [GMediaListData, _$GMediaListData];
  @override
  final String wireName = 'GMediaListData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.MediaListCollection;
    if (value != null) {
      result
        ..add('MediaListCollection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaListData_MediaListCollection)));
    }
    return result;
  }

  @override
  GMediaListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListDataBuilder();

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
        case 'MediaListCollection':
          result.MediaListCollection.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaListData_MediaListCollection))!
              as GMediaListData_MediaListCollection);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollectionSerializer
    implements StructuredSerializer<GMediaListData_MediaListCollection> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection,
    _$GMediaListData_MediaListCollection
  ];
  @override
  final String wireName = 'GMediaListData_MediaListCollection';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListData_MediaListCollection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.lists;
    if (value != null) {
      result
        ..add('lists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaListData_MediaListCollection_lists)
            ])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaListData_MediaListCollection_user)));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListData_MediaListCollectionBuilder();

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
        case 'lists':
          result.lists.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaListData_MediaListCollection_lists)
              ]))! as BuiltList<Object?>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaListData_MediaListCollection_user))!
              as GMediaListData_MediaListCollection_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_listsSerializer
    implements StructuredSerializer<GMediaListData_MediaListCollection_lists> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists,
    _$GMediaListData_MediaListCollection_lists
  ];
  @override
  final String wireName = 'GMediaListData_MediaListCollection_lists';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListData_MediaListCollection_lists object,
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
    value = object.isCustomList;
    if (value != null) {
      result
        ..add('isCustomList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSplitCompletedList;
    if (value != null) {
      result
        ..add('isSplitCompletedList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaListStatus)));
    }
    value = object.entries;
    if (value != null) {
      result
        ..add('entries')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(
                  GMediaListData_MediaListCollection_lists_entries)
            ])));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_lists deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListData_MediaListCollection_listsBuilder();

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
        case 'isCustomList':
          result.isCustomList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isSplitCompletedList':
          result.isSplitCompletedList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaListStatus))
              as _i3.GMediaListStatus?;
          break;
        case 'entries':
          result.entries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(
                    GMediaListData_MediaListCollection_lists_entries)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_lists_entriesSerializer
    implements
        StructuredSerializer<GMediaListData_MediaListCollection_lists_entries> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries,
    _$GMediaListData_MediaListCollection_lists_entries
  ];
  @override
  final String wireName = 'GMediaListData_MediaListCollection_lists_entries';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'mediaId',
      serializers.serialize(object.mediaId, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaListStatus)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progressVolumes;
    if (value != null) {
      result
        ..add('progressVolumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hiddenFromStatusLists;
    if (value != null) {
      result
        ..add('hiddenFromStatusLists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.private;
    if (value != null) {
      result
        ..add('private')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.repeat;
    if (value != null) {
      result
        ..add('repeat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i5.JsonObject)));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_lists_entries_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_lists_entries_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_lists_entries_media)));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_lists_entries deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entriesBuilder();

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
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaListStatus))
              as _i3.GMediaListStatus?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progressVolumes':
          result.progressVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hiddenFromStatusLists':
          result.hiddenFromStatusLists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'customLists':
          result.customLists = serializers.deserialize(value,
              specifiedType: const FullType(_i5.JsonObject)) as _i5.JsonObject?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_startedAt))!
              as GMediaListData_MediaListCollection_lists_entries_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_completedAt))!
              as GMediaListData_MediaListCollection_lists_entries_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_media))!
              as GMediaListData_MediaListCollection_lists_entries_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_startedAtSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_startedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_startedAt,
    _$GMediaListData_MediaListCollection_lists_entries_startedAt
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_startedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_startedAt object,
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
  GMediaListData_MediaListCollection_lists_entries_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_startedAtBuilder();

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

class _$GMediaListData_MediaListCollection_lists_entries_completedAtSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_completedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_completedAt,
    _$GMediaListData_MediaListCollection_lists_entries_completedAt
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_completedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_completedAt object,
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
  GMediaListData_MediaListCollection_lists_entries_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_completedAtBuilder();

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

class _$GMediaListData_MediaListCollection_lists_entries_mediaSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_media> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_media,
    _$GMediaListData_MediaListCollection_lists_entries_media
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_media object,
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
            specifiedType: const FullType(_i3.GMediaType)));
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
            specifiedType: const FullType(_i3.GMediaFormat)));
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
                GMediaListData_MediaListCollection_lists_entries_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_lists_entries_media_coverImage)));
    }
    value = object.episodes;
    if (value != null) {
      result
        ..add('episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chapters;
    if (value != null) {
      result
        ..add('chapters')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GMediaStatus)));
    }
    value = object.averageScore;
    if (value != null) {
      result
        ..add('averageScore')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_lists_entries_media_startDate)));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_mediaBuilder();

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
              specifiedType: const FullType(_i3.GMediaType)) as _i3.GMediaType?;
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
                  specifiedType: const FullType(_i3.GMediaFormat))
              as _i3.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_media_title))!
              as GMediaListData_MediaListCollection_lists_entries_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_media_coverImage))!
              as GMediaListData_MediaListCollection_lists_entries_media_coverImage);
          break;
        case 'episodes':
          result.episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'chapters':
          result.chapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GMediaStatus))
              as _i3.GMediaStatus?;
          break;
        case 'averageScore':
          result.averageScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'startDate':
          result.startDate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_lists_entries_media_startDate))!
              as GMediaListData_MediaListCollection_lists_entries_media_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_media_titleSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_media_title,
    _$GMediaListData_MediaListCollection_lists_entries_media_title
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_media_title object,
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
  GMediaListData_MediaListCollection_lists_entries_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_media_titleBuilder();

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

class _$GMediaListData_MediaListCollection_lists_entries_media_coverImageSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_media_coverImage,
    _$GMediaListData_MediaListCollection_lists_entries_media_coverImage
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_media_coverImage object,
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
  GMediaListData_MediaListCollection_lists_entries_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder();

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

class _$GMediaListData_MediaListCollection_lists_entries_media_startDateSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_lists_entries_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_lists_entries_media_startDate,
    _$GMediaListData_MediaListCollection_lists_entries_media_startDate
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_lists_entries_media_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_lists_entries_media_startDate object,
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
  GMediaListData_MediaListCollection_lists_entries_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder();

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

class _$GMediaListData_MediaListCollection_userSerializer
    implements StructuredSerializer<GMediaListData_MediaListCollection_user> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_user,
    _$GMediaListData_MediaListCollection_user
  ];
  @override
  final String wireName = 'GMediaListData_MediaListCollection_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListData_MediaListCollection_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.mediaListOptions;
    if (value != null) {
      result
        ..add('mediaListOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_user_mediaListOptions)));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListData_MediaListCollection_userBuilder();

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
        case 'mediaListOptions':
          result.mediaListOptions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_user_mediaListOptions))!
              as GMediaListData_MediaListCollection_user_mediaListOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptionsSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_user_mediaListOptions> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_user_mediaListOptions,
    _$GMediaListData_MediaListCollection_user_mediaListOptions
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_user_mediaListOptions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_user_mediaListOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.scoreFormat;
    if (value != null) {
      result
        ..add('scoreFormat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GScoreFormat)));
    }
    value = object.rowOrder;
    if (value != null) {
      result
        ..add('rowOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.animeList;
    if (value != null) {
      result
        ..add('animeList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_user_mediaListOptions_animeList)));
    }
    value = object.mangaList;
    if (value != null) {
      result
        ..add('mangaList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GMediaListData_MediaListCollection_user_mediaListOptions_mangaList)));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_user_mediaListOptionsBuilder();

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
        case 'scoreFormat':
          result.scoreFormat = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GScoreFormat))
              as _i3.GScoreFormat?;
          break;
        case 'rowOrder':
          result.rowOrder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'animeList':
          result.animeList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_user_mediaListOptions_animeList))!
              as GMediaListData_MediaListCollection_user_mediaListOptions_animeList);
          break;
        case 'mangaList':
          result.mangaList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaListData_MediaListCollection_user_mediaListOptions_mangaList))!
              as GMediaListData_MediaListCollection_user_mediaListOptions_mangaList);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptions_animeListSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_user_mediaListOptions_animeList> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_user_mediaListOptions_animeList,
    _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_user_mediaListOptions_animeList';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_user_mediaListOptions_animeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_animeList
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'customLists':
          result.customLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaListSerializer
    implements
        StructuredSerializer<
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaList> {
  @override
  final Iterable<Type> types = const [
    GMediaListData_MediaListCollection_user_mediaListOptions_mangaList,
    _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
  ];
  @override
  final String wireName =
      'GMediaListData_MediaListCollection_user_mediaListOptions_mangaList';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaListData_MediaListCollection_user_mediaListOptions_mangaList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'customLists':
          result.customLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListData extends GMediaListData {
  @override
  final String G__typename;
  @override
  final GMediaListData_MediaListCollection? MediaListCollection;

  factory _$GMediaListData([void Function(GMediaListDataBuilder)? updates]) =>
      (new GMediaListDataBuilder()..update(updates))._build();

  _$GMediaListData._({required this.G__typename, this.MediaListCollection})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListData', 'G__typename');
  }

  @override
  GMediaListData rebuild(void Function(GMediaListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListDataBuilder toBuilder() =>
      new GMediaListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData &&
        G__typename == other.G__typename &&
        MediaListCollection == other.MediaListCollection;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, MediaListCollection.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListData')
          ..add('G__typename', G__typename)
          ..add('MediaListCollection', MediaListCollection))
        .toString();
  }
}

class GMediaListDataBuilder
    implements Builder<GMediaListData, GMediaListDataBuilder> {
  _$GMediaListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaListData_MediaListCollectionBuilder? _MediaListCollection;
  GMediaListData_MediaListCollectionBuilder get MediaListCollection =>
      _$this._MediaListCollection ??=
          new GMediaListData_MediaListCollectionBuilder();
  set MediaListCollection(
          GMediaListData_MediaListCollectionBuilder? MediaListCollection) =>
      _$this._MediaListCollection = MediaListCollection;

  GMediaListDataBuilder() {
    GMediaListData._initializeBuilder(this);
  }

  GMediaListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _MediaListCollection = $v.MediaListCollection?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData;
  }

  @override
  void update(void Function(GMediaListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData build() => _build();

  _$GMediaListData _build() {
    _$GMediaListData _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListData', 'G__typename'),
              MediaListCollection: _MediaListCollection?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'MediaListCollection';
        _MediaListCollection?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection
    extends GMediaListData_MediaListCollection {
  @override
  final String G__typename;
  @override
  final BuiltList<GMediaListData_MediaListCollection_lists?>? lists;
  @override
  final GMediaListData_MediaListCollection_user? user;

  factory _$GMediaListData_MediaListCollection(
          [void Function(GMediaListData_MediaListCollectionBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollectionBuilder()..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection._(
      {required this.G__typename, this.lists, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListData_MediaListCollection', 'G__typename');
  }

  @override
  GMediaListData_MediaListCollection rebuild(
          void Function(GMediaListData_MediaListCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollectionBuilder toBuilder() =>
      new GMediaListData_MediaListCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection &&
        G__typename == other.G__typename &&
        lists == other.lists &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, lists.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListData_MediaListCollection')
          ..add('G__typename', G__typename)
          ..add('lists', lists)
          ..add('user', user))
        .toString();
  }
}

class GMediaListData_MediaListCollectionBuilder
    implements
        Builder<GMediaListData_MediaListCollection,
            GMediaListData_MediaListCollectionBuilder> {
  _$GMediaListData_MediaListCollection? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GMediaListData_MediaListCollection_lists?>? _lists;
  ListBuilder<GMediaListData_MediaListCollection_lists?> get lists =>
      _$this._lists ??=
          new ListBuilder<GMediaListData_MediaListCollection_lists?>();
  set lists(ListBuilder<GMediaListData_MediaListCollection_lists?>? lists) =>
      _$this._lists = lists;

  GMediaListData_MediaListCollection_userBuilder? _user;
  GMediaListData_MediaListCollection_userBuilder get user =>
      _$this._user ??= new GMediaListData_MediaListCollection_userBuilder();
  set user(GMediaListData_MediaListCollection_userBuilder? user) =>
      _$this._user = user;

  GMediaListData_MediaListCollectionBuilder() {
    GMediaListData_MediaListCollection._initializeBuilder(this);
  }

  GMediaListData_MediaListCollectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _lists = $v.lists?.toBuilder();
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection;
  }

  @override
  void update(
      void Function(GMediaListData_MediaListCollectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection build() => _build();

  _$GMediaListData_MediaListCollection _build() {
    _$GMediaListData_MediaListCollection _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaListData_MediaListCollection', 'G__typename'),
              lists: _lists?.build(),
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'lists';
        _lists?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists
    extends GMediaListData_MediaListCollection_lists {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final bool? isCustomList;
  @override
  final bool? isSplitCompletedList;
  @override
  final _i3.GMediaListStatus? status;
  @override
  final BuiltList<GMediaListData_MediaListCollection_lists_entries?>? entries;

  factory _$GMediaListData_MediaListCollection_lists(
          [void Function(GMediaListData_MediaListCollection_listsBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_listsBuilder()..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists._(
      {required this.G__typename,
      this.name,
      this.isCustomList,
      this.isSplitCompletedList,
      this.status,
      this.entries})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListData_MediaListCollection_lists', 'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists rebuild(
          void Function(GMediaListData_MediaListCollection_listsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_listsBuilder toBuilder() =>
      new GMediaListData_MediaListCollection_listsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection_lists &&
        G__typename == other.G__typename &&
        name == other.name &&
        isCustomList == other.isCustomList &&
        isSplitCompletedList == other.isSplitCompletedList &&
        status == other.status &&
        entries == other.entries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, isCustomList.hashCode);
    _$hash = $jc(_$hash, isSplitCompletedList.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, entries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('isCustomList', isCustomList)
          ..add('isSplitCompletedList', isSplitCompletedList)
          ..add('status', status)
          ..add('entries', entries))
        .toString();
  }
}

class GMediaListData_MediaListCollection_listsBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists,
            GMediaListData_MediaListCollection_listsBuilder> {
  _$GMediaListData_MediaListCollection_lists? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isCustomList;
  bool? get isCustomList => _$this._isCustomList;
  set isCustomList(bool? isCustomList) => _$this._isCustomList = isCustomList;

  bool? _isSplitCompletedList;
  bool? get isSplitCompletedList => _$this._isSplitCompletedList;
  set isSplitCompletedList(bool? isSplitCompletedList) =>
      _$this._isSplitCompletedList = isSplitCompletedList;

  _i3.GMediaListStatus? _status;
  _i3.GMediaListStatus? get status => _$this._status;
  set status(_i3.GMediaListStatus? status) => _$this._status = status;

  ListBuilder<GMediaListData_MediaListCollection_lists_entries?>? _entries;
  ListBuilder<GMediaListData_MediaListCollection_lists_entries?> get entries =>
      _$this._entries ??=
          new ListBuilder<GMediaListData_MediaListCollection_lists_entries?>();
  set entries(
          ListBuilder<GMediaListData_MediaListCollection_lists_entries?>?
              entries) =>
      _$this._entries = entries;

  GMediaListData_MediaListCollection_listsBuilder() {
    GMediaListData_MediaListCollection_lists._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_listsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _isCustomList = $v.isCustomList;
      _isSplitCompletedList = $v.isSplitCompletedList;
      _status = $v.status;
      _entries = $v.entries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection_lists other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_lists;
  }

  @override
  void update(
      void Function(GMediaListData_MediaListCollection_listsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists build() => _build();

  _$GMediaListData_MediaListCollection_lists _build() {
    _$GMediaListData_MediaListCollection_lists _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_lists._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaListData_MediaListCollection_lists', 'G__typename'),
              name: name,
              isCustomList: isCustomList,
              isSplitCompletedList: isSplitCompletedList,
              status: status,
              entries: _entries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entries';
        _entries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_lists',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries
    extends GMediaListData_MediaListCollection_lists_entries {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int mediaId;
  @override
  final _i3.GMediaListStatus? status;
  @override
  final int? updatedAt;
  @override
  final int? progress;
  @override
  final int? progressVolumes;
  @override
  final int? priority;
  @override
  final String? notes;
  @override
  final bool? hiddenFromStatusLists;
  @override
  final bool? private;
  @override
  final int? repeat;
  @override
  final double? score;
  @override
  final _i5.JsonObject? customLists;
  @override
  final GMediaListData_MediaListCollection_lists_entries_startedAt? startedAt;
  @override
  final GMediaListData_MediaListCollection_lists_entries_completedAt?
      completedAt;
  @override
  final GMediaListData_MediaListCollection_lists_entries_media? media;

  factory _$GMediaListData_MediaListCollection_lists_entries(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entriesBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entriesBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries._(
      {required this.G__typename,
      required this.id,
      required this.mediaId,
      this.status,
      this.updatedAt,
      this.progress,
      this.progressVolumes,
      this.priority,
      this.notes,
      this.hiddenFromStatusLists,
      this.private,
      this.repeat,
      this.score,
      this.customLists,
      this.startedAt,
      this.completedAt,
      this.media})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaListData_MediaListCollection_lists_entries', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaListData_MediaListCollection_lists_entries', 'id');
    BuiltValueNullFieldError.checkNotNull(mediaId,
        r'GMediaListData_MediaListCollection_lists_entries', 'mediaId');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries rebuild(
          void Function(GMediaListData_MediaListCollection_lists_entriesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entriesBuilder toBuilder() =>
      new GMediaListData_MediaListCollection_lists_entriesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection_lists_entries &&
        G__typename == other.G__typename &&
        id == other.id &&
        mediaId == other.mediaId &&
        status == other.status &&
        updatedAt == other.updatedAt &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes &&
        priority == other.priority &&
        notes == other.notes &&
        hiddenFromStatusLists == other.hiddenFromStatusLists &&
        private == other.private &&
        repeat == other.repeat &&
        score == other.score &&
        customLists == other.customLists &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, hiddenFromStatusLists.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists_entries')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('status', status)
          ..add('updatedAt', updatedAt)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes)
          ..add('priority', priority)
          ..add('notes', notes)
          ..add('hiddenFromStatusLists', hiddenFromStatusLists)
          ..add('private', private)
          ..add('repeat', repeat)
          ..add('score', score)
          ..add('customLists', customLists)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt)
          ..add('media', media))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entriesBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists_entries,
            GMediaListData_MediaListCollection_lists_entriesBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  _i3.GMediaListStatus? _status;
  _i3.GMediaListStatus? get status => _$this._status;
  set status(_i3.GMediaListStatus? status) => _$this._status = status;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  int? _progressVolumes;
  int? get progressVolumes => _$this._progressVolumes;
  set progressVolumes(int? progressVolumes) =>
      _$this._progressVolumes = progressVolumes;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _hiddenFromStatusLists;
  bool? get hiddenFromStatusLists => _$this._hiddenFromStatusLists;
  set hiddenFromStatusLists(bool? hiddenFromStatusLists) =>
      _$this._hiddenFromStatusLists = hiddenFromStatusLists;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  _i5.JsonObject? _customLists;
  _i5.JsonObject? get customLists => _$this._customLists;
  set customLists(_i5.JsonObject? customLists) =>
      _$this._customLists = customLists;

  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder? _startedAt;
  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder
      get startedAt => _$this._startedAt ??=
          new GMediaListData_MediaListCollection_lists_entries_startedAtBuilder();
  set startedAt(
          GMediaListData_MediaListCollection_lists_entries_startedAtBuilder?
              startedAt) =>
      _$this._startedAt = startedAt;

  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder?
      _completedAt;
  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
      get completedAt => _$this._completedAt ??=
          new GMediaListData_MediaListCollection_lists_entries_completedAtBuilder();
  set completedAt(
          GMediaListData_MediaListCollection_lists_entries_completedAtBuilder?
              completedAt) =>
      _$this._completedAt = completedAt;

  GMediaListData_MediaListCollection_lists_entries_mediaBuilder? _media;
  GMediaListData_MediaListCollection_lists_entries_mediaBuilder get media =>
      _$this._media ??=
          new GMediaListData_MediaListCollection_lists_entries_mediaBuilder();
  set media(
          GMediaListData_MediaListCollection_lists_entries_mediaBuilder?
              media) =>
      _$this._media = media;

  GMediaListData_MediaListCollection_lists_entriesBuilder() {
    GMediaListData_MediaListCollection_lists_entries._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _mediaId = $v.mediaId;
      _status = $v.status;
      _updatedAt = $v.updatedAt;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _priority = $v.priority;
      _notes = $v.notes;
      _hiddenFromStatusLists = $v.hiddenFromStatusLists;
      _private = $v.private;
      _repeat = $v.repeat;
      _score = $v.score;
      _customLists = $v.customLists;
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection_lists_entries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_lists_entries;
  }

  @override
  void update(
      void Function(GMediaListData_MediaListCollection_lists_entriesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries build() => _build();

  _$GMediaListData_MediaListCollection_lists_entries _build() {
    _$GMediaListData_MediaListCollection_lists_entries _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_lists_entries._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListData_MediaListCollection_lists_entries',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GMediaListData_MediaListCollection_lists_entries', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(
                  mediaId,
                  r'GMediaListData_MediaListCollection_lists_entries',
                  'mediaId'),
              status: status,
              updatedAt: updatedAt,
              progress: progress,
              progressVolumes: progressVolumes,
              priority: priority,
              notes: notes,
              hiddenFromStatusLists: hiddenFromStatusLists,
              private: private,
              repeat: repeat,
              score: score,
              customLists: customLists,
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build(),
              media: _media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_lists_entries',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_startedAt
    extends GMediaListData_MediaListCollection_lists_entries_startedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListData_MediaListCollection_lists_entries_startedAt(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_startedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_startedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_startedAt',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_startedAt rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_lists_entries_startedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_lists_entries_startedAt &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists_entries_startedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_startedAtBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists_entries_startedAt,
            GMediaListData_MediaListCollection_lists_entries_startedAtBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_startedAt? _$v;

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

  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder() {
    GMediaListData_MediaListCollection_lists_entries_startedAt
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entries_startedAtBuilder get _$this {
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
  void replace(
      GMediaListData_MediaListCollection_lists_entries_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_lists_entries_startedAt;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_startedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_startedAt build() =>
      _build();

  _$GMediaListData_MediaListCollection_lists_entries_startedAt _build() {
    final _$result = _$v ??
        new _$GMediaListData_MediaListCollection_lists_entries_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListData_MediaListCollection_lists_entries_startedAt',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_completedAt
    extends GMediaListData_MediaListCollection_lists_entries_completedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListData_MediaListCollection_lists_entries_completedAt(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_completedAtBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_completedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_completedAt',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_completedAt rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_lists_entries_completedAtBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_lists_entries_completedAt &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists_entries_completedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists_entries_completedAt,
            GMediaListData_MediaListCollection_lists_entries_completedAtBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_completedAt? _$v;

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

  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder() {
    GMediaListData_MediaListCollection_lists_entries_completedAt
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entries_completedAtBuilder
      get _$this {
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
  void replace(
      GMediaListData_MediaListCollection_lists_entries_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GMediaListData_MediaListCollection_lists_entries_completedAt;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_completedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_completedAt build() =>
      _build();

  _$GMediaListData_MediaListCollection_lists_entries_completedAt _build() {
    final _$result = _$v ??
        new _$GMediaListData_MediaListCollection_lists_entries_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListData_MediaListCollection_lists_entries_completedAt',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_media
    extends GMediaListData_MediaListCollection_lists_entries_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i3.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i3.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GMediaListData_MediaListCollection_lists_entries_media_title? title;
  @override
  final GMediaListData_MediaListCollection_lists_entries_media_coverImage?
      coverImage;
  @override
  final int? episodes;
  @override
  final int? chapters;
  @override
  final _i3.GMediaStatus? status;
  @override
  final int? averageScore;
  @override
  final int? popularity;
  @override
  final GMediaListData_MediaListCollection_lists_entries_media_startDate?
      startDate;

  factory _$GMediaListData_MediaListCollection_lists_entries_media(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_mediaBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_mediaBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_media._(
      {required this.G__typename,
      required this.id,
      this.type,
      this.isAdult,
      this.genres,
      this.format,
      this.description,
      this.title,
      this.coverImage,
      this.episodes,
      this.chapters,
      this.status,
      this.averageScore,
      this.popularity,
      this.startDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_media',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaListData_MediaListCollection_lists_entries_media', 'id');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_mediaBuilder toBuilder() =>
      new GMediaListData_MediaListCollection_lists_entries_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection_lists_entries_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        isAdult == other.isAdult &&
        genres == other.genres &&
        format == other.format &&
        description == other.description &&
        title == other.title &&
        coverImage == other.coverImage &&
        episodes == other.episodes &&
        chapters == other.chapters &&
        status == other.status &&
        averageScore == other.averageScore &&
        popularity == other.popularity &&
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
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jc(_$hash, chapters.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, averageScore.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists_entries_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('isAdult', isAdult)
          ..add('genres', genres)
          ..add('format', format)
          ..add('description', description)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('episodes', episodes)
          ..add('chapters', chapters)
          ..add('status', status)
          ..add('averageScore', averageScore)
          ..add('popularity', popularity)
          ..add('startDate', startDate))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_mediaBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists_entries_media,
            GMediaListData_MediaListCollection_lists_entries_mediaBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i3.GMediaType? _type;
  _i3.GMediaType? get type => _$this._type;
  set type(_i3.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i3.GMediaFormat? _format;
  _i3.GMediaFormat? get format => _$this._format;
  set format(_i3.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder? _title;
  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
      get title => _$this._title ??=
          new GMediaListData_MediaListCollection_lists_entries_media_titleBuilder();
  set title(
          GMediaListData_MediaListCollection_lists_entries_media_titleBuilder?
              title) =>
      _$this._title = title;

  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder?
      _coverImage;
  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder();
  set coverImage(
          GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder?
              coverImage) =>
      _$this._coverImage = coverImage;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  _i3.GMediaStatus? _status;
  _i3.GMediaStatus? get status => _$this._status;
  set status(_i3.GMediaStatus? status) => _$this._status = status;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder?
      _startDate;
  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
      get startDate => _$this._startDate ??=
          new GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder();
  set startDate(
          GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder?
              startDate) =>
      _$this._startDate = startDate;

  GMediaListData_MediaListCollection_lists_entries_mediaBuilder() {
    GMediaListData_MediaListCollection_lists_entries_media._initializeBuilder(
        this);
  }

  GMediaListData_MediaListCollection_lists_entries_mediaBuilder get _$this {
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
      _episodes = $v.episodes;
      _chapters = $v.chapters;
      _status = $v.status;
      _averageScore = $v.averageScore;
      _popularity = $v.popularity;
      _startDate = $v.startDate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection_lists_entries_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_lists_entries_media;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media build() => _build();

  _$GMediaListData_MediaListCollection_lists_entries_media _build() {
    _$GMediaListData_MediaListCollection_lists_entries_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_lists_entries_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListData_MediaListCollection_lists_entries_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id,
                  r'GMediaListData_MediaListCollection_lists_entries_media',
                  'id'),
              type: type,
              isAdult: isAdult,
              genres: _genres?.build(),
              format: format,
              description: description,
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              episodes: episodes,
              chapters: chapters,
              status: status,
              averageScore: averageScore,
              popularity: popularity,
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
            r'GMediaListData_MediaListCollection_lists_entries_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_media_title
    extends GMediaListData_MediaListCollection_lists_entries_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaListData_MediaListCollection_lists_entries_media_title(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_media_title',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_title rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_lists_entries_media_titleBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_lists_entries_media_title &&
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
            r'GMediaListData_MediaListCollection_lists_entries_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
    implements
        Builder<GMediaListData_MediaListCollection_lists_entries_media_title,
            GMediaListData_MediaListCollection_lists_entries_media_titleBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder() {
    GMediaListData_MediaListCollection_lists_entries_media_title
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entries_media_titleBuilder
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
      GMediaListData_MediaListCollection_lists_entries_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GMediaListData_MediaListCollection_lists_entries_media_title;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_title build() =>
      _build();

  _$GMediaListData_MediaListCollection_lists_entries_media_title _build() {
    final _$result = _$v ??
        new _$GMediaListData_MediaListCollection_lists_entries_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListData_MediaListCollection_lists_entries_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_media_coverImage
    extends GMediaListData_MediaListCollection_lists_entries_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaListData_MediaListCollection_lists_entries_media_coverImage(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_media_coverImage',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_coverImage rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_lists_entries_media_coverImage &&
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
            r'GMediaListData_MediaListCollection_lists_entries_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
    implements
        Builder<
            GMediaListData_MediaListCollection_lists_entries_media_coverImage,
            GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder() {
    GMediaListData_MediaListCollection_lists_entries_media_coverImage
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListData_MediaListCollection_lists_entries_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListData_MediaListCollection_lists_entries_media_coverImage;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_coverImage build() =>
      _build();

  _$GMediaListData_MediaListCollection_lists_entries_media_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaListData_MediaListCollection_lists_entries_media_coverImage
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListData_MediaListCollection_lists_entries_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_lists_entries_media_startDate
    extends GMediaListData_MediaListCollection_lists_entries_media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListData_MediaListCollection_lists_entries_media_startDate(
          [void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_lists_entries_media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_lists_entries_media_startDate',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_startDate rebuild(
          void Function(
                  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_lists_entries_media_startDate &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_lists_entries_media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
    implements
        Builder<
            GMediaListData_MediaListCollection_lists_entries_media_startDate,
            GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder> {
  _$GMediaListData_MediaListCollection_lists_entries_media_startDate? _$v;

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

  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder() {
    GMediaListData_MediaListCollection_lists_entries_media_startDate
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder
      get _$this {
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
  void replace(
      GMediaListData_MediaListCollection_lists_entries_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListData_MediaListCollection_lists_entries_media_startDate;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_lists_entries_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_lists_entries_media_startDate build() =>
      _build();

  _$GMediaListData_MediaListCollection_lists_entries_media_startDate _build() {
    final _$result = _$v ??
        new _$GMediaListData_MediaListCollection_lists_entries_media_startDate
            ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GMediaListData_MediaListCollection_lists_entries_media_startDate',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_user
    extends GMediaListData_MediaListCollection_user {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaListData_MediaListCollection_user_mediaListOptions?
      mediaListOptions;

  factory _$GMediaListData_MediaListCollection_user(
          [void Function(GMediaListData_MediaListCollection_userBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_userBuilder()..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_user._(
      {required this.G__typename, required this.id, this.mediaListOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListData_MediaListCollection_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaListData_MediaListCollection_user', 'id');
  }

  @override
  GMediaListData_MediaListCollection_user rebuild(
          void Function(GMediaListData_MediaListCollection_userBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_userBuilder toBuilder() =>
      new GMediaListData_MediaListCollection_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        mediaListOptions == other.mediaListOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaListOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('mediaListOptions', mediaListOptions))
        .toString();
  }
}

class GMediaListData_MediaListCollection_userBuilder
    implements
        Builder<GMediaListData_MediaListCollection_user,
            GMediaListData_MediaListCollection_userBuilder> {
  _$GMediaListData_MediaListCollection_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder?
      _mediaListOptions;
  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder
      get mediaListOptions => _$this._mediaListOptions ??=
          new GMediaListData_MediaListCollection_user_mediaListOptionsBuilder();
  set mediaListOptions(
          GMediaListData_MediaListCollection_user_mediaListOptionsBuilder?
              mediaListOptions) =>
      _$this._mediaListOptions = mediaListOptions;

  GMediaListData_MediaListCollection_userBuilder() {
    GMediaListData_MediaListCollection_user._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _mediaListOptions = $v.mediaListOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_user;
  }

  @override
  void update(
      void Function(GMediaListData_MediaListCollection_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_user build() => _build();

  _$GMediaListData_MediaListCollection_user _build() {
    _$GMediaListData_MediaListCollection_user _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaListData_MediaListCollection_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaListData_MediaListCollection_user', 'id'),
              mediaListOptions: _mediaListOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaListOptions';
        _mediaListOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_user',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptions
    extends GMediaListData_MediaListCollection_user_mediaListOptions {
  @override
  final String G__typename;
  @override
  final _i3.GScoreFormat? scoreFormat;
  @override
  final String? rowOrder;
  @override
  final GMediaListData_MediaListCollection_user_mediaListOptions_animeList?
      animeList;
  @override
  final GMediaListData_MediaListCollection_user_mediaListOptions_mangaList?
      mangaList;

  factory _$GMediaListData_MediaListCollection_user_mediaListOptions(
          [void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_user_mediaListOptionsBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions._(
      {required this.G__typename,
      this.scoreFormat,
      this.rowOrder,
      this.animeList,
      this.mangaList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_user_mediaListOptions',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions rebuild(
          void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder toBuilder() =>
      new GMediaListData_MediaListCollection_user_mediaListOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListData_MediaListCollection_user_mediaListOptions &&
        G__typename == other.G__typename &&
        scoreFormat == other.scoreFormat &&
        rowOrder == other.rowOrder &&
        animeList == other.animeList &&
        mangaList == other.mangaList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, scoreFormat.hashCode);
    _$hash = $jc(_$hash, rowOrder.hashCode);
    _$hash = $jc(_$hash, animeList.hashCode);
    _$hash = $jc(_$hash, mangaList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_user_mediaListOptions')
          ..add('G__typename', G__typename)
          ..add('scoreFormat', scoreFormat)
          ..add('rowOrder', rowOrder)
          ..add('animeList', animeList)
          ..add('mangaList', mangaList))
        .toString();
  }
}

class GMediaListData_MediaListCollection_user_mediaListOptionsBuilder
    implements
        Builder<GMediaListData_MediaListCollection_user_mediaListOptions,
            GMediaListData_MediaListCollection_user_mediaListOptionsBuilder> {
  _$GMediaListData_MediaListCollection_user_mediaListOptions? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GScoreFormat? _scoreFormat;
  _i3.GScoreFormat? get scoreFormat => _$this._scoreFormat;
  set scoreFormat(_i3.GScoreFormat? scoreFormat) =>
      _$this._scoreFormat = scoreFormat;

  String? _rowOrder;
  String? get rowOrder => _$this._rowOrder;
  set rowOrder(String? rowOrder) => _$this._rowOrder = rowOrder;

  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder?
      _animeList;
  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
      get animeList => _$this._animeList ??=
          new GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder();
  set animeList(
          GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder?
              animeList) =>
      _$this._animeList = animeList;

  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder?
      _mangaList;
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
      get mangaList => _$this._mangaList ??=
          new GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder();
  set mangaList(
          GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder?
              mangaList) =>
      _$this._mangaList = mangaList;

  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder() {
    GMediaListData_MediaListCollection_user_mediaListOptions._initializeBuilder(
        this);
  }

  GMediaListData_MediaListCollection_user_mediaListOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _scoreFormat = $v.scoreFormat;
      _rowOrder = $v.rowOrder;
      _animeList = $v.animeList?.toBuilder();
      _mangaList = $v.mangaList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListData_MediaListCollection_user_mediaListOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListData_MediaListCollection_user_mediaListOptions;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_user_mediaListOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions build() => _build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions _build() {
    _$GMediaListData_MediaListCollection_user_mediaListOptions _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_user_mediaListOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListData_MediaListCollection_user_mediaListOptions',
                  'G__typename'),
              scoreFormat: scoreFormat,
              rowOrder: rowOrder,
              animeList: _animeList?.build(),
              mangaList: _mangaList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'animeList';
        _animeList?.build();
        _$failedField = 'mangaList';
        _mangaList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_user_mediaListOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList
    extends GMediaListData_MediaListCollection_user_mediaListOptions_animeList {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;
  @override
  final BuiltList<String?>? customLists;

  factory _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList(
          [void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList._(
      {required this.G__typename, this.sectionOrder, this.customLists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_user_mediaListOptions_animeList',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_animeList rebuild(
          void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_user_mediaListOptions_animeList &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder &&
        customLists == other.customLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_user_mediaListOptions_animeList')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder)
          ..add('customLists', customLists))
        .toString();
  }
}

class GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
    implements
        Builder<
            GMediaListData_MediaListCollection_user_mediaListOptions_animeList,
            GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder> {
  _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  ListBuilder<String?>? _customLists;
  ListBuilder<String?> get customLists =>
      _$this._customLists ??= new ListBuilder<String?>();
  set customLists(ListBuilder<String?>? customLists) =>
      _$this._customLists = customLists;

  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder() {
    GMediaListData_MediaListCollection_user_mediaListOptions_animeList
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _customLists = $v.customLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListData_MediaListCollection_user_mediaListOptions_animeList
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_user_mediaListOptions_animeListBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_animeList build() =>
      _build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList
      _build() {
    _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList
        _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_user_mediaListOptions_animeList
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListData_MediaListCollection_user_mediaListOptions_animeList',
                  'G__typename'),
              sectionOrder: _sectionOrder?.build(),
              customLists: _customLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
        _$failedField = 'customLists';
        _customLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_user_mediaListOptions_animeList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
    extends GMediaListData_MediaListCollection_user_mediaListOptions_mangaList {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;
  @override
  final BuiltList<String?>? customLists;

  factory _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList(
          [void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder)?
              updates]) =>
      (new GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder()
            ..update(updates))
          ._build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList._(
      {required this.G__typename, this.sectionOrder, this.customLists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GMediaListData_MediaListCollection_user_mediaListOptions_mangaList',
        'G__typename');
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaList rebuild(
          void Function(
                  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
      toBuilder() =>
          new GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GMediaListData_MediaListCollection_user_mediaListOptions_mangaList &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder &&
        customLists == other.customLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaListData_MediaListCollection_user_mediaListOptions_mangaList')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder)
          ..add('customLists', customLists))
        .toString();
  }
}

class GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
    implements
        Builder<
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaList,
            GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder> {
  _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  ListBuilder<String?>? _customLists;
  ListBuilder<String?> get customLists =>
      _$this._customLists ??= new ListBuilder<String?>();
  set customLists(ListBuilder<String?>? customLists) =>
      _$this._customLists = customLists;

  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder() {
    GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
        ._initializeBuilder(this);
  }

  GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _customLists = $v.customLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList;
  }

  @override
  void update(
      void Function(
              GMediaListData_MediaListCollection_user_mediaListOptions_mangaListBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListData_MediaListCollection_user_mediaListOptions_mangaList build() =>
      _build();

  _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
      _build() {
    _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
        _$result;
    try {
      _$result = _$v ??
          new _$GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
              ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GMediaListData_MediaListCollection_user_mediaListOptions_mangaList',
                  'G__typename'),
              sectionOrder: _sectionOrder?.build(),
              customLists: _customLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
        _$failedField = 'customLists';
        _customLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListData_MediaListCollection_user_mediaListOptions_mangaList',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
