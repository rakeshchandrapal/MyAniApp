// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_editor.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaEntryData> _$gMediaEntryDataSerializer =
    new _$GMediaEntryDataSerializer();
Serializer<GMediaEntryData_MediaList> _$gMediaEntryDataMediaListSerializer =
    new _$GMediaEntryData_MediaListSerializer();
Serializer<GMediaEntryData_MediaList_startedAt>
    _$gMediaEntryDataMediaListStartedAtSerializer =
    new _$GMediaEntryData_MediaList_startedAtSerializer();
Serializer<GMediaEntryData_MediaList_completedAt>
    _$gMediaEntryDataMediaListCompletedAtSerializer =
    new _$GMediaEntryData_MediaList_completedAtSerializer();
Serializer<GMediaEntryData_MediaList_media>
    _$gMediaEntryDataMediaListMediaSerializer =
    new _$GMediaEntryData_MediaList_mediaSerializer();
Serializer<GMediaEntryData_MediaList_media_title>
    _$gMediaEntryDataMediaListMediaTitleSerializer =
    new _$GMediaEntryData_MediaList_media_titleSerializer();
Serializer<GMediaEntryData_MediaList_media_coverImage>
    _$gMediaEntryDataMediaListMediaCoverImageSerializer =
    new _$GMediaEntryData_MediaList_media_coverImageSerializer();
Serializer<GMediaEntryData_MediaList_media_startDate>
    _$gMediaEntryDataMediaListMediaStartDateSerializer =
    new _$GMediaEntryData_MediaList_media_startDateSerializer();
Serializer<GSaveMediaListEntryData> _$gSaveMediaListEntryDataSerializer =
    new _$GSaveMediaListEntryDataSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry>
    _$gSaveMediaListEntryDataSaveMediaListEntrySerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntrySerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_startedAt>
    _$gSaveMediaListEntryDataSaveMediaListEntryStartedAtSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_startedAtSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_completedAt>
    _$gSaveMediaListEntryDataSaveMediaListEntryCompletedAtSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_completedAtSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media>
    _$gSaveMediaListEntryDataSaveMediaListEntryMediaSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_mediaSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_title>
    _$gSaveMediaListEntryDataSaveMediaListEntryMediaTitleSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_media_titleSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage>
    _$gSaveMediaListEntryDataSaveMediaListEntryMediaCoverImageSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageSerializer();
Serializer<GSaveMediaListEntryData_SaveMediaListEntry_media_startDate>
    _$gSaveMediaListEntryDataSaveMediaListEntryMediaStartDateSerializer =
    new _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDateSerializer();
Serializer<GDeleteMediaListEntryData> _$gDeleteMediaListEntryDataSerializer =
    new _$GDeleteMediaListEntryDataSerializer();
Serializer<GDeleteMediaListEntryData_DeleteMediaListEntry>
    _$gDeleteMediaListEntryDataDeleteMediaListEntrySerializer =
    new _$GDeleteMediaListEntryData_DeleteMediaListEntrySerializer();

class _$GMediaEntryDataSerializer
    implements StructuredSerializer<GMediaEntryData> {
  @override
  final Iterable<Type> types = const [GMediaEntryData, _$GMediaEntryData];
  @override
  final String wireName = 'GMediaEntryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaEntryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.MediaList;
    if (value != null) {
      result
        ..add('MediaList')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaEntryData_MediaList)));
    }
    return result;
  }

  @override
  GMediaEntryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryDataBuilder();

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
        case 'MediaList':
          result.MediaList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaEntryData_MediaList))!
              as GMediaEntryData_MediaList);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaEntryData_MediaListSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList,
    _$GMediaEntryData_MediaList
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList object,
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
            specifiedType: const FullType(_i4.JsonObject)));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaEntryData_MediaList_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaEntryData_MediaList_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaEntryData_MediaList_media)));
    }
    return result;
  }

  @override
  GMediaEntryData_MediaList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaListBuilder();

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
              specifiedType: const FullType(_i4.JsonObject)) as _i4.JsonObject?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaEntryData_MediaList_startedAt))!
              as GMediaEntryData_MediaList_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaEntryData_MediaList_completedAt))!
              as GMediaEntryData_MediaList_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaEntryData_MediaList_media))!
              as GMediaEntryData_MediaList_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaEntryData_MediaList_startedAtSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList_startedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_startedAt,
    _$GMediaEntryData_MediaList_startedAt
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_startedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList_startedAt object,
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
  GMediaEntryData_MediaList_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_startedAtBuilder();

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

class _$GMediaEntryData_MediaList_completedAtSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList_completedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_completedAt,
    _$GMediaEntryData_MediaList_completedAt
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_completedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList_completedAt object,
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
  GMediaEntryData_MediaList_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_completedAtBuilder();

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

class _$GMediaEntryData_MediaList_mediaSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList_media> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_media,
    _$GMediaEntryData_MediaList_media
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList_media object,
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
            specifiedType:
                const FullType(GMediaEntryData_MediaList_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaEntryData_MediaList_media_coverImage)));
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
            specifiedType:
                const FullType(GMediaEntryData_MediaList_media_startDate)));
    }
    return result;
  }

  @override
  GMediaEntryData_MediaList_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_mediaBuilder();

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
                  specifiedType:
                      const FullType(GMediaEntryData_MediaList_media_title))!
              as GMediaEntryData_MediaList_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaEntryData_MediaList_media_coverImage))!
              as GMediaEntryData_MediaList_media_coverImage);
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
                      GMediaEntryData_MediaList_media_startDate))!
              as GMediaEntryData_MediaList_media_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaEntryData_MediaList_media_titleSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList_media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_media_title,
    _$GMediaEntryData_MediaList_media_title
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList_media_title object,
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
  GMediaEntryData_MediaList_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_media_titleBuilder();

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

class _$GMediaEntryData_MediaList_media_coverImageSerializer
    implements
        StructuredSerializer<GMediaEntryData_MediaList_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_media_coverImage,
    _$GMediaEntryData_MediaList_media_coverImage
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaEntryData_MediaList_media_coverImage object,
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
  GMediaEntryData_MediaList_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_media_coverImageBuilder();

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

class _$GMediaEntryData_MediaList_media_startDateSerializer
    implements StructuredSerializer<GMediaEntryData_MediaList_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GMediaEntryData_MediaList_media_startDate,
    _$GMediaEntryData_MediaList_media_startDate
  ];
  @override
  final String wireName = 'GMediaEntryData_MediaList_media_startDate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaEntryData_MediaList_media_startDate object,
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
  GMediaEntryData_MediaList_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryData_MediaList_media_startDateBuilder();

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

class _$GSaveMediaListEntryDataSerializer
    implements StructuredSerializer<GSaveMediaListEntryData> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData,
    _$GSaveMediaListEntryData
  ];
  @override
  final String wireName = 'GSaveMediaListEntryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveMediaListEntryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.SaveMediaListEntry;
    if (value != null) {
      result
        ..add('SaveMediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSaveMediaListEntryData_SaveMediaListEntry)));
    }
    return result;
  }

  @override
  GSaveMediaListEntryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMediaListEntryDataBuilder();

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
        case 'SaveMediaListEntry':
          result.SaveMediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMediaListEntryData_SaveMediaListEntry))!
              as GSaveMediaListEntryData_SaveMediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntrySerializer
    implements
        StructuredSerializer<GSaveMediaListEntryData_SaveMediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry,
    _$GSaveMediaListEntryData_SaveMediaListEntry
  ];
  @override
  final String wireName = 'GSaveMediaListEntryData_SaveMediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry object,
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
            specifiedType: const FullType(_i4.JsonObject)));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveMediaListEntryData_SaveMediaListEntry_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveMediaListEntryData_SaveMediaListEntry_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveMediaListEntryData_SaveMediaListEntry_media)));
    }
    return result;
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMediaListEntryData_SaveMediaListEntryBuilder();

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
              specifiedType: const FullType(_i4.JsonObject)) as _i4.JsonObject?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMediaListEntryData_SaveMediaListEntry_startedAt))!
              as GSaveMediaListEntryData_SaveMediaListEntry_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMediaListEntryData_SaveMediaListEntry_completedAt))!
              as GSaveMediaListEntryData_SaveMediaListEntry_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMediaListEntryData_SaveMediaListEntry_media))!
              as GSaveMediaListEntryData_SaveMediaListEntry_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_startedAtSerializer
    implements
        StructuredSerializer<
            GSaveMediaListEntryData_SaveMediaListEntry_startedAt> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_startedAt,
    _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt
  ];
  @override
  final String wireName =
      'GSaveMediaListEntryData_SaveMediaListEntry_startedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_startedAt object,
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
  GSaveMediaListEntryData_SaveMediaListEntry_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder();

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

class _$GSaveMediaListEntryData_SaveMediaListEntry_completedAtSerializer
    implements
        StructuredSerializer<
            GSaveMediaListEntryData_SaveMediaListEntry_completedAt> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_completedAt,
    _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt
  ];
  @override
  final String wireName =
      'GSaveMediaListEntryData_SaveMediaListEntry_completedAt';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_completedAt object,
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
  GSaveMediaListEntryData_SaveMediaListEntry_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder();

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

class _$GSaveMediaListEntryData_SaveMediaListEntry_mediaSerializer
    implements
        StructuredSerializer<GSaveMediaListEntryData_SaveMediaListEntry_media> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_media,
    _$GSaveMediaListEntryData_SaveMediaListEntry_media
  ];
  @override
  final String wireName = 'GSaveMediaListEntryData_SaveMediaListEntry_media';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_media object,
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
                GSaveMediaListEntryData_SaveMediaListEntry_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage)));
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
                GSaveMediaListEntryData_SaveMediaListEntry_media_startDate)));
    }
    return result;
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder();

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
                      GSaveMediaListEntryData_SaveMediaListEntry_media_title))!
              as GSaveMediaListEntryData_SaveMediaListEntry_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage))!
              as GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage);
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
                      GSaveMediaListEntryData_SaveMediaListEntry_media_startDate))!
              as GSaveMediaListEntryData_SaveMediaListEntry_media_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_titleSerializer
    implements
        StructuredSerializer<
            GSaveMediaListEntryData_SaveMediaListEntry_media_title> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_media_title,
    _$GSaveMediaListEntryData_SaveMediaListEntry_media_title
  ];
  @override
  final String wireName =
      'GSaveMediaListEntryData_SaveMediaListEntry_media_title';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_media_title object,
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
  GSaveMediaListEntryData_SaveMediaListEntry_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder();

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

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageSerializer
    implements
        StructuredSerializer<
            GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage,
    _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage
  ];
  @override
  final String wireName =
      'GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage object,
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
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder();

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

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDateSerializer
    implements
        StructuredSerializer<
            GSaveMediaListEntryData_SaveMediaListEntry_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryData_SaveMediaListEntry_media_startDate,
    _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate
  ];
  @override
  final String wireName =
      'GSaveMediaListEntryData_SaveMediaListEntry_media_startDate';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GSaveMediaListEntryData_SaveMediaListEntry_media_startDate object,
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
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder();

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

class _$GDeleteMediaListEntryDataSerializer
    implements StructuredSerializer<GDeleteMediaListEntryData> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryData,
    _$GDeleteMediaListEntryData
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.DeleteMediaListEntry;
    if (value != null) {
      result
        ..add('DeleteMediaListEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GDeleteMediaListEntryData_DeleteMediaListEntry)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryDataBuilder();

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
        case 'DeleteMediaListEntry':
          result.DeleteMediaListEntry.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GDeleteMediaListEntryData_DeleteMediaListEntry))!
              as GDeleteMediaListEntryData_DeleteMediaListEntry);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryData_DeleteMediaListEntrySerializer
    implements
        StructuredSerializer<GDeleteMediaListEntryData_DeleteMediaListEntry> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryData_DeleteMediaListEntry,
    _$GDeleteMediaListEntryData_DeleteMediaListEntry
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryData_DeleteMediaListEntry';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GDeleteMediaListEntryData_DeleteMediaListEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder();

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
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaEntryData extends GMediaEntryData {
  @override
  final String G__typename;
  @override
  final GMediaEntryData_MediaList? MediaList;

  factory _$GMediaEntryData([void Function(GMediaEntryDataBuilder)? updates]) =>
      (new GMediaEntryDataBuilder()..update(updates))._build();

  _$GMediaEntryData._({required this.G__typename, this.MediaList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaEntryData', 'G__typename');
  }

  @override
  GMediaEntryData rebuild(void Function(GMediaEntryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryDataBuilder toBuilder() =>
      new GMediaEntryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData &&
        G__typename == other.G__typename &&
        MediaList == other.MediaList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, MediaList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaEntryData')
          ..add('G__typename', G__typename)
          ..add('MediaList', MediaList))
        .toString();
  }
}

class GMediaEntryDataBuilder
    implements Builder<GMediaEntryData, GMediaEntryDataBuilder> {
  _$GMediaEntryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaEntryData_MediaListBuilder? _MediaList;
  GMediaEntryData_MediaListBuilder get MediaList =>
      _$this._MediaList ??= new GMediaEntryData_MediaListBuilder();
  set MediaList(GMediaEntryData_MediaListBuilder? MediaList) =>
      _$this._MediaList = MediaList;

  GMediaEntryDataBuilder() {
    GMediaEntryData._initializeBuilder(this);
  }

  GMediaEntryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _MediaList = $v.MediaList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaEntryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData;
  }

  @override
  void update(void Function(GMediaEntryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData build() => _build();

  _$GMediaEntryData _build() {
    _$GMediaEntryData _$result;
    try {
      _$result = _$v ??
          new _$GMediaEntryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaEntryData', 'G__typename'),
              MediaList: _MediaList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'MediaList';
        _MediaList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaEntryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList extends GMediaEntryData_MediaList {
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
  final _i4.JsonObject? customLists;
  @override
  final GMediaEntryData_MediaList_startedAt? startedAt;
  @override
  final GMediaEntryData_MediaList_completedAt? completedAt;
  @override
  final GMediaEntryData_MediaList_media? media;

  factory _$GMediaEntryData_MediaList(
          [void Function(GMediaEntryData_MediaListBuilder)? updates]) =>
      (new GMediaEntryData_MediaListBuilder()..update(updates))._build();

  _$GMediaEntryData_MediaList._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaEntryData_MediaList', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaEntryData_MediaList', 'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GMediaEntryData_MediaList', 'mediaId');
  }

  @override
  GMediaEntryData_MediaList rebuild(
          void Function(GMediaEntryData_MediaListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaListBuilder toBuilder() =>
      new GMediaEntryData_MediaListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList &&
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
    return (newBuiltValueToStringHelper(r'GMediaEntryData_MediaList')
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

class GMediaEntryData_MediaListBuilder
    implements
        Builder<GMediaEntryData_MediaList, GMediaEntryData_MediaListBuilder> {
  _$GMediaEntryData_MediaList? _$v;

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

  _i4.JsonObject? _customLists;
  _i4.JsonObject? get customLists => _$this._customLists;
  set customLists(_i4.JsonObject? customLists) =>
      _$this._customLists = customLists;

  GMediaEntryData_MediaList_startedAtBuilder? _startedAt;
  GMediaEntryData_MediaList_startedAtBuilder get startedAt =>
      _$this._startedAt ??= new GMediaEntryData_MediaList_startedAtBuilder();
  set startedAt(GMediaEntryData_MediaList_startedAtBuilder? startedAt) =>
      _$this._startedAt = startedAt;

  GMediaEntryData_MediaList_completedAtBuilder? _completedAt;
  GMediaEntryData_MediaList_completedAtBuilder get completedAt =>
      _$this._completedAt ??=
          new GMediaEntryData_MediaList_completedAtBuilder();
  set completedAt(GMediaEntryData_MediaList_completedAtBuilder? completedAt) =>
      _$this._completedAt = completedAt;

  GMediaEntryData_MediaList_mediaBuilder? _media;
  GMediaEntryData_MediaList_mediaBuilder get media =>
      _$this._media ??= new GMediaEntryData_MediaList_mediaBuilder();
  set media(GMediaEntryData_MediaList_mediaBuilder? media) =>
      _$this._media = media;

  GMediaEntryData_MediaListBuilder() {
    GMediaEntryData_MediaList._initializeBuilder(this);
  }

  GMediaEntryData_MediaListBuilder get _$this {
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
  void replace(GMediaEntryData_MediaList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList;
  }

  @override
  void update(void Function(GMediaEntryData_MediaListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList build() => _build();

  _$GMediaEntryData_MediaList _build() {
    _$GMediaEntryData_MediaList _$result;
    try {
      _$result = _$v ??
          new _$GMediaEntryData_MediaList._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaEntryData_MediaList', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaEntryData_MediaList', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(
                  mediaId, r'GMediaEntryData_MediaList', 'mediaId'),
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
            r'GMediaEntryData_MediaList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_startedAt
    extends GMediaEntryData_MediaList_startedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaEntryData_MediaList_startedAt(
          [void Function(GMediaEntryData_MediaList_startedAtBuilder)?
              updates]) =>
      (new GMediaEntryData_MediaList_startedAtBuilder()..update(updates))
          ._build();

  _$GMediaEntryData_MediaList_startedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaEntryData_MediaList_startedAt', 'G__typename');
  }

  @override
  GMediaEntryData_MediaList_startedAt rebuild(
          void Function(GMediaEntryData_MediaList_startedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_startedAtBuilder toBuilder() =>
      new GMediaEntryData_MediaList_startedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_startedAt &&
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
    return (newBuiltValueToStringHelper(r'GMediaEntryData_MediaList_startedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaEntryData_MediaList_startedAtBuilder
    implements
        Builder<GMediaEntryData_MediaList_startedAt,
            GMediaEntryData_MediaList_startedAtBuilder> {
  _$GMediaEntryData_MediaList_startedAt? _$v;

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

  GMediaEntryData_MediaList_startedAtBuilder() {
    GMediaEntryData_MediaList_startedAt._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_startedAtBuilder get _$this {
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
  void replace(GMediaEntryData_MediaList_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_startedAt;
  }

  @override
  void update(
      void Function(GMediaEntryData_MediaList_startedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_startedAt build() => _build();

  _$GMediaEntryData_MediaList_startedAt _build() {
    final _$result = _$v ??
        new _$GMediaEntryData_MediaList_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaEntryData_MediaList_startedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_completedAt
    extends GMediaEntryData_MediaList_completedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaEntryData_MediaList_completedAt(
          [void Function(GMediaEntryData_MediaList_completedAtBuilder)?
              updates]) =>
      (new GMediaEntryData_MediaList_completedAtBuilder()..update(updates))
          ._build();

  _$GMediaEntryData_MediaList_completedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaEntryData_MediaList_completedAt', 'G__typename');
  }

  @override
  GMediaEntryData_MediaList_completedAt rebuild(
          void Function(GMediaEntryData_MediaList_completedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_completedAtBuilder toBuilder() =>
      new GMediaEntryData_MediaList_completedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_completedAt &&
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
            r'GMediaEntryData_MediaList_completedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaEntryData_MediaList_completedAtBuilder
    implements
        Builder<GMediaEntryData_MediaList_completedAt,
            GMediaEntryData_MediaList_completedAtBuilder> {
  _$GMediaEntryData_MediaList_completedAt? _$v;

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

  GMediaEntryData_MediaList_completedAtBuilder() {
    GMediaEntryData_MediaList_completedAt._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_completedAtBuilder get _$this {
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
  void replace(GMediaEntryData_MediaList_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_completedAt;
  }

  @override
  void update(
      void Function(GMediaEntryData_MediaList_completedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_completedAt build() => _build();

  _$GMediaEntryData_MediaList_completedAt _build() {
    final _$result = _$v ??
        new _$GMediaEntryData_MediaList_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaEntryData_MediaList_completedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_media
    extends GMediaEntryData_MediaList_media {
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
  final GMediaEntryData_MediaList_media_title? title;
  @override
  final GMediaEntryData_MediaList_media_coverImage? coverImage;
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
  final GMediaEntryData_MediaList_media_startDate? startDate;

  factory _$GMediaEntryData_MediaList_media(
          [void Function(GMediaEntryData_MediaList_mediaBuilder)? updates]) =>
      (new GMediaEntryData_MediaList_mediaBuilder()..update(updates))._build();

  _$GMediaEntryData_MediaList_media._(
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
        G__typename, r'GMediaEntryData_MediaList_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaEntryData_MediaList_media', 'id');
  }

  @override
  GMediaEntryData_MediaList_media rebuild(
          void Function(GMediaEntryData_MediaList_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_mediaBuilder toBuilder() =>
      new GMediaEntryData_MediaList_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_media &&
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
    return (newBuiltValueToStringHelper(r'GMediaEntryData_MediaList_media')
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

class GMediaEntryData_MediaList_mediaBuilder
    implements
        Builder<GMediaEntryData_MediaList_media,
            GMediaEntryData_MediaList_mediaBuilder> {
  _$GMediaEntryData_MediaList_media? _$v;

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

  GMediaEntryData_MediaList_media_titleBuilder? _title;
  GMediaEntryData_MediaList_media_titleBuilder get title =>
      _$this._title ??= new GMediaEntryData_MediaList_media_titleBuilder();
  set title(GMediaEntryData_MediaList_media_titleBuilder? title) =>
      _$this._title = title;

  GMediaEntryData_MediaList_media_coverImageBuilder? _coverImage;
  GMediaEntryData_MediaList_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??=
          new GMediaEntryData_MediaList_media_coverImageBuilder();
  set coverImage(
          GMediaEntryData_MediaList_media_coverImageBuilder? coverImage) =>
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

  GMediaEntryData_MediaList_media_startDateBuilder? _startDate;
  GMediaEntryData_MediaList_media_startDateBuilder get startDate =>
      _$this._startDate ??=
          new GMediaEntryData_MediaList_media_startDateBuilder();
  set startDate(GMediaEntryData_MediaList_media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  GMediaEntryData_MediaList_mediaBuilder() {
    GMediaEntryData_MediaList_media._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_mediaBuilder get _$this {
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
  void replace(GMediaEntryData_MediaList_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_media;
  }

  @override
  void update(void Function(GMediaEntryData_MediaList_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_media build() => _build();

  _$GMediaEntryData_MediaList_media _build() {
    _$GMediaEntryData_MediaList_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaEntryData_MediaList_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaEntryData_MediaList_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaEntryData_MediaList_media', 'id'),
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
            r'GMediaEntryData_MediaList_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_media_title
    extends GMediaEntryData_MediaList_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaEntryData_MediaList_media_title(
          [void Function(GMediaEntryData_MediaList_media_titleBuilder)?
              updates]) =>
      (new GMediaEntryData_MediaList_media_titleBuilder()..update(updates))
          ._build();

  _$GMediaEntryData_MediaList_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaEntryData_MediaList_media_title', 'G__typename');
  }

  @override
  GMediaEntryData_MediaList_media_title rebuild(
          void Function(GMediaEntryData_MediaList_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_media_titleBuilder toBuilder() =>
      new GMediaEntryData_MediaList_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_media_title &&
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
            r'GMediaEntryData_MediaList_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaEntryData_MediaList_media_titleBuilder
    implements
        Builder<GMediaEntryData_MediaList_media_title,
            GMediaEntryData_MediaList_media_titleBuilder> {
  _$GMediaEntryData_MediaList_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaEntryData_MediaList_media_titleBuilder() {
    GMediaEntryData_MediaList_media_title._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaEntryData_MediaList_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_media_title;
  }

  @override
  void update(
      void Function(GMediaEntryData_MediaList_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_media_title build() => _build();

  _$GMediaEntryData_MediaList_media_title _build() {
    final _$result = _$v ??
        new _$GMediaEntryData_MediaList_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaEntryData_MediaList_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_media_coverImage
    extends GMediaEntryData_MediaList_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaEntryData_MediaList_media_coverImage(
          [void Function(GMediaEntryData_MediaList_media_coverImageBuilder)?
              updates]) =>
      (new GMediaEntryData_MediaList_media_coverImageBuilder()..update(updates))
          ._build();

  _$GMediaEntryData_MediaList_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaEntryData_MediaList_media_coverImage', 'G__typename');
  }

  @override
  GMediaEntryData_MediaList_media_coverImage rebuild(
          void Function(GMediaEntryData_MediaList_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_media_coverImageBuilder toBuilder() =>
      new GMediaEntryData_MediaList_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_media_coverImage &&
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
            r'GMediaEntryData_MediaList_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaEntryData_MediaList_media_coverImageBuilder
    implements
        Builder<GMediaEntryData_MediaList_media_coverImage,
            GMediaEntryData_MediaList_media_coverImageBuilder> {
  _$GMediaEntryData_MediaList_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaEntryData_MediaList_media_coverImageBuilder() {
    GMediaEntryData_MediaList_media_coverImage._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaEntryData_MediaList_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_media_coverImage;
  }

  @override
  void update(
      void Function(GMediaEntryData_MediaList_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_media_coverImage build() => _build();

  _$GMediaEntryData_MediaList_media_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaEntryData_MediaList_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaEntryData_MediaList_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaEntryData_MediaList_media_startDate
    extends GMediaEntryData_MediaList_media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaEntryData_MediaList_media_startDate(
          [void Function(GMediaEntryData_MediaList_media_startDateBuilder)?
              updates]) =>
      (new GMediaEntryData_MediaList_media_startDateBuilder()..update(updates))
          ._build();

  _$GMediaEntryData_MediaList_media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaEntryData_MediaList_media_startDate', 'G__typename');
  }

  @override
  GMediaEntryData_MediaList_media_startDate rebuild(
          void Function(GMediaEntryData_MediaList_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryData_MediaList_media_startDateBuilder toBuilder() =>
      new GMediaEntryData_MediaList_media_startDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryData_MediaList_media_startDate &&
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
            r'GMediaEntryData_MediaList_media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaEntryData_MediaList_media_startDateBuilder
    implements
        Builder<GMediaEntryData_MediaList_media_startDate,
            GMediaEntryData_MediaList_media_startDateBuilder> {
  _$GMediaEntryData_MediaList_media_startDate? _$v;

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

  GMediaEntryData_MediaList_media_startDateBuilder() {
    GMediaEntryData_MediaList_media_startDate._initializeBuilder(this);
  }

  GMediaEntryData_MediaList_media_startDateBuilder get _$this {
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
  void replace(GMediaEntryData_MediaList_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryData_MediaList_media_startDate;
  }

  @override
  void update(
      void Function(GMediaEntryData_MediaList_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryData_MediaList_media_startDate build() => _build();

  _$GMediaEntryData_MediaList_media_startDate _build() {
    final _$result = _$v ??
        new _$GMediaEntryData_MediaList_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaEntryData_MediaList_media_startDate', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData extends GSaveMediaListEntryData {
  @override
  final String G__typename;
  @override
  final GSaveMediaListEntryData_SaveMediaListEntry? SaveMediaListEntry;

  factory _$GSaveMediaListEntryData(
          [void Function(GSaveMediaListEntryDataBuilder)? updates]) =>
      (new GSaveMediaListEntryDataBuilder()..update(updates))._build();

  _$GSaveMediaListEntryData._(
      {required this.G__typename, this.SaveMediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GSaveMediaListEntryData', 'G__typename');
  }

  @override
  GSaveMediaListEntryData rebuild(
          void Function(GSaveMediaListEntryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryDataBuilder toBuilder() =>
      new GSaveMediaListEntryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData &&
        G__typename == other.G__typename &&
        SaveMediaListEntry == other.SaveMediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, SaveMediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveMediaListEntryData')
          ..add('G__typename', G__typename)
          ..add('SaveMediaListEntry', SaveMediaListEntry))
        .toString();
  }
}

class GSaveMediaListEntryDataBuilder
    implements
        Builder<GSaveMediaListEntryData, GSaveMediaListEntryDataBuilder> {
  _$GSaveMediaListEntryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSaveMediaListEntryData_SaveMediaListEntryBuilder? _SaveMediaListEntry;
  GSaveMediaListEntryData_SaveMediaListEntryBuilder get SaveMediaListEntry =>
      _$this._SaveMediaListEntry ??=
          new GSaveMediaListEntryData_SaveMediaListEntryBuilder();
  set SaveMediaListEntry(
          GSaveMediaListEntryData_SaveMediaListEntryBuilder?
              SaveMediaListEntry) =>
      _$this._SaveMediaListEntry = SaveMediaListEntry;

  GSaveMediaListEntryDataBuilder() {
    GSaveMediaListEntryData._initializeBuilder(this);
  }

  GSaveMediaListEntryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _SaveMediaListEntry = $v.SaveMediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveMediaListEntryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData;
  }

  @override
  void update(void Function(GSaveMediaListEntryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData build() => _build();

  _$GSaveMediaListEntryData _build() {
    _$GSaveMediaListEntryData _$result;
    try {
      _$result = _$v ??
          new _$GSaveMediaListEntryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GSaveMediaListEntryData', 'G__typename'),
              SaveMediaListEntry: _SaveMediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'SaveMediaListEntry';
        _SaveMediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveMediaListEntryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry
    extends GSaveMediaListEntryData_SaveMediaListEntry {
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
  final _i4.JsonObject? customLists;
  @override
  final GSaveMediaListEntryData_SaveMediaListEntry_startedAt? startedAt;
  @override
  final GSaveMediaListEntryData_SaveMediaListEntry_completedAt? completedAt;
  @override
  final GSaveMediaListEntryData_SaveMediaListEntry_media? media;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry(
          [void Function(GSaveMediaListEntryData_SaveMediaListEntryBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntryBuilder()..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry._(
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
        r'GSaveMediaListEntryData_SaveMediaListEntry', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveMediaListEntryData_SaveMediaListEntry', 'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GSaveMediaListEntryData_SaveMediaListEntry', 'mediaId');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry rebuild(
          void Function(GSaveMediaListEntryData_SaveMediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntryBuilder toBuilder() =>
      new GSaveMediaListEntryData_SaveMediaListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData_SaveMediaListEntry &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry')
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

class GSaveMediaListEntryData_SaveMediaListEntryBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry,
            GSaveMediaListEntryData_SaveMediaListEntryBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry? _$v;

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

  _i4.JsonObject? _customLists;
  _i4.JsonObject? get customLists => _$this._customLists;
  set customLists(_i4.JsonObject? customLists) =>
      _$this._customLists = customLists;

  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder? _startedAt;
  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder get startedAt =>
      _$this._startedAt ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder();
  set startedAt(
          GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder?
              startedAt) =>
      _$this._startedAt = startedAt;

  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder? _completedAt;
  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder
      get completedAt => _$this._completedAt ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder();
  set completedAt(
          GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder?
              completedAt) =>
      _$this._completedAt = completedAt;

  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder? _media;
  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder get media =>
      _$this._media ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder();
  set media(GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder? media) =>
      _$this._media = media;

  GSaveMediaListEntryData_SaveMediaListEntryBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry._initializeBuilder(this);
  }

  GSaveMediaListEntryData_SaveMediaListEntryBuilder get _$this {
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
  void replace(GSaveMediaListEntryData_SaveMediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry;
  }

  @override
  void update(
      void Function(GSaveMediaListEntryData_SaveMediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry build() => _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry _build() {
    _$GSaveMediaListEntryData_SaveMediaListEntry _$result;
    try {
      _$result = _$v ??
          new _$GSaveMediaListEntryData_SaveMediaListEntry._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GSaveMediaListEntryData_SaveMediaListEntry', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GSaveMediaListEntryData_SaveMediaListEntry', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(mediaId,
                  r'GSaveMediaListEntryData_SaveMediaListEntry', 'mediaId'),
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
            r'GSaveMediaListEntryData_SaveMediaListEntry',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt
    extends GSaveMediaListEntryData_SaveMediaListEntry_startedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_startedAt', 'G__typename');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_startedAt rebuild(
          void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder toBuilder() =>
      new GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData_SaveMediaListEntry_startedAt &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_startedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_startedAt,
            GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt? _$v;

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

  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_startedAt._initializeBuilder(
        this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder get _$this {
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
  void replace(GSaveMediaListEntryData_SaveMediaListEntry_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt;
  }

  @override
  void update(
      void Function(
              GSaveMediaListEntryData_SaveMediaListEntry_startedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_startedAt build() => _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt _build() {
    final _$result = _$v ??
        new _$GSaveMediaListEntryData_SaveMediaListEntry_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMediaListEntryData_SaveMediaListEntry_startedAt',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt
    extends GSaveMediaListEntryData_SaveMediaListEntry_completedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_completedAt',
        'G__typename');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_completedAt rebuild(
          void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder toBuilder() =>
      new GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData_SaveMediaListEntry_completedAt &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_completedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_completedAt,
            GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt? _$v;

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

  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_completedAt._initializeBuilder(
        this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder get _$this {
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
  void replace(GSaveMediaListEntryData_SaveMediaListEntry_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt;
  }

  @override
  void update(
      void Function(
              GSaveMediaListEntryData_SaveMediaListEntry_completedAtBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_completedAt build() => _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt _build() {
    final _$result = _$v ??
        new _$GSaveMediaListEntryData_SaveMediaListEntry_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMediaListEntryData_SaveMediaListEntry_completedAt',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_media
    extends GSaveMediaListEntryData_SaveMediaListEntry_media {
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
  final GSaveMediaListEntryData_SaveMediaListEntry_media_title? title;
  @override
  final GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage? coverImage;
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
  final GSaveMediaListEntryData_SaveMediaListEntry_media_startDate? startDate;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_media(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GSaveMediaListEntryData_SaveMediaListEntry_media', 'id');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media rebuild(
          void Function(GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder toBuilder() =>
      new GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData_SaveMediaListEntry_media &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_media')
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

class GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_media,
            GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_media? _$v;

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

  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder? _title;
  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder get title =>
      _$this._title ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder();
  set title(
          GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder?
              title) =>
      _$this._title = title;

  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder?
      _coverImage;
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
      get coverImage => _$this._coverImage ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder();
  set coverImage(
          GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder?
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

  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder? _startDate;
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder
      get startDate => _$this._startDate ??=
          new GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder();
  set startDate(
          GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder?
              startDate) =>
      _$this._startDate = startDate;

  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_media._initializeBuilder(this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder get _$this {
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
  void replace(GSaveMediaListEntryData_SaveMediaListEntry_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry_media;
  }

  @override
  void update(
      void Function(GSaveMediaListEntryData_SaveMediaListEntry_mediaBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media build() => _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media _build() {
    _$GSaveMediaListEntryData_SaveMediaListEntry_media _$result;
    try {
      _$result = _$v ??
          new _$GSaveMediaListEntryData_SaveMediaListEntry_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  r'GSaveMediaListEntryData_SaveMediaListEntry_media',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  r'GSaveMediaListEntryData_SaveMediaListEntry_media', 'id'),
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_media',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_title
    extends GSaveMediaListEntryData_SaveMediaListEntry_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_media_title(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_media_title',
        'G__typename');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_title rebuild(
          void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder toBuilder() =>
      new GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryData_SaveMediaListEntry_media_title &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_media_title,
            GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_media_title._initializeBuilder(
        this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveMediaListEntryData_SaveMediaListEntry_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry_media_title;
  }

  @override
  void update(
      void Function(
              GSaveMediaListEntryData_SaveMediaListEntry_media_titleBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_title build() => _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_title _build() {
    final _$result = _$v ??
        new _$GSaveMediaListEntryData_SaveMediaListEntry_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMediaListEntryData_SaveMediaListEntry_media_title',
                'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage
    extends GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage',
        'G__typename');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage rebuild(
          void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
      toBuilder() =>
          new GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage,
            GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage
        ._initializeBuilder(this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder
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
      GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage;
  }

  @override
  void update(
      void Function(
              GSaveMediaListEntryData_SaveMediaListEntry_media_coverImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage build() =>
      _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage _build() {
    final _$result = _$v ??
        new _$GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage',
                'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate
    extends GSaveMediaListEntryData_SaveMediaListEntry_media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate(
          [void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder)?
              updates]) =>
      (new GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder()
            ..update(updates))
          ._build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        r'GSaveMediaListEntryData_SaveMediaListEntry_media_startDate',
        'G__typename');
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDate rebuild(
          void Function(
                  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder
      toBuilder() =>
          new GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GSaveMediaListEntryData_SaveMediaListEntry_media_startDate &&
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
            r'GSaveMediaListEntryData_SaveMediaListEntry_media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder
    implements
        Builder<GSaveMediaListEntryData_SaveMediaListEntry_media_startDate,
            GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder> {
  _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate? _$v;

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

  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder() {
    GSaveMediaListEntryData_SaveMediaListEntry_media_startDate
        ._initializeBuilder(this);
  }

  GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder get _$this {
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
      GSaveMediaListEntryData_SaveMediaListEntry_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate;
  }

  @override
  void update(
      void Function(
              GSaveMediaListEntryData_SaveMediaListEntry_media_startDateBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryData_SaveMediaListEntry_media_startDate build() =>
      _build();

  _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate _build() {
    final _$result = _$v ??
        new _$GSaveMediaListEntryData_SaveMediaListEntry_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GSaveMediaListEntryData_SaveMediaListEntry_media_startDate',
                'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMediaListEntryData extends GDeleteMediaListEntryData {
  @override
  final String G__typename;
  @override
  final GDeleteMediaListEntryData_DeleteMediaListEntry? DeleteMediaListEntry;

  factory _$GDeleteMediaListEntryData(
          [void Function(GDeleteMediaListEntryDataBuilder)? updates]) =>
      (new GDeleteMediaListEntryDataBuilder()..update(updates))._build();

  _$GDeleteMediaListEntryData._(
      {required this.G__typename, this.DeleteMediaListEntry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteMediaListEntryData', 'G__typename');
  }

  @override
  GDeleteMediaListEntryData rebuild(
          void Function(GDeleteMediaListEntryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryDataBuilder toBuilder() =>
      new GDeleteMediaListEntryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryData &&
        G__typename == other.G__typename &&
        DeleteMediaListEntry == other.DeleteMediaListEntry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, DeleteMediaListEntry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryData')
          ..add('G__typename', G__typename)
          ..add('DeleteMediaListEntry', DeleteMediaListEntry))
        .toString();
  }
}

class GDeleteMediaListEntryDataBuilder
    implements
        Builder<GDeleteMediaListEntryData, GDeleteMediaListEntryDataBuilder> {
  _$GDeleteMediaListEntryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder? _DeleteMediaListEntry;
  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder
      get DeleteMediaListEntry => _$this._DeleteMediaListEntry ??=
          new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder();
  set DeleteMediaListEntry(
          GDeleteMediaListEntryData_DeleteMediaListEntryBuilder?
              DeleteMediaListEntry) =>
      _$this._DeleteMediaListEntry = DeleteMediaListEntry;

  GDeleteMediaListEntryDataBuilder() {
    GDeleteMediaListEntryData._initializeBuilder(this);
  }

  GDeleteMediaListEntryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _DeleteMediaListEntry = $v.DeleteMediaListEntry?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryData;
  }

  @override
  void update(void Function(GDeleteMediaListEntryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryData build() => _build();

  _$GDeleteMediaListEntryData _build() {
    _$GDeleteMediaListEntryData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteMediaListEntryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GDeleteMediaListEntryData', 'G__typename'),
              DeleteMediaListEntry: _DeleteMediaListEntry?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'DeleteMediaListEntry';
        _DeleteMediaListEntry?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GDeleteMediaListEntryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMediaListEntryData_DeleteMediaListEntry
    extends GDeleteMediaListEntryData_DeleteMediaListEntry {
  @override
  final String G__typename;
  @override
  final bool? deleted;

  factory _$GDeleteMediaListEntryData_DeleteMediaListEntry(
          [void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)?
              updates]) =>
      (new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder()
            ..update(updates))
          ._build();

  _$GDeleteMediaListEntryData_DeleteMediaListEntry._(
      {required this.G__typename, this.deleted})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GDeleteMediaListEntryData_DeleteMediaListEntry', 'G__typename');
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry rebuild(
          void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder toBuilder() =>
      new GDeleteMediaListEntryData_DeleteMediaListEntryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryData_DeleteMediaListEntry &&
        G__typename == other.G__typename &&
        deleted == other.deleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GDeleteMediaListEntryData_DeleteMediaListEntry')
          ..add('G__typename', G__typename)
          ..add('deleted', deleted))
        .toString();
  }
}

class GDeleteMediaListEntryData_DeleteMediaListEntryBuilder
    implements
        Builder<GDeleteMediaListEntryData_DeleteMediaListEntry,
            GDeleteMediaListEntryData_DeleteMediaListEntryBuilder> {
  _$GDeleteMediaListEntryData_DeleteMediaListEntry? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder() {
    GDeleteMediaListEntryData_DeleteMediaListEntry._initializeBuilder(this);
  }

  GDeleteMediaListEntryData_DeleteMediaListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleted = $v.deleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryData_DeleteMediaListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryData_DeleteMediaListEntry;
  }

  @override
  void update(
      void Function(GDeleteMediaListEntryData_DeleteMediaListEntryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryData_DeleteMediaListEntry build() => _build();

  _$GDeleteMediaListEntryData_DeleteMediaListEntry _build() {
    final _$result = _$v ??
        new _$GDeleteMediaListEntryData_DeleteMediaListEntry._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                r'GDeleteMediaListEntryData_DeleteMediaListEntry',
                'G__typename'),
            deleted: deleted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
