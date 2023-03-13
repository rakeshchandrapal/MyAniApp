import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$BasicMedia {
  Fragment$BasicMedia({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$BasicMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$BasicMedia(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Fragment$BasicMedia$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$BasicMedia$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Fragment$BasicMedia$title? title;

  final Fragment$BasicMedia$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$BasicMedia) || runtimeType != other.runtimeType) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$BasicMedia on Fragment$BasicMedia {
  CopyWith$Fragment$BasicMedia<Fragment$BasicMedia> get copyWith =>
      CopyWith$Fragment$BasicMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$BasicMedia<TRes> {
  factory CopyWith$Fragment$BasicMedia(
    Fragment$BasicMedia instance,
    TRes Function(Fragment$BasicMedia) then,
  ) = _CopyWithImpl$Fragment$BasicMedia;

  factory CopyWith$Fragment$BasicMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicMedia;

  TRes call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$BasicMedia$title? title,
    Fragment$BasicMedia$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia$title<TRes> get title;
  CopyWith$Fragment$BasicMedia$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$BasicMedia<TRes>
    implements CopyWith$Fragment$BasicMedia<TRes> {
  _CopyWithImpl$Fragment$BasicMedia(
    this._instance,
    this._then,
  );

  final Fragment$BasicMedia _instance;

  final TRes Function(Fragment$BasicMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$BasicMedia(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$BasicMedia$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$BasicMedia$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$BasicMedia$title.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$BasicMedia$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$BasicMedia$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$BasicMedia<TRes>
    implements CopyWith$Fragment$BasicMedia<TRes> {
  _CopyWithStubImpl$Fragment$BasicMedia(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$BasicMedia$title? title,
    Fragment$BasicMedia$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia$title<TRes> get title =>
      CopyWith$Fragment$BasicMedia$title.stub(_res);
  CopyWith$Fragment$BasicMedia$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$BasicMedia$coverImage.stub(_res);
}

const fragmentDefinitionBasicMedia = FragmentDefinitionNode(
  name: NameNode(value: 'BasicMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'asHtml'),
          value: BooleanValueNode(value: true),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isAdult'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'format'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'userPreferred'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'large'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
const documentNodeFragmentBasicMedia = DocumentNode(definitions: [
  fragmentDefinitionBasicMedia,
]);

extension ClientExtension$Fragment$BasicMedia on graphql.GraphQLClient {
  void writeFragment$BasicMedia({
    required Fragment$BasicMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'BasicMedia',
            document: documentNodeFragmentBasicMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$BasicMedia? readFragment$BasicMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'BasicMedia',
          document: documentNodeFragmentBasicMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$BasicMedia.fromJson(result);
  }
}

class Fragment$BasicMedia$title {
  Fragment$BasicMedia$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$BasicMedia$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$BasicMedia$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Fragment$BasicMedia$title) ||
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

extension UtilityExtension$Fragment$BasicMedia$title
    on Fragment$BasicMedia$title {
  CopyWith$Fragment$BasicMedia$title<Fragment$BasicMedia$title> get copyWith =>
      CopyWith$Fragment$BasicMedia$title(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$BasicMedia$title<TRes> {
  factory CopyWith$Fragment$BasicMedia$title(
    Fragment$BasicMedia$title instance,
    TRes Function(Fragment$BasicMedia$title) then,
  ) = _CopyWithImpl$Fragment$BasicMedia$title;

  factory CopyWith$Fragment$BasicMedia$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicMedia$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$BasicMedia$title<TRes>
    implements CopyWith$Fragment$BasicMedia$title<TRes> {
  _CopyWithImpl$Fragment$BasicMedia$title(
    this._instance,
    this._then,
  );

  final Fragment$BasicMedia$title _instance;

  final TRes Function(Fragment$BasicMedia$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$BasicMedia$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$BasicMedia$title<TRes>
    implements CopyWith$Fragment$BasicMedia$title<TRes> {
  _CopyWithStubImpl$Fragment$BasicMedia$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$BasicMedia$coverImage {
  Fragment$BasicMedia$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$BasicMedia$coverImage.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$BasicMedia$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$BasicMedia$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Fragment$BasicMedia$coverImage
    on Fragment$BasicMedia$coverImage {
  CopyWith$Fragment$BasicMedia$coverImage<Fragment$BasicMedia$coverImage>
      get copyWith => CopyWith$Fragment$BasicMedia$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$BasicMedia$coverImage<TRes> {
  factory CopyWith$Fragment$BasicMedia$coverImage(
    Fragment$BasicMedia$coverImage instance,
    TRes Function(Fragment$BasicMedia$coverImage) then,
  ) = _CopyWithImpl$Fragment$BasicMedia$coverImage;

  factory CopyWith$Fragment$BasicMedia$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicMedia$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$BasicMedia$coverImage<TRes>
    implements CopyWith$Fragment$BasicMedia$coverImage<TRes> {
  _CopyWithImpl$Fragment$BasicMedia$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$BasicMedia$coverImage _instance;

  final TRes Function(Fragment$BasicMedia$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$BasicMedia$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$BasicMedia$coverImage<TRes>
    implements CopyWith$Fragment$BasicMedia$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$BasicMedia$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry {
  Fragment$MediaListEntry({
    this.status,
    required this.id,
    this.updatedAt,
    this.progress,
    this.progressVolumes,
    this.priority,
    this.notes,
    this.hiddenFromStatusLists,
    this.private,
    this.repeat,
    this.score,
    this.startedAt,
    this.completedAt,
    this.media,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$id = json['id'];
    final l$updatedAt = json['updatedAt'];
    final l$progress = json['progress'];
    final l$progressVolumes = json['progressVolumes'];
    final l$priority = json['priority'];
    final l$notes = json['notes'];
    final l$hiddenFromStatusLists = json['hiddenFromStatusLists'];
    final l$private = json['private'];
    final l$repeat = json['repeat'];
    final l$score = json['score'];
    final l$startedAt = json['startedAt'];
    final l$completedAt = json['completedAt'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      id: (l$id as int),
      updatedAt: (l$updatedAt as int?),
      progress: (l$progress as int?),
      progressVolumes: (l$progressVolumes as int?),
      priority: (l$priority as int?),
      notes: (l$notes as String?),
      hiddenFromStatusLists: (l$hiddenFromStatusLists as bool?),
      private: (l$private as bool?),
      repeat: (l$repeat as int?),
      score: (l$score as num?)?.toDouble(),
      startedAt: l$startedAt == null
          ? null
          : Fragment$MediaListEntry$startedAt.fromJson(
              (l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$MediaListEntry$completedAt.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaListEntry$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final int id;

  final int? updatedAt;

  final int? progress;

  final int? progressVolumes;

  final int? priority;

  final String? notes;

  final bool? hiddenFromStatusLists;

  final bool? private;

  final int? repeat;

  final double? score;

  final Fragment$MediaListEntry$startedAt? startedAt;

  final Fragment$MediaListEntry$completedAt? completedAt;

  final Fragment$MediaListEntry$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$progressVolumes = progressVolumes;
    _resultData['progressVolumes'] = l$progressVolumes;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    _resultData['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$repeat = repeat;
    _resultData['repeat'] = l$repeat;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$id = id;
    final l$updatedAt = updatedAt;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$priority = priority;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$private = private;
    final l$repeat = repeat;
    final l$score = score;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$id,
      l$updatedAt,
      l$progress,
      l$progressVolumes,
      l$priority,
      l$notes,
      l$hiddenFromStatusLists,
      l$private,
      l$repeat,
      l$score,
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
    if (!(other is Fragment$MediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    Enum$MediaListStatus? status,
    int? id,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    Fragment$MediaListEntry$startedAt? startedAt,
    Fragment$MediaListEntry$completedAt? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaListEntry$startedAt<TRes> get startedAt;
  CopyWith$Fragment$MediaListEntry$completedAt<TRes> get completedAt;
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

  TRes call({
    Object? status = _undefined,
    Object? id = _undefined,
    Object? updatedAt = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? priority = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? private = _undefined,
    Object? repeat = _undefined,
    Object? score = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        id: id == _undefined || id == null ? _instance.id : (id as int),
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
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$MediaListEntry$startedAt?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$MediaListEntry$completedAt?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaListEntry$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MediaListEntry$startedAt<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$MediaListEntry$startedAt.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$startedAt(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Fragment$MediaListEntry$completedAt<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$MediaListEntry$completedAt.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$completedAt(
            local$completedAt, (e) => call(completedAt: e));
  }

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

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    int? id,
    int? updatedAt,
    int? progress,
    int? progressVolumes,
    int? priority,
    String? notes,
    bool? hiddenFromStatusLists,
    bool? private,
    int? repeat,
    double? score,
    Fragment$MediaListEntry$startedAt? startedAt,
    Fragment$MediaListEntry$completedAt? completedAt,
    Fragment$MediaListEntry$media? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MediaListEntry$startedAt<TRes> get startedAt =>
      CopyWith$Fragment$MediaListEntry$startedAt.stub(_res);
  CopyWith$Fragment$MediaListEntry$completedAt<TRes> get completedAt =>
      CopyWith$Fragment$MediaListEntry$completedAt.stub(_res);
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
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'id'),
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
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'format'),
          value: EnumValueNode(name: NameNode(value: 'POINT_100')),
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
        FieldNode(
          name: NameNode(value: 'year'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'day'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
        FieldNode(
          name: NameNode(value: 'year'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'month'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'day'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
          name: NameNode(value: 'BasicMedia'),
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
  fragmentDefinitionBasicMedia,
]);

extension ClientExtension$Fragment$MediaListEntry on graphql.GraphQLClient {
  void writeFragment$MediaListEntry({
    required Fragment$MediaListEntry data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaListEntry',
            document: documentNodeFragmentMediaListEntry,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaListEntry? readFragment$MediaListEntry({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaListEntry',
          document: documentNodeFragmentMediaListEntry,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaListEntry.fromJson(result);
  }
}

class Fragment$MediaListEntry$startedAt {
  Fragment$MediaListEntry$startedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$MediaListEntry$startedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$startedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry$startedAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension$Fragment$MediaListEntry$startedAt
    on Fragment$MediaListEntry$startedAt {
  CopyWith$Fragment$MediaListEntry$startedAt<Fragment$MediaListEntry$startedAt>
      get copyWith => CopyWith$Fragment$MediaListEntry$startedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$startedAt<TRes> {
  factory CopyWith$Fragment$MediaListEntry$startedAt(
    Fragment$MediaListEntry$startedAt instance,
    TRes Function(Fragment$MediaListEntry$startedAt) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$startedAt;

  factory CopyWith$Fragment$MediaListEntry$startedAt.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$startedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$startedAt<TRes>
    implements CopyWith$Fragment$MediaListEntry$startedAt<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$startedAt(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$startedAt _instance;

  final TRes Function(Fragment$MediaListEntry$startedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$startedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$startedAt<TRes>
    implements CopyWith$Fragment$MediaListEntry$startedAt<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$startedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry$completedAt {
  Fragment$MediaListEntry$completedAt({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$MediaListEntry$completedAt.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$completedAt(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry$completedAt) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension$Fragment$MediaListEntry$completedAt
    on Fragment$MediaListEntry$completedAt {
  CopyWith$Fragment$MediaListEntry$completedAt<
          Fragment$MediaListEntry$completedAt>
      get copyWith => CopyWith$Fragment$MediaListEntry$completedAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaListEntry$completedAt<TRes> {
  factory CopyWith$Fragment$MediaListEntry$completedAt(
    Fragment$MediaListEntry$completedAt instance,
    TRes Function(Fragment$MediaListEntry$completedAt) then,
  ) = _CopyWithImpl$Fragment$MediaListEntry$completedAt;

  factory CopyWith$Fragment$MediaListEntry$completedAt.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListEntry$completedAt;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListEntry$completedAt<TRes>
    implements CopyWith$Fragment$MediaListEntry$completedAt<TRes> {
  _CopyWithImpl$Fragment$MediaListEntry$completedAt(
    this._instance,
    this._then,
  );

  final Fragment$MediaListEntry$completedAt _instance;

  final TRes Function(Fragment$MediaListEntry$completedAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$completedAt(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$completedAt<TRes>
    implements CopyWith$Fragment$MediaListEntry$completedAt<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$completedAt(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry$media implements Fragment$BasicMedia {
  Fragment$MediaListEntry$media({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaListEntry$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Fragment$MediaListEntry$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaListEntry$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Fragment$MediaListEntry$media$title? title;

  final Fragment$MediaListEntry$media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry$media) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title;
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage;
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

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaListEntry$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaListEntry$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaListEntry$media$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaListEntry$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaListEntry$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media<TRes>
    implements CopyWith$Fragment$MediaListEntry$media<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Fragment$MediaListEntry$media$title? title,
    Fragment$MediaListEntry$media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MediaListEntry$media$title<TRes> get title =>
      CopyWith$Fragment$MediaListEntry$media$title.stub(_res);
  CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaListEntry$media$coverImage.stub(_res);
}

class Fragment$MediaListEntry$media$title implements Fragment$BasicMedia$title {
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

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Fragment$MediaListEntry$media$title) ||
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

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaListEntry$media$coverImage
    implements Fragment$BasicMedia$coverImage {
  Fragment$MediaListEntry$media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaListEntry$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListEntry$media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListEntry$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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
    String? large,
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

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListEntry$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage<TRes>
    implements CopyWith$Fragment$MediaListEntry$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaListEntry$media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FetchMediaById {
  factory Variables$Query$FetchMediaById({int? id}) =>
      Variables$Query$FetchMediaById._({
        if (id != null) r'id': id,
      });

  Variables$Query$FetchMediaById._(this._$data);

  factory Variables$Query$FetchMediaById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$FetchMediaById._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchMediaById<Variables$Query$FetchMediaById>
      get copyWith => CopyWith$Variables$Query$FetchMediaById(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchMediaById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$FetchMediaById<TRes> {
  factory CopyWith$Variables$Query$FetchMediaById(
    Variables$Query$FetchMediaById instance,
    TRes Function(Variables$Query$FetchMediaById) then,
  ) = _CopyWithImpl$Variables$Query$FetchMediaById;

  factory CopyWith$Variables$Query$FetchMediaById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchMediaById;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$FetchMediaById<TRes>
    implements CopyWith$Variables$Query$FetchMediaById<TRes> {
  _CopyWithImpl$Variables$Query$FetchMediaById(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchMediaById _instance;

  final TRes Function(Variables$Query$FetchMediaById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$FetchMediaById._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchMediaById<TRes>
    implements CopyWith$Variables$Query$FetchMediaById<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchMediaById(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$FetchMediaById {
  Query$FetchMediaById({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$FetchMediaById.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById(
      Media: l$Media == null
          ? null
          : Query$FetchMediaById$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMediaById$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$FetchMediaById on Query$FetchMediaById {
  CopyWith$Query$FetchMediaById<Query$FetchMediaById> get copyWith =>
      CopyWith$Query$FetchMediaById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchMediaById<TRes> {
  factory CopyWith$Query$FetchMediaById(
    Query$FetchMediaById instance,
    TRes Function(Query$FetchMediaById) then,
  ) = _CopyWithImpl$Query$FetchMediaById;

  factory CopyWith$Query$FetchMediaById.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById;

  TRes call({
    Query$FetchMediaById$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaById$Media<TRes> get Media;
}

class _CopyWithImpl$Query$FetchMediaById<TRes>
    implements CopyWith$Query$FetchMediaById<TRes> {
  _CopyWithImpl$Query$FetchMediaById(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById _instance;

  final TRes Function(Query$FetchMediaById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$FetchMediaById$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaById$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$FetchMediaById$Media.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById<TRes>
    implements CopyWith$Query$FetchMediaById<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById(this._res);

  TRes _res;

  call({
    Query$FetchMediaById$Media? Media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media<TRes> get Media =>
      CopyWith$Query$FetchMediaById$Media.stub(_res);
}

const documentNodeQueryFetchMediaById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchMediaById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'BasicMedia'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'bannerImage'),
            alias: null,
            arguments: [],
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
            name: NameNode(value: 'episodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'source'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'version'),
                value: IntValueNode(value: '3'),
              )
            ],
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'season'),
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
            name: NameNode(value: 'volumes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'coverImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'large'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'extraLarge'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'trailer'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnail'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'startDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'endDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'english'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'native'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'romaji'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userPreferred'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'relations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'relationType'),
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
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'BasicMedia'),
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
          ),
          FieldNode(
            name: NameNode(value: 'mediaListEntry'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaListEntry'),
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
            name: NameNode(value: 'streamingEpisodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnail'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'externalLinks'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'language'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'summary'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rating'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ratingAmount'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userRating'),
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
                        name: NameNode(value: 'user'),
                        alias: null,
                        arguments: [],
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
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'avatar'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'large'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'medium'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
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
                        name: NameNode(value: 'createdAt'),
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
                        name: NameNode(value: 'media'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'title'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: SelectionSetNode(selections: [
                              FieldNode(
                                name: NameNode(value: 'userPreferred'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
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
                        name: NameNode(value: 'body'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'asHtml'),
                            value: BooleanValueNode(value: true),
                          )
                        ],
                        directives: [],
                        selectionSet: null,
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
          ),
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: IntValueNode(value: '1'),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ROLE')),
                  EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                  EnumValueNode(name: NameNode(value: 'ID')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
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
  fragmentDefinitionBasicMedia,
  fragmentDefinitionMediaListEntry,
]);
Query$FetchMediaById _parserFn$Query$FetchMediaById(
        Map<String, dynamic> data) =>
    Query$FetchMediaById.fromJson(data);

class Options$Query$FetchMediaById
    extends graphql.QueryOptions<Query$FetchMediaById> {
  Options$Query$FetchMediaById({
    String? operationName,
    Variables$Query$FetchMediaById? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchMediaById,
          parserFn: _parserFn$Query$FetchMediaById,
        );
}

class WatchOptions$Query$FetchMediaById
    extends graphql.WatchQueryOptions<Query$FetchMediaById> {
  WatchOptions$Query$FetchMediaById({
    String? operationName,
    Variables$Query$FetchMediaById? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchMediaById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchMediaById,
        );
}

class FetchMoreOptions$Query$FetchMediaById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchMediaById({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchMediaById? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchMediaById,
        );
}

extension ClientExtension$Query$FetchMediaById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchMediaById>> query$FetchMediaById(
          [Options$Query$FetchMediaById? options]) async =>
      await this.query(options ?? Options$Query$FetchMediaById());
  graphql.ObservableQuery<Query$FetchMediaById> watchQuery$FetchMediaById(
          [WatchOptions$Query$FetchMediaById? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchMediaById());
  void writeQuery$FetchMediaById({
    required Query$FetchMediaById data,
    Variables$Query$FetchMediaById? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchMediaById),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchMediaById? readQuery$FetchMediaById({
    Variables$Query$FetchMediaById? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchMediaById),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchMediaById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchMediaById> useQuery$FetchMediaById(
        [Options$Query$FetchMediaById? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchMediaById());
graphql.ObservableQuery<Query$FetchMediaById> useWatchQuery$FetchMediaById(
        [WatchOptions$Query$FetchMediaById? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchMediaById());

class Query$FetchMediaById$Widget
    extends graphql_flutter.Query<Query$FetchMediaById> {
  Query$FetchMediaById$Widget({
    widgets.Key? key,
    Options$Query$FetchMediaById? options,
    required graphql_flutter.QueryBuilder<Query$FetchMediaById> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchMediaById(),
          builder: builder,
        );
}

class Query$FetchMediaById$Media implements Fragment$BasicMedia {
  Query$FetchMediaById$Media({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.bannerImage,
    this.averageScore,
    this.duration,
    this.source,
    this.status,
    this.favourites,
    required this.isFavourite,
    this.season,
    this.volumes,
    this.trailer,
    this.startDate,
    this.endDate,
    this.relations,
    this.mediaListEntry,
    this.streamingEpisodes,
    this.externalLinks,
    this.reviews,
    this.characters,
  });

  factory Query$FetchMediaById$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$bannerImage = json['bannerImage'];
    final l$averageScore = json['averageScore'];
    final l$duration = json['duration'];
    final l$source = json['source'];
    final l$status = json['status'];
    final l$favourites = json['favourites'];
    final l$isFavourite = json['isFavourite'];
    final l$season = json['season'];
    final l$volumes = json['volumes'];
    final l$trailer = json['trailer'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$relations = json['relations'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$streamingEpisodes = json['streamingEpisodes'];
    final l$externalLinks = json['externalLinks'];
    final l$reviews = json['reviews'];
    final l$characters = json['characters'];
    return Query$FetchMediaById$Media(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Query$FetchMediaById$Media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$FetchMediaById$Media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      bannerImage: (l$bannerImage as String?),
      averageScore: (l$averageScore as int?),
      duration: (l$duration as int?),
      source: l$source == null
          ? null
          : fromJson$Enum$MediaSource((l$source as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      favourites: (l$favourites as int?),
      isFavourite: (l$isFavourite as bool),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      volumes: (l$volumes as int?),
      trailer: l$trailer == null
          ? null
          : Query$FetchMediaById$Media$trailer.fromJson(
              (l$trailer as Map<String, dynamic>)),
      startDate: l$startDate == null
          ? null
          : Query$FetchMediaById$Media$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Query$FetchMediaById$Media$endDate.fromJson(
              (l$endDate as Map<String, dynamic>)),
      relations: l$relations == null
          ? null
          : Query$FetchMediaById$Media$relations.fromJson(
              (l$relations as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$MediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      streamingEpisodes: (l$streamingEpisodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaById$Media$streamingEpisodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      externalLinks: (l$externalLinks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaById$Media$externalLinks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      reviews: l$reviews == null
          ? null
          : Query$FetchMediaById$Media$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Query$FetchMediaById$Media$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Query$FetchMediaById$Media$title? title;

  final Query$FetchMediaById$Media$coverImage? coverImage;

  final String $__typename;

  final String? bannerImage;

  final int? averageScore;

  final int? duration;

  final Enum$MediaSource? source;

  final Enum$MediaStatus? status;

  final int? favourites;

  final bool isFavourite;

  final Enum$MediaSeason? season;

  final int? volumes;

  final Query$FetchMediaById$Media$trailer? trailer;

  final Query$FetchMediaById$Media$startDate? startDate;

  final Query$FetchMediaById$Media$endDate? endDate;

  final Query$FetchMediaById$Media$relations? relations;

  final Fragment$MediaListEntry? mediaListEntry;

  final List<Query$FetchMediaById$Media$streamingEpisodes?>? streamingEpisodes;

  final List<Query$FetchMediaById$Media$externalLinks?>? externalLinks;

  final Query$FetchMediaById$Media$reviews? reviews;

  final Query$FetchMediaById$Media$characters? characters;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJson$Enum$MediaSource(l$source);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$trailer = trailer;
    _resultData['trailer'] = l$trailer?.toJson();
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$relations = relations;
    _resultData['relations'] = l$relations?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$streamingEpisodes = streamingEpisodes;
    _resultData['streamingEpisodes'] =
        l$streamingEpisodes?.map((e) => e?.toJson()).toList();
    final l$externalLinks = externalLinks;
    _resultData['externalLinks'] =
        l$externalLinks?.map((e) => e?.toJson()).toList();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$bannerImage = bannerImage;
    final l$averageScore = averageScore;
    final l$duration = duration;
    final l$source = source;
    final l$status = status;
    final l$favourites = favourites;
    final l$isFavourite = isFavourite;
    final l$season = season;
    final l$volumes = volumes;
    final l$trailer = trailer;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$relations = relations;
    final l$mediaListEntry = mediaListEntry;
    final l$streamingEpisodes = streamingEpisodes;
    final l$externalLinks = externalLinks;
    final l$reviews = reviews;
    final l$characters = characters;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
      l$bannerImage,
      l$averageScore,
      l$duration,
      l$source,
      l$status,
      l$favourites,
      l$isFavourite,
      l$season,
      l$volumes,
      l$trailer,
      l$startDate,
      l$endDate,
      l$relations,
      l$mediaListEntry,
      l$streamingEpisodes == null
          ? null
          : Object.hashAll(l$streamingEpisodes.map((v) => v)),
      l$externalLinks == null
          ? null
          : Object.hashAll(l$externalLinks.map((v) => v)),
      l$reviews,
      l$characters,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
      return false;
    }
    final l$trailer = trailer;
    final lOther$trailer = other.trailer;
    if (l$trailer != lOther$trailer) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$relations = relations;
    final lOther$relations = other.relations;
    if (l$relations != lOther$relations) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
      return false;
    }
    final l$streamingEpisodes = streamingEpisodes;
    final lOther$streamingEpisodes = other.streamingEpisodes;
    if (l$streamingEpisodes != null && lOther$streamingEpisodes != null) {
      if (l$streamingEpisodes.length != lOther$streamingEpisodes.length) {
        return false;
      }
      for (int i = 0; i < l$streamingEpisodes.length; i++) {
        final l$streamingEpisodes$entry = l$streamingEpisodes[i];
        final lOther$streamingEpisodes$entry = lOther$streamingEpisodes[i];
        if (l$streamingEpisodes$entry != lOther$streamingEpisodes$entry) {
          return false;
        }
      }
    } else if (l$streamingEpisodes != lOther$streamingEpisodes) {
      return false;
    }
    final l$externalLinks = externalLinks;
    final lOther$externalLinks = other.externalLinks;
    if (l$externalLinks != null && lOther$externalLinks != null) {
      if (l$externalLinks.length != lOther$externalLinks.length) {
        return false;
      }
      for (int i = 0; i < l$externalLinks.length; i++) {
        final l$externalLinks$entry = l$externalLinks[i];
        final lOther$externalLinks$entry = lOther$externalLinks[i];
        if (l$externalLinks$entry != lOther$externalLinks$entry) {
          return false;
        }
      }
    } else if (l$externalLinks != lOther$externalLinks) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchMediaById$Media
    on Query$FetchMediaById$Media {
  CopyWith$Query$FetchMediaById$Media<Query$FetchMediaById$Media>
      get copyWith => CopyWith$Query$FetchMediaById$Media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media<TRes> {
  factory CopyWith$Query$FetchMediaById$Media(
    Query$FetchMediaById$Media instance,
    TRes Function(Query$FetchMediaById$Media) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media;

  factory CopyWith$Query$FetchMediaById$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$FetchMediaById$Media$title? title,
    Query$FetchMediaById$Media$coverImage? coverImage,
    String? $__typename,
    String? bannerImage,
    int? averageScore,
    int? duration,
    Enum$MediaSource? source,
    Enum$MediaStatus? status,
    int? favourites,
    bool? isFavourite,
    Enum$MediaSeason? season,
    int? volumes,
    Query$FetchMediaById$Media$trailer? trailer,
    Query$FetchMediaById$Media$startDate? startDate,
    Query$FetchMediaById$Media$endDate? endDate,
    Query$FetchMediaById$Media$relations? relations,
    Fragment$MediaListEntry? mediaListEntry,
    List<Query$FetchMediaById$Media$streamingEpisodes?>? streamingEpisodes,
    List<Query$FetchMediaById$Media$externalLinks?>? externalLinks,
    Query$FetchMediaById$Media$reviews? reviews,
    Query$FetchMediaById$Media$characters? characters,
  });
  CopyWith$Query$FetchMediaById$Media$title<TRes> get title;
  CopyWith$Query$FetchMediaById$Media$coverImage<TRes> get coverImage;
  CopyWith$Query$FetchMediaById$Media$trailer<TRes> get trailer;
  CopyWith$Query$FetchMediaById$Media$startDate<TRes> get startDate;
  CopyWith$Query$FetchMediaById$Media$endDate<TRes> get endDate;
  CopyWith$Query$FetchMediaById$Media$relations<TRes> get relations;
  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry;
  TRes streamingEpisodes(
      Iterable<Query$FetchMediaById$Media$streamingEpisodes?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaById$Media$streamingEpisodes<
                      Query$FetchMediaById$Media$streamingEpisodes>?>?)
          _fn);
  TRes externalLinks(
      Iterable<Query$FetchMediaById$Media$externalLinks?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaById$Media$externalLinks<
                      Query$FetchMediaById$Media$externalLinks>?>?)
          _fn);
  CopyWith$Query$FetchMediaById$Media$reviews<TRes> get reviews;
  CopyWith$Query$FetchMediaById$Media$characters<TRes> get characters;
}

class _CopyWithImpl$Query$FetchMediaById$Media<TRes>
    implements CopyWith$Query$FetchMediaById$Media<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media _instance;

  final TRes Function(Query$FetchMediaById$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? bannerImage = _undefined,
    Object? averageScore = _undefined,
    Object? duration = _undefined,
    Object? source = _undefined,
    Object? status = _undefined,
    Object? favourites = _undefined,
    Object? isFavourite = _undefined,
    Object? season = _undefined,
    Object? volumes = _undefined,
    Object? trailer = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? relations = _undefined,
    Object? mediaListEntry = _undefined,
    Object? streamingEpisodes = _undefined,
    Object? externalLinks = _undefined,
    Object? reviews = _undefined,
    Object? characters = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$FetchMediaById$Media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$FetchMediaById$Media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        source: source == _undefined
            ? _instance.source
            : (source as Enum$MediaSource?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        trailer: trailer == _undefined
            ? _instance.trailer
            : (trailer as Query$FetchMediaById$Media$trailer?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Query$FetchMediaById$Media$startDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Query$FetchMediaById$Media$endDate?),
        relations: relations == _undefined
            ? _instance.relations
            : (relations as Query$FetchMediaById$Media$relations?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$MediaListEntry?),
        streamingEpisodes: streamingEpisodes == _undefined
            ? _instance.streamingEpisodes
            : (streamingEpisodes
                as List<Query$FetchMediaById$Media$streamingEpisodes?>?),
        externalLinks: externalLinks == _undefined
            ? _instance.externalLinks
            : (externalLinks
                as List<Query$FetchMediaById$Media$externalLinks?>?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$FetchMediaById$Media$reviews?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$FetchMediaById$Media$characters?),
      ));
  CopyWith$Query$FetchMediaById$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$FetchMediaById$Media$title.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$FetchMediaById$Media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$FetchMediaById$Media$coverImage.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$FetchMediaById$Media$trailer<TRes> get trailer {
    final local$trailer = _instance.trailer;
    return local$trailer == null
        ? CopyWith$Query$FetchMediaById$Media$trailer.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$trailer(
            local$trailer, (e) => call(trailer: e));
  }

  CopyWith$Query$FetchMediaById$Media$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$FetchMediaById$Media$startDate.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$startDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Query$FetchMediaById$Media$endDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Query$FetchMediaById$Media$endDate.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$endDate(
            local$endDate, (e) => call(endDate: e));
  }

  CopyWith$Query$FetchMediaById$Media$relations<TRes> get relations {
    final local$relations = _instance.relations;
    return local$relations == null
        ? CopyWith$Query$FetchMediaById$Media$relations.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$relations(
            local$relations, (e) => call(relations: e));
  }

  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$MediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }

  TRes streamingEpisodes(
          Iterable<Query$FetchMediaById$Media$streamingEpisodes?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaById$Media$streamingEpisodes<
                          Query$FetchMediaById$Media$streamingEpisodes>?>?)
              _fn) =>
      call(
          streamingEpisodes:
              _fn(_instance.streamingEpisodes?.map((e) => e == null
                  ? null
                  : CopyWith$Query$FetchMediaById$Media$streamingEpisodes(
                      e,
                      (i) => i,
                    )))?.toList());
  TRes externalLinks(
          Iterable<Query$FetchMediaById$Media$externalLinks?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaById$Media$externalLinks<
                          Query$FetchMediaById$Media$externalLinks>?>?)
              _fn) =>
      call(
          externalLinks: _fn(_instance.externalLinks?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchMediaById$Media$externalLinks(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$FetchMediaById$Media$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$FetchMediaById$Media$reviews.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews(
            local$reviews, (e) => call(reviews: e));
  }

  CopyWith$Query$FetchMediaById$Media$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$FetchMediaById$Media$characters.stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media<TRes>
    implements CopyWith$Query$FetchMediaById$Media<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$FetchMediaById$Media$title? title,
    Query$FetchMediaById$Media$coverImage? coverImage,
    String? $__typename,
    String? bannerImage,
    int? averageScore,
    int? duration,
    Enum$MediaSource? source,
    Enum$MediaStatus? status,
    int? favourites,
    bool? isFavourite,
    Enum$MediaSeason? season,
    int? volumes,
    Query$FetchMediaById$Media$trailer? trailer,
    Query$FetchMediaById$Media$startDate? startDate,
    Query$FetchMediaById$Media$endDate? endDate,
    Query$FetchMediaById$Media$relations? relations,
    Fragment$MediaListEntry? mediaListEntry,
    List<Query$FetchMediaById$Media$streamingEpisodes?>? streamingEpisodes,
    List<Query$FetchMediaById$Media$externalLinks?>? externalLinks,
    Query$FetchMediaById$Media$reviews? reviews,
    Query$FetchMediaById$Media$characters? characters,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media$title<TRes> get title =>
      CopyWith$Query$FetchMediaById$Media$title.stub(_res);
  CopyWith$Query$FetchMediaById$Media$coverImage<TRes> get coverImage =>
      CopyWith$Query$FetchMediaById$Media$coverImage.stub(_res);
  CopyWith$Query$FetchMediaById$Media$trailer<TRes> get trailer =>
      CopyWith$Query$FetchMediaById$Media$trailer.stub(_res);
  CopyWith$Query$FetchMediaById$Media$startDate<TRes> get startDate =>
      CopyWith$Query$FetchMediaById$Media$startDate.stub(_res);
  CopyWith$Query$FetchMediaById$Media$endDate<TRes> get endDate =>
      CopyWith$Query$FetchMediaById$Media$endDate.stub(_res);
  CopyWith$Query$FetchMediaById$Media$relations<TRes> get relations =>
      CopyWith$Query$FetchMediaById$Media$relations.stub(_res);
  CopyWith$Fragment$MediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$MediaListEntry.stub(_res);
  streamingEpisodes(_fn) => _res;
  externalLinks(_fn) => _res;
  CopyWith$Query$FetchMediaById$Media$reviews<TRes> get reviews =>
      CopyWith$Query$FetchMediaById$Media$reviews.stub(_res);
  CopyWith$Query$FetchMediaById$Media$characters<TRes> get characters =>
      CopyWith$Query$FetchMediaById$Media$characters.stub(_res);
}

class Query$FetchMediaById$Media$title implements Fragment$BasicMedia$title {
  Query$FetchMediaById$Media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
    this.english,
    this.native,
    this.romaji,
  });

  factory Query$FetchMediaById$Media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$romaji = json['romaji'];
    return Query$FetchMediaById$Media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
      english: (l$english as String?),
      native: (l$native as String?),
      romaji: (l$romaji as String?),
    );
  }

  final String? userPreferred;

  final String $__typename;

  final String? english;

  final String? native;

  final String? romaji;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    final l$english = english;
    final l$native = native;
    final l$romaji = romaji;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
      l$english,
      l$native,
      l$romaji,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$title) ||
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
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchMediaById$Media$title
    on Query$FetchMediaById$Media$title {
  CopyWith$Query$FetchMediaById$Media$title<Query$FetchMediaById$Media$title>
      get copyWith => CopyWith$Query$FetchMediaById$Media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$title<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$title(
    Query$FetchMediaById$Media$title instance,
    TRes Function(Query$FetchMediaById$Media$title) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$title;

  factory CopyWith$Query$FetchMediaById$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
    String? english,
    String? native,
    String? romaji,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$title<TRes>
    implements CopyWith$Query$FetchMediaById$Media$title<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$title(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$title _instance;

  final TRes Function(Query$FetchMediaById$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? romaji = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$title<TRes>
    implements CopyWith$Query$FetchMediaById$Media$title<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
    String? english,
    String? native,
    String? romaji,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$coverImage
    implements Fragment$BasicMedia$coverImage {
  Query$FetchMediaById$Media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
    this.extraLarge,
  });

  factory Query$FetchMediaById$Media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    final l$extraLarge = json['extraLarge'];
    return Query$FetchMediaById$Media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
      extraLarge: (l$extraLarge as String?),
    );
  }

  final String? large;

  final String $__typename;

  final String? extraLarge;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    final l$extraLarge = extraLarge;
    return Object.hashAll([
      l$large,
      l$$__typename,
      l$extraLarge,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FetchMediaById$Media$coverImage
    on Query$FetchMediaById$Media$coverImage {
  CopyWith$Query$FetchMediaById$Media$coverImage<
          Query$FetchMediaById$Media$coverImage>
      get copyWith => CopyWith$Query$FetchMediaById$Media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$coverImage<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$coverImage(
    Query$FetchMediaById$Media$coverImage instance,
    TRes Function(Query$FetchMediaById$Media$coverImage) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$coverImage;

  factory CopyWith$Query$FetchMediaById$Media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$coverImage;

  TRes call({
    String? large,
    String? $__typename,
    String? extraLarge,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$coverImage<TRes>
    implements CopyWith$Query$FetchMediaById$Media$coverImage<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$coverImage(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$coverImage _instance;

  final TRes Function(Query$FetchMediaById$Media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
    Object? extraLarge = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$coverImage<TRes>
    implements CopyWith$Query$FetchMediaById$Media$coverImage<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
    String? extraLarge,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$trailer {
  Query$FetchMediaById$Media$trailer({
    this.id,
    this.site,
    this.thumbnail,
    this.$__typename = 'MediaTrailer',
  });

  factory Query$FetchMediaById$Media$trailer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$trailer(
      id: (l$id as String?),
      site: (l$site as String?),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? site;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$trailer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtension$Query$FetchMediaById$Media$trailer
    on Query$FetchMediaById$Media$trailer {
  CopyWith$Query$FetchMediaById$Media$trailer<
          Query$FetchMediaById$Media$trailer>
      get copyWith => CopyWith$Query$FetchMediaById$Media$trailer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$trailer<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$trailer(
    Query$FetchMediaById$Media$trailer instance,
    TRes Function(Query$FetchMediaById$Media$trailer) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$trailer;

  factory CopyWith$Query$FetchMediaById$Media$trailer.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$trailer;

  TRes call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$trailer<TRes>
    implements CopyWith$Query$FetchMediaById$Media$trailer<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$trailer(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$trailer _instance;

  final TRes Function(Query$FetchMediaById$Media$trailer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$trailer(
        id: id == _undefined ? _instance.id : (id as String?),
        site: site == _undefined ? _instance.site : (site as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$trailer<TRes>
    implements CopyWith$Query$FetchMediaById$Media$trailer<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$trailer(this._res);

  TRes _res;

  call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$startDate {
  Query$FetchMediaById$Media$startDate({
    this.year,
    this.day,
    this.month,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$FetchMediaById$Media$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$day = json['day'];
    final l$month = json['month'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$startDate(
      year: (l$year as int?),
      day: (l$day as int?),
      month: (l$month as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? day;

  final int? month;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$day = day;
    final l$month = month;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$day,
      l$month,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
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

extension UtilityExtension$Query$FetchMediaById$Media$startDate
    on Query$FetchMediaById$Media$startDate {
  CopyWith$Query$FetchMediaById$Media$startDate<
          Query$FetchMediaById$Media$startDate>
      get copyWith => CopyWith$Query$FetchMediaById$Media$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$startDate<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$startDate(
    Query$FetchMediaById$Media$startDate instance,
    TRes Function(Query$FetchMediaById$Media$startDate) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$startDate;

  factory CopyWith$Query$FetchMediaById$Media$startDate.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$startDate;

  TRes call({
    int? year,
    int? day,
    int? month,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$startDate<TRes>
    implements CopyWith$Query$FetchMediaById$Media$startDate<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$startDate(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$startDate _instance;

  final TRes Function(Query$FetchMediaById$Media$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? day = _undefined,
    Object? month = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$startDate<TRes>
    implements CopyWith$Query$FetchMediaById$Media$startDate<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$startDate(this._res);

  TRes _res;

  call({
    int? year,
    int? day,
    int? month,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$endDate {
  Query$FetchMediaById$Media$endDate({
    this.year,
    this.day,
    this.month,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$FetchMediaById$Media$endDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$day = json['day'];
    final l$month = json['month'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$endDate(
      year: (l$year as int?),
      day: (l$day as int?),
      month: (l$month as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? day;

  final int? month;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$day = day;
    final l$month = month;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$day,
      l$month,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$endDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
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

extension UtilityExtension$Query$FetchMediaById$Media$endDate
    on Query$FetchMediaById$Media$endDate {
  CopyWith$Query$FetchMediaById$Media$endDate<
          Query$FetchMediaById$Media$endDate>
      get copyWith => CopyWith$Query$FetchMediaById$Media$endDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$endDate<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$endDate(
    Query$FetchMediaById$Media$endDate instance,
    TRes Function(Query$FetchMediaById$Media$endDate) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$endDate;

  factory CopyWith$Query$FetchMediaById$Media$endDate.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$endDate;

  TRes call({
    int? year,
    int? day,
    int? month,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$endDate<TRes>
    implements CopyWith$Query$FetchMediaById$Media$endDate<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$endDate(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$endDate _instance;

  final TRes Function(Query$FetchMediaById$Media$endDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? day = _undefined,
    Object? month = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$endDate(
        year: year == _undefined ? _instance.year : (year as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$endDate<TRes>
    implements CopyWith$Query$FetchMediaById$Media$endDate<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$endDate(this._res);

  TRes _res;

  call({
    int? year,
    int? day,
    int? month,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$relations {
  Query$FetchMediaById$Media$relations({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$FetchMediaById$Media$relations.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$relations(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaById$Media$relations$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchMediaById$Media$relations$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$relations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$FetchMediaById$Media$relations
    on Query$FetchMediaById$Media$relations {
  CopyWith$Query$FetchMediaById$Media$relations<
          Query$FetchMediaById$Media$relations>
      get copyWith => CopyWith$Query$FetchMediaById$Media$relations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$relations<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$relations(
    Query$FetchMediaById$Media$relations instance,
    TRes Function(Query$FetchMediaById$Media$relations) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$relations;

  factory CopyWith$Query$FetchMediaById$Media$relations.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$relations;

  TRes call({
    List<Query$FetchMediaById$Media$relations$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchMediaById$Media$relations$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaById$Media$relations$edges<
                      Query$FetchMediaById$Media$relations$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMediaById$Media$relations<TRes>
    implements CopyWith$Query$FetchMediaById$Media$relations<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$relations(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$relations _instance;

  final TRes Function(Query$FetchMediaById$Media$relations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$relations(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchMediaById$Media$relations$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$FetchMediaById$Media$relations$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaById$Media$relations$edges<
                          Query$FetchMediaById$Media$relations$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchMediaById$Media$relations$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$relations<TRes>
    implements CopyWith$Query$FetchMediaById$Media$relations<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$relations(this._res);

  TRes _res;

  call({
    List<Query$FetchMediaById$Media$relations$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$FetchMediaById$Media$relations$edges {
  Query$FetchMediaById$Media$relations$edges({
    this.relationType,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$FetchMediaById$Media$relations$edges.fromJson(
      Map<String, dynamic> json) {
    final l$relationType = json['relationType'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$relations$edges(
      relationType: l$relationType == null
          ? null
          : fromJson$Enum$MediaRelation((l$relationType as String)),
      node: l$node == null
          ? null
          : Fragment$BasicMedia.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaRelation? relationType;

  final Fragment$BasicMedia? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$relationType = relationType;
    _resultData['relationType'] = l$relationType == null
        ? null
        : toJson$Enum$MediaRelation(l$relationType);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$relationType = relationType;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$relationType,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$relations$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$relationType = relationType;
    final lOther$relationType = other.relationType;
    if (l$relationType != lOther$relationType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$FetchMediaById$Media$relations$edges
    on Query$FetchMediaById$Media$relations$edges {
  CopyWith$Query$FetchMediaById$Media$relations$edges<
          Query$FetchMediaById$Media$relations$edges>
      get copyWith => CopyWith$Query$FetchMediaById$Media$relations$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$relations$edges<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$relations$edges(
    Query$FetchMediaById$Media$relations$edges instance,
    TRes Function(Query$FetchMediaById$Media$relations$edges) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$relations$edges;

  factory CopyWith$Query$FetchMediaById$Media$relations$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$relations$edges;

  TRes call({
    Enum$MediaRelation? relationType,
    Fragment$BasicMedia? node,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get node;
}

class _CopyWithImpl$Query$FetchMediaById$Media$relations$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$relations$edges<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$relations$edges(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$relations$edges _instance;

  final TRes Function(Query$FetchMediaById$Media$relations$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? relationType = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$relations$edges(
        relationType: relationType == _undefined
            ? _instance.relationType
            : (relationType as Enum$MediaRelation?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$relations$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$relations$edges<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$relations$edges(this._res);

  TRes _res;

  call({
    Enum$MediaRelation? relationType,
    Fragment$BasicMedia? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get node =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$FetchMediaById$Media$streamingEpisodes {
  Query$FetchMediaById$Media$streamingEpisodes({
    this.title,
    this.thumbnail,
    this.url,
    this.site,
    this.$__typename = 'MediaStreamingEpisode',
  });

  factory Query$FetchMediaById$Media$streamingEpisodes.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$thumbnail = json['thumbnail'];
    final l$url = json['url'];
    final l$site = json['site'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$streamingEpisodes(
      title: (l$title as String?),
      thumbnail: (l$thumbnail as String?),
      url: (l$url as String?),
      site: (l$site as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? title;

  final String? thumbnail;

  final String? url;

  final String? site;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$thumbnail = thumbnail;
    final l$url = url;
    final l$site = site;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$thumbnail,
      l$url,
      l$site,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$streamingEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
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

extension UtilityExtension$Query$FetchMediaById$Media$streamingEpisodes
    on Query$FetchMediaById$Media$streamingEpisodes {
  CopyWith$Query$FetchMediaById$Media$streamingEpisodes<
          Query$FetchMediaById$Media$streamingEpisodes>
      get copyWith => CopyWith$Query$FetchMediaById$Media$streamingEpisodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$streamingEpisodes<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$streamingEpisodes(
    Query$FetchMediaById$Media$streamingEpisodes instance,
    TRes Function(Query$FetchMediaById$Media$streamingEpisodes) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$streamingEpisodes;

  factory CopyWith$Query$FetchMediaById$Media$streamingEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$streamingEpisodes;

  TRes call({
    String? title,
    String? thumbnail,
    String? url,
    String? site,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$streamingEpisodes<TRes>
    implements CopyWith$Query$FetchMediaById$Media$streamingEpisodes<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$streamingEpisodes(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$streamingEpisodes _instance;

  final TRes Function(Query$FetchMediaById$Media$streamingEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? thumbnail = _undefined,
    Object? url = _undefined,
    Object? site = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$streamingEpisodes(
        title: title == _undefined ? _instance.title : (title as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        url: url == _undefined ? _instance.url : (url as String?),
        site: site == _undefined ? _instance.site : (site as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$streamingEpisodes<TRes>
    implements CopyWith$Query$FetchMediaById$Media$streamingEpisodes<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$streamingEpisodes(this._res);

  TRes _res;

  call({
    String? title,
    String? thumbnail,
    String? url,
    String? site,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$externalLinks {
  Query$FetchMediaById$Media$externalLinks({
    required this.id,
    required this.site,
    this.url,
    this.icon,
    this.color,
    this.language,
    this.$__typename = 'MediaExternalLink',
  });

  factory Query$FetchMediaById$Media$externalLinks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$url = json['url'];
    final l$icon = json['icon'];
    final l$color = json['color'];
    final l$language = json['language'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$externalLinks(
      id: (l$id as int),
      site: (l$site as String),
      url: (l$url as String?),
      icon: (l$icon as String?),
      color: (l$color as String?),
      language: (l$language as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String site;

  final String? url;

  final String? icon;

  final String? color;

  final String? language;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$language = language;
    _resultData['language'] = l$language;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$url = url;
    final l$icon = icon;
    final l$color = color;
    final l$language = language;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$url,
      l$icon,
      l$color,
      l$language,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$externalLinks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
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

extension UtilityExtension$Query$FetchMediaById$Media$externalLinks
    on Query$FetchMediaById$Media$externalLinks {
  CopyWith$Query$FetchMediaById$Media$externalLinks<
          Query$FetchMediaById$Media$externalLinks>
      get copyWith => CopyWith$Query$FetchMediaById$Media$externalLinks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$externalLinks<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$externalLinks(
    Query$FetchMediaById$Media$externalLinks instance,
    TRes Function(Query$FetchMediaById$Media$externalLinks) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$externalLinks;

  factory CopyWith$Query$FetchMediaById$Media$externalLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$externalLinks;

  TRes call({
    int? id,
    String? site,
    String? url,
    String? icon,
    String? color,
    String? language,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$externalLinks<TRes>
    implements CopyWith$Query$FetchMediaById$Media$externalLinks<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$externalLinks(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$externalLinks _instance;

  final TRes Function(Query$FetchMediaById$Media$externalLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? url = _undefined,
    Object? icon = _undefined,
    Object? color = _undefined,
    Object? language = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$externalLinks(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        url: url == _undefined ? _instance.url : (url as String?),
        icon: icon == _undefined ? _instance.icon : (icon as String?),
        color: color == _undefined ? _instance.color : (color as String?),
        language:
            language == _undefined ? _instance.language : (language as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$externalLinks<TRes>
    implements CopyWith$Query$FetchMediaById$Media$externalLinks<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$externalLinks(this._res);

  TRes _res;

  call({
    int? id,
    String? site,
    String? url,
    String? icon,
    String? color,
    String? language,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$reviews {
  Query$FetchMediaById$Media$reviews({
    this.edges,
    this.$__typename = 'ReviewConnection',
  });

  factory Query$FetchMediaById$Media$reviews.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaById$Media$reviews$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchMediaById$Media$reviews$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews
    on Query$FetchMediaById$Media$reviews {
  CopyWith$Query$FetchMediaById$Media$reviews<
          Query$FetchMediaById$Media$reviews>
      get copyWith => CopyWith$Query$FetchMediaById$Media$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews(
    Query$FetchMediaById$Media$reviews instance,
    TRes Function(Query$FetchMediaById$Media$reviews) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews;

  factory CopyWith$Query$FetchMediaById$Media$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews;

  TRes call({
    List<Query$FetchMediaById$Media$reviews$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchMediaById$Media$reviews$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaById$Media$reviews$edges<
                      Query$FetchMediaById$Media$reviews$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchMediaById$Media$reviews$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$FetchMediaById$Media$reviews$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaById$Media$reviews$edges<
                          Query$FetchMediaById$Media$reviews$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchMediaById$Media$reviews$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews(this._res);

  TRes _res;

  call({
    List<Query$FetchMediaById$Media$reviews$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$FetchMediaById$Media$reviews$edges {
  Query$FetchMediaById$Media$reviews$edges({
    this.node,
    this.$__typename = 'ReviewEdge',
  });

  factory Query$FetchMediaById$Media$reviews$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges(
      node: l$node == null
          ? null
          : Query$FetchMediaById$Media$reviews$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMediaById$Media$reviews$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges
    on Query$FetchMediaById$Media$reviews$edges {
  CopyWith$Query$FetchMediaById$Media$reviews$edges<
          Query$FetchMediaById$Media$reviews$edges>
      get copyWith => CopyWith$Query$FetchMediaById$Media$reviews$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges(
    Query$FetchMediaById$Media$reviews$edges instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges;

  TRes call({
    Query$FetchMediaById$Media$reviews$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews$edges<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$FetchMediaById$Media$reviews$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$FetchMediaById$Media$reviews$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews$edges<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges(this._res);

  TRes _res;

  call({
    Query$FetchMediaById$Media$reviews$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> get node =>
      CopyWith$Query$FetchMediaById$Media$reviews$edges$node.stub(_res);
}

class Query$FetchMediaById$Media$reviews$edges$node {
  Query$FetchMediaById$Media$reviews$edges$node({
    required this.id,
    this.summary,
    this.rating,
    this.ratingAmount,
    this.userRating,
    this.score,
    this.user,
    required this.createdAt,
    required this.updatedAt,
    this.media,
    this.body,
    this.$__typename = 'Review',
  });

  factory Query$FetchMediaById$Media$reviews$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$userRating = json['userRating'];
    final l$score = json['score'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$media = json['media'];
    final l$body = json['body'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges$node(
      id: (l$id as int),
      summary: (l$summary as String?),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      score: (l$score as int?),
      user: l$user == null
          ? null
          : Query$FetchMediaById$Media$reviews$edges$node$user.fromJson(
              (l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      media: l$media == null
          ? null
          : Query$FetchMediaById$Media$reviews$edges$node$media.fromJson(
              (l$media as Map<String, dynamic>)),
      body: (l$body as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final int? rating;

  final int? ratingAmount;

  final Enum$ReviewRating? userRating;

  final int? score;

  final Query$FetchMediaById$Media$reviews$edges$node$user? user;

  final int createdAt;

  final int updatedAt;

  final Query$FetchMediaById$Media$reviews$edges$node$media? media;

  final String? body;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$score = score;
    _resultData['score'] = l$score;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$body = body;
    _resultData['body'] = l$body;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$summary = summary;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$userRating = userRating;
    final l$score = score;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$media = media;
    final l$body = body;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$rating,
      l$ratingAmount,
      l$userRating,
      l$score,
      l$user,
      l$createdAt,
      l$updatedAt,
      l$media,
      l$body,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges$node
    on Query$FetchMediaById$Media$reviews$edges$node {
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node<
          Query$FetchMediaById$Media$reviews$edges$node>
      get copyWith => CopyWith$Query$FetchMediaById$Media$reviews$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node(
    Query$FetchMediaById$Media$reviews$edges$node instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges$node) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node;

  TRes call({
    int? id,
    String? summary,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    int? score,
    Query$FetchMediaById$Media$reviews$edges$node$user? user,
    int? createdAt,
    int? updatedAt,
    Query$FetchMediaById$Media$reviews$edges$node$media? media,
    String? body,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<TRes> get user;
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<TRes> get media;
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges$node _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? userRating = _undefined,
    Object? score = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? media = _undefined,
    Object? body = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        score: score == _undefined ? _instance.score : (score as int?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$FetchMediaById$Media$reviews$edges$node$user?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        media: media == _undefined
            ? _instance.media
            : (media as Query$FetchMediaById$Media$reviews$edges$node$media?),
        body: body == _undefined ? _instance.body : (body as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user.stub(
            _then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media.stub(
            _then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node<TRes>
    implements CopyWith$Query$FetchMediaById$Media$reviews$edges$node<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    int? rating,
    int? ratingAmount,
    Enum$ReviewRating? userRating,
    int? score,
    Query$FetchMediaById$Media$reviews$edges$node$user? user,
    int? createdAt,
    int? updatedAt,
    Query$FetchMediaById$Media$reviews$edges$node$media? media,
    String? body,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<TRes> get user =>
      CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user.stub(_res);
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<TRes>
      get media =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media.stub(
              _res);
}

class Query$FetchMediaById$Media$reviews$edges$node$user {
  Query$FetchMediaById$Media$reviews$edges$node$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$FetchMediaById$Media$reviews$edges$node$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges$node$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$FetchMediaById$Media$reviews$edges$node$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$FetchMediaById$Media$reviews$edges$node$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews$edges$node$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges$node$user
    on Query$FetchMediaById$Media$reviews$edges$node$user {
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<
          Query$FetchMediaById$Media$reviews$edges$node$user>
      get copyWith =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<
    TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user(
    Query$FetchMediaById$Media$reviews$edges$node$user instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges$node$user) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user;

  TRes call({
    int? id,
    String? name,
    Query$FetchMediaById$Media$reviews$edges$node$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user<TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges$node$user _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges$node$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges$node$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$FetchMediaById$Media$reviews$edges$node$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user<TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$FetchMediaById$Media$reviews$edges$node$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar
              .stub(_res);
}

class Query$FetchMediaById$Media$reviews$edges$node$user$avatar {
  Query$FetchMediaById$Media$reviews$edges$node$user$avatar({
    this.large,
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$FetchMediaById$Media$reviews$edges$node$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
      large: (l$large as String?),
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews$edges$node$user$avatar) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges$node$user$avatar
    on Query$FetchMediaById$Media$reviews$edges$node$user$avatar {
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
          Query$FetchMediaById$Media$reviews$edges$node$user$avatar>
      get copyWith =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
    TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
    Query$FetchMediaById$Media$reviews$edges$node$user$avatar instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges$node$user$avatar)
        then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar;

  TRes call({
    String? large,
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
        TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
            TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges$node$user$avatar _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges$node$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
        TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$user$avatar(
      this._res);

  TRes _res;

  call({
    String? large,
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$reviews$edges$node$media {
  Query$FetchMediaById$Media$reviews$edges$node$media({
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$FetchMediaById$Media$reviews$edges$node$media.fromJson(
      Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges$node$media(
      title: l$title == null
          ? null
          : Query$FetchMediaById$Media$reviews$edges$node$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMediaById$Media$reviews$edges$node$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$reviews$edges$node$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges$node$media
    on Query$FetchMediaById$Media$reviews$edges$node$media {
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<
          Query$FetchMediaById$Media$reviews$edges$node$media>
      get copyWith =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<
    TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media(
    Query$FetchMediaById$Media$reviews$edges$node$media instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges$node$media) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media;

  TRes call({
    Query$FetchMediaById$Media$reviews$edges$node$media$title? title,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<TRes>
      get title;
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media<TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges$node$media _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges$node$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges$node$media(
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$FetchMediaById$Media$reviews$edges$node$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title
            .stub(_then(_instance))
        : CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media<
        TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media(
      this._res);

  TRes _res;

  call({
    Query$FetchMediaById$Media$reviews$edges$node$media$title? title,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<TRes>
      get title =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title
              .stub(_res);
}

class Query$FetchMediaById$Media$reviews$edges$node$media$title {
  Query$FetchMediaById$Media$reviews$edges$node$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$FetchMediaById$Media$reviews$edges$node$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$reviews$edges$node$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$FetchMediaById$Media$reviews$edges$node$media$title) ||
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

extension UtilityExtension$Query$FetchMediaById$Media$reviews$edges$node$media$title
    on Query$FetchMediaById$Media$reviews$edges$node$media$title {
  CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<
          Query$FetchMediaById$Media$reviews$edges$node$media$title>
      get copyWith =>
          CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<
    TRes> {
  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title(
    Query$FetchMediaById$Media$reviews$edges$node$media$title instance,
    TRes Function(Query$FetchMediaById$Media$reviews$edges$node$media$title)
        then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title;

  factory CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title<
        TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<
            TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$reviews$edges$node$media$title _instance;

  final TRes Function(Query$FetchMediaById$Media$reviews$edges$node$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$reviews$edges$node$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title<
        TRes>
    implements
        CopyWith$Query$FetchMediaById$Media$reviews$edges$node$media$title<
            TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$reviews$edges$node$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchMediaById$Media$characters {
  Query$FetchMediaById$Media$characters({
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$FetchMediaById$Media$characters.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$characters(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaById$Media$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchMediaById$Media$characters$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$FetchMediaById$Media$characters
    on Query$FetchMediaById$Media$characters {
  CopyWith$Query$FetchMediaById$Media$characters<
          Query$FetchMediaById$Media$characters>
      get copyWith => CopyWith$Query$FetchMediaById$Media$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$characters<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$characters(
    Query$FetchMediaById$Media$characters instance,
    TRes Function(Query$FetchMediaById$Media$characters) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$characters;

  factory CopyWith$Query$FetchMediaById$Media$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$characters;

  TRes call({
    List<Query$FetchMediaById$Media$characters$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FetchMediaById$Media$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaById$Media$characters$edges<
                      Query$FetchMediaById$Media$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMediaById$Media$characters<TRes>
    implements CopyWith$Query$FetchMediaById$Media$characters<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$characters(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$characters _instance;

  final TRes Function(Query$FetchMediaById$Media$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$characters(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$FetchMediaById$Media$characters$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$FetchMediaById$Media$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaById$Media$characters$edges<
                          Query$FetchMediaById$Media$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchMediaById$Media$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$characters<TRes>
    implements CopyWith$Query$FetchMediaById$Media$characters<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$characters(this._res);

  TRes _res;

  call({
    List<Query$FetchMediaById$Media$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$FetchMediaById$Media$characters$edges {
  Query$FetchMediaById$Media$characters$edges({
    this.id,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$FetchMediaById$Media$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaById$Media$characters$edges(
      id: (l$id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaById$Media$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$FetchMediaById$Media$characters$edges
    on Query$FetchMediaById$Media$characters$edges {
  CopyWith$Query$FetchMediaById$Media$characters$edges<
          Query$FetchMediaById$Media$characters$edges>
      get copyWith => CopyWith$Query$FetchMediaById$Media$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaById$Media$characters$edges<TRes> {
  factory CopyWith$Query$FetchMediaById$Media$characters$edges(
    Query$FetchMediaById$Media$characters$edges instance,
    TRes Function(Query$FetchMediaById$Media$characters$edges) then,
  ) = _CopyWithImpl$Query$FetchMediaById$Media$characters$edges;

  factory CopyWith$Query$FetchMediaById$Media$characters$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaById$Media$characters$edges;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMediaById$Media$characters$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$characters$edges<TRes> {
  _CopyWithImpl$Query$FetchMediaById$Media$characters$edges(
    this._instance,
    this._then,
  );

  final Query$FetchMediaById$Media$characters$edges _instance;

  final TRes Function(Query$FetchMediaById$Media$characters$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaById$Media$characters$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMediaById$Media$characters$edges<TRes>
    implements CopyWith$Query$FetchMediaById$Media$characters$edges<TRes> {
  _CopyWithStubImpl$Query$FetchMediaById$Media$characters$edges(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GenreCollection {
  Query$GenreCollection({
    this.genres,
    this.tags,
    this.$__typename = 'Query',
  });

  factory Query$GenreCollection.fromJson(Map<String, dynamic> json) {
    final l$genres = json['genres'];
    final l$tags = json['tags'];
    final l$$__typename = json['__typename'];
    return Query$GenreCollection(
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GenreCollection$tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? genres;

  final List<Query$GenreCollection$tags?>? tags;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$genres = genres;
    final l$tags = tags;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenreCollection) || runtimeType != other.runtimeType) {
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
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
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

extension UtilityExtension$Query$GenreCollection on Query$GenreCollection {
  CopyWith$Query$GenreCollection<Query$GenreCollection> get copyWith =>
      CopyWith$Query$GenreCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GenreCollection<TRes> {
  factory CopyWith$Query$GenreCollection(
    Query$GenreCollection instance,
    TRes Function(Query$GenreCollection) then,
  ) = _CopyWithImpl$Query$GenreCollection;

  factory CopyWith$Query$GenreCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$GenreCollection;

  TRes call({
    List<String?>? genres,
    List<Query$GenreCollection$tags?>? tags,
    String? $__typename,
  });
  TRes tags(
      Iterable<Query$GenreCollection$tags?>? Function(
              Iterable<
                  CopyWith$Query$GenreCollection$tags<
                      Query$GenreCollection$tags>?>?)
          _fn);
}

class _CopyWithImpl$Query$GenreCollection<TRes>
    implements CopyWith$Query$GenreCollection<TRes> {
  _CopyWithImpl$Query$GenreCollection(
    this._instance,
    this._then,
  );

  final Query$GenreCollection _instance;

  final TRes Function(Query$GenreCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenreCollection(
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Query$GenreCollection$tags?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes tags(
          Iterable<Query$GenreCollection$tags?>? Function(
                  Iterable<
                      CopyWith$Query$GenreCollection$tags<
                          Query$GenreCollection$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Query$GenreCollection$tags(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GenreCollection<TRes>
    implements CopyWith$Query$GenreCollection<TRes> {
  _CopyWithStubImpl$Query$GenreCollection(this._res);

  TRes _res;

  call({
    List<String?>? genres,
    List<Query$GenreCollection$tags?>? tags,
    String? $__typename,
  }) =>
      _res;
  tags(_fn) => _res;
}

const documentNodeQueryGenreCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GenreCollection'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'GenreCollection'),
        alias: NameNode(value: 'genres'),
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'MediaTagCollection'),
        alias: NameNode(value: 'tags'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'category'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAdult'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
]);
Query$GenreCollection _parserFn$Query$GenreCollection(
        Map<String, dynamic> data) =>
    Query$GenreCollection.fromJson(data);

class Options$Query$GenreCollection
    extends graphql.QueryOptions<Query$GenreCollection> {
  Options$Query$GenreCollection({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGenreCollection,
          parserFn: _parserFn$Query$GenreCollection,
        );
}

class WatchOptions$Query$GenreCollection
    extends graphql.WatchQueryOptions<Query$GenreCollection> {
  WatchOptions$Query$GenreCollection({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGenreCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GenreCollection,
        );
}

class FetchMoreOptions$Query$GenreCollection extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GenreCollection(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGenreCollection,
        );
}

extension ClientExtension$Query$GenreCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GenreCollection>> query$GenreCollection(
          [Options$Query$GenreCollection? options]) async =>
      await this.query(options ?? Options$Query$GenreCollection());
  graphql.ObservableQuery<Query$GenreCollection> watchQuery$GenreCollection(
          [WatchOptions$Query$GenreCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GenreCollection());
  void writeQuery$GenreCollection({
    required Query$GenreCollection data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGenreCollection)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GenreCollection? readQuery$GenreCollection({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGenreCollection)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GenreCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GenreCollection> useQuery$GenreCollection(
        [Options$Query$GenreCollection? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GenreCollection());
graphql.ObservableQuery<Query$GenreCollection> useWatchQuery$GenreCollection(
        [WatchOptions$Query$GenreCollection? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GenreCollection());

class Query$GenreCollection$Widget
    extends graphql_flutter.Query<Query$GenreCollection> {
  Query$GenreCollection$Widget({
    widgets.Key? key,
    Options$Query$GenreCollection? options,
    required graphql_flutter.QueryBuilder<Query$GenreCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GenreCollection(),
          builder: builder,
        );
}

class Query$GenreCollection$tags {
  Query$GenreCollection$tags({
    required this.name,
    this.description,
    this.category,
    this.isAdult,
    this.$__typename = 'MediaTag',
  });

  factory Query$GenreCollection$tags.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$description = json['description'];
    final l$category = json['category'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Query$GenreCollection$tags(
      name: (l$name as String),
      description: (l$description as String?),
      category: (l$category as String?),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? description;

  final String? category;

  final bool? isAdult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$description = description;
    final l$category = category;
    final l$isAdult = isAdult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$description,
      l$category,
      l$isAdult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GenreCollection$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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

extension UtilityExtension$Query$GenreCollection$tags
    on Query$GenreCollection$tags {
  CopyWith$Query$GenreCollection$tags<Query$GenreCollection$tags>
      get copyWith => CopyWith$Query$GenreCollection$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GenreCollection$tags<TRes> {
  factory CopyWith$Query$GenreCollection$tags(
    Query$GenreCollection$tags instance,
    TRes Function(Query$GenreCollection$tags) then,
  ) = _CopyWithImpl$Query$GenreCollection$tags;

  factory CopyWith$Query$GenreCollection$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$GenreCollection$tags;

  TRes call({
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GenreCollection$tags<TRes>
    implements CopyWith$Query$GenreCollection$tags<TRes> {
  _CopyWithImpl$Query$GenreCollection$tags(
    this._instance,
    this._then,
  );

  final Query$GenreCollection$tags _instance;

  final TRes Function(Query$GenreCollection$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? category = _undefined,
    Object? isAdult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GenreCollection$tags(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GenreCollection$tags<TRes>
    implements CopyWith$Query$GenreCollection$tags<TRes> {
  _CopyWithStubImpl$Query$GenreCollection$tags(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    String? category,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FetchMedia {
  factory Variables$Query$FetchMedia({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
  }) =>
      Variables$Query$FetchMedia._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (search != null) r'search': search,
        if (year != null) r'year': year,
        if (genres != null) r'genres': genres,
        if (tags != null) r'tags': tags,
        if (isAdult != null) r'isAdult': isAdult,
      });

  Variables$Query$FetchMedia._(this._$data);

  factory Variables$Query$FetchMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = (l$year as String?);
    }
    if (data.containsKey('genres')) {
      final l$genres = data['genres'];
      result$data['genres'] =
          (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('tags')) {
      final l$tags = data['tags'];
      result$data['tags'] =
          (l$tags as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    return Variables$Query$FetchMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);
  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);
  int? get seasonYear => (_$data['seasonYear'] as int?);
  String? get search => (_$data['search'] as String?);
  String? get year => (_$data['year'] as String?);
  List<String?>? get genres => (_$data['genres'] as List<String?>?);
  List<String?>? get tags => (_$data['tags'] as List<String?>?);
  bool? get isAdult => (_$data['isAdult'] as bool?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year;
    }
    if (_$data.containsKey('genres')) {
      final l$genres = genres;
      result$data['genres'] = l$genres?.map((e) => e).toList();
    }
    if (_$data.containsKey('tags')) {
      final l$tags = tags;
      result$data['tags'] = l$tags?.map((e) => e).toList();
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchMedia<Variables$Query$FetchMedia>
      get copyWith => CopyWith$Variables$Query$FetchMedia(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (_$data.containsKey('genres') != other._$data.containsKey('genres')) {
      return false;
    }
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
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (_$data.containsKey('tags') != other._$data.containsKey('tags')) {
      return false;
    }
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$type = type;
    final l$sort = sort;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$search = search;
    final l$year = year;
    final l$genres = genres;
    final l$tags = tags;
    final l$isAdult = isAdult;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('genres')
          ? l$genres == null
              ? null
              : Object.hashAll(l$genres.map((v) => v))
          : const {},
      _$data.containsKey('tags')
          ? l$tags == null
              ? null
              : Object.hashAll(l$tags.map((v) => v))
          : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchMedia<TRes> {
  factory CopyWith$Variables$Query$FetchMedia(
    Variables$Query$FetchMedia instance,
    TRes Function(Variables$Query$FetchMedia) then,
  ) = _CopyWithImpl$Variables$Query$FetchMedia;

  factory CopyWith$Variables$Query$FetchMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchMedia;

  TRes call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
  });
}

class _CopyWithImpl$Variables$Query$FetchMedia<TRes>
    implements CopyWith$Variables$Query$FetchMedia<TRes> {
  _CopyWithImpl$Variables$Query$FetchMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchMedia _instance;

  final TRes Function(Variables$Query$FetchMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? search = _undefined,
    Object? year = _undefined,
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? isAdult = _undefined,
  }) =>
      _then(Variables$Query$FetchMedia._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (search != _undefined) 'search': (search as String?),
        if (year != _undefined) 'year': (year as String?),
        if (genres != _undefined) 'genres': (genres as List<String?>?),
        if (tags != _undefined) 'tags': (tags as List<String?>?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchMedia<TRes>
    implements CopyWith$Variables$Query$FetchMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchMedia(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    Enum$MediaSeason? season,
    int? seasonYear,
    String? search,
    String? year,
    List<String?>? genres,
    List<String?>? tags,
    bool? isAdult,
  }) =>
      _res;
}

class Query$FetchMedia {
  Query$FetchMedia({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$FetchMedia.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$FetchMedia(
      Page: l$Page == null
          ? null
          : Query$FetchMedia$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMedia$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMedia) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
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

extension UtilityExtension$Query$FetchMedia on Query$FetchMedia {
  CopyWith$Query$FetchMedia<Query$FetchMedia> get copyWith =>
      CopyWith$Query$FetchMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchMedia<TRes> {
  factory CopyWith$Query$FetchMedia(
    Query$FetchMedia instance,
    TRes Function(Query$FetchMedia) then,
  ) = _CopyWithImpl$Query$FetchMedia;

  factory CopyWith$Query$FetchMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMedia;

  TRes call({
    Query$FetchMedia$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$FetchMedia$Page<TRes> get Page;
}

class _CopyWithImpl$Query$FetchMedia<TRes>
    implements CopyWith$Query$FetchMedia<TRes> {
  _CopyWithImpl$Query$FetchMedia(
    this._instance,
    this._then,
  );

  final Query$FetchMedia _instance;

  final TRes Function(Query$FetchMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMedia(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$FetchMedia$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMedia$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$FetchMedia$Page.stub(_then(_instance))
        : CopyWith$Query$FetchMedia$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$FetchMedia<TRes>
    implements CopyWith$Query$FetchMedia<TRes> {
  _CopyWithStubImpl$Query$FetchMedia(this._res);

  TRes _res;

  call({
    Query$FetchMedia$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMedia$Page<TRes> get Page =>
      CopyWith$Query$FetchMedia$Page.stub(_res);
}

const documentNodeQueryFetchMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
          EnumValueNode(name: NameNode(value: 'SCORE_DESC')),
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'year')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'genres')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tags')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'perPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: VariableNode(name: NameNode(value: 'isAdult')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'startDate_like'),
                value: VariableNode(name: NameNode(value: 'year')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'genre_in'),
                value: VariableNode(name: NameNode(value: 'genres')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tag_in'),
                value: VariableNode(name: NameNode(value: 'tags')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
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
  ),
  fragmentDefinitionBasicMedia,
]);
Query$FetchMedia _parserFn$Query$FetchMedia(Map<String, dynamic> data) =>
    Query$FetchMedia.fromJson(data);

class Options$Query$FetchMedia extends graphql.QueryOptions<Query$FetchMedia> {
  Options$Query$FetchMedia({
    String? operationName,
    Variables$Query$FetchMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchMedia,
          parserFn: _parserFn$Query$FetchMedia,
        );
}

class WatchOptions$Query$FetchMedia
    extends graphql.WatchQueryOptions<Query$FetchMedia> {
  WatchOptions$Query$FetchMedia({
    String? operationName,
    Variables$Query$FetchMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchMedia,
        );
}

class FetchMoreOptions$Query$FetchMedia extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchMedia,
        );
}

extension ClientExtension$Query$FetchMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchMedia>> query$FetchMedia(
          [Options$Query$FetchMedia? options]) async =>
      await this.query(options ?? Options$Query$FetchMedia());
  graphql.ObservableQuery<Query$FetchMedia> watchQuery$FetchMedia(
          [WatchOptions$Query$FetchMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchMedia());
  void writeQuery$FetchMedia({
    required Query$FetchMedia data,
    Variables$Query$FetchMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchMedia? readQuery$FetchMedia({
    Variables$Query$FetchMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchMedia> useQuery$FetchMedia(
        [Options$Query$FetchMedia? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchMedia());
graphql.ObservableQuery<Query$FetchMedia> useWatchQuery$FetchMedia(
        [WatchOptions$Query$FetchMedia? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FetchMedia());

class Query$FetchMedia$Widget extends graphql_flutter.Query<Query$FetchMedia> {
  Query$FetchMedia$Widget({
    widgets.Key? key,
    Options$Query$FetchMedia? options,
    required graphql_flutter.QueryBuilder<Query$FetchMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchMedia(),
          builder: builder,
        );
}

class Query$FetchMedia$Page {
  Query$FetchMedia$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$FetchMedia$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$FetchMedia$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FetchMedia$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$BasicMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMedia$Page$pageInfo? pageInfo;

  final List<Fragment$BasicMedia?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMedia$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$FetchMedia$Page on Query$FetchMedia$Page {
  CopyWith$Query$FetchMedia$Page<Query$FetchMedia$Page> get copyWith =>
      CopyWith$Query$FetchMedia$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchMedia$Page<TRes> {
  factory CopyWith$Query$FetchMedia$Page(
    Query$FetchMedia$Page instance,
    TRes Function(Query$FetchMedia$Page) then,
  ) = _CopyWithImpl$Query$FetchMedia$Page;

  factory CopyWith$Query$FetchMedia$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMedia$Page;

  TRes call({
    Query$FetchMedia$Page$pageInfo? pageInfo,
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  });
  CopyWith$Query$FetchMedia$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$BasicMedia?>? Function(
              Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMedia$Page<TRes>
    implements CopyWith$Query$FetchMedia$Page<TRes> {
  _CopyWithImpl$Query$FetchMedia$Page(
    this._instance,
    this._then,
  );

  final Query$FetchMedia$Page _instance;

  final TRes Function(Query$FetchMedia$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMedia$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$FetchMedia$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$BasicMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMedia$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FetchMedia$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$FetchMedia$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$BasicMedia?>? Function(
                  Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$BasicMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMedia$Page<TRes>
    implements CopyWith$Query$FetchMedia$Page<TRes> {
  _CopyWithStubImpl$Query$FetchMedia$Page(this._res);

  TRes _res;

  call({
    Query$FetchMedia$Page$pageInfo? pageInfo,
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMedia$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$FetchMedia$Page$pageInfo.stub(_res);
  media(_fn) => _res;
}

class Query$FetchMedia$Page$pageInfo {
  Query$FetchMedia$Page$pageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FetchMedia$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FetchMedia$Page$pageInfo(
      total: (l$total as int?),
      perPage: (l$perPage as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? perPage;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$perPage = perPage;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$perPage,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMedia$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$FetchMedia$Page$pageInfo
    on Query$FetchMedia$Page$pageInfo {
  CopyWith$Query$FetchMedia$Page$pageInfo<Query$FetchMedia$Page$pageInfo>
      get copyWith => CopyWith$Query$FetchMedia$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMedia$Page$pageInfo<TRes> {
  factory CopyWith$Query$FetchMedia$Page$pageInfo(
    Query$FetchMedia$Page$pageInfo instance,
    TRes Function(Query$FetchMedia$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$FetchMedia$Page$pageInfo;

  factory CopyWith$Query$FetchMedia$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMedia$Page$pageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$FetchMedia$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$FetchMedia$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FetchMedia$Page$pageInfo _instance;

  final TRes Function(Query$FetchMedia$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMedia$Page$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$FetchMedia$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FetchMedia$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$FetchMediaList {
  factory Variables$Query$FetchMediaList({
    int? userId,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      Variables$Query$FetchMediaList._({
        if (userId != null) r'userId': userId,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$FetchMediaList._(this._$data);

  factory Variables$Query$FetchMediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$MediaListSort((e as String)))
          .toList();
    }
    return Variables$Query$FetchMediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  List<Enum$MediaListSort?>? get sort =>
      (_$data['sort'] as List<Enum$MediaListSort?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaListSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchMediaList<Variables$Query$FetchMediaList>
      get copyWith => CopyWith$Variables$Query$FetchMediaList(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FetchMediaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$type = type;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchMediaList<TRes> {
  factory CopyWith$Variables$Query$FetchMediaList(
    Variables$Query$FetchMediaList instance,
    TRes Function(Variables$Query$FetchMediaList) then,
  ) = _CopyWithImpl$Variables$Query$FetchMediaList;

  factory CopyWith$Variables$Query$FetchMediaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchMediaList;

  TRes call({
    int? userId,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$FetchMediaList<TRes>
    implements CopyWith$Variables$Query$FetchMediaList<TRes> {
  _CopyWithImpl$Variables$Query$FetchMediaList(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchMediaList _instance;

  final TRes Function(Variables$Query$FetchMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$FetchMediaList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaListSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchMediaList<TRes>
    implements CopyWith$Variables$Query$FetchMediaList<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchMediaList(this._res);

  TRes _res;

  call({
    int? userId,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      _res;
}

class Query$FetchMediaList {
  Query$FetchMediaList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory Query$FetchMediaList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : Query$FetchMediaList$MediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchMediaList$MediaListCollection? MediaListCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaListCollection = MediaListCollection;
    _resultData['MediaListCollection'] = l$MediaListCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaListCollection = MediaListCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaListCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaList) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaListCollection = MediaListCollection;
    final lOther$MediaListCollection = other.MediaListCollection;
    if (l$MediaListCollection != lOther$MediaListCollection) {
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

extension UtilityExtension$Query$FetchMediaList on Query$FetchMediaList {
  CopyWith$Query$FetchMediaList<Query$FetchMediaList> get copyWith =>
      CopyWith$Query$FetchMediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchMediaList<TRes> {
  factory CopyWith$Query$FetchMediaList(
    Query$FetchMediaList instance,
    TRes Function(Query$FetchMediaList) then,
  ) = _CopyWithImpl$Query$FetchMediaList;

  factory CopyWith$Query$FetchMediaList.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaList;

  TRes call({
    Query$FetchMediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWith$Query$FetchMediaList$MediaListCollection<TRes>
      get MediaListCollection;
}

class _CopyWithImpl$Query$FetchMediaList<TRes>
    implements CopyWith$Query$FetchMediaList<TRes> {
  _CopyWithImpl$Query$FetchMediaList(
    this._instance,
    this._then,
  );

  final Query$FetchMediaList _instance;

  final TRes Function(Query$FetchMediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection
                as Query$FetchMediaList$MediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchMediaList$MediaListCollection<TRes>
      get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWith$Query$FetchMediaList$MediaListCollection.stub(
            _then(_instance))
        : CopyWith$Query$FetchMediaList$MediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImpl$Query$FetchMediaList<TRes>
    implements CopyWith$Query$FetchMediaList<TRes> {
  _CopyWithStubImpl$Query$FetchMediaList(this._res);

  TRes _res;

  call({
    Query$FetchMediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchMediaList$MediaListCollection<TRes>
      get MediaListCollection =>
          CopyWith$Query$FetchMediaList$MediaListCollection.stub(_res);
}

const documentNodeQueryFetchMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchMediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaListSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaListCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: VariableNode(name: NameNode(value: 'sort')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'lists'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCustomList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSplitCompletedList'),
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
                name: NameNode(value: 'entries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaListEntry'),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionBasicMedia,
]);
Query$FetchMediaList _parserFn$Query$FetchMediaList(
        Map<String, dynamic> data) =>
    Query$FetchMediaList.fromJson(data);

class Options$Query$FetchMediaList
    extends graphql.QueryOptions<Query$FetchMediaList> {
  Options$Query$FetchMediaList({
    String? operationName,
    Variables$Query$FetchMediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryFetchMediaList,
          parserFn: _parserFn$Query$FetchMediaList,
        );
}

class WatchOptions$Query$FetchMediaList
    extends graphql.WatchQueryOptions<Query$FetchMediaList> {
  WatchOptions$Query$FetchMediaList({
    String? operationName,
    Variables$Query$FetchMediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryFetchMediaList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchMediaList,
        );
}

class FetchMoreOptions$Query$FetchMediaList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchMediaList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchMediaList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchMediaList,
        );
}

extension ClientExtension$Query$FetchMediaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchMediaList>> query$FetchMediaList(
          [Options$Query$FetchMediaList? options]) async =>
      await this.query(options ?? Options$Query$FetchMediaList());
  graphql.ObservableQuery<Query$FetchMediaList> watchQuery$FetchMediaList(
          [WatchOptions$Query$FetchMediaList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchMediaList());
  void writeQuery$FetchMediaList({
    required Query$FetchMediaList data,
    Variables$Query$FetchMediaList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchMediaList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchMediaList? readQuery$FetchMediaList({
    Variables$Query$FetchMediaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchMediaList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchMediaList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchMediaList> useQuery$FetchMediaList(
        [Options$Query$FetchMediaList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchMediaList());
graphql.ObservableQuery<Query$FetchMediaList> useWatchQuery$FetchMediaList(
        [WatchOptions$Query$FetchMediaList? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FetchMediaList());

class Query$FetchMediaList$Widget
    extends graphql_flutter.Query<Query$FetchMediaList> {
  Query$FetchMediaList$Widget({
    widgets.Key? key,
    Options$Query$FetchMediaList? options,
    required graphql_flutter.QueryBuilder<Query$FetchMediaList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchMediaList(),
          builder: builder,
        );
}

class Query$FetchMediaList$MediaListCollection {
  Query$FetchMediaList$MediaListCollection({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$FetchMediaList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaList$MediaListCollection(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FetchMediaList$MediaListCollection$lists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FetchMediaList$MediaListCollection$lists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaList$MediaListCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
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

extension UtilityExtension$Query$FetchMediaList$MediaListCollection
    on Query$FetchMediaList$MediaListCollection {
  CopyWith$Query$FetchMediaList$MediaListCollection<
          Query$FetchMediaList$MediaListCollection>
      get copyWith => CopyWith$Query$FetchMediaList$MediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaList$MediaListCollection<TRes> {
  factory CopyWith$Query$FetchMediaList$MediaListCollection(
    Query$FetchMediaList$MediaListCollection instance,
    TRes Function(Query$FetchMediaList$MediaListCollection) then,
  ) = _CopyWithImpl$Query$FetchMediaList$MediaListCollection;

  factory CopyWith$Query$FetchMediaList$MediaListCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection;

  TRes call({
    List<Query$FetchMediaList$MediaListCollection$lists?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<Query$FetchMediaList$MediaListCollection$lists?>? Function(
              Iterable<
                  CopyWith$Query$FetchMediaList$MediaListCollection$lists<
                      Query$FetchMediaList$MediaListCollection$lists>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMediaList$MediaListCollection<TRes>
    implements CopyWith$Query$FetchMediaList$MediaListCollection<TRes> {
  _CopyWithImpl$Query$FetchMediaList$MediaListCollection(
    this._instance,
    this._then,
  );

  final Query$FetchMediaList$MediaListCollection _instance;

  final TRes Function(Query$FetchMediaList$MediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaList$MediaListCollection(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<Query$FetchMediaList$MediaListCollection$lists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes lists(
          Iterable<Query$FetchMediaList$MediaListCollection$lists?>? Function(
                  Iterable<
                      CopyWith$Query$FetchMediaList$MediaListCollection$lists<
                          Query$FetchMediaList$MediaListCollection$lists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWith$Query$FetchMediaList$MediaListCollection$lists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection<TRes>
    implements CopyWith$Query$FetchMediaList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection(this._res);

  TRes _res;

  call({
    List<Query$FetchMediaList$MediaListCollection$lists?>? lists,
    String? $__typename,
  }) =>
      _res;
  lists(_fn) => _res;
}

class Query$FetchMediaList$MediaListCollection$lists {
  Query$FetchMediaList$MediaListCollection$lists({
    this.name,
    this.isCustomList,
    this.isSplitCompletedList,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Query$FetchMediaList$MediaListCollection$lists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isCustomList = json['isCustomList'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$FetchMediaList$MediaListCollection$lists(
      name: (l$name as String?),
      isCustomList: (l$isCustomList as bool?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final bool? isSplitCompletedList;

  final Enum$MediaListStatus? status;

  final List<Fragment$MediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isCustomList = isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isCustomList,
      l$isSplitCompletedList,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchMediaList$MediaListCollection$lists) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Query$FetchMediaList$MediaListCollection$lists
    on Query$FetchMediaList$MediaListCollection$lists {
  CopyWith$Query$FetchMediaList$MediaListCollection$lists<
          Query$FetchMediaList$MediaListCollection$lists>
      get copyWith => CopyWith$Query$FetchMediaList$MediaListCollection$lists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchMediaList$MediaListCollection$lists<TRes> {
  factory CopyWith$Query$FetchMediaList$MediaListCollection$lists(
    Query$FetchMediaList$MediaListCollection$lists instance,
    TRes Function(Query$FetchMediaList$MediaListCollection$lists) then,
  ) = _CopyWithImpl$Query$FetchMediaList$MediaListCollection$lists;

  factory CopyWith$Query$FetchMediaList$MediaListCollection$lists.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection$lists;

  TRes call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$FetchMediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$FetchMediaList$MediaListCollection$lists<TRes> {
  _CopyWithImpl$Query$FetchMediaList$MediaListCollection$lists(
    this._instance,
    this._then,
  );

  final Query$FetchMediaList$MediaListCollection$lists _instance;

  final TRes Function(Query$FetchMediaList$MediaListCollection$lists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isCustomList = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchMediaList$MediaListCollection$lists(
        name: name == _undefined ? _instance.name : (name as String?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes entries(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$FetchMediaList$MediaListCollection$lists<TRes> {
  _CopyWithStubImpl$Query$FetchMediaList$MediaListCollection$lists(this._res);

  TRes _res;

  call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;
  entries(_fn) => _res;
}

class Variables$Mutation$SaveMediaListEntry {
  factory Variables$Mutation$SaveMediaListEntry({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? scoreRaw,
    int? progress,
    int? progressVolumes,
    int? repeat,
    int? priority,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    List<String?>? customLists,
    List<double?>? advancedScores,
  }) =>
      Variables$Mutation$SaveMediaListEntry._({
        if (id != null) r'id': id,
        if (mediaId != null) r'mediaId': mediaId,
        if (status != null) r'status': status,
        if (score != null) r'score': score,
        if (scoreRaw != null) r'scoreRaw': scoreRaw,
        if (progress != null) r'progress': progress,
        if (progressVolumes != null) r'progressVolumes': progressVolumes,
        if (repeat != null) r'repeat': repeat,
        if (priority != null) r'priority': priority,
        if (private != null) r'private': private,
        if (notes != null) r'notes': notes,
        if (hiddenFromStatusLists != null)
          r'hiddenFromStatusLists': hiddenFromStatusLists,
        if (customLists != null) r'customLists': customLists,
        if (advancedScores != null) r'advancedScores': advancedScores,
      });

  Variables$Mutation$SaveMediaListEntry._(this._$data);

  factory Variables$Mutation$SaveMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String));
    }
    if (data.containsKey('score')) {
      final l$score = data['score'];
      result$data['score'] = (l$score as num?)?.toDouble();
    }
    if (data.containsKey('scoreRaw')) {
      final l$scoreRaw = data['scoreRaw'];
      result$data['scoreRaw'] = (l$scoreRaw as int?);
    }
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('progressVolumes')) {
      final l$progressVolumes = data['progressVolumes'];
      result$data['progressVolumes'] = (l$progressVolumes as int?);
    }
    if (data.containsKey('repeat')) {
      final l$repeat = data['repeat'];
      result$data['repeat'] = (l$repeat as int?);
    }
    if (data.containsKey('priority')) {
      final l$priority = data['priority'];
      result$data['priority'] = (l$priority as int?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('hiddenFromStatusLists')) {
      final l$hiddenFromStatusLists = data['hiddenFromStatusLists'];
      result$data['hiddenFromStatusLists'] = (l$hiddenFromStatusLists as bool?);
    }
    if (data.containsKey('customLists')) {
      final l$customLists = data['customLists'];
      result$data['customLists'] = (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('advancedScores')) {
      final l$advancedScores = data['advancedScores'];
      result$data['advancedScores'] = (l$advancedScores as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    return Variables$Mutation$SaveMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  int? get mediaId => (_$data['mediaId'] as int?);
  Enum$MediaListStatus? get status =>
      (_$data['status'] as Enum$MediaListStatus?);
  double? get score => (_$data['score'] as double?);
  int? get scoreRaw => (_$data['scoreRaw'] as int?);
  int? get progress => (_$data['progress'] as int?);
  int? get progressVolumes => (_$data['progressVolumes'] as int?);
  int? get repeat => (_$data['repeat'] as int?);
  int? get priority => (_$data['priority'] as int?);
  bool? get private => (_$data['private'] as bool?);
  String? get notes => (_$data['notes'] as String?);
  bool? get hiddenFromStatusLists => (_$data['hiddenFromStatusLists'] as bool?);
  List<String?>? get customLists => (_$data['customLists'] as List<String?>?);
  List<double?>? get advancedScores =>
      (_$data['advancedScores'] as List<double?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    }
    if (_$data.containsKey('score')) {
      final l$score = score;
      result$data['score'] = l$score;
    }
    if (_$data.containsKey('scoreRaw')) {
      final l$scoreRaw = scoreRaw;
      result$data['scoreRaw'] = l$scoreRaw;
    }
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('progressVolumes')) {
      final l$progressVolumes = progressVolumes;
      result$data['progressVolumes'] = l$progressVolumes;
    }
    if (_$data.containsKey('repeat')) {
      final l$repeat = repeat;
      result$data['repeat'] = l$repeat;
    }
    if (_$data.containsKey('priority')) {
      final l$priority = priority;
      result$data['priority'] = l$priority;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('hiddenFromStatusLists')) {
      final l$hiddenFromStatusLists = hiddenFromStatusLists;
      result$data['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    }
    if (_$data.containsKey('customLists')) {
      final l$customLists = customLists;
      result$data['customLists'] = l$customLists?.map((e) => e).toList();
    }
    if (_$data.containsKey('advancedScores')) {
      final l$advancedScores = advancedScores;
      result$data['advancedScores'] = l$advancedScores?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveMediaListEntry<
          Variables$Mutation$SaveMediaListEntry>
      get copyWith => CopyWith$Variables$Mutation$SaveMediaListEntry(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (_$data.containsKey('score') != other._$data.containsKey('score')) {
      return false;
    }
    if (l$score != lOther$score) {
      return false;
    }
    final l$scoreRaw = scoreRaw;
    final lOther$scoreRaw = other.scoreRaw;
    if (_$data.containsKey('scoreRaw') !=
        other._$data.containsKey('scoreRaw')) {
      return false;
    }
    if (l$scoreRaw != lOther$scoreRaw) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (_$data.containsKey('progressVolumes') !=
        other._$data.containsKey('progressVolumes')) {
      return false;
    }
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (_$data.containsKey('repeat') != other._$data.containsKey('repeat')) {
      return false;
    }
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (_$data.containsKey('priority') !=
        other._$data.containsKey('priority')) {
      return false;
    }
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (_$data.containsKey('hiddenFromStatusLists') !=
        other._$data.containsKey('hiddenFromStatusLists')) {
      return false;
    }
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (_$data.containsKey('customLists') !=
        other._$data.containsKey('customLists')) {
      return false;
    }
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$advancedScores = advancedScores;
    final lOther$advancedScores = other.advancedScores;
    if (_$data.containsKey('advancedScores') !=
        other._$data.containsKey('advancedScores')) {
      return false;
    }
    if (l$advancedScores != null && lOther$advancedScores != null) {
      if (l$advancedScores.length != lOther$advancedScores.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScores.length; i++) {
        final l$advancedScores$entry = l$advancedScores[i];
        final lOther$advancedScores$entry = lOther$advancedScores[i];
        if (l$advancedScores$entry != lOther$advancedScores$entry) {
          return false;
        }
      }
    } else if (l$advancedScores != lOther$advancedScores) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$score = score;
    final l$scoreRaw = scoreRaw;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$repeat = repeat;
    final l$priority = priority;
    final l$private = private;
    final l$notes = notes;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$customLists = customLists;
    final l$advancedScores = advancedScores;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('score') ? l$score : const {},
      _$data.containsKey('scoreRaw') ? l$scoreRaw : const {},
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('progressVolumes') ? l$progressVolumes : const {},
      _$data.containsKey('repeat') ? l$repeat : const {},
      _$data.containsKey('priority') ? l$priority : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('hiddenFromStatusLists')
          ? l$hiddenFromStatusLists
          : const {},
      _$data.containsKey('customLists')
          ? l$customLists == null
              ? null
              : Object.hashAll(l$customLists.map((v) => v))
          : const {},
      _$data.containsKey('advancedScores')
          ? l$advancedScores == null
              ? null
              : Object.hashAll(l$advancedScores.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  factory CopyWith$Variables$Mutation$SaveMediaListEntry(
    Variables$Mutation$SaveMediaListEntry instance,
    TRes Function(Variables$Mutation$SaveMediaListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveMediaListEntry;

  factory CopyWith$Variables$Mutation$SaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? scoreRaw,
    int? progress,
    int? progressVolumes,
    int? repeat,
    int? priority,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    List<String?>? customLists,
    List<double?>? advancedScores,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveMediaListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveMediaListEntry _instance;

  final TRes Function(Variables$Mutation$SaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? score = _undefined,
    Object? scoreRaw = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? repeat = _undefined,
    Object? priority = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? customLists = _undefined,
    Object? advancedScores = _undefined,
  }) =>
      _then(Variables$Mutation$SaveMediaListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (status != _undefined) 'status': (status as Enum$MediaListStatus?),
        if (score != _undefined) 'score': (score as double?),
        if (scoreRaw != _undefined) 'scoreRaw': (scoreRaw as int?),
        if (progress != _undefined) 'progress': (progress as int?),
        if (progressVolumes != _undefined)
          'progressVolumes': (progressVolumes as int?),
        if (repeat != _undefined) 'repeat': (repeat as int?),
        if (priority != _undefined) 'priority': (priority as int?),
        if (private != _undefined) 'private': (private as bool?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (hiddenFromStatusLists != _undefined)
          'hiddenFromStatusLists': (hiddenFromStatusLists as bool?),
        if (customLists != _undefined)
          'customLists': (customLists as List<String?>?),
        if (advancedScores != _undefined)
          'advancedScores': (advancedScores as List<double?>?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveMediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? scoreRaw,
    int? progress,
    int? progressVolumes,
    int? repeat,
    int? priority,
    bool? private,
    String? notes,
    bool? hiddenFromStatusLists,
    List<String?>? customLists,
    List<double?>? advancedScores,
  }) =>
      _res;
}

class Mutation$SaveMediaListEntry {
  Mutation$SaveMediaListEntry({
    this.SaveMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$SaveMediaListEntry = json['SaveMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMediaListEntry(
      SaveMediaListEntry: l$SaveMediaListEntry == null
          ? null
          : Fragment$MediaListEntry.fromJson(
              (l$SaveMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaListEntry? SaveMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveMediaListEntry = SaveMediaListEntry;
    _resultData['SaveMediaListEntry'] = l$SaveMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final lOther$SaveMediaListEntry = other.SaveMediaListEntry;
    if (l$SaveMediaListEntry != lOther$SaveMediaListEntry) {
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

extension UtilityExtension$Mutation$SaveMediaListEntry
    on Mutation$SaveMediaListEntry {
  CopyWith$Mutation$SaveMediaListEntry<Mutation$SaveMediaListEntry>
      get copyWith => CopyWith$Mutation$SaveMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMediaListEntry<TRes> {
  factory CopyWith$Mutation$SaveMediaListEntry(
    Mutation$SaveMediaListEntry instance,
    TRes Function(Mutation$SaveMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$SaveMediaListEntry;

  factory CopyWith$Mutation$SaveMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveMediaListEntry;

  TRes call({
    Fragment$MediaListEntry? SaveMediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry;
}

class _CopyWithImpl$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$SaveMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$SaveMediaListEntry _instance;

  final TRes Function(Mutation$SaveMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMediaListEntry(
        SaveMediaListEntry: SaveMediaListEntry == _undefined
            ? _instance.SaveMediaListEntry
            : (SaveMediaListEntry as Fragment$MediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry {
    final local$SaveMediaListEntry = _instance.SaveMediaListEntry;
    return local$SaveMediaListEntry == null
        ? CopyWith$Fragment$MediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry(
            local$SaveMediaListEntry, (e) => call(SaveMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveMediaListEntry<TRes>
    implements CopyWith$Mutation$SaveMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$SaveMediaListEntry(this._res);

  TRes _res;

  call({
    Fragment$MediaListEntry? SaveMediaListEntry,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry =>
      CopyWith$Fragment$MediaListEntry.stub(_res);
}

const documentNodeMutationSaveMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveMediaListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'score')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'scoreRaw')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progressVolumes')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repeat')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'priority')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'private')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notes')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hiddenFromStatusLists')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customLists')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'advancedScores')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Float'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'score'),
            value: VariableNode(name: NameNode(value: 'score')),
          ),
          ArgumentNode(
            name: NameNode(value: 'scoreRaw'),
            value: VariableNode(name: NameNode(value: 'scoreRaw')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progress'),
            value: VariableNode(name: NameNode(value: 'progress')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progressVolumes'),
            value: VariableNode(name: NameNode(value: 'progressVolumes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'repeat'),
            value: VariableNode(name: NameNode(value: 'repeat')),
          ),
          ArgumentNode(
            name: NameNode(value: 'priority'),
            value: VariableNode(name: NameNode(value: 'priority')),
          ),
          ArgumentNode(
            name: NameNode(value: 'private'),
            value: VariableNode(name: NameNode(value: 'private')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notes'),
            value: VariableNode(name: NameNode(value: 'notes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hiddenFromStatusLists'),
            value: VariableNode(name: NameNode(value: 'hiddenFromStatusLists')),
          ),
          ArgumentNode(
            name: NameNode(value: 'customLists'),
            value: VariableNode(name: NameNode(value: 'customLists')),
          ),
          ArgumentNode(
            name: NameNode(value: 'advancedScores'),
            value: VariableNode(name: NameNode(value: 'advancedScores')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaListEntry'),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionBasicMedia,
]);
Mutation$SaveMediaListEntry _parserFn$Mutation$SaveMediaListEntry(
        Map<String, dynamic> data) =>
    Mutation$SaveMediaListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveMediaListEntry = FutureOr<void>
    Function(
  dynamic,
  Mutation$SaveMediaListEntry?,
);

class Options$Mutation$SaveMediaListEntry
    extends graphql.MutationOptions<Mutation$SaveMediaListEntry> {
  Options$Mutation$SaveMediaListEntry({
    String? operationName,
    Variables$Mutation$SaveMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMediaListEntry,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );

  final OnMutationCompleted$Mutation$SaveMediaListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveMediaListEntry
    extends graphql.WatchQueryOptions<Mutation$SaveMediaListEntry> {
  WatchOptions$Mutation$SaveMediaListEntry({
    String? operationName,
    Variables$Mutation$SaveMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationSaveMediaListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );
}

extension ClientExtension$Mutation$SaveMediaListEntry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveMediaListEntry>>
      mutate$SaveMediaListEntry(
              [Options$Mutation$SaveMediaListEntry? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveMediaListEntry());
  graphql.ObservableQuery<
      Mutation$SaveMediaListEntry> watchMutation$SaveMediaListEntry(
          [WatchOptions$Mutation$SaveMediaListEntry? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveMediaListEntry());
}

class Mutation$SaveMediaListEntry$HookResult {
  Mutation$SaveMediaListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveMediaListEntry runMutation;

  final graphql.QueryResult<Mutation$SaveMediaListEntry> result;
}

Mutation$SaveMediaListEntry$HookResult useMutation$SaveMediaListEntry(
    [WidgetOptions$Mutation$SaveMediaListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveMediaListEntry());
  return Mutation$SaveMediaListEntry$HookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveMediaListEntry>
    useWatchMutation$SaveMediaListEntry(
            [WatchOptions$Mutation$SaveMediaListEntry? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveMediaListEntry());

class WidgetOptions$Mutation$SaveMediaListEntry
    extends graphql.MutationOptions<Mutation$SaveMediaListEntry> {
  WidgetOptions$Mutation$SaveMediaListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMediaListEntry,
          parserFn: _parserFn$Mutation$SaveMediaListEntry,
        );

  final OnMutationCompleted$Mutation$SaveMediaListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveMediaListEntry
    = graphql.MultiSourceResult<Mutation$SaveMediaListEntry> Function({
  Variables$Mutation$SaveMediaListEntry? variables,
  Object? optimisticResult,
});
typedef Builder$Mutation$SaveMediaListEntry = widgets.Widget Function(
  RunMutation$Mutation$SaveMediaListEntry,
  graphql.QueryResult<Mutation$SaveMediaListEntry>?,
);

class Mutation$SaveMediaListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$SaveMediaListEntry> {
  Mutation$SaveMediaListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveMediaListEntry? options,
    required Builder$Mutation$SaveMediaListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveMediaListEntry(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Variables$Mutation$DeleteMediaListEntry {
  factory Variables$Mutation$DeleteMediaListEntry({int? id}) =>
      Variables$Mutation$DeleteMediaListEntry._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteMediaListEntry._(this._$data);

  factory Variables$Mutation$DeleteMediaListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteMediaListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteMediaListEntry<
          Variables$Mutation$DeleteMediaListEntry>
      get copyWith => CopyWith$Variables$Mutation$DeleteMediaListEntry(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  factory CopyWith$Variables$Mutation$DeleteMediaListEntry(
    Variables$Mutation$DeleteMediaListEntry instance,
    TRes Function(Variables$Mutation$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry;

  factory CopyWith$Variables$Mutation$DeleteMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteMediaListEntry _instance;

  final TRes Function(Variables$Mutation$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteMediaListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteMediaListEntry(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteMediaListEntry {
  Mutation$DeleteMediaListEntry({
    this.DeleteMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteMediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$DeleteMediaListEntry = json['DeleteMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMediaListEntry(
      DeleteMediaListEntry: l$DeleteMediaListEntry == null
          ? null
          : Mutation$DeleteMediaListEntry$DeleteMediaListEntry.fromJson(
              (l$DeleteMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteMediaListEntry$DeleteMediaListEntry?
      DeleteMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    _resultData['DeleteMediaListEntry'] = l$DeleteMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final lOther$DeleteMediaListEntry = other.DeleteMediaListEntry;
    if (l$DeleteMediaListEntry != lOther$DeleteMediaListEntry) {
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

extension UtilityExtension$Mutation$DeleteMediaListEntry
    on Mutation$DeleteMediaListEntry {
  CopyWith$Mutation$DeleteMediaListEntry<Mutation$DeleteMediaListEntry>
      get copyWith => CopyWith$Mutation$DeleteMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  factory CopyWith$Mutation$DeleteMediaListEntry(
    Mutation$DeleteMediaListEntry instance,
    TRes Function(Mutation$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteMediaListEntry;

  factory CopyWith$Mutation$DeleteMediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMediaListEntry;

  TRes call({
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry;
}

class _CopyWithImpl$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMediaListEntry _instance;

  final TRes Function(Mutation$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMediaListEntry(
        DeleteMediaListEntry: DeleteMediaListEntry == _undefined
            ? _instance.DeleteMediaListEntry
            : (DeleteMediaListEntry
                as Mutation$DeleteMediaListEntry$DeleteMediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry {
    final local$DeleteMediaListEntry = _instance.DeleteMediaListEntry;
    return local$DeleteMediaListEntry == null
        ? CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
            local$DeleteMediaListEntry, (e) => call(DeleteMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMediaListEntry(this._res);

  TRes _res;

  call({
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry =>
          CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
              _res);
}

const documentNodeMutationDeleteMediaListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteMediaListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'DeleteMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deleted'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
]);
Mutation$DeleteMediaListEntry _parserFn$Mutation$DeleteMediaListEntry(
        Map<String, dynamic> data) =>
    Mutation$DeleteMediaListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteMediaListEntry = FutureOr<void>
    Function(
  dynamic,
  Mutation$DeleteMediaListEntry?,
);

class Options$Mutation$DeleteMediaListEntry
    extends graphql.MutationOptions<Mutation$DeleteMediaListEntry> {
  Options$Mutation$DeleteMediaListEntry({
    String? operationName,
    Variables$Mutation$DeleteMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteMediaListEntry,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteMediaListEntry?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteMediaListEntry
    extends graphql.WatchQueryOptions<Mutation$DeleteMediaListEntry> {
  WatchOptions$Mutation$DeleteMediaListEntry({
    String? operationName,
    Variables$Mutation$DeleteMediaListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationDeleteMediaListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );
}

extension ClientExtension$Mutation$DeleteMediaListEntry
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteMediaListEntry>>
      mutate$DeleteMediaListEntry(
              [Options$Mutation$DeleteMediaListEntry? options]) async =>
          await this.mutate(options ?? Options$Mutation$DeleteMediaListEntry());
  graphql.ObservableQuery<Mutation$DeleteMediaListEntry>
      watchMutation$DeleteMediaListEntry(
              [WatchOptions$Mutation$DeleteMediaListEntry? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$DeleteMediaListEntry());
}

class Mutation$DeleteMediaListEntry$HookResult {
  Mutation$DeleteMediaListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteMediaListEntry runMutation;

  final graphql.QueryResult<Mutation$DeleteMediaListEntry> result;
}

Mutation$DeleteMediaListEntry$HookResult useMutation$DeleteMediaListEntry(
    [WidgetOptions$Mutation$DeleteMediaListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteMediaListEntry());
  return Mutation$DeleteMediaListEntry$HookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteMediaListEntry>
    useWatchMutation$DeleteMediaListEntry(
            [WatchOptions$Mutation$DeleteMediaListEntry? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteMediaListEntry());

class WidgetOptions$Mutation$DeleteMediaListEntry
    extends graphql.MutationOptions<Mutation$DeleteMediaListEntry> {
  WidgetOptions$Mutation$DeleteMediaListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteMediaListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteMediaListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteMediaListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteMediaListEntry,
          parserFn: _parserFn$Mutation$DeleteMediaListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteMediaListEntry?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteMediaListEntry
    = graphql.MultiSourceResult<Mutation$DeleteMediaListEntry> Function({
  Variables$Mutation$DeleteMediaListEntry? variables,
  Object? optimisticResult,
});
typedef Builder$Mutation$DeleteMediaListEntry = widgets.Widget Function(
  RunMutation$Mutation$DeleteMediaListEntry,
  graphql.QueryResult<Mutation$DeleteMediaListEntry>?,
);

class Mutation$DeleteMediaListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteMediaListEntry> {
  Mutation$DeleteMediaListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteMediaListEntry? options,
    required Builder$Mutation$DeleteMediaListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteMediaListEntry(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$DeleteMediaListEntry$DeleteMediaListEntry {
  Mutation$DeleteMediaListEntry$DeleteMediaListEntry({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteMediaListEntry$DeleteMediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
      deleted: (l$deleted as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? deleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleted = deleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteMediaListEntry$DeleteMediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Mutation$DeleteMediaListEntry$DeleteMediaListEntry
    on Mutation$DeleteMediaListEntry$DeleteMediaListEntry {
  CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<
          Mutation$DeleteMediaListEntry$DeleteMediaListEntry>
      get copyWith =>
          CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<
    TRes> {
  factory CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
    Mutation$DeleteMediaListEntry$DeleteMediaListEntry instance,
    TRes Function(Mutation$DeleteMediaListEntry$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry;

  factory CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
    implements
        CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteMediaListEntry$DeleteMediaListEntry _instance;

  final TRes Function(Mutation$DeleteMediaListEntry$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes>
    implements
        CopyWith$Mutation$DeleteMediaListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteMediaListEntry$DeleteMediaListEntry(
      this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ToggleFavourite {
  factory Variables$Mutation$ToggleFavourite({
    int? animeId,
    int? mangaId,
  }) =>
      Variables$Mutation$ToggleFavourite._({
        if (animeId != null) r'animeId': animeId,
        if (mangaId != null) r'mangaId': mangaId,
      });

  Variables$Mutation$ToggleFavourite._(this._$data);

  factory Variables$Mutation$ToggleFavourite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('animeId')) {
      final l$animeId = data['animeId'];
      result$data['animeId'] = (l$animeId as int?);
    }
    if (data.containsKey('mangaId')) {
      final l$mangaId = data['mangaId'];
      result$data['mangaId'] = (l$mangaId as int?);
    }
    return Variables$Mutation$ToggleFavourite._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get animeId => (_$data['animeId'] as int?);
  int? get mangaId => (_$data['mangaId'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('animeId')) {
      final l$animeId = animeId;
      result$data['animeId'] = l$animeId;
    }
    if (_$data.containsKey('mangaId')) {
      final l$mangaId = mangaId;
      result$data['mangaId'] = l$mangaId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavourite<
          Variables$Mutation$ToggleFavourite>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavourite(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$animeId = animeId;
    final lOther$animeId = other.animeId;
    if (_$data.containsKey('animeId') != other._$data.containsKey('animeId')) {
      return false;
    }
    if (l$animeId != lOther$animeId) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (_$data.containsKey('mangaId') != other._$data.containsKey('mangaId')) {
      return false;
    }
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$animeId = animeId;
    final l$mangaId = mangaId;
    return Object.hashAll([
      _$data.containsKey('animeId') ? l$animeId : const {},
      _$data.containsKey('mangaId') ? l$mangaId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavourite(
    Variables$Mutation$ToggleFavourite instance,
    TRes Function(Variables$Mutation$ToggleFavourite) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavourite;

  factory CopyWith$Variables$Mutation$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavourite;

  TRes call({
    int? animeId,
    int? mangaId,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavourite _instance;

  final TRes Function(Variables$Mutation$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? animeId = _undefined,
    Object? mangaId = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleFavourite._({
        ..._instance._$data,
        if (animeId != _undefined) 'animeId': (animeId as int?),
        if (mangaId != _undefined) 'mangaId': (mangaId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavourite(this._res);

  TRes _res;

  call({
    int? animeId,
    int? mangaId,
  }) =>
      _res;
}

class Mutation$ToggleFavourite {
  Mutation$ToggleFavourite({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavourite.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleFavourite = ToggleFavourite;
    _resultData['ToggleFavourite'] = l$ToggleFavourite?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleFavourite = ToggleFavourite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleFavourite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleFavourite = ToggleFavourite;
    final lOther$ToggleFavourite = other.ToggleFavourite;
    if (l$ToggleFavourite != lOther$ToggleFavourite) {
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

extension UtilityExtension$Mutation$ToggleFavourite
    on Mutation$ToggleFavourite {
  CopyWith$Mutation$ToggleFavourite<Mutation$ToggleFavourite> get copyWith =>
      CopyWith$Mutation$ToggleFavourite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavourite(
    Mutation$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite as Mutation$ToggleFavourite$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> get ToggleFavourite =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavourite = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavourite'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ToggleFavourite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'animeId'),
            value: VariableNode(name: NameNode(value: 'animeId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaId'),
            value: VariableNode(name: NameNode(value: 'mangaId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'anime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
            name: NameNode(value: 'manga'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
]);
Mutation$ToggleFavourite _parserFn$Mutation$ToggleFavourite(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavourite.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavourite = FutureOr<void> Function(
  dynamic,
  Mutation$ToggleFavourite?,
);

class Options$Mutation$ToggleFavourite
    extends graphql.MutationOptions<Mutation$ToggleFavourite> {
  Options$Mutation$ToggleFavourite({
    String? operationName,
    Variables$Mutation$ToggleFavourite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavourite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavourite>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleFavourite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavourite,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );

  final OnMutationCompleted$Mutation$ToggleFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavourite
    extends graphql.WatchQueryOptions<Mutation$ToggleFavourite> {
  WatchOptions$Mutation$ToggleFavourite({
    String? operationName,
    Variables$Mutation$ToggleFavourite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationToggleFavourite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );
}

extension ClientExtension$Mutation$ToggleFavourite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavourite>> mutate$ToggleFavourite(
          [Options$Mutation$ToggleFavourite? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleFavourite());
  graphql
      .ObservableQuery<Mutation$ToggleFavourite> watchMutation$ToggleFavourite(
          [WatchOptions$Mutation$ToggleFavourite? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ToggleFavourite());
}

class Mutation$ToggleFavourite$HookResult {
  Mutation$ToggleFavourite$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavourite runMutation;

  final graphql.QueryResult<Mutation$ToggleFavourite> result;
}

Mutation$ToggleFavourite$HookResult useMutation$ToggleFavourite(
    [WidgetOptions$Mutation$ToggleFavourite? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavourite());
  return Mutation$ToggleFavourite$HookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavourite>
    useWatchMutation$ToggleFavourite(
            [WatchOptions$Mutation$ToggleFavourite? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavourite());

class WidgetOptions$Mutation$ToggleFavourite
    extends graphql.MutationOptions<Mutation$ToggleFavourite> {
  WidgetOptions$Mutation$ToggleFavourite({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavourite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavourite>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleFavourite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavourite,
          parserFn: _parserFn$Mutation$ToggleFavourite,
        );

  final OnMutationCompleted$Mutation$ToggleFavourite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavourite
    = graphql.MultiSourceResult<Mutation$ToggleFavourite> Function({
  Variables$Mutation$ToggleFavourite? variables,
  Object? optimisticResult,
});
typedef Builder$Mutation$ToggleFavourite = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavourite,
  graphql.QueryResult<Mutation$ToggleFavourite>?,
);

class Mutation$ToggleFavourite$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavourite> {
  Mutation$ToggleFavourite$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavourite? options,
    required Builder$Mutation$ToggleFavourite builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavourite(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$ToggleFavourite$ToggleFavourite {
  Mutation$ToggleFavourite$ToggleFavourite({
    this.anime,
    this.manga,
    this.$__typename = 'Favourites',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite(
      anime: l$anime == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$anime? anime;

  final Mutation$ToggleFavourite$ToggleFavourite$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite
    on Mutation$ToggleFavourite$ToggleFavourite {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite<
          Mutation$ToggleFavourite$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite(
    Mutation$ToggleFavourite$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavourite$ToggleFavourite$manga? manga,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Mutation$ToggleFavourite$ToggleFavourite$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Mutation$ToggleFavourite$ToggleFavourite$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavourite$ToggleFavourite$manga? manga,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> get anime =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(_res);
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> get manga =>
      CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(_res);
}

class Mutation$ToggleFavourite$ToggleFavourite$anime {
  Mutation$ToggleFavourite$ToggleFavourite$anime({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$anime
    on Mutation$ToggleFavourite$ToggleFavourite$anime {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<
          Mutation$ToggleFavourite$ToggleFavourite$anime>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime(
    Mutation$ToggleFavourite$ToggleFavourite$anime instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$anime _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$anime$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavourite$ToggleFavourite$manga {
  Mutation$ToggleFavourite$ToggleFavourite$manga({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$manga(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$manga) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$manga
    on Mutation$ToggleFavourite$ToggleFavourite$manga {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<
          Mutation$ToggleFavourite$ToggleFavourite$manga>
      get copyWith => CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga(
    Mutation$ToggleFavourite$ToggleFavourite$manga instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga;

  TRes call({
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$manga _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$manga(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo {
  Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo
    on Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo {
  CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
          Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
    Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo instance,
    TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo;

  factory CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavourite$ToggleFavourite$manga$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Home {
  factory Variables$Query$Home({
    int? page,
    int? perPage,
    required int userId,
    Enum$MediaType? type,
  }) =>
      Variables$Query$Home._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        r'userId': userId,
        if (type != null) r'type': type,
      });

  Variables$Query$Home._(this._$data);

  factory Variables$Query$Home.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$Home._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  int get userId => (_$data['userId'] as int);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    final l$userId = userId;
    result$data['userId'] = l$userId;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$Home<Variables$Query$Home> get copyWith =>
      CopyWith$Variables$Query$Home(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Home) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$userId = userId;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      l$userId,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Home<TRes> {
  factory CopyWith$Variables$Query$Home(
    Variables$Query$Home instance,
    TRes Function(Variables$Query$Home) then,
  ) = _CopyWithImpl$Variables$Query$Home;

  factory CopyWith$Variables$Query$Home.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Home;

  TRes call({
    int? page,
    int? perPage,
    int? userId,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$Home<TRes>
    implements CopyWith$Variables$Query$Home<TRes> {
  _CopyWithImpl$Variables$Query$Home(
    this._instance,
    this._then,
  );

  final Variables$Query$Home _instance;

  final TRes Function(Variables$Query$Home) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$Home._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Home<TRes>
    implements CopyWith$Variables$Query$Home<TRes> {
  _CopyWithStubImpl$Variables$Query$Home(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    int? userId,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$Home {
  Query$Home({
    this.releasing,
    this.list,
    this.$__typename = 'Query',
  });

  factory Query$Home.fromJson(Map<String, dynamic> json) {
    final l$releasing = json['releasing'];
    final l$list = json['list'];
    final l$$__typename = json['__typename'];
    return Query$Home(
      releasing: l$releasing == null
          ? null
          : Query$Home$releasing.fromJson(
              (l$releasing as Map<String, dynamic>)),
      list: l$list == null
          ? null
          : Query$Home$list.fromJson((l$list as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Home$releasing? releasing;

  final Query$Home$list? list;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$releasing = releasing;
    _resultData['releasing'] = l$releasing?.toJson();
    final l$list = list;
    _resultData['list'] = l$list?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$releasing = releasing;
    final l$list = list;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$releasing,
      l$list,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$releasing = releasing;
    final lOther$releasing = other.releasing;
    if (l$releasing != lOther$releasing) {
      return false;
    }
    final l$list = list;
    final lOther$list = other.list;
    if (l$list != lOther$list) {
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

extension UtilityExtension$Query$Home on Query$Home {
  CopyWith$Query$Home<Query$Home> get copyWith => CopyWith$Query$Home(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Home<TRes> {
  factory CopyWith$Query$Home(
    Query$Home instance,
    TRes Function(Query$Home) then,
  ) = _CopyWithImpl$Query$Home;

  factory CopyWith$Query$Home.stub(TRes res) = _CopyWithStubImpl$Query$Home;

  TRes call({
    Query$Home$releasing? releasing,
    Query$Home$list? list,
    String? $__typename,
  });
  CopyWith$Query$Home$releasing<TRes> get releasing;
  CopyWith$Query$Home$list<TRes> get list;
}

class _CopyWithImpl$Query$Home<TRes> implements CopyWith$Query$Home<TRes> {
  _CopyWithImpl$Query$Home(
    this._instance,
    this._then,
  );

  final Query$Home _instance;

  final TRes Function(Query$Home) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? releasing = _undefined,
    Object? list = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home(
        releasing: releasing == _undefined
            ? _instance.releasing
            : (releasing as Query$Home$releasing?),
        list: list == _undefined ? _instance.list : (list as Query$Home$list?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Home$releasing<TRes> get releasing {
    final local$releasing = _instance.releasing;
    return local$releasing == null
        ? CopyWith$Query$Home$releasing.stub(_then(_instance))
        : CopyWith$Query$Home$releasing(
            local$releasing, (e) => call(releasing: e));
  }

  CopyWith$Query$Home$list<TRes> get list {
    final local$list = _instance.list;
    return local$list == null
        ? CopyWith$Query$Home$list.stub(_then(_instance))
        : CopyWith$Query$Home$list(local$list, (e) => call(list: e));
  }
}

class _CopyWithStubImpl$Query$Home<TRes> implements CopyWith$Query$Home<TRes> {
  _CopyWithStubImpl$Query$Home(this._res);

  TRes _res;

  call({
    Query$Home$releasing? releasing,
    Query$Home$list? list,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Home$releasing<TRes> get releasing =>
      CopyWith$Query$Home$releasing.stub(_res);
  CopyWith$Query$Home$list<TRes> get list =>
      CopyWith$Query$Home$list.stub(_res);
}

const documentNodeQueryHome = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Home'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'releasing'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RELEASING')),
                  EnumValueNode(name: NameNode(value: 'NOT_YET_RELEASED')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'nextAiringEpisode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'airingAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'timeUntilAiring'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'episode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
                name: NameNode(value: 'airingSchedule'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'notYetAired'),
                    value: BooleanValueNode(value: false),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'airingAt'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'timeUntilAiring'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'episode'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
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
        name: NameNode(value: 'MediaListCollection'),
        alias: NameNode(value: 'list'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status_in'),
            value: ListValueNode(values: [
              EnumValueNode(name: NameNode(value: 'CURRENT')),
              EnumValueNode(name: NameNode(value: 'PLANNING')),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: ListValueNode(values: [
              EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC'))
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'lists'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isCustomList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSplitCompletedList'),
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
                name: NameNode(value: 'entries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaListEntry'),
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
  fragmentDefinitionBasicMedia,
  fragmentDefinitionMediaListEntry,
]);
Query$Home _parserFn$Query$Home(Map<String, dynamic> data) =>
    Query$Home.fromJson(data);

class Options$Query$Home extends graphql.QueryOptions<Query$Home> {
  Options$Query$Home({
    String? operationName,
    required Variables$Query$Home variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryHome,
          parserFn: _parserFn$Query$Home,
        );
}

class WatchOptions$Query$Home extends graphql.WatchQueryOptions<Query$Home> {
  WatchOptions$Query$Home({
    String? operationName,
    required Variables$Query$Home variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryHome,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Home,
        );
}

class FetchMoreOptions$Query$Home extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Home({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Home variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryHome,
        );
}

extension ClientExtension$Query$Home on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Home>> query$Home(
          Options$Query$Home options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Home> watchQuery$Home(
          WatchOptions$Query$Home options) =>
      this.watchQuery(options);
  void writeQuery$Home({
    required Query$Home data,
    required Variables$Query$Home variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryHome),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Home? readQuery$Home({
    required Variables$Query$Home variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryHome),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Home.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Home> useQuery$Home(
        Options$Query$Home options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Home> useWatchQuery$Home(
        WatchOptions$Query$Home options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Home$Widget extends graphql_flutter.Query<Query$Home> {
  Query$Home$Widget({
    widgets.Key? key,
    required Options$Query$Home options,
    required graphql_flutter.QueryBuilder<Query$Home> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Home$releasing {
  Query$Home$releasing({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Home$releasing.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Home$releasing$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Home$releasing$media.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Home$releasing$pageInfo? pageInfo;

  final List<Query$Home$releasing$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Home$releasing on Query$Home$releasing {
  CopyWith$Query$Home$releasing<Query$Home$releasing> get copyWith =>
      CopyWith$Query$Home$releasing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Home$releasing<TRes> {
  factory CopyWith$Query$Home$releasing(
    Query$Home$releasing instance,
    TRes Function(Query$Home$releasing) then,
  ) = _CopyWithImpl$Query$Home$releasing;

  factory CopyWith$Query$Home$releasing.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing;

  TRes call({
    Query$Home$releasing$pageInfo? pageInfo,
    List<Query$Home$releasing$media?>? media,
    String? $__typename,
  });
  CopyWith$Query$Home$releasing$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Query$Home$releasing$media?>? Function(
              Iterable<
                  CopyWith$Query$Home$releasing$media<
                      Query$Home$releasing$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Home$releasing<TRes>
    implements CopyWith$Query$Home$releasing<TRes> {
  _CopyWithImpl$Query$Home$releasing(
    this._instance,
    this._then,
  );

  final Query$Home$releasing _instance;

  final TRes Function(Query$Home$releasing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Home$releasing$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$Home$releasing$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Home$releasing$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Home$releasing$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Home$releasing$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Query$Home$releasing$media?>? Function(
                  Iterable<
                      CopyWith$Query$Home$releasing$media<
                          Query$Home$releasing$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$Home$releasing$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Home$releasing<TRes>
    implements CopyWith$Query$Home$releasing<TRes> {
  _CopyWithStubImpl$Query$Home$releasing(this._res);

  TRes _res;

  call({
    Query$Home$releasing$pageInfo? pageInfo,
    List<Query$Home$releasing$media?>? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Home$releasing$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Home$releasing$pageInfo.stub(_res);
  media(_fn) => _res;
}

class Query$Home$releasing$pageInfo {
  Query$Home$releasing$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Home$releasing$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$Home$releasing$pageInfo
    on Query$Home$releasing$pageInfo {
  CopyWith$Query$Home$releasing$pageInfo<Query$Home$releasing$pageInfo>
      get copyWith => CopyWith$Query$Home$releasing$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$pageInfo<TRes> {
  factory CopyWith$Query$Home$releasing$pageInfo(
    Query$Home$releasing$pageInfo instance,
    TRes Function(Query$Home$releasing$pageInfo) then,
  ) = _CopyWithImpl$Query$Home$releasing$pageInfo;

  factory CopyWith$Query$Home$releasing$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Home$releasing$pageInfo<TRes>
    implements CopyWith$Query$Home$releasing$pageInfo<TRes> {
  _CopyWithImpl$Query$Home$releasing$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$pageInfo _instance;

  final TRes Function(Query$Home$releasing$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Home$releasing$pageInfo<TRes>
    implements CopyWith$Query$Home$releasing$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Home$releasing$media implements Fragment$BasicMedia {
  Query$Home$releasing$media({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.nextAiringEpisode,
    this.airingSchedule,
  });

  factory Query$Home$releasing$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$airingSchedule = json['airingSchedule'];
    return Query$Home$releasing$media(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Query$Home$releasing$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Home$releasing$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : Query$Home$releasing$media$nextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Query$Home$releasing$media$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Query$Home$releasing$media$title? title;

  final Query$Home$releasing$media$coverImage? coverImage;

  final String $__typename;

  final Query$Home$releasing$media$nextAiringEpisode? nextAiringEpisode;

  final Query$Home$releasing$media$airingSchedule? airingSchedule;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$airingSchedule = airingSchedule;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
      l$nextAiringEpisode,
      l$airingSchedule,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Home$releasing$media
    on Query$Home$releasing$media {
  CopyWith$Query$Home$releasing$media<Query$Home$releasing$media>
      get copyWith => CopyWith$Query$Home$releasing$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media<TRes> {
  factory CopyWith$Query$Home$releasing$media(
    Query$Home$releasing$media instance,
    TRes Function(Query$Home$releasing$media) then,
  ) = _CopyWithImpl$Query$Home$releasing$media;

  factory CopyWith$Query$Home$releasing$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Home$releasing$media$title? title,
    Query$Home$releasing$media$coverImage? coverImage,
    String? $__typename,
    Query$Home$releasing$media$nextAiringEpisode? nextAiringEpisode,
    Query$Home$releasing$media$airingSchedule? airingSchedule,
  });
  CopyWith$Query$Home$releasing$media$title<TRes> get title;
  CopyWith$Query$Home$releasing$media$coverImage<TRes> get coverImage;
  CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes>
      get nextAiringEpisode;
  CopyWith$Query$Home$releasing$media$airingSchedule<TRes> get airingSchedule;
}

class _CopyWithImpl$Query$Home$releasing$media<TRes>
    implements CopyWith$Query$Home$releasing$media<TRes> {
  _CopyWithImpl$Query$Home$releasing$media(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media _instance;

  final TRes Function(Query$Home$releasing$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? airingSchedule = _undefined,
  }) =>
      _then(Query$Home$releasing$media(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Home$releasing$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Home$releasing$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode
                as Query$Home$releasing$media$nextAiringEpisode?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Query$Home$releasing$media$airingSchedule?),
      ));
  CopyWith$Query$Home$releasing$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Home$releasing$media$title.stub(_then(_instance))
        : CopyWith$Query$Home$releasing$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Home$releasing$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Home$releasing$media$coverImage.stub(_then(_instance))
        : CopyWith$Query$Home$releasing$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWith$Query$Home$releasing$media$nextAiringEpisode.stub(
            _then(_instance))
        : CopyWith$Query$Home$releasing$media$nextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  CopyWith$Query$Home$releasing$media$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Query$Home$releasing$media$airingSchedule.stub(
            _then(_instance))
        : CopyWith$Query$Home$releasing$media$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }
}

class _CopyWithStubImpl$Query$Home$releasing$media<TRes>
    implements CopyWith$Query$Home$releasing$media<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Home$releasing$media$title? title,
    Query$Home$releasing$media$coverImage? coverImage,
    String? $__typename,
    Query$Home$releasing$media$nextAiringEpisode? nextAiringEpisode,
    Query$Home$releasing$media$airingSchedule? airingSchedule,
  }) =>
      _res;
  CopyWith$Query$Home$releasing$media$title<TRes> get title =>
      CopyWith$Query$Home$releasing$media$title.stub(_res);
  CopyWith$Query$Home$releasing$media$coverImage<TRes> get coverImage =>
      CopyWith$Query$Home$releasing$media$coverImage.stub(_res);
  CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWith$Query$Home$releasing$media$nextAiringEpisode.stub(_res);
  CopyWith$Query$Home$releasing$media$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Query$Home$releasing$media$airingSchedule.stub(_res);
}

class Query$Home$releasing$media$title implements Fragment$BasicMedia$title {
  Query$Home$releasing$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Home$releasing$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$Home$releasing$media$title) ||
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

extension UtilityExtension$Query$Home$releasing$media$title
    on Query$Home$releasing$media$title {
  CopyWith$Query$Home$releasing$media$title<Query$Home$releasing$media$title>
      get copyWith => CopyWith$Query$Home$releasing$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$title<TRes> {
  factory CopyWith$Query$Home$releasing$media$title(
    Query$Home$releasing$media$title instance,
    TRes Function(Query$Home$releasing$media$title) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$title;

  factory CopyWith$Query$Home$releasing$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Home$releasing$media$title<TRes>
    implements CopyWith$Query$Home$releasing$media$title<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$title(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$title _instance;

  final TRes Function(Query$Home$releasing$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Home$releasing$media$title<TRes>
    implements CopyWith$Query$Home$releasing$media$title<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Home$releasing$media$coverImage
    implements Fragment$BasicMedia$coverImage {
  Query$Home$releasing$media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Home$releasing$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Home$releasing$media$coverImage
    on Query$Home$releasing$media$coverImage {
  CopyWith$Query$Home$releasing$media$coverImage<
          Query$Home$releasing$media$coverImage>
      get copyWith => CopyWith$Query$Home$releasing$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$coverImage<TRes> {
  factory CopyWith$Query$Home$releasing$media$coverImage(
    Query$Home$releasing$media$coverImage instance,
    TRes Function(Query$Home$releasing$media$coverImage) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$coverImage;

  factory CopyWith$Query$Home$releasing$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Home$releasing$media$coverImage<TRes>
    implements CopyWith$Query$Home$releasing$media$coverImage<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$coverImage _instance;

  final TRes Function(Query$Home$releasing$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Home$releasing$media$coverImage<TRes>
    implements CopyWith$Query$Home$releasing$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Home$releasing$media$nextAiringEpisode {
  Query$Home$releasing$media$nextAiringEpisode({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Query$Home$releasing$media$nextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$nextAiringEpisode(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media$nextAiringEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$Home$releasing$media$nextAiringEpisode
    on Query$Home$releasing$media$nextAiringEpisode {
  CopyWith$Query$Home$releasing$media$nextAiringEpisode<
          Query$Home$releasing$media$nextAiringEpisode>
      get copyWith => CopyWith$Query$Home$releasing$media$nextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes> {
  factory CopyWith$Query$Home$releasing$media$nextAiringEpisode(
    Query$Home$releasing$media$nextAiringEpisode instance,
    TRes Function(Query$Home$releasing$media$nextAiringEpisode) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$nextAiringEpisode;

  factory CopyWith$Query$Home$releasing$media$nextAiringEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$nextAiringEpisode;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Home$releasing$media$nextAiringEpisode<TRes>
    implements CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$nextAiringEpisode(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$nextAiringEpisode _instance;

  final TRes Function(Query$Home$releasing$media$nextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$nextAiringEpisode(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Home$releasing$media$nextAiringEpisode<TRes>
    implements CopyWith$Query$Home$releasing$media$nextAiringEpisode<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$nextAiringEpisode(this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Query$Home$releasing$media$airingSchedule {
  Query$Home$releasing$media$airingSchedule({
    this.edges,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Query$Home$releasing$media$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$airingSchedule(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Home$releasing$media$airingSchedule$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Home$releasing$media$airingSchedule$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$Home$releasing$media$airingSchedule
    on Query$Home$releasing$media$airingSchedule {
  CopyWith$Query$Home$releasing$media$airingSchedule<
          Query$Home$releasing$media$airingSchedule>
      get copyWith => CopyWith$Query$Home$releasing$media$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$airingSchedule<TRes> {
  factory CopyWith$Query$Home$releasing$media$airingSchedule(
    Query$Home$releasing$media$airingSchedule instance,
    TRes Function(Query$Home$releasing$media$airingSchedule) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$airingSchedule;

  factory CopyWith$Query$Home$releasing$media$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule;

  TRes call({
    List<Query$Home$releasing$media$airingSchedule$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Home$releasing$media$airingSchedule$edges?>? Function(
              Iterable<
                  CopyWith$Query$Home$releasing$media$airingSchedule$edges<
                      Query$Home$releasing$media$airingSchedule$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Home$releasing$media$airingSchedule<TRes>
    implements CopyWith$Query$Home$releasing$media$airingSchedule<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$airingSchedule(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$airingSchedule _instance;

  final TRes Function(Query$Home$releasing$media$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$airingSchedule(
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$Home$releasing$media$airingSchedule$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Home$releasing$media$airingSchedule$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Home$releasing$media$airingSchedule$edges<
                          Query$Home$releasing$media$airingSchedule$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Home$releasing$media$airingSchedule$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule<TRes>
    implements CopyWith$Query$Home$releasing$media$airingSchedule<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule(this._res);

  TRes _res;

  call({
    List<Query$Home$releasing$media$airingSchedule$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Home$releasing$media$airingSchedule$edges {
  Query$Home$releasing$media$airingSchedule$edges({
    this.node,
    this.$__typename = 'AiringScheduleEdge',
  });

  factory Query$Home$releasing$media$airingSchedule$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$airingSchedule$edges(
      node: l$node == null
          ? null
          : Query$Home$releasing$media$airingSchedule$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Home$releasing$media$airingSchedule$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media$airingSchedule$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$Home$releasing$media$airingSchedule$edges
    on Query$Home$releasing$media$airingSchedule$edges {
  CopyWith$Query$Home$releasing$media$airingSchedule$edges<
          Query$Home$releasing$media$airingSchedule$edges>
      get copyWith => CopyWith$Query$Home$releasing$media$airingSchedule$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$airingSchedule$edges<TRes> {
  factory CopyWith$Query$Home$releasing$media$airingSchedule$edges(
    Query$Home$releasing$media$airingSchedule$edges instance,
    TRes Function(Query$Home$releasing$media$airingSchedule$edges) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges;

  factory CopyWith$Query$Home$releasing$media$airingSchedule$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges;

  TRes call({
    Query$Home$releasing$media$airingSchedule$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges<TRes>
    implements CopyWith$Query$Home$releasing$media$airingSchedule$edges<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$airingSchedule$edges _instance;

  final TRes Function(Query$Home$releasing$media$airingSchedule$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$airingSchedule$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$Home$releasing$media$airingSchedule$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Home$releasing$media$airingSchedule$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Home$releasing$media$airingSchedule$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges<TRes>
    implements CopyWith$Query$Home$releasing$media$airingSchedule$edges<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges(this._res);

  TRes _res;

  call({
    Query$Home$releasing$media$airingSchedule$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<TRes>
      get node =>
          CopyWith$Query$Home$releasing$media$airingSchedule$edges$node.stub(
              _res);
}

class Query$Home$releasing$media$airingSchedule$edges$node {
  Query$Home$releasing$media$airingSchedule$edges$node({
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Query$Home$releasing$media$airingSchedule$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$Home$releasing$media$airingSchedule$edges$node(
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$releasing$media$airingSchedule$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$Home$releasing$media$airingSchedule$edges$node
    on Query$Home$releasing$media$airingSchedule$edges$node {
  CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<
          Query$Home$releasing$media$airingSchedule$edges$node>
      get copyWith =>
          CopyWith$Query$Home$releasing$media$airingSchedule$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<
    TRes> {
  factory CopyWith$Query$Home$releasing$media$airingSchedule$edges$node(
    Query$Home$releasing$media$airingSchedule$edges$node instance,
    TRes Function(Query$Home$releasing$media$airingSchedule$edges$node) then,
  ) = _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges$node;

  factory CopyWith$Query$Home$releasing$media$airingSchedule$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges$node;

  TRes call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges$node<TRes>
    implements
        CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<TRes> {
  _CopyWithImpl$Query$Home$releasing$media$airingSchedule$edges$node(
    this._instance,
    this._then,
  );

  final Query$Home$releasing$media$airingSchedule$edges$node _instance;

  final TRes Function(Query$Home$releasing$media$airingSchedule$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$releasing$media$airingSchedule$edges$node(
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges$node<
        TRes>
    implements
        CopyWith$Query$Home$releasing$media$airingSchedule$edges$node<TRes> {
  _CopyWithStubImpl$Query$Home$releasing$media$airingSchedule$edges$node(
      this._res);

  TRes _res;

  call({
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Query$Home$list {
  Query$Home$list({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$Home$list.fromJson(Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$Home$list(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Home$list$lists.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Home$list$lists?>? lists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$list) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
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

extension UtilityExtension$Query$Home$list on Query$Home$list {
  CopyWith$Query$Home$list<Query$Home$list> get copyWith =>
      CopyWith$Query$Home$list(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Home$list<TRes> {
  factory CopyWith$Query$Home$list(
    Query$Home$list instance,
    TRes Function(Query$Home$list) then,
  ) = _CopyWithImpl$Query$Home$list;

  factory CopyWith$Query$Home$list.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$list;

  TRes call({
    List<Query$Home$list$lists?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<Query$Home$list$lists?>? Function(
              Iterable<CopyWith$Query$Home$list$lists<Query$Home$list$lists>?>?)
          _fn);
}

class _CopyWithImpl$Query$Home$list<TRes>
    implements CopyWith$Query$Home$list<TRes> {
  _CopyWithImpl$Query$Home$list(
    this._instance,
    this._then,
  );

  final Query$Home$list _instance;

  final TRes Function(Query$Home$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$list(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<Query$Home$list$lists?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes lists(
          Iterable<Query$Home$list$lists?>? Function(
                  Iterable<
                      CopyWith$Query$Home$list$lists<Query$Home$list$lists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWith$Query$Home$list$lists(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Home$list<TRes>
    implements CopyWith$Query$Home$list<TRes> {
  _CopyWithStubImpl$Query$Home$list(this._res);

  TRes _res;

  call({
    List<Query$Home$list$lists?>? lists,
    String? $__typename,
  }) =>
      _res;
  lists(_fn) => _res;
}

class Query$Home$list$lists {
  Query$Home$list$lists({
    this.name,
    this.isCustomList,
    this.isSplitCompletedList,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Query$Home$list$lists.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isCustomList = json['isCustomList'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$Home$list$lists(
      name: (l$name as String?),
      isCustomList: (l$isCustomList as bool?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final bool? isSplitCompletedList;

  final Enum$MediaListStatus? status;

  final List<Fragment$MediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isCustomList = isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isCustomList,
      l$isSplitCompletedList,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Home$list$lists) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Query$Home$list$lists on Query$Home$list$lists {
  CopyWith$Query$Home$list$lists<Query$Home$list$lists> get copyWith =>
      CopyWith$Query$Home$list$lists(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Home$list$lists<TRes> {
  factory CopyWith$Query$Home$list$lists(
    Query$Home$list$lists instance,
    TRes Function(Query$Home$list$lists) then,
  ) = _CopyWithImpl$Query$Home$list$lists;

  factory CopyWith$Query$Home$list$lists.stub(TRes res) =
      _CopyWithStubImpl$Query$Home$list$lists;

  TRes call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$Home$list$lists<TRes>
    implements CopyWith$Query$Home$list$lists<TRes> {
  _CopyWithImpl$Query$Home$list$lists(
    this._instance,
    this._then,
  );

  final Query$Home$list$lists _instance;

  final TRes Function(Query$Home$list$lists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isCustomList = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Home$list$lists(
        name: name == _undefined ? _instance.name : (name as String?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes entries(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Home$list$lists<TRes>
    implements CopyWith$Query$Home$list$lists<TRes> {
  _CopyWithStubImpl$Query$Home$list$lists(this._res);

  TRes _res;

  call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;
  entries(_fn) => _res;
}

class Variables$Query$Discovery {
  factory Variables$Query$Discovery({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    Enum$MediaSeason? season,
    int? year,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      Variables$Query$Discovery._({
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
        if (type != null) r'type': type,
        if (season != null) r'season': season,
        if (year != null) r'year': year,
        if (nextSeason != null) r'nextSeason': nextSeason,
        if (nextYear != null) r'nextYear': nextYear,
      });

  Variables$Query$Discovery._(this._$data);

  factory Variables$Query$Discovery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('year')) {
      final l$year = data['year'];
      result$data['year'] = (l$year as int?);
    }
    if (data.containsKey('nextSeason')) {
      final l$nextSeason = data['nextSeason'];
      result$data['nextSeason'] = l$nextSeason == null
          ? null
          : fromJson$Enum$MediaSeason((l$nextSeason as String));
    }
    if (data.containsKey('nextYear')) {
      final l$nextYear = data['nextYear'];
      result$data['nextYear'] = (l$nextYear as int?);
    }
    return Variables$Query$Discovery._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);
  int? get year => (_$data['year'] as int?);
  Enum$MediaSeason? get nextSeason =>
      (_$data['nextSeason'] as Enum$MediaSeason?);
  int? get nextYear => (_$data['nextYear'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('year')) {
      final l$year = year;
      result$data['year'] = l$year;
    }
    if (_$data.containsKey('nextSeason')) {
      final l$nextSeason = nextSeason;
      result$data['nextSeason'] =
          l$nextSeason == null ? null : toJson$Enum$MediaSeason(l$nextSeason);
    }
    if (_$data.containsKey('nextYear')) {
      final l$nextYear = nextYear;
      result$data['nextYear'] = l$nextYear;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Discovery<Variables$Query$Discovery> get copyWith =>
      CopyWith$Variables$Query$Discovery(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Discovery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (_$data.containsKey('perPage') != other._$data.containsKey('perPage')) {
      return false;
    }
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (_$data.containsKey('year') != other._$data.containsKey('year')) {
      return false;
    }
    if (l$year != lOther$year) {
      return false;
    }
    final l$nextSeason = nextSeason;
    final lOther$nextSeason = other.nextSeason;
    if (_$data.containsKey('nextSeason') !=
        other._$data.containsKey('nextSeason')) {
      return false;
    }
    if (l$nextSeason != lOther$nextSeason) {
      return false;
    }
    final l$nextYear = nextYear;
    final lOther$nextYear = other.nextYear;
    if (_$data.containsKey('nextYear') !=
        other._$data.containsKey('nextYear')) {
      return false;
    }
    if (l$nextYear != lOther$nextYear) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$perPage = perPage;
    final l$type = type;
    final l$season = season;
    final l$year = year;
    final l$nextSeason = nextSeason;
    final l$nextYear = nextYear;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('year') ? l$year : const {},
      _$data.containsKey('nextSeason') ? l$nextSeason : const {},
      _$data.containsKey('nextYear') ? l$nextYear : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Discovery<TRes> {
  factory CopyWith$Variables$Query$Discovery(
    Variables$Query$Discovery instance,
    TRes Function(Variables$Query$Discovery) then,
  ) = _CopyWithImpl$Variables$Query$Discovery;

  factory CopyWith$Variables$Query$Discovery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Discovery;

  TRes call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    Enum$MediaSeason? season,
    int? year,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  });
}

class _CopyWithImpl$Variables$Query$Discovery<TRes>
    implements CopyWith$Variables$Query$Discovery<TRes> {
  _CopyWithImpl$Variables$Query$Discovery(
    this._instance,
    this._then,
  );

  final Variables$Query$Discovery _instance;

  final TRes Function(Variables$Query$Discovery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? perPage = _undefined,
    Object? type = _undefined,
    Object? season = _undefined,
    Object? year = _undefined,
    Object? nextSeason = _undefined,
    Object? nextYear = _undefined,
  }) =>
      _then(Variables$Query$Discovery._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (year != _undefined) 'year': (year as int?),
        if (nextSeason != _undefined)
          'nextSeason': (nextSeason as Enum$MediaSeason?),
        if (nextYear != _undefined) 'nextYear': (nextYear as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Discovery<TRes>
    implements CopyWith$Variables$Query$Discovery<TRes> {
  _CopyWithStubImpl$Variables$Query$Discovery(this._res);

  TRes _res;

  call({
    int? page,
    int? perPage,
    Enum$MediaType? type,
    Enum$MediaSeason? season,
    int? year,
    Enum$MediaSeason? nextSeason,
    int? nextYear,
  }) =>
      _res;
}

class Query$Discovery {
  Query$Discovery({
    this.popular,
    this.trending,
    this.thisSeason,
    this.seasonNext,
    this.$__typename = 'Query',
  });

  factory Query$Discovery.fromJson(Map<String, dynamic> json) {
    final l$popular = json['popular'];
    final l$trending = json['trending'];
    final l$thisSeason = json['thisSeason'];
    final l$seasonNext = json['seasonNext'];
    final l$$__typename = json['__typename'];
    return Query$Discovery(
      popular: l$popular == null
          ? null
          : Query$Discovery$popular.fromJson(
              (l$popular as Map<String, dynamic>)),
      trending: l$trending == null
          ? null
          : Query$Discovery$trending.fromJson(
              (l$trending as Map<String, dynamic>)),
      thisSeason: l$thisSeason == null
          ? null
          : Query$Discovery$thisSeason.fromJson(
              (l$thisSeason as Map<String, dynamic>)),
      seasonNext: l$seasonNext == null
          ? null
          : Query$Discovery$seasonNext.fromJson(
              (l$seasonNext as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Discovery$popular? popular;

  final Query$Discovery$trending? trending;

  final Query$Discovery$thisSeason? thisSeason;

  final Query$Discovery$seasonNext? seasonNext;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$popular = popular;
    _resultData['popular'] = l$popular?.toJson();
    final l$trending = trending;
    _resultData['trending'] = l$trending?.toJson();
    final l$thisSeason = thisSeason;
    _resultData['thisSeason'] = l$thisSeason?.toJson();
    final l$seasonNext = seasonNext;
    _resultData['seasonNext'] = l$seasonNext?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$popular = popular;
    final l$trending = trending;
    final l$thisSeason = thisSeason;
    final l$seasonNext = seasonNext;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$popular,
      l$trending,
      l$thisSeason,
      l$seasonNext,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$popular = popular;
    final lOther$popular = other.popular;
    if (l$popular != lOther$popular) {
      return false;
    }
    final l$trending = trending;
    final lOther$trending = other.trending;
    if (l$trending != lOther$trending) {
      return false;
    }
    final l$thisSeason = thisSeason;
    final lOther$thisSeason = other.thisSeason;
    if (l$thisSeason != lOther$thisSeason) {
      return false;
    }
    final l$seasonNext = seasonNext;
    final lOther$seasonNext = other.seasonNext;
    if (l$seasonNext != lOther$seasonNext) {
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

extension UtilityExtension$Query$Discovery on Query$Discovery {
  CopyWith$Query$Discovery<Query$Discovery> get copyWith =>
      CopyWith$Query$Discovery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery<TRes> {
  factory CopyWith$Query$Discovery(
    Query$Discovery instance,
    TRes Function(Query$Discovery) then,
  ) = _CopyWithImpl$Query$Discovery;

  factory CopyWith$Query$Discovery.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery;

  TRes call({
    Query$Discovery$popular? popular,
    Query$Discovery$trending? trending,
    Query$Discovery$thisSeason? thisSeason,
    Query$Discovery$seasonNext? seasonNext,
    String? $__typename,
  });
  CopyWith$Query$Discovery$popular<TRes> get popular;
  CopyWith$Query$Discovery$trending<TRes> get trending;
  CopyWith$Query$Discovery$thisSeason<TRes> get thisSeason;
  CopyWith$Query$Discovery$seasonNext<TRes> get seasonNext;
}

class _CopyWithImpl$Query$Discovery<TRes>
    implements CopyWith$Query$Discovery<TRes> {
  _CopyWithImpl$Query$Discovery(
    this._instance,
    this._then,
  );

  final Query$Discovery _instance;

  final TRes Function(Query$Discovery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? popular = _undefined,
    Object? trending = _undefined,
    Object? thisSeason = _undefined,
    Object? seasonNext = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery(
        popular: popular == _undefined
            ? _instance.popular
            : (popular as Query$Discovery$popular?),
        trending: trending == _undefined
            ? _instance.trending
            : (trending as Query$Discovery$trending?),
        thisSeason: thisSeason == _undefined
            ? _instance.thisSeason
            : (thisSeason as Query$Discovery$thisSeason?),
        seasonNext: seasonNext == _undefined
            ? _instance.seasonNext
            : (seasonNext as Query$Discovery$seasonNext?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Discovery$popular<TRes> get popular {
    final local$popular = _instance.popular;
    return local$popular == null
        ? CopyWith$Query$Discovery$popular.stub(_then(_instance))
        : CopyWith$Query$Discovery$popular(
            local$popular, (e) => call(popular: e));
  }

  CopyWith$Query$Discovery$trending<TRes> get trending {
    final local$trending = _instance.trending;
    return local$trending == null
        ? CopyWith$Query$Discovery$trending.stub(_then(_instance))
        : CopyWith$Query$Discovery$trending(
            local$trending, (e) => call(trending: e));
  }

  CopyWith$Query$Discovery$thisSeason<TRes> get thisSeason {
    final local$thisSeason = _instance.thisSeason;
    return local$thisSeason == null
        ? CopyWith$Query$Discovery$thisSeason.stub(_then(_instance))
        : CopyWith$Query$Discovery$thisSeason(
            local$thisSeason, (e) => call(thisSeason: e));
  }

  CopyWith$Query$Discovery$seasonNext<TRes> get seasonNext {
    final local$seasonNext = _instance.seasonNext;
    return local$seasonNext == null
        ? CopyWith$Query$Discovery$seasonNext.stub(_then(_instance))
        : CopyWith$Query$Discovery$seasonNext(
            local$seasonNext, (e) => call(seasonNext: e));
  }
}

class _CopyWithStubImpl$Query$Discovery<TRes>
    implements CopyWith$Query$Discovery<TRes> {
  _CopyWithStubImpl$Query$Discovery(this._res);

  TRes _res;

  call({
    Query$Discovery$popular? popular,
    Query$Discovery$trending? trending,
    Query$Discovery$thisSeason? thisSeason,
    Query$Discovery$seasonNext? seasonNext,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Discovery$popular<TRes> get popular =>
      CopyWith$Query$Discovery$popular.stub(_res);
  CopyWith$Query$Discovery$trending<TRes> get trending =>
      CopyWith$Query$Discovery$trending.stub(_res);
  CopyWith$Query$Discovery$thisSeason<TRes> get thisSeason =>
      CopyWith$Query$Discovery$thisSeason.stub(_res);
  CopyWith$Query$Discovery$seasonNext<TRes> get seasonNext =>
      CopyWith$Query$Discovery$seasonNext.stub(_res);
}

const documentNodeQueryDiscovery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Discovery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'perPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'year')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextSeason')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nextYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'popular'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'trending'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'thisSeason'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'year')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'seasonYear'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'seasonNext'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: VariableNode(name: NameNode(value: 'perPage')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'nextSeason')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'nextYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'BasicMedia'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'season'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
  ),
  fragmentDefinitionBasicMedia,
]);
Query$Discovery _parserFn$Query$Discovery(Map<String, dynamic> data) =>
    Query$Discovery.fromJson(data);

class Options$Query$Discovery extends graphql.QueryOptions<Query$Discovery> {
  Options$Query$Discovery({
    String? operationName,
    Variables$Query$Discovery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryDiscovery,
          parserFn: _parserFn$Query$Discovery,
        );
}

class WatchOptions$Query$Discovery
    extends graphql.WatchQueryOptions<Query$Discovery> {
  WatchOptions$Query$Discovery({
    String? operationName,
    Variables$Query$Discovery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryDiscovery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Discovery,
        );
}

class FetchMoreOptions$Query$Discovery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Discovery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Discovery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryDiscovery,
        );
}

extension ClientExtension$Query$Discovery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Discovery>> query$Discovery(
          [Options$Query$Discovery? options]) async =>
      await this.query(options ?? Options$Query$Discovery());
  graphql.ObservableQuery<Query$Discovery> watchQuery$Discovery(
          [WatchOptions$Query$Discovery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Discovery());
  void writeQuery$Discovery({
    required Query$Discovery data,
    Variables$Query$Discovery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryDiscovery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Discovery? readQuery$Discovery({
    Variables$Query$Discovery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDiscovery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Discovery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Discovery> useQuery$Discovery(
        [Options$Query$Discovery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Discovery());
graphql.ObservableQuery<Query$Discovery> useWatchQuery$Discovery(
        [WatchOptions$Query$Discovery? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Discovery());

class Query$Discovery$Widget extends graphql_flutter.Query<Query$Discovery> {
  Query$Discovery$Widget({
    widgets.Key? key,
    Options$Query$Discovery? options,
    required graphql_flutter.QueryBuilder<Query$Discovery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Discovery(),
          builder: builder,
        );
}

class Query$Discovery$popular {
  Query$Discovery$popular({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$popular.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$popular(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$BasicMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BasicMedia?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$popular) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Discovery$popular on Query$Discovery$popular {
  CopyWith$Query$Discovery$popular<Query$Discovery$popular> get copyWith =>
      CopyWith$Query$Discovery$popular(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery$popular<TRes> {
  factory CopyWith$Query$Discovery$popular(
    Query$Discovery$popular instance,
    TRes Function(Query$Discovery$popular) then,
  ) = _CopyWithImpl$Query$Discovery$popular;

  factory CopyWith$Query$Discovery$popular.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$popular;

  TRes call({
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$BasicMedia?>? Function(
              Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$popular<TRes>
    implements CopyWith$Query$Discovery$popular<TRes> {
  _CopyWithImpl$Query$Discovery$popular(
    this._instance,
    this._then,
  );

  final Query$Discovery$popular _instance;

  final TRes Function(Query$Discovery$popular) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$popular(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$BasicMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes media(
          Iterable<Fragment$BasicMedia?>? Function(
                  Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$BasicMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Discovery$popular<TRes>
    implements CopyWith$Query$Discovery$popular<TRes> {
  _CopyWithStubImpl$Query$Discovery$popular(this._res);

  TRes _res;

  call({
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$trending {
  Query$Discovery$trending({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$trending.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$trending(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$BasicMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BasicMedia?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$trending) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Discovery$trending
    on Query$Discovery$trending {
  CopyWith$Query$Discovery$trending<Query$Discovery$trending> get copyWith =>
      CopyWith$Query$Discovery$trending(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Discovery$trending<TRes> {
  factory CopyWith$Query$Discovery$trending(
    Query$Discovery$trending instance,
    TRes Function(Query$Discovery$trending) then,
  ) = _CopyWithImpl$Query$Discovery$trending;

  factory CopyWith$Query$Discovery$trending.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$trending;

  TRes call({
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Fragment$BasicMedia?>? Function(
              Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$trending<TRes>
    implements CopyWith$Query$Discovery$trending<TRes> {
  _CopyWithImpl$Query$Discovery$trending(
    this._instance,
    this._then,
  );

  final Query$Discovery$trending _instance;

  final TRes Function(Query$Discovery$trending) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$trending(
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$BasicMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes media(
          Iterable<Fragment$BasicMedia?>? Function(
                  Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$BasicMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Discovery$trending<TRes>
    implements CopyWith$Query$Discovery$trending<TRes> {
  _CopyWithStubImpl$Query$Discovery$trending(this._res);

  TRes _res;

  call({
    List<Fragment$BasicMedia?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$thisSeason {
  Query$Discovery$thisSeason({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$thisSeason.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$thisSeason(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Discovery$thisSeason$media.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Discovery$thisSeason$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$thisSeason) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Discovery$thisSeason
    on Query$Discovery$thisSeason {
  CopyWith$Query$Discovery$thisSeason<Query$Discovery$thisSeason>
      get copyWith => CopyWith$Query$Discovery$thisSeason(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$thisSeason<TRes> {
  factory CopyWith$Query$Discovery$thisSeason(
    Query$Discovery$thisSeason instance,
    TRes Function(Query$Discovery$thisSeason) then,
  ) = _CopyWithImpl$Query$Discovery$thisSeason;

  factory CopyWith$Query$Discovery$thisSeason.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$thisSeason;

  TRes call({
    List<Query$Discovery$thisSeason$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Query$Discovery$thisSeason$media?>? Function(
              Iterable<
                  CopyWith$Query$Discovery$thisSeason$media<
                      Query$Discovery$thisSeason$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$thisSeason<TRes>
    implements CopyWith$Query$Discovery$thisSeason<TRes> {
  _CopyWithImpl$Query$Discovery$thisSeason(
    this._instance,
    this._then,
  );

  final Query$Discovery$thisSeason _instance;

  final TRes Function(Query$Discovery$thisSeason) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$thisSeason(
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$Discovery$thisSeason$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes media(
          Iterable<Query$Discovery$thisSeason$media?>? Function(
                  Iterable<
                      CopyWith$Query$Discovery$thisSeason$media<
                          Query$Discovery$thisSeason$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$Discovery$thisSeason$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Discovery$thisSeason<TRes>
    implements CopyWith$Query$Discovery$thisSeason<TRes> {
  _CopyWithStubImpl$Query$Discovery$thisSeason(this._res);

  TRes _res;

  call({
    List<Query$Discovery$thisSeason$media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$thisSeason$media implements Fragment$BasicMedia {
  Query$Discovery$thisSeason$media({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.seasonYear,
  });

  factory Query$Discovery$thisSeason$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$seasonYear = json['seasonYear'];
    return Query$Discovery$thisSeason$media(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Query$Discovery$thisSeason$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Discovery$thisSeason$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      seasonYear: (l$seasonYear as int?),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Query$Discovery$thisSeason$media$title? title;

  final Query$Discovery$thisSeason$media$coverImage? coverImage;

  final String $__typename;

  final int? seasonYear;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$seasonYear = seasonYear;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
      l$seasonYear,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$thisSeason$media) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Discovery$thisSeason$media
    on Query$Discovery$thisSeason$media {
  CopyWith$Query$Discovery$thisSeason$media<Query$Discovery$thisSeason$media>
      get copyWith => CopyWith$Query$Discovery$thisSeason$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$thisSeason$media<TRes> {
  factory CopyWith$Query$Discovery$thisSeason$media(
    Query$Discovery$thisSeason$media instance,
    TRes Function(Query$Discovery$thisSeason$media) then,
  ) = _CopyWithImpl$Query$Discovery$thisSeason$media;

  factory CopyWith$Query$Discovery$thisSeason$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$thisSeason$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Discovery$thisSeason$media$title? title,
    Query$Discovery$thisSeason$media$coverImage? coverImage,
    String? $__typename,
    int? seasonYear,
  });
  CopyWith$Query$Discovery$thisSeason$media$title<TRes> get title;
  CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$Discovery$thisSeason$media<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media<TRes> {
  _CopyWithImpl$Query$Discovery$thisSeason$media(
    this._instance,
    this._then,
  );

  final Query$Discovery$thisSeason$media _instance;

  final TRes Function(Query$Discovery$thisSeason$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? seasonYear = _undefined,
  }) =>
      _then(Query$Discovery$thisSeason$media(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Discovery$thisSeason$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Discovery$thisSeason$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
      ));
  CopyWith$Query$Discovery$thisSeason$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Discovery$thisSeason$media$title.stub(_then(_instance))
        : CopyWith$Query$Discovery$thisSeason$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Discovery$thisSeason$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$Discovery$thisSeason$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$Discovery$thisSeason$media<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media<TRes> {
  _CopyWithStubImpl$Query$Discovery$thisSeason$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Discovery$thisSeason$media$title? title,
    Query$Discovery$thisSeason$media$coverImage? coverImage,
    String? $__typename,
    int? seasonYear,
  }) =>
      _res;
  CopyWith$Query$Discovery$thisSeason$media$title<TRes> get title =>
      CopyWith$Query$Discovery$thisSeason$media$title.stub(_res);
  CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> get coverImage =>
      CopyWith$Query$Discovery$thisSeason$media$coverImage.stub(_res);
}

class Query$Discovery$thisSeason$media$title
    implements Fragment$BasicMedia$title {
  Query$Discovery$thisSeason$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Discovery$thisSeason$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$thisSeason$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$Discovery$thisSeason$media$title) ||
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

extension UtilityExtension$Query$Discovery$thisSeason$media$title
    on Query$Discovery$thisSeason$media$title {
  CopyWith$Query$Discovery$thisSeason$media$title<
          Query$Discovery$thisSeason$media$title>
      get copyWith => CopyWith$Query$Discovery$thisSeason$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$thisSeason$media$title<TRes> {
  factory CopyWith$Query$Discovery$thisSeason$media$title(
    Query$Discovery$thisSeason$media$title instance,
    TRes Function(Query$Discovery$thisSeason$media$title) then,
  ) = _CopyWithImpl$Query$Discovery$thisSeason$media$title;

  factory CopyWith$Query$Discovery$thisSeason$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$thisSeason$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Discovery$thisSeason$media$title<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media$title<TRes> {
  _CopyWithImpl$Query$Discovery$thisSeason$media$title(
    this._instance,
    this._then,
  );

  final Query$Discovery$thisSeason$media$title _instance;

  final TRes Function(Query$Discovery$thisSeason$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$thisSeason$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Discovery$thisSeason$media$title<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media$title<TRes> {
  _CopyWithStubImpl$Query$Discovery$thisSeason$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Discovery$thisSeason$media$coverImage
    implements Fragment$BasicMedia$coverImage {
  Query$Discovery$thisSeason$media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Discovery$thisSeason$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$thisSeason$media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$thisSeason$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Discovery$thisSeason$media$coverImage
    on Query$Discovery$thisSeason$media$coverImage {
  CopyWith$Query$Discovery$thisSeason$media$coverImage<
          Query$Discovery$thisSeason$media$coverImage>
      get copyWith => CopyWith$Query$Discovery$thisSeason$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> {
  factory CopyWith$Query$Discovery$thisSeason$media$coverImage(
    Query$Discovery$thisSeason$media$coverImage instance,
    TRes Function(Query$Discovery$thisSeason$media$coverImage) then,
  ) = _CopyWithImpl$Query$Discovery$thisSeason$media$coverImage;

  factory CopyWith$Query$Discovery$thisSeason$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$thisSeason$media$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Discovery$thisSeason$media$coverImage<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> {
  _CopyWithImpl$Query$Discovery$thisSeason$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$Discovery$thisSeason$media$coverImage _instance;

  final TRes Function(Query$Discovery$thisSeason$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$thisSeason$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Discovery$thisSeason$media$coverImage<TRes>
    implements CopyWith$Query$Discovery$thisSeason$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$Discovery$thisSeason$media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Discovery$seasonNext {
  Query$Discovery$seasonNext({
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Discovery$seasonNext.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$seasonNext(
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Discovery$seasonNext$media.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Discovery$seasonNext$media?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$seasonNext) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Discovery$seasonNext
    on Query$Discovery$seasonNext {
  CopyWith$Query$Discovery$seasonNext<Query$Discovery$seasonNext>
      get copyWith => CopyWith$Query$Discovery$seasonNext(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$seasonNext<TRes> {
  factory CopyWith$Query$Discovery$seasonNext(
    Query$Discovery$seasonNext instance,
    TRes Function(Query$Discovery$seasonNext) then,
  ) = _CopyWithImpl$Query$Discovery$seasonNext;

  factory CopyWith$Query$Discovery$seasonNext.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$seasonNext;

  TRes call({
    List<Query$Discovery$seasonNext$media?>? media,
    String? $__typename,
  });
  TRes media(
      Iterable<Query$Discovery$seasonNext$media?>? Function(
              Iterable<
                  CopyWith$Query$Discovery$seasonNext$media<
                      Query$Discovery$seasonNext$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$Discovery$seasonNext<TRes>
    implements CopyWith$Query$Discovery$seasonNext<TRes> {
  _CopyWithImpl$Query$Discovery$seasonNext(
    this._instance,
    this._then,
  );

  final Query$Discovery$seasonNext _instance;

  final TRes Function(Query$Discovery$seasonNext) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$seasonNext(
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$Discovery$seasonNext$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes media(
          Iterable<Query$Discovery$seasonNext$media?>? Function(
                  Iterable<
                      CopyWith$Query$Discovery$seasonNext$media<
                          Query$Discovery$seasonNext$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$Discovery$seasonNext$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Discovery$seasonNext<TRes>
    implements CopyWith$Query$Discovery$seasonNext<TRes> {
  _CopyWithStubImpl$Query$Discovery$seasonNext(this._res);

  TRes _res;

  call({
    List<Query$Discovery$seasonNext$media?>? media,
    String? $__typename,
  }) =>
      _res;
  media(_fn) => _res;
}

class Query$Discovery$seasonNext$media implements Fragment$BasicMedia {
  Query$Discovery$seasonNext$media({
    this.id,
    this.type,
    this.description,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.season,
  });

  factory Query$Discovery$seasonNext$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$season = json['season'];
    return Query$Discovery$seasonNext$media(
      id: (l$id as int?),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      title: l$title == null
          ? null
          : Query$Discovery$seasonNext$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Discovery$seasonNext$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
    );
  }

  final int? id;

  final Enum$MediaType? type;

  final String? description;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final Query$Discovery$seasonNext$media$title? title;

  final Query$Discovery$seasonNext$media$coverImage? coverImage;

  final String $__typename;

  final Enum$MediaSeason? season;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$season = season;
    return Object.hashAll([
      l$id,
      l$type,
      l$description,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$title,
      l$coverImage,
      l$$__typename,
      l$season,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$seasonNext$media) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
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
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Discovery$seasonNext$media
    on Query$Discovery$seasonNext$media {
  CopyWith$Query$Discovery$seasonNext$media<Query$Discovery$seasonNext$media>
      get copyWith => CopyWith$Query$Discovery$seasonNext$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$seasonNext$media<TRes> {
  factory CopyWith$Query$Discovery$seasonNext$media(
    Query$Discovery$seasonNext$media instance,
    TRes Function(Query$Discovery$seasonNext$media) then,
  ) = _CopyWithImpl$Query$Discovery$seasonNext$media;

  factory CopyWith$Query$Discovery$seasonNext$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$seasonNext$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Discovery$seasonNext$media$title? title,
    Query$Discovery$seasonNext$media$coverImage? coverImage,
    String? $__typename,
    Enum$MediaSeason? season,
  });
  CopyWith$Query$Discovery$seasonNext$media$title<TRes> get title;
  CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Query$Discovery$seasonNext$media<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media<TRes> {
  _CopyWithImpl$Query$Discovery$seasonNext$media(
    this._instance,
    this._then,
  );

  final Query$Discovery$seasonNext$media _instance;

  final TRes Function(Query$Discovery$seasonNext$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? season = _undefined,
  }) =>
      _then(Query$Discovery$seasonNext$media(
        id: id == _undefined ? _instance.id : (id as int?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Discovery$seasonNext$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Discovery$seasonNext$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
      ));
  CopyWith$Query$Discovery$seasonNext$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Discovery$seasonNext$media$title.stub(_then(_instance))
        : CopyWith$Query$Discovery$seasonNext$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Discovery$seasonNext$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$Discovery$seasonNext$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$Discovery$seasonNext$media<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media<TRes> {
  _CopyWithStubImpl$Query$Discovery$seasonNext$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    String? description,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    Query$Discovery$seasonNext$media$title? title,
    Query$Discovery$seasonNext$media$coverImage? coverImage,
    String? $__typename,
    Enum$MediaSeason? season,
  }) =>
      _res;
  CopyWith$Query$Discovery$seasonNext$media$title<TRes> get title =>
      CopyWith$Query$Discovery$seasonNext$media$title.stub(_res);
  CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> get coverImage =>
      CopyWith$Query$Discovery$seasonNext$media$coverImage.stub(_res);
}

class Query$Discovery$seasonNext$media$title
    implements Fragment$BasicMedia$title {
  Query$Discovery$seasonNext$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Discovery$seasonNext$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$seasonNext$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$Discovery$seasonNext$media$title) ||
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

extension UtilityExtension$Query$Discovery$seasonNext$media$title
    on Query$Discovery$seasonNext$media$title {
  CopyWith$Query$Discovery$seasonNext$media$title<
          Query$Discovery$seasonNext$media$title>
      get copyWith => CopyWith$Query$Discovery$seasonNext$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$seasonNext$media$title<TRes> {
  factory CopyWith$Query$Discovery$seasonNext$media$title(
    Query$Discovery$seasonNext$media$title instance,
    TRes Function(Query$Discovery$seasonNext$media$title) then,
  ) = _CopyWithImpl$Query$Discovery$seasonNext$media$title;

  factory CopyWith$Query$Discovery$seasonNext$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$seasonNext$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Discovery$seasonNext$media$title<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media$title<TRes> {
  _CopyWithImpl$Query$Discovery$seasonNext$media$title(
    this._instance,
    this._then,
  );

  final Query$Discovery$seasonNext$media$title _instance;

  final TRes Function(Query$Discovery$seasonNext$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$seasonNext$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Discovery$seasonNext$media$title<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media$title<TRes> {
  _CopyWithStubImpl$Query$Discovery$seasonNext$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Discovery$seasonNext$media$coverImage
    implements Fragment$BasicMedia$coverImage {
  Query$Discovery$seasonNext$media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Discovery$seasonNext$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Discovery$seasonNext$media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Discovery$seasonNext$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$Discovery$seasonNext$media$coverImage
    on Query$Discovery$seasonNext$media$coverImage {
  CopyWith$Query$Discovery$seasonNext$media$coverImage<
          Query$Discovery$seasonNext$media$coverImage>
      get copyWith => CopyWith$Query$Discovery$seasonNext$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> {
  factory CopyWith$Query$Discovery$seasonNext$media$coverImage(
    Query$Discovery$seasonNext$media$coverImage instance,
    TRes Function(Query$Discovery$seasonNext$media$coverImage) then,
  ) = _CopyWithImpl$Query$Discovery$seasonNext$media$coverImage;

  factory CopyWith$Query$Discovery$seasonNext$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$Discovery$seasonNext$media$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Discovery$seasonNext$media$coverImage<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> {
  _CopyWithImpl$Query$Discovery$seasonNext$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$Discovery$seasonNext$media$coverImage _instance;

  final TRes Function(Query$Discovery$seasonNext$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Discovery$seasonNext$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Discovery$seasonNext$media$coverImage<TRes>
    implements CopyWith$Query$Discovery$seasonNext$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$Discovery$seasonNext$media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
