import '../graphql/fragments/fuzzy_date.graphql.dart';
import '../graphql/fragments/list_group.graphql.dart';
import '../graphql/fragments/media.graphql.dart';
import '../graphql/fragments/media_entry.graphql.dart';
import '../graphql/fragments/media_list_option.graphql.dart';
import '../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$MediaList {
  factory Variables$Query$MediaList({
    String? userName,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      Variables$Query$MediaList._({
        if (userName != null) r'userName': userName,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$MediaList._(this._$data);

  factory Variables$Query$MediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userName')) {
      final l$userName = data['userName'];
      result$data['userName'] = (l$userName as String?);
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
    return Variables$Query$MediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get userName => (_$data['userName'] as String?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  List<Enum$MediaListSort?>? get sort =>
      (_$data['sort'] as List<Enum$MediaListSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userName')) {
      final l$userName = userName;
      result$data['userName'] = l$userName;
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

  CopyWith$Variables$Query$MediaList<Variables$Query$MediaList> get copyWith =>
      CopyWith$Variables$Query$MediaList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (_$data.containsKey('userName') !=
        other._$data.containsKey('userName')) {
      return false;
    }
    if (l$userName != lOther$userName) {
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
    final l$userName = userName;
    final l$type = type;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('userName') ? l$userName : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaList<TRes> {
  factory CopyWith$Variables$Query$MediaList(
    Variables$Query$MediaList instance,
    TRes Function(Variables$Query$MediaList) then,
  ) = _CopyWithImpl$Variables$Query$MediaList;

  factory CopyWith$Variables$Query$MediaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaList;

  TRes call({
    String? userName,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$MediaList<TRes>
    implements CopyWith$Variables$Query$MediaList<TRes> {
  _CopyWithImpl$Variables$Query$MediaList(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaList _instance;

  final TRes Function(Variables$Query$MediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$MediaList._({
        ..._instance._$data,
        if (userName != _undefined) 'userName': (userName as String?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaListSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaList<TRes>
    implements CopyWith$Variables$Query$MediaList<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaList(this._res);

  TRes _res;

  call({
    String? userName,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      _res;
}

class Query$MediaList {
  Query$MediaList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory Query$MediaList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return Query$MediaList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : Query$MediaList$MediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaList$MediaListCollection? MediaListCollection;

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
    if (!(other is Query$MediaList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaList on Query$MediaList {
  CopyWith$Query$MediaList<Query$MediaList> get copyWith =>
      CopyWith$Query$MediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaList<TRes> {
  factory CopyWith$Query$MediaList(
    Query$MediaList instance,
    TRes Function(Query$MediaList) then,
  ) = _CopyWithImpl$Query$MediaList;

  factory CopyWith$Query$MediaList.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList;

  TRes call({
    Query$MediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImpl$Query$MediaList<TRes>
    implements CopyWith$Query$MediaList<TRes> {
  _CopyWithImpl$Query$MediaList(
    this._instance,
    this._then,
  );

  final Query$MediaList _instance;

  final TRes Function(Query$MediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as Query$MediaList$MediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWith$Query$MediaList$MediaListCollection.stub(_then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImpl$Query$MediaList<TRes>
    implements CopyWith$Query$MediaList<TRes> {
  _CopyWithStubImpl$Query$MediaList(this._res);

  TRes _res;

  call({
    Query$MediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection =>
      CopyWith$Query$MediaList$MediaListCollection.stub(_res);
}

const documentNodeQueryMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
            name: NameNode(value: 'userName'),
            value: VariableNode(name: NameNode(value: 'userName')),
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
              FragmentSpreadNode(
                name: NameNode(value: 'ListGroup'),
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
                    name: NameNode(value: 'rowOrder'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'animeList'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaListOptions'),
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
                    name: NameNode(value: 'mangaList'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaListOptions'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionListGroup,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMediaListOptions,
]);

class Query$MediaList$MediaListCollection {
  Query$MediaList$MediaListCollection({
    this.lists,
    this.user,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$MediaList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ListGroup.fromJson((e as Map<String, dynamic>)))
          .toList(),
      user: l$user == null
          ? null
          : Query$MediaList$MediaListCollection$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ListGroup?>? lists;

  final Query$MediaList$MediaListCollection$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaList$MediaListCollection) ||
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$MediaList$MediaListCollection
    on Query$MediaList$MediaListCollection {
  CopyWith$Query$MediaList$MediaListCollection<
          Query$MediaList$MediaListCollection>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection(
    Query$MediaList$MediaListCollection instance,
    TRes Function(Query$MediaList$MediaListCollection) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection;

  factory CopyWith$Query$MediaList$MediaListCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection;

  TRes call({
    List<Fragment$ListGroup?>? lists,
    Query$MediaList$MediaListCollection$user? user,
    String? $__typename,
  });
  TRes lists(
      Iterable<Fragment$ListGroup?>? Function(
              Iterable<CopyWith$Fragment$ListGroup<Fragment$ListGroup>?>?)
          _fn);
  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user;
}

class _CopyWithImpl$Query$MediaList$MediaListCollection<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection _instance;

  final TRes Function(Query$MediaList$MediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<Fragment$ListGroup?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$MediaList$MediaListCollection$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lists(
          Iterable<Fragment$ListGroup?>? Function(
                  Iterable<CopyWith$Fragment$ListGroup<Fragment$ListGroup>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ListGroup(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$MediaList$MediaListCollection$user.stub(
            _then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection(this._res);

  TRes _res;

  call({
    List<Fragment$ListGroup?>? lists,
    Query$MediaList$MediaListCollection$user? user,
    String? $__typename,
  }) =>
      _res;

  lists(_fn) => _res;

  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user =>
      CopyWith$Query$MediaList$MediaListCollection$user.stub(_res);
}

class Query$MediaList$MediaListCollection$user {
  Query$MediaList$MediaListCollection$user({
    required this.id,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory Query$MediaList$MediaListCollection$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection$user(
      id: (l$id as int),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Query$MediaList$MediaListCollection$user$mediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaList$MediaListCollection$user$mediaListOptions?
      mediaListOptions;

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
    if (!(other is Query$MediaList$MediaListCollection$user) ||
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

extension UtilityExtension$Query$MediaList$MediaListCollection$user
    on Query$MediaList$MediaListCollection$user {
  CopyWith$Query$MediaList$MediaListCollection$user<
          Query$MediaList$MediaListCollection$user>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection$user(
    Query$MediaList$MediaListCollection$user instance,
    TRes Function(Query$MediaList$MediaListCollection$user) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection$user;

  factory CopyWith$Query$MediaList$MediaListCollection$user.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection$user;

  TRes call({
    int? id,
    Query$MediaList$MediaListCollection$user$mediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<TRes>
      get mediaListOptions;
}

class _CopyWithImpl$Query$MediaList$MediaListCollection$user<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection$user(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection$user _instance;

  final TRes Function(Query$MediaList$MediaListCollection$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions
                as Query$MediaList$MediaListCollection$user$mediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<TRes>
      get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions
            .stub(_then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection$user<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection$user(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaList$MediaListCollection$user$mediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<TRes>
      get mediaListOptions =>
          CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions
              .stub(_res);
}

class Query$MediaList$MediaListCollection$user$mediaListOptions {
  Query$MediaList$MediaListCollection$user$mediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory Query$MediaList$MediaListCollection$user$mediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection$user$mediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : Fragment$MediaListOptions.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : Fragment$MediaListOptions.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ScoreFormat? scoreFormat;

  final String? rowOrder;

  final Fragment$MediaListOptions? animeList;

  final Fragment$MediaListOptions? mangaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    final l$rowOrder = rowOrder;
    _resultData['rowOrder'] = l$rowOrder;
    final l$animeList = animeList;
    _resultData['animeList'] = l$animeList?.toJson();
    final l$mangaList = mangaList;
    _resultData['mangaList'] = l$mangaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$animeList = animeList;
    final l$mangaList = mangaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$rowOrder,
      l$animeList,
      l$mangaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaList$MediaListCollection$user$mediaListOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$animeList = animeList;
    final lOther$animeList = other.animeList;
    if (l$animeList != lOther$animeList) {
      return false;
    }
    final l$mangaList = mangaList;
    final lOther$mangaList = other.mangaList;
    if (l$mangaList != lOther$mangaList) {
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

extension UtilityExtension$Query$MediaList$MediaListCollection$user$mediaListOptions
    on Query$MediaList$MediaListCollection$user$mediaListOptions {
  CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<
          Query$MediaList$MediaListCollection$user$mediaListOptions>
      get copyWith =>
          CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<
    TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions(
    Query$MediaList$MediaListCollection$user$mediaListOptions instance,
    TRes Function(Query$MediaList$MediaListCollection$user$mediaListOptions)
        then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection$user$mediaListOptions;

  factory CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$mediaListOptions;

  TRes call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Fragment$MediaListOptions? animeList,
    Fragment$MediaListOptions? mangaList,
    String? $__typename,
  });
  CopyWith$Fragment$MediaListOptions<TRes> get animeList;
  CopyWith$Fragment$MediaListOptions<TRes> get mangaList;
}

class _CopyWithImpl$Query$MediaList$MediaListCollection$user$mediaListOptions<
        TRes>
    implements
        CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<
            TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection$user$mediaListOptions(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection$user$mediaListOptions _instance;

  final TRes Function(Query$MediaList$MediaListCollection$user$mediaListOptions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection$user$mediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as Enum$ScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as Fragment$MediaListOptions?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as Fragment$MediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaListOptions<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWith$Fragment$MediaListOptions.stub(_then(_instance))
        : CopyWith$Fragment$MediaListOptions(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWith$Fragment$MediaListOptions<TRes> get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWith$Fragment$MediaListOptions.stub(_then(_instance))
        : CopyWith$Fragment$MediaListOptions(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$mediaListOptions<
        TRes>
    implements
        CopyWith$Query$MediaList$MediaListCollection$user$mediaListOptions<
            TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$mediaListOptions(
      this._res);

  TRes _res;

  call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Fragment$MediaListOptions? animeList,
    Fragment$MediaListOptions? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaListOptions<TRes> get animeList =>
      CopyWith$Fragment$MediaListOptions.stub(_res);

  CopyWith$Fragment$MediaListOptions<TRes> get mangaList =>
      CopyWith$Fragment$MediaListOptions.stub(_res);
}
