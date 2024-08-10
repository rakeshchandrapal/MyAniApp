// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_entry.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListEntryData> _$gMediaListEntryDataSerializer =
    new _$GMediaListEntryDataSerializer();
Serializer<GMediaListEntryData_startedAt>
    _$gMediaListEntryDataStartedAtSerializer =
    new _$GMediaListEntryData_startedAtSerializer();
Serializer<GMediaListEntryData_completedAt>
    _$gMediaListEntryDataCompletedAtSerializer =
    new _$GMediaListEntryData_completedAtSerializer();
Serializer<GMediaListEntryData_media> _$gMediaListEntryDataMediaSerializer =
    new _$GMediaListEntryData_mediaSerializer();
Serializer<GMediaListEntryData_media_title>
    _$gMediaListEntryDataMediaTitleSerializer =
    new _$GMediaListEntryData_media_titleSerializer();
Serializer<GMediaListEntryData_media_coverImage>
    _$gMediaListEntryDataMediaCoverImageSerializer =
    new _$GMediaListEntryData_media_coverImageSerializer();
Serializer<GMediaListEntryData_media_startDate>
    _$gMediaListEntryDataMediaStartDateSerializer =
    new _$GMediaListEntryData_media_startDateSerializer();

class _$GMediaListEntryDataSerializer
    implements StructuredSerializer<GMediaListEntryData> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData,
    _$GMediaListEntryData
  ];
  @override
  final String wireName = 'GMediaListEntryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData object,
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
            specifiedType: const FullType(_i1.GMediaListStatus)));
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
            specifiedType: const FullType(_i2.JsonObject)));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaListEntryData_startedAt)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaListEntryData_completedAt)));
    }
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaListEntryData_media)));
    }
    return result;
  }

  @override
  GMediaListEntryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryDataBuilder();

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
                  specifiedType: const FullType(_i1.GMediaListStatus))
              as _i1.GMediaListStatus?;
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
              specifiedType: const FullType(_i2.JsonObject)) as _i2.JsonObject?;
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaListEntryData_startedAt))!
              as GMediaListEntryData_startedAt);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaListEntryData_completedAt))!
              as GMediaListEntryData_completedAt);
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaListEntryData_media))!
              as GMediaListEntryData_media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryData_startedAtSerializer
    implements StructuredSerializer<GMediaListEntryData_startedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_startedAt,
    _$GMediaListEntryData_startedAt
  ];
  @override
  final String wireName = 'GMediaListEntryData_startedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_startedAt object,
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
  GMediaListEntryData_startedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_startedAtBuilder();

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

class _$GMediaListEntryData_completedAtSerializer
    implements StructuredSerializer<GMediaListEntryData_completedAt> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_completedAt,
    _$GMediaListEntryData_completedAt
  ];
  @override
  final String wireName = 'GMediaListEntryData_completedAt';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_completedAt object,
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
  GMediaListEntryData_completedAt deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_completedAtBuilder();

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

class _$GMediaListEntryData_mediaSerializer
    implements StructuredSerializer<GMediaListEntryData_media> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_media,
    _$GMediaListEntryData_media
  ];
  @override
  final String wireName = 'GMediaListEntryData_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_media object,
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
            specifiedType: const FullType(_i1.GMediaType)));
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
            specifiedType: const FullType(_i1.GMediaFormat)));
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
            specifiedType: const FullType(GMediaListEntryData_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaListEntryData_media_coverImage)));
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
            specifiedType: const FullType(_i1.GMediaStatus)));
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
                const FullType(GMediaListEntryData_media_startDate)));
    }
    return result;
  }

  @override
  GMediaListEntryData_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_mediaBuilder();

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
              specifiedType: const FullType(_i1.GMediaType)) as _i1.GMediaType?;
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
                  specifiedType: const FullType(_i1.GMediaFormat))
              as _i1.GMediaFormat?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaListEntryData_media_title))!
              as GMediaListEntryData_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaListEntryData_media_coverImage))!
              as GMediaListEntryData_media_coverImage);
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
                  specifiedType: const FullType(_i1.GMediaStatus))
              as _i1.GMediaStatus?;
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
                  specifiedType:
                      const FullType(GMediaListEntryData_media_startDate))!
              as GMediaListEntryData_media_startDate);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListEntryData_media_titleSerializer
    implements StructuredSerializer<GMediaListEntryData_media_title> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_media_title,
    _$GMediaListEntryData_media_title
  ];
  @override
  final String wireName = 'GMediaListEntryData_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_media_title object,
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
  GMediaListEntryData_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_media_titleBuilder();

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

class _$GMediaListEntryData_media_coverImageSerializer
    implements StructuredSerializer<GMediaListEntryData_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_media_coverImage,
    _$GMediaListEntryData_media_coverImage
  ];
  @override
  final String wireName = 'GMediaListEntryData_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_media_coverImage object,
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
  GMediaListEntryData_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_media_coverImageBuilder();

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

class _$GMediaListEntryData_media_startDateSerializer
    implements StructuredSerializer<GMediaListEntryData_media_startDate> {
  @override
  final Iterable<Type> types = const [
    GMediaListEntryData_media_startDate,
    _$GMediaListEntryData_media_startDate
  ];
  @override
  final String wireName = 'GMediaListEntryData_media_startDate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListEntryData_media_startDate object,
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
  GMediaListEntryData_media_startDate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListEntryData_media_startDateBuilder();

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

class _$GMediaListEntryData extends GMediaListEntryData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int mediaId;
  @override
  final _i1.GMediaListStatus? status;
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
  final _i2.JsonObject? customLists;
  @override
  final GMediaListEntryData_startedAt? startedAt;
  @override
  final GMediaListEntryData_completedAt? completedAt;
  @override
  final GMediaListEntryData_media? media;

  factory _$GMediaListEntryData(
          [void Function(GMediaListEntryDataBuilder)? updates]) =>
      (new GMediaListEntryDataBuilder()..update(updates))._build();

  _$GMediaListEntryData._(
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
        G__typename, r'GMediaListEntryData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaListEntryData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        mediaId, r'GMediaListEntryData', 'mediaId');
  }

  @override
  GMediaListEntryData rebuild(
          void Function(GMediaListEntryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryDataBuilder toBuilder() =>
      new GMediaListEntryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData')
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

class GMediaListEntryDataBuilder
    implements Builder<GMediaListEntryData, GMediaListEntryDataBuilder> {
  _$GMediaListEntryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  _i1.GMediaListStatus? _status;
  _i1.GMediaListStatus? get status => _$this._status;
  set status(_i1.GMediaListStatus? status) => _$this._status = status;

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

  _i2.JsonObject? _customLists;
  _i2.JsonObject? get customLists => _$this._customLists;
  set customLists(_i2.JsonObject? customLists) =>
      _$this._customLists = customLists;

  GMediaListEntryData_startedAtBuilder? _startedAt;
  GMediaListEntryData_startedAtBuilder get startedAt =>
      _$this._startedAt ??= new GMediaListEntryData_startedAtBuilder();
  set startedAt(GMediaListEntryData_startedAtBuilder? startedAt) =>
      _$this._startedAt = startedAt;

  GMediaListEntryData_completedAtBuilder? _completedAt;
  GMediaListEntryData_completedAtBuilder get completedAt =>
      _$this._completedAt ??= new GMediaListEntryData_completedAtBuilder();
  set completedAt(GMediaListEntryData_completedAtBuilder? completedAt) =>
      _$this._completedAt = completedAt;

  GMediaListEntryData_mediaBuilder? _media;
  GMediaListEntryData_mediaBuilder get media =>
      _$this._media ??= new GMediaListEntryData_mediaBuilder();
  set media(GMediaListEntryData_mediaBuilder? media) => _$this._media = media;

  GMediaListEntryDataBuilder() {
    GMediaListEntryData._initializeBuilder(this);
  }

  GMediaListEntryDataBuilder get _$this {
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
  void replace(GMediaListEntryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData;
  }

  @override
  void update(void Function(GMediaListEntryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData build() => _build();

  _$GMediaListEntryData _build() {
    _$GMediaListEntryData _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListEntryData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaListEntryData', 'id'),
              mediaId: BuiltValueNullFieldError.checkNotNull(
                  mediaId, r'GMediaListEntryData', 'mediaId'),
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
            r'GMediaListEntryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_startedAt extends GMediaListEntryData_startedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListEntryData_startedAt(
          [void Function(GMediaListEntryData_startedAtBuilder)? updates]) =>
      (new GMediaListEntryData_startedAtBuilder()..update(updates))._build();

  _$GMediaListEntryData_startedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryData_startedAt', 'G__typename');
  }

  @override
  GMediaListEntryData_startedAt rebuild(
          void Function(GMediaListEntryData_startedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_startedAtBuilder toBuilder() =>
      new GMediaListEntryData_startedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_startedAt &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_startedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListEntryData_startedAtBuilder
    implements
        Builder<GMediaListEntryData_startedAt,
            GMediaListEntryData_startedAtBuilder> {
  _$GMediaListEntryData_startedAt? _$v;

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

  GMediaListEntryData_startedAtBuilder() {
    GMediaListEntryData_startedAt._initializeBuilder(this);
  }

  GMediaListEntryData_startedAtBuilder get _$this {
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
  void replace(GMediaListEntryData_startedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_startedAt;
  }

  @override
  void update(void Function(GMediaListEntryData_startedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_startedAt build() => _build();

  _$GMediaListEntryData_startedAt _build() {
    final _$result = _$v ??
        new _$GMediaListEntryData_startedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaListEntryData_startedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_completedAt
    extends GMediaListEntryData_completedAt {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListEntryData_completedAt(
          [void Function(GMediaListEntryData_completedAtBuilder)? updates]) =>
      (new GMediaListEntryData_completedAtBuilder()..update(updates))._build();

  _$GMediaListEntryData_completedAt._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryData_completedAt', 'G__typename');
  }

  @override
  GMediaListEntryData_completedAt rebuild(
          void Function(GMediaListEntryData_completedAtBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_completedAtBuilder toBuilder() =>
      new GMediaListEntryData_completedAtBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_completedAt &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_completedAt')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListEntryData_completedAtBuilder
    implements
        Builder<GMediaListEntryData_completedAt,
            GMediaListEntryData_completedAtBuilder> {
  _$GMediaListEntryData_completedAt? _$v;

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

  GMediaListEntryData_completedAtBuilder() {
    GMediaListEntryData_completedAt._initializeBuilder(this);
  }

  GMediaListEntryData_completedAtBuilder get _$this {
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
  void replace(GMediaListEntryData_completedAt other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_completedAt;
  }

  @override
  void update(void Function(GMediaListEntryData_completedAtBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_completedAt build() => _build();

  _$GMediaListEntryData_completedAt _build() {
    final _$result = _$v ??
        new _$GMediaListEntryData_completedAt._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaListEntryData_completedAt', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_media extends GMediaListEntryData_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final _i1.GMediaType? type;
  @override
  final bool? isAdult;
  @override
  final BuiltList<String?>? genres;
  @override
  final _i1.GMediaFormat? format;
  @override
  final String? description;
  @override
  final GMediaListEntryData_media_title? title;
  @override
  final GMediaListEntryData_media_coverImage? coverImage;
  @override
  final int? episodes;
  @override
  final int? chapters;
  @override
  final _i1.GMediaStatus? status;
  @override
  final int? averageScore;
  @override
  final int? popularity;
  @override
  final GMediaListEntryData_media_startDate? startDate;

  factory _$GMediaListEntryData_media(
          [void Function(GMediaListEntryData_mediaBuilder)? updates]) =>
      (new GMediaListEntryData_mediaBuilder()..update(updates))._build();

  _$GMediaListEntryData_media._(
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
        G__typename, r'GMediaListEntryData_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaListEntryData_media', 'id');
  }

  @override
  GMediaListEntryData_media rebuild(
          void Function(GMediaListEntryData_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_mediaBuilder toBuilder() =>
      new GMediaListEntryData_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_media &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_media')
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

class GMediaListEntryData_mediaBuilder
    implements
        Builder<GMediaListEntryData_media, GMediaListEntryData_mediaBuilder> {
  _$GMediaListEntryData_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  _i1.GMediaType? _type;
  _i1.GMediaType? get type => _$this._type;
  set type(_i1.GMediaType? type) => _$this._type = type;

  bool? _isAdult;
  bool? get isAdult => _$this._isAdult;
  set isAdult(bool? isAdult) => _$this._isAdult = isAdult;

  ListBuilder<String?>? _genres;
  ListBuilder<String?> get genres =>
      _$this._genres ??= new ListBuilder<String?>();
  set genres(ListBuilder<String?>? genres) => _$this._genres = genres;

  _i1.GMediaFormat? _format;
  _i1.GMediaFormat? get format => _$this._format;
  set format(_i1.GMediaFormat? format) => _$this._format = format;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GMediaListEntryData_media_titleBuilder? _title;
  GMediaListEntryData_media_titleBuilder get title =>
      _$this._title ??= new GMediaListEntryData_media_titleBuilder();
  set title(GMediaListEntryData_media_titleBuilder? title) =>
      _$this._title = title;

  GMediaListEntryData_media_coverImageBuilder? _coverImage;
  GMediaListEntryData_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GMediaListEntryData_media_coverImageBuilder();
  set coverImage(GMediaListEntryData_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  int? _episodes;
  int? get episodes => _$this._episodes;
  set episodes(int? episodes) => _$this._episodes = episodes;

  int? _chapters;
  int? get chapters => _$this._chapters;
  set chapters(int? chapters) => _$this._chapters = chapters;

  _i1.GMediaStatus? _status;
  _i1.GMediaStatus? get status => _$this._status;
  set status(_i1.GMediaStatus? status) => _$this._status = status;

  int? _averageScore;
  int? get averageScore => _$this._averageScore;
  set averageScore(int? averageScore) => _$this._averageScore = averageScore;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  GMediaListEntryData_media_startDateBuilder? _startDate;
  GMediaListEntryData_media_startDateBuilder get startDate =>
      _$this._startDate ??= new GMediaListEntryData_media_startDateBuilder();
  set startDate(GMediaListEntryData_media_startDateBuilder? startDate) =>
      _$this._startDate = startDate;

  GMediaListEntryData_mediaBuilder() {
    GMediaListEntryData_media._initializeBuilder(this);
  }

  GMediaListEntryData_mediaBuilder get _$this {
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
  void replace(GMediaListEntryData_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_media;
  }

  @override
  void update(void Function(GMediaListEntryData_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_media build() => _build();

  _$GMediaListEntryData_media _build() {
    _$GMediaListEntryData_media _$result;
    try {
      _$result = _$v ??
          new _$GMediaListEntryData_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListEntryData_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaListEntryData_media', 'id'),
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
            r'GMediaListEntryData_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_media_title
    extends GMediaListEntryData_media_title {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaListEntryData_media_title(
          [void Function(GMediaListEntryData_media_titleBuilder)? updates]) =>
      (new GMediaListEntryData_media_titleBuilder()..update(updates))._build();

  _$GMediaListEntryData_media_title._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryData_media_title', 'G__typename');
  }

  @override
  GMediaListEntryData_media_title rebuild(
          void Function(GMediaListEntryData_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_media_titleBuilder toBuilder() =>
      new GMediaListEntryData_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_media_title &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_media_title')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaListEntryData_media_titleBuilder
    implements
        Builder<GMediaListEntryData_media_title,
            GMediaListEntryData_media_titleBuilder> {
  _$GMediaListEntryData_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaListEntryData_media_titleBuilder() {
    GMediaListEntryData_media_title._initializeBuilder(this);
  }

  GMediaListEntryData_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryData_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_media_title;
  }

  @override
  void update(void Function(GMediaListEntryData_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_media_title build() => _build();

  _$GMediaListEntryData_media_title _build() {
    final _$result = _$v ??
        new _$GMediaListEntryData_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GMediaListEntryData_media_title', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_media_coverImage
    extends GMediaListEntryData_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;

  factory _$GMediaListEntryData_media_coverImage(
          [void Function(GMediaListEntryData_media_coverImageBuilder)?
              updates]) =>
      (new GMediaListEntryData_media_coverImageBuilder()..update(updates))
          ._build();

  _$GMediaListEntryData_media_coverImage._(
      {required this.G__typename, this.extraLarge})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryData_media_coverImage', 'G__typename');
  }

  @override
  GMediaListEntryData_media_coverImage rebuild(
          void Function(GMediaListEntryData_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_media_coverImageBuilder toBuilder() =>
      new GMediaListEntryData_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_media_coverImage &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge))
        .toString();
  }
}

class GMediaListEntryData_media_coverImageBuilder
    implements
        Builder<GMediaListEntryData_media_coverImage,
            GMediaListEntryData_media_coverImageBuilder> {
  _$GMediaListEntryData_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  GMediaListEntryData_media_coverImageBuilder() {
    GMediaListEntryData_media_coverImage._initializeBuilder(this);
  }

  GMediaListEntryData_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListEntryData_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_media_coverImage;
  }

  @override
  void update(
      void Function(GMediaListEntryData_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_media_coverImage build() => _build();

  _$GMediaListEntryData_media_coverImage _build() {
    final _$result = _$v ??
        new _$GMediaListEntryData_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaListEntryData_media_coverImage', 'G__typename'),
            extraLarge: extraLarge);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaListEntryData_media_startDate
    extends GMediaListEntryData_media_startDate {
  @override
  final String G__typename;
  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  factory _$GMediaListEntryData_media_startDate(
          [void Function(GMediaListEntryData_media_startDateBuilder)?
              updates]) =>
      (new GMediaListEntryData_media_startDateBuilder()..update(updates))
          ._build();

  _$GMediaListEntryData_media_startDate._(
      {required this.G__typename, this.day, this.month, this.year})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListEntryData_media_startDate', 'G__typename');
  }

  @override
  GMediaListEntryData_media_startDate rebuild(
          void Function(GMediaListEntryData_media_startDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListEntryData_media_startDateBuilder toBuilder() =>
      new GMediaListEntryData_media_startDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListEntryData_media_startDate &&
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
    return (newBuiltValueToStringHelper(r'GMediaListEntryData_media_startDate')
          ..add('G__typename', G__typename)
          ..add('day', day)
          ..add('month', month)
          ..add('year', year))
        .toString();
  }
}

class GMediaListEntryData_media_startDateBuilder
    implements
        Builder<GMediaListEntryData_media_startDate,
            GMediaListEntryData_media_startDateBuilder> {
  _$GMediaListEntryData_media_startDate? _$v;

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

  GMediaListEntryData_media_startDateBuilder() {
    GMediaListEntryData_media_startDate._initializeBuilder(this);
  }

  GMediaListEntryData_media_startDateBuilder get _$this {
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
  void replace(GMediaListEntryData_media_startDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListEntryData_media_startDate;
  }

  @override
  void update(
      void Function(GMediaListEntryData_media_startDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListEntryData_media_startDate build() => _build();

  _$GMediaListEntryData_media_startDate _build() {
    final _$result = _$v ??
        new _$GMediaListEntryData_media_startDate._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaListEntryData_media_startDate', 'G__typename'),
            day: day,
            month: month,
            year: year);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
