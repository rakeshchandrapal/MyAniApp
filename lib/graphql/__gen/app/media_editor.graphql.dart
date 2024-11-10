import '../graphql/fragments/fuzzy_date.graphql.dart';
import '../graphql/fragments/media.graphql.dart';
import '../graphql/fragments/media_entry.graphql.dart';
import '../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaEntry {
  factory Variables$Query$MediaEntry({
    int? mediaId,
    int? userId,
  }) =>
      Variables$Query$MediaEntry._({
        if (mediaId != null) r'mediaId': mediaId,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$MediaEntry._(this._$data);

  factory Variables$Query$MediaEntry.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$MediaEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaEntry<Variables$Query$MediaEntry>
      get copyWith => CopyWith$Variables$Query$MediaEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaEntry) ||
        runtimeType != other.runtimeType) {
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaEntry<TRes> {
  factory CopyWith$Variables$Query$MediaEntry(
    Variables$Query$MediaEntry instance,
    TRes Function(Variables$Query$MediaEntry) then,
  ) = _CopyWithImpl$Variables$Query$MediaEntry;

  factory CopyWith$Variables$Query$MediaEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaEntry;

  TRes call({
    int? mediaId,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$MediaEntry<TRes>
    implements CopyWith$Variables$Query$MediaEntry<TRes> {
  _CopyWithImpl$Variables$Query$MediaEntry(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaEntry _instance;

  final TRes Function(Variables$Query$MediaEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$MediaEntry._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaEntry<TRes>
    implements CopyWith$Variables$Query$MediaEntry<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaEntry(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? userId,
  }) =>
      _res;
}

class Query$MediaEntry {
  Query$MediaEntry({
    this.MediaList,
    this.$__typename = 'Query',
  });

  factory Query$MediaEntry.fromJson(Map<String, dynamic> json) {
    final l$MediaList = json['MediaList'];
    final l$$__typename = json['__typename'];
    return Query$MediaEntry(
      MediaList: l$MediaList == null
          ? null
          : Query$MediaEntry$MediaList.fromJson(
              (l$MediaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaEntry$MediaList? MediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaList = MediaList;
    _resultData['MediaList'] = l$MediaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaList = MediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaEntry) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaList = MediaList;
    final lOther$MediaList = other.MediaList;
    if (l$MediaList != lOther$MediaList) {
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

extension UtilityExtension$Query$MediaEntry on Query$MediaEntry {
  CopyWith$Query$MediaEntry<Query$MediaEntry> get copyWith =>
      CopyWith$Query$MediaEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaEntry<TRes> {
  factory CopyWith$Query$MediaEntry(
    Query$MediaEntry instance,
    TRes Function(Query$MediaEntry) then,
  ) = _CopyWithImpl$Query$MediaEntry;

  factory CopyWith$Query$MediaEntry.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry;

  TRes call({
    Query$MediaEntry$MediaList? MediaList,
    String? $__typename,
  });
  CopyWith$Query$MediaEntry$MediaList<TRes> get MediaList;
}

class _CopyWithImpl$Query$MediaEntry<TRes>
    implements CopyWith$Query$MediaEntry<TRes> {
  _CopyWithImpl$Query$MediaEntry(
    this._instance,
    this._then,
  );

  final Query$MediaEntry _instance;

  final TRes Function(Query$MediaEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaEntry(
        MediaList: MediaList == _undefined
            ? _instance.MediaList
            : (MediaList as Query$MediaEntry$MediaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaEntry$MediaList<TRes> get MediaList {
    final local$MediaList = _instance.MediaList;
    return local$MediaList == null
        ? CopyWith$Query$MediaEntry$MediaList.stub(_then(_instance))
        : CopyWith$Query$MediaEntry$MediaList(
            local$MediaList, (e) => call(MediaList: e));
  }
}

class _CopyWithStubImpl$Query$MediaEntry<TRes>
    implements CopyWith$Query$MediaEntry<TRes> {
  _CopyWithStubImpl$Query$MediaEntry(this._res);

  TRes _res;

  call({
    Query$MediaEntry$MediaList? MediaList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaEntry$MediaList<TRes> get MediaList =>
      CopyWith$Query$MediaEntry$MediaList.stub(_res);
}

const documentNodeQueryMediaEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaEntry'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'MediaList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaListEntry'),
            directives: [],
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
                name: NameNode(value: 'mediaListOptions'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'scoreFormat'),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);

class Query$MediaEntry$MediaList implements Fragment$MediaListEntry {
  Query$MediaEntry$MediaList({
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
    this.user,
  });

  factory Query$MediaEntry$MediaList.fromJson(Map<String, dynamic> json) {
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
    final l$user = json['user'];
    return Query$MediaEntry$MediaList(
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
      customLists: (l$customLists as dynamic?),
      startedAt: l$startedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startedAt as Map<String, dynamic>)),
      completedAt: l$completedAt == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$completedAt as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$MediaEntry$MediaList$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      user: l$user == null
          ? null
          : Query$MediaEntry$MediaList$user.fromJson(
              (l$user as Map<String, dynamic>)),
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

  final dynamic? customLists;

  final Fragment$FuzzyDate? startedAt;

  final Fragment$FuzzyDate? completedAt;

  final Query$MediaEntry$MediaList$media? media;

  final String $__typename;

  final Query$MediaEntry$MediaList$user? user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
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
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists;
    final l$startedAt = startedAt;
    _resultData['startedAt'] = l$startedAt?.toJson();
    final l$completedAt = completedAt;
    _resultData['completedAt'] = l$completedAt?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    return _resultData;
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
    final l$user = user;
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
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaEntry$MediaList) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$MediaEntry$MediaList
    on Query$MediaEntry$MediaList {
  CopyWith$Query$MediaEntry$MediaList<Query$MediaEntry$MediaList>
      get copyWith => CopyWith$Query$MediaEntry$MediaList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList(
    Query$MediaEntry$MediaList instance,
    TRes Function(Query$MediaEntry$MediaList) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList;

  factory CopyWith$Query$MediaEntry$MediaList.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList;

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
    dynamic? customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Query$MediaEntry$MediaList$media? media,
    String? $__typename,
    Query$MediaEntry$MediaList$user? user,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get startedAt;
  CopyWith$Fragment$FuzzyDate<TRes> get completedAt;
  CopyWith$Query$MediaEntry$MediaList$media<TRes> get media;
  CopyWith$Query$MediaEntry$MediaList$user<TRes> get user;
}

class _CopyWithImpl$Query$MediaEntry$MediaList<TRes>
    implements CopyWith$Query$MediaEntry$MediaList<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList _instance;

  final TRes Function(Query$MediaEntry$MediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

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
    Object? user = _undefined,
  }) =>
      _then(Query$MediaEntry$MediaList(
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
            : (customLists as dynamic?),
        startedAt: startedAt == _undefined
            ? _instance.startedAt
            : (startedAt as Fragment$FuzzyDate?),
        completedAt: completedAt == _undefined
            ? _instance.completedAt
            : (completedAt as Fragment$FuzzyDate?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$MediaEntry$MediaList$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined
            ? _instance.user
            : (user as Query$MediaEntry$MediaList$user?),
      ));

  CopyWith$Fragment$FuzzyDate<TRes> get startedAt {
    final local$startedAt = _instance.startedAt;
    return local$startedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startedAt, (e) => call(startedAt: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get completedAt {
    final local$completedAt = _instance.completedAt;
    return local$completedAt == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$completedAt, (e) => call(completedAt: e));
  }

  CopyWith$Query$MediaEntry$MediaList$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$MediaEntry$MediaList$media.stub(_then(_instance))
        : CopyWith$Query$MediaEntry$MediaList$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Query$MediaEntry$MediaList$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$MediaEntry$MediaList$user.stub(_then(_instance))
        : CopyWith$Query$MediaEntry$MediaList$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList<TRes>
    implements CopyWith$Query$MediaEntry$MediaList<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList(this._res);

  TRes _res;

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
    dynamic? customLists,
    Fragment$FuzzyDate? startedAt,
    Fragment$FuzzyDate? completedAt,
    Query$MediaEntry$MediaList$media? media,
    String? $__typename,
    Query$MediaEntry$MediaList$user? user,
  }) =>
      _res;

  CopyWith$Fragment$FuzzyDate<TRes> get startedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get completedAt =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Query$MediaEntry$MediaList$media<TRes> get media =>
      CopyWith$Query$MediaEntry$MediaList$media.stub(_res);

  CopyWith$Query$MediaEntry$MediaList$user<TRes> get user =>
      CopyWith$Query$MediaEntry$MediaList$user.stub(_res);
}

class Query$MediaEntry$MediaList$media
    implements Fragment$MediaListEntry$media, Fragment$MediaFragment {
  Query$MediaEntry$MediaList$media({
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

  factory Query$MediaEntry$MediaList$media.fromJson(Map<String, dynamic> json) {
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
    return Query$MediaEntry$MediaList$media(
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
          : Query$MediaEntry$MediaList$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$MediaEntry$MediaList$media$coverImage.fromJson(
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

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Query$MediaEntry$MediaList$media$title? title;

  final Query$MediaEntry$MediaList$media$coverImage? coverImage;

  final String $__typename;

  final int? episodes;

  final int? chapters;

  final Enum$MediaStatus? status;

  final int? averageScore;

  final int? popularity;

  final Fragment$FuzzyDate? startDate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    return _resultData;
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
    if (!(other is Query$MediaEntry$MediaList$media) ||
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

extension UtilityExtension$Query$MediaEntry$MediaList$media
    on Query$MediaEntry$MediaList$media {
  CopyWith$Query$MediaEntry$MediaList$media<Query$MediaEntry$MediaList$media>
      get copyWith => CopyWith$Query$MediaEntry$MediaList$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList$media<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList$media(
    Query$MediaEntry$MediaList$media instance,
    TRes Function(Query$MediaEntry$MediaList$media) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList$media;

  factory CopyWith$Query$MediaEntry$MediaList$media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList$media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$MediaEntry$MediaList$media$title? title,
    Query$MediaEntry$MediaList$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  });
  CopyWith$Query$MediaEntry$MediaList$media$title<TRes> get title;
  CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> get coverImage;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
}

class _CopyWithImpl$Query$MediaEntry$MediaList$media<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList$media(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList$media _instance;

  final TRes Function(Query$MediaEntry$MediaList$media) _then;

  static const _undefined = <dynamic, dynamic>{};

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
      _then(Query$MediaEntry$MediaList$media(
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
            : (title as Query$MediaEntry$MediaList$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$MediaEntry$MediaList$media$coverImage?),
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

  CopyWith$Query$MediaEntry$MediaList$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$MediaEntry$MediaList$media$title.stub(_then(_instance))
        : CopyWith$Query$MediaEntry$MediaList$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$MediaEntry$MediaList$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$MediaEntry$MediaList$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList$media<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList$media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$MediaEntry$MediaList$media$title? title,
    Query$MediaEntry$MediaList$media$coverImage? coverImage,
    String? $__typename,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    int? averageScore,
    int? popularity,
    Fragment$FuzzyDate? startDate,
  }) =>
      _res;

  CopyWith$Query$MediaEntry$MediaList$media$title<TRes> get title =>
      CopyWith$Query$MediaEntry$MediaList$media$title.stub(_res);

  CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> get coverImage =>
      CopyWith$Query$MediaEntry$MediaList$media$coverImage.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
}

class Query$MediaEntry$MediaList$media$title
    implements
        Fragment$MediaListEntry$media$title,
        Fragment$MediaFragment$title {
  Query$MediaEntry$MediaList$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$MediaEntry$MediaList$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$MediaEntry$MediaList$media$title(
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
    if (!(other is Query$MediaEntry$MediaList$media$title) ||
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

extension UtilityExtension$Query$MediaEntry$MediaList$media$title
    on Query$MediaEntry$MediaList$media$title {
  CopyWith$Query$MediaEntry$MediaList$media$title<
          Query$MediaEntry$MediaList$media$title>
      get copyWith => CopyWith$Query$MediaEntry$MediaList$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList$media$title<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList$media$title(
    Query$MediaEntry$MediaList$media$title instance,
    TRes Function(Query$MediaEntry$MediaList$media$title) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList$media$title;

  factory CopyWith$Query$MediaEntry$MediaList$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaEntry$MediaList$media$title<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media$title<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList$media$title(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList$media$title _instance;

  final TRes Function(Query$MediaEntry$MediaList$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaEntry$MediaList$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList$media$title<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media$title<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaEntry$MediaList$media$coverImage
    implements
        Fragment$MediaListEntry$media$coverImage,
        Fragment$MediaFragment$coverImage {
  Query$MediaEntry$MediaList$media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$MediaEntry$MediaList$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$MediaEntry$MediaList$media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
    if (!(other is Query$MediaEntry$MediaList$media$coverImage) ||
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

extension UtilityExtension$Query$MediaEntry$MediaList$media$coverImage
    on Query$MediaEntry$MediaList$media$coverImage {
  CopyWith$Query$MediaEntry$MediaList$media$coverImage<
          Query$MediaEntry$MediaList$media$coverImage>
      get copyWith => CopyWith$Query$MediaEntry$MediaList$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList$media$coverImage(
    Query$MediaEntry$MediaList$media$coverImage instance,
    TRes Function(Query$MediaEntry$MediaList$media$coverImage) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList$media$coverImage;

  factory CopyWith$Query$MediaEntry$MediaList$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList$media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaEntry$MediaList$media$coverImage<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList$media$coverImage _instance;

  final TRes Function(Query$MediaEntry$MediaList$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaEntry$MediaList$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList$media$coverImage<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList$media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaEntry$MediaList$user {
  Query$MediaEntry$MediaList$user({
    required this.id,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory Query$MediaEntry$MediaList$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return Query$MediaEntry$MediaList$user(
      id: (l$id as int),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Query$MediaEntry$MediaList$user$mediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaEntry$MediaList$user$mediaListOptions? mediaListOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaListOptions = mediaListOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mediaListOptions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaEntry$MediaList$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
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

extension UtilityExtension$Query$MediaEntry$MediaList$user
    on Query$MediaEntry$MediaList$user {
  CopyWith$Query$MediaEntry$MediaList$user<Query$MediaEntry$MediaList$user>
      get copyWith => CopyWith$Query$MediaEntry$MediaList$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList$user<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList$user(
    Query$MediaEntry$MediaList$user instance,
    TRes Function(Query$MediaEntry$MediaList$user) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList$user;

  factory CopyWith$Query$MediaEntry$MediaList$user.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList$user;

  TRes call({
    int? id,
    Query$MediaEntry$MediaList$user$mediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes>
      get mediaListOptions;
}

class _CopyWithImpl$Query$MediaEntry$MediaList$user<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$user<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList$user(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList$user _instance;

  final TRes Function(Query$MediaEntry$MediaList$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaEntry$MediaList$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions
                as Query$MediaEntry$MediaList$user$mediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes>
      get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions.stub(
            _then(_instance))
        : CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList$user<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$user<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList$user(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaEntry$MediaList$user$mediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes>
      get mediaListOptions =>
          CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions.stub(_res);
}

class Query$MediaEntry$MediaList$user$mediaListOptions {
  Query$MediaEntry$MediaList$user$mediaListOptions({
    this.scoreFormat,
    this.$__typename = 'MediaListOptions',
  });

  factory Query$MediaEntry$MediaList$user$mediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$$__typename = json['__typename'];
    return Query$MediaEntry$MediaList$user$mediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ScoreFormat? scoreFormat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaEntry$MediaList$user$mediaListOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
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

extension UtilityExtension$Query$MediaEntry$MediaList$user$mediaListOptions
    on Query$MediaEntry$MediaList$user$mediaListOptions {
  CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<
          Query$MediaEntry$MediaList$user$mediaListOptions>
      get copyWith => CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes> {
  factory CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions(
    Query$MediaEntry$MediaList$user$mediaListOptions instance,
    TRes Function(Query$MediaEntry$MediaList$user$mediaListOptions) then,
  ) = _CopyWithImpl$Query$MediaEntry$MediaList$user$mediaListOptions;

  factory CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaEntry$MediaList$user$mediaListOptions;

  TRes call({
    Enum$ScoreFormat? scoreFormat,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaEntry$MediaList$user$mediaListOptions<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes> {
  _CopyWithImpl$Query$MediaEntry$MediaList$user$mediaListOptions(
    this._instance,
    this._then,
  );

  final Query$MediaEntry$MediaList$user$mediaListOptions _instance;

  final TRes Function(Query$MediaEntry$MediaList$user$mediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaEntry$MediaList$user$mediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as Enum$ScoreFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaEntry$MediaList$user$mediaListOptions<TRes>
    implements CopyWith$Query$MediaEntry$MediaList$user$mediaListOptions<TRes> {
  _CopyWithStubImpl$Query$MediaEntry$MediaList$user$mediaListOptions(this._res);

  TRes _res;

  call({
    Enum$ScoreFormat? scoreFormat,
    String? $__typename,
  }) =>
      _res;
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
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
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
        if (startedAt != null) r'startedAt': startedAt,
        if (completedAt != null) r'completedAt': completedAt,
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
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = l$startedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$startedAt as Map<String, dynamic>));
    }
    if (data.containsKey('completedAt')) {
      final l$completedAt = data['completedAt'];
      result$data['completedAt'] = l$completedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$completedAt as Map<String, dynamic>));
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

  Input$FuzzyDateInput? get startedAt =>
      (_$data['startedAt'] as Input$FuzzyDateInput?);

  Input$FuzzyDateInput? get completedAt =>
      (_$data['completedAt'] as Input$FuzzyDateInput?);

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
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt?.toJson();
    }
    if (_$data.containsKey('completedAt')) {
      final l$completedAt = completedAt;
      result$data['completedAt'] = l$completedAt?.toJson();
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
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (_$data.containsKey('completedAt') !=
        other._$data.containsKey('completedAt')) {
      return false;
    }
    if (l$completedAt != lOther$completedAt) {
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
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
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
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('completedAt') ? l$completedAt : const {},
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
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
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
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
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
        if (startedAt != _undefined)
          'startedAt': (startedAt as Input$FuzzyDateInput?),
        if (completedAt != _undefined)
          'completedAt': (completedAt as Input$FuzzyDateInput?),
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
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'completedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
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
          ArgumentNode(
            name: NameNode(value: 'startedAt'),
            value: VariableNode(name: NameNode(value: 'startedAt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'completedAt'),
            value: VariableNode(name: NameNode(value: 'completedAt')),
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
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);

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
