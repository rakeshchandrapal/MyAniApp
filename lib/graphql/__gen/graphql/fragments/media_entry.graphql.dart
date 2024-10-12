import '../schema.graphql.dart';
import 'fuzzy_date.graphql.dart';
import 'media.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$MediaListEntry {
  Fragment$MediaListEntry({
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
    this.media,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaId = json['mediaId'];
    final l$status = json['status'];
    final l$updatedAt = json['updatedAt'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$priority = json['priority'];
    final l$notes = json['notes'];
    final l$hiddenFromStatusLists = json['hiddenFromStatusLists'];
    final l$private = json['private'];
    final l$repeat = json['repeat'];
    final l$score = json['score'];
    final l$customLists = json['customLists'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry(
      id: (l$id as int),
      mediaId: (l$mediaId as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      updatedAt: (l$updatedAt as int?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      priority: (l$priority as int?),
      notes: (l$notes as String?),
      hiddenFromStatusLists: (l$hiddenFromStatusLists as bool?),
      private: (l$private as bool?),
      repeat: (l$repeat as int?),
      score: (l$score as num?)?.toDouble(),
      customLists: (l$customLists as dynamic),
      startedAt: l$startedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaListEntry$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int mediaId;

  final Enum$MediaListStatus? status;

  final int? updatedAt;

  final int? progress;

  final int? progressVolumes;

  final int? priority;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final bool? private;

  final int? repeat;

  final double? score;

  final dynamic customLists;

  final Fragment$FuzzyDate? startedAt;

  final Fragment$FuzzyDate? completedAt;

  final Fragment$MediaListEntry$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$mediaId = mediaId;
    resultData['mediaId'] = l$mediaId;
    final l$status = status;
    resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$updatedAt = updatedAt;
    resultData['updatedAt'] = l$updatedAt;
    final l$progress = progress;
    resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    resultData['progressVolumes'] = l$progressVolumes;
    final l$priority = priority;
    resultData['priority'] = l$priority;
    final l$notes = notes;
    resultData['notes'] = l$notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    resultData['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    final l$private = private;
    resultData['private'] = l$private;
    final l$repeat = repeat;
    resultData['repeat'] = l$repeat;
    final l$score = score;
    resultData['score'] = l$score;
    final l$customLists = customLists;
    resultData['customLists'] = l$customLists;
    final l$startedAt = startedAt;
    resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    resultData['completedAt'] = l$completedAt?.toJson();
    final l$media = media;
    resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$updatedAt = updatedAt;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$priority = priority;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$private = private;
    final l$repeat = repeat;
    final l$score = score;
    final l$customLists = customLists;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaId,
      l$status,
      l$updatedAt,
      l$progress,
      l$progressVolumes,
      l$priority,
      l$notes,
      l$hiddenFromStatusLists,
      l$private,
      l$repeat,
      l$score,
      l$customLists,
      l$startedAt,
      l$completedAt,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry on Fragment$MediaListEntry {
  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry> get copyWith =>
      CopyWith$Fragment$MediaListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaListEntry(
    Fragment$MediaListEntry instance,
    TRes Function(Fragment$MediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry;

  factory CopyWith$Fragment$MediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    dynamic customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt;
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt;
  CopyWith$Fragment$MediaListEntry$media<TRes> get media;
}

class _CopyWithImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry _instance;

  final TRes Function(Fragment$MediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? updatedAt = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? priority = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? private = _undefined,
    Object? repeat = _undefined,
    Object? score = _undefined,
    Object? customLists = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        updatedAt:
            updatedAt == _undefined ? _instance.updatedAt : (updatedAt as int?),
        progress:
            progress == _undefined ? _instance.progress : (progress as int?),
        progressVolumes: progressVolumes == _undefined
            ? _instance.progressVolumes
            : (progressVolumes as int?),
        priority:
            priority == _undefined ? _instance.priority : (priority as int?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        hiddenFromStatusLists: hiddenFromStatusLists == _undefined
            ? _instance.hiddenFromStatusLists
            : (hiddenFromStatusLists as bool?),
        private: private == _undefined ? _instance.private : (private as bool?),
        repeat: repeat == _undefined ? _instance.repeat : (repeat as int?),
        score: score == _undefined ? _instance.score : (score as double?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as dynamic),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$FuzzyDate?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$FuzzyDate?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaListEntry$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startedAt, (e) => call(startedAt: e));
  }

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$completedAt, (e) => call(completedAt: e));
  }

  @override
  CopyWith$Fragment$MediaListEntry$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaListEntry$media.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry<TRes>
    implements CopyWith$Fragment$MediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    dynamic customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  @override
  CopyWith$Fragment$MediaListEntry$media<TRes> get media =>
      CopyWith$Fragment$MediaListEntry$media.stub(_res);
}

const fragmentDefinitionMediaListEntry = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListEntry'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaList'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progress'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'progressVolumes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'priority'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'hiddenFromStatusLists'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'private'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'repeat'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'score'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'customLists'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'asArray'),
          value: BooleanValueNode(value: true),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FuzzyDate'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'completedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FuzzyDate'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'episodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chapters'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'status'),
          alias: null,
          arguments: [
            ArgumentNode(
              name: NameNode(value: 'version'),
              value: IntValueNode(value: '2'),
            )
          ],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'averageScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'popularity'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'startDate'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'FuzzyDate'),
              directives: [],
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentMediaListEntry = DocumentNode(definitions: [
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);

class Fragment$MediaListEntry$media implements Fragment$MediaFragment {
  Fragment$MediaListEntry$media({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.episodes,
    this.chapters,
    this.status,
    this.averageScore,
    this.popularity,
    this.startDate,
  });

  factory Fragment$MediaListEntry$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$status = json['status'];
    final l$averageScore = json['averageScore'];
    final l$popularity = json['popularity'];
    final l$startDate = json['startDate'];
    return Fragment$MediaListEntry$media(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Fragment$MediaListEntry$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaListEntry$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      averageScore: (l$averageScore as int?),
      popularity: (l$popularity as int?),
      startDate: l$startDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startDate as Map<String, dynamic>)),
    );
  }

  @override
  final int id;

  @override
  final Enum$MediaType? type;

  @override
  final bool? isAdult;

  @override
  final List<String?>? genres;

  @override
  final Enum$MediaFormat? format;

  @override
  final String? description;

  @override
  final Fragment$MediaListEntry$media$title? title;

  @override
  final Fragment$MediaListEntry$media$coverImage? coverImage;

  @override
  final String $__typename;

  final int? episodes;

  final int? chapters;

  final Enum$MediaStatus? status;

  final int? averageScore;

  final int? popularity;

  final Fragment$FuzzyDate? startDate;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$type = type;
    resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    resultData['description'] = l$description;
    final l$title = title;
    resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    resultData['chapters'] = l$chapters;
    final l$status = status;
    resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$averageScore = averageScore;
    resultData['averageScore'] = l$averageScore;
    final l$popularity = popularity;
    resultData['popularity'] = l$popularity;
    final l$startDate = startDate;
    resultData['startDate'] = l$startDate?.toJson();
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$status = status;
    final l$averageScore = averageScore;
    final l$popularity = popularity;
    final l$startDate = startDate;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
      l$episodes,
      l$chapters,
      l$status,
      l$averageScore,
      l$popularity,
      l$startDate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaListEntry$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry$media
    on Fragment$MediaListEntry$media {
  CopyWith$Fragment$MediaListEntry$media<Fragment$MediaListEntry$media>
      get copyWith => CopyWith$Fragment$MediaListEntry$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media(
    Fragment$MediaListEntry$media instance,
    TRes Function(Fragment$MediaListEntry$media) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media;

  factory CopyWith$Fragment$MediaListEntry$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  });
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title;
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
}

class _CopyWithImpl$Fragment$MediaListEntry$media<TRes>
    implements CopyWith$Fragment$MediaListEntry$media<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media _instance;

  final TRes Function(Fragment$MediaListEntry$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? status = _undefined,
    Object? averageScore = _undefined,
    Object? popularity = _undefined,
    Object? startDate = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaListEntry$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaListEntry$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$FuzzyDate?),
      ));

  @override
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaListEntry$media$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$title(
            local$title, (e) => call(title: e));
  }

  @override
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaListEntry$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media<TRes>
    implements CopyWith$Fragment$MediaListEntry$media<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title =>
      CopyWith$Fragment$MediaListEntry$media$title.stub(_res);

  @override
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaListEntry$media$coverImage.stub(_res);

  @override
  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
}

class Fragment$MediaListEntry$media$title
    implements Fragment$MediaFragment$title {
  Fragment$MediaListEntry$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaListEntry$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? userPreferred;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaListEntry$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry$media$title
    on Fragment$MediaListEntry$media$title {
  CopyWith$Fragment$MediaListEntry$media$title<
          Fragment$MediaListEntry$media$title>
      get copyWith => CopyWith$Fragment$MediaListEntry$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media$title(
    Fragment$MediaListEntry$media$title instance,
    TRes Function(Fragment$MediaListEntry$media$title) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media$title;

  factory CopyWith$Fragment$MediaListEntry$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media$title _instance;

  final TRes Function(Fragment$MediaListEntry$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media$title<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media$title(this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry$media$coverImage
    implements Fragment$MediaFragment$coverImage {
  Fragment$MediaListEntry$media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaListEntry$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  @override
  final String? extraLarge;

  @override
  final String $__typename;

  @override
  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaListEntry$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$MediaListEntry$media$coverImage
    on Fragment$MediaListEntry$media$coverImage {
  CopyWith$Fragment$MediaListEntry$media$coverImage<
          Fragment$MediaListEntry$media$coverImage>
      get copyWith => CopyWith$Fragment$MediaListEntry$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  factory CopyWith$Fragment$MediaListEntry$media$coverImage(
    Fragment$MediaListEntry$media$coverImage instance,
    TRes Function(Fragment$MediaListEntry$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$media$coverImage;

  factory CopyWith$Fragment$MediaListEntry$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$media$coverImage _instance;

  final TRes Function(Fragment$MediaListEntry$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage(this._res);

  final TRes _res;

  @override
  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}
