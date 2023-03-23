import 'Media.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Characters {
  factory Variables$Query$Characters({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$Characters._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$Characters._(this._$data);

  factory Variables$Query$Characters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Characters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Characters<Variables$Query$Characters>
      get copyWith => CopyWith$Variables$Query$Characters(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Characters) ||
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
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Characters<TRes> {
  factory CopyWith$Variables$Query$Characters(
    Variables$Query$Characters instance,
    TRes Function(Variables$Query$Characters) then,
  ) = _CopyWithImpl$Variables$Query$Characters;

  factory CopyWith$Variables$Query$Characters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Characters;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Characters<TRes>
    implements CopyWith$Variables$Query$Characters<TRes> {
  _CopyWithImpl$Variables$Query$Characters(
    this._instance,
    this._then,
  );

  final Variables$Query$Characters _instance;

  final TRes Function(Variables$Query$Characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Characters._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Characters<TRes>
    implements CopyWith$Variables$Query$Characters<TRes> {
  _CopyWithStubImpl$Variables$Query$Characters(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$Characters {
  Query$Characters({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Characters.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Characters(
      Media: l$Media == null
          ? null
          : Query$Characters$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Characters$Media? Media;

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
    if (!(other is Query$Characters) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Characters on Query$Characters {
  CopyWith$Query$Characters<Query$Characters> get copyWith =>
      CopyWith$Query$Characters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Characters<TRes> {
  factory CopyWith$Query$Characters(
    Query$Characters instance,
    TRes Function(Query$Characters) then,
  ) = _CopyWithImpl$Query$Characters;

  factory CopyWith$Query$Characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters;

  TRes call({
    Query$Characters$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithImpl$Query$Characters(
    this._instance,
    this._then,
  );

  final Query$Characters _instance;

  final TRes Function(Query$Characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Characters$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Characters$Media.stub(_then(_instance))
        : CopyWith$Query$Characters$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithStubImpl$Query$Characters(this._res);

  TRes _res;

  call({
    Query$Characters$Media? Media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media<TRes> get Media =>
      CopyWith$Query$Characters$Media.stub(_res);
}

const documentNodeQueryCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Characters'),
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
        variable: VariableNode(name: NameNode(value: 'page')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          )
        ],
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
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
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'currentPage'),
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
                name: NameNode(value: 'edges'),
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
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'first'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'full'),
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
                        name: NameNode(value: 'image'),
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
                  ),
                  FieldNode(
                    name: NameNode(value: 'voiceActorRoles'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: ListValueNode(values: [
                          EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                          EnumValueNode(name: NameNode(value: 'ID')),
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'roleNotes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dubGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'voiceActor'),
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
                            name: NameNode(value: 'languageV2'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'image'),
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
]);
Query$Characters _parserFn$Query$Characters(Map<String, dynamic> data) =>
    Query$Characters.fromJson(data);

class Options$Query$Characters extends graphql.QueryOptions<Query$Characters> {
  Options$Query$Characters({
    String? operationName,
    Variables$Query$Characters? variables,
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
          document: documentNodeQueryCharacters,
          parserFn: _parserFn$Query$Characters,
        );
}

class WatchOptions$Query$Characters
    extends graphql.WatchQueryOptions<Query$Characters> {
  WatchOptions$Query$Characters({
    String? operationName,
    Variables$Query$Characters? variables,
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
          document: documentNodeQueryCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Characters,
        );
}

class FetchMoreOptions$Query$Characters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Characters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Characters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCharacters,
        );
}

extension ClientExtension$Query$Characters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Characters>> query$Characters(
          [Options$Query$Characters? options]) async =>
      await this.query(options ?? Options$Query$Characters());
  graphql.ObservableQuery<Query$Characters> watchQuery$Characters(
          [WatchOptions$Query$Characters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Characters());
  void writeQuery$Characters({
    required Query$Characters data,
    Variables$Query$Characters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Characters? readQuery$Characters({
    Variables$Query$Characters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Characters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Characters> useQuery$Characters(
        [Options$Query$Characters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Characters());
graphql.ObservableQuery<Query$Characters> useWatchQuery$Characters(
        [WatchOptions$Query$Characters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Characters());

class Query$Characters$Widget extends graphql_flutter.Query<Query$Characters> {
  Query$Characters$Widget({
    widgets.Key? key,
    Options$Query$Characters? options,
    required graphql_flutter.QueryBuilder<Query$Characters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Characters(),
          builder: builder,
        );
}

class Query$Characters$Media {
  Query$Characters$Media({
    this.id,
    this.characters,
    this.$__typename = 'Media',
  });

  factory Query$Characters$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media(
      id: (l$id as int?),
      characters: l$characters == null
          ? null
          : Query$Characters$Media$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final Query$Characters$Media$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$Characters$Media on Query$Characters$Media {
  CopyWith$Query$Characters$Media<Query$Characters$Media> get copyWith =>
      CopyWith$Query$Characters$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Characters$Media<TRes> {
  factory CopyWith$Query$Characters$Media(
    Query$Characters$Media instance,
    TRes Function(Query$Characters$Media) then,
  ) = _CopyWithImpl$Query$Characters$Media;

  factory CopyWith$Query$Characters$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media;

  TRes call({
    int? id,
    Query$Characters$Media$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters<TRes> get characters;
}

class _CopyWithImpl$Query$Characters$Media<TRes>
    implements CopyWith$Query$Characters$Media<TRes> {
  _CopyWithImpl$Query$Characters$Media(
    this._instance,
    this._then,
  );

  final Query$Characters$Media _instance;

  final TRes Function(Query$Characters$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media(
        id: id == _undefined ? _instance.id : (id as int?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$Characters$Media$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$Characters$Media$characters.stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media<TRes>
    implements CopyWith$Query$Characters$Media<TRes> {
  _CopyWithStubImpl$Query$Characters$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Characters$Media$characters? characters,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters<TRes> get characters =>
      CopyWith$Query$Characters$Media$characters.stub(_res);
}

class Query$Characters$Media$characters {
  Query$Characters$Media$characters({
    this.pageInfo,
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$Characters$Media$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Characters$Media$characters$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Characters$Media$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Characters$Media$characters$pageInfo? pageInfo;

  final List<Query$Characters$Media$characters$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$Characters$Media$characters
    on Query$Characters$Media$characters {
  CopyWith$Query$Characters$Media$characters<Query$Characters$Media$characters>
      get copyWith => CopyWith$Query$Characters$Media$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters<TRes> {
  factory CopyWith$Query$Characters$Media$characters(
    Query$Characters$Media$characters instance,
    TRes Function(Query$Characters$Media$characters) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters;

  factory CopyWith$Query$Characters$Media$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters;

  TRes call({
    Query$Characters$Media$characters$pageInfo? pageInfo,
    List<Query$Characters$Media$characters$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Characters$Media$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$Characters$Media$characters$edges<
                      Query$Characters$Media$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Characters$Media$characters<TRes>
    implements CopyWith$Query$Characters$Media$characters<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters _instance;

  final TRes Function(Query$Characters$Media$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Characters$Media$characters$pageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Characters$Media$characters$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Characters$Media$characters$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$Characters$Media$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Characters$Media$characters$edges<
                          Query$Characters$Media$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Characters$Media$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Characters$Media$characters<TRes>
    implements CopyWith$Query$Characters$Media$characters<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters(this._res);

  TRes _res;

  call({
    Query$Characters$Media$characters$pageInfo? pageInfo,
    List<Query$Characters$Media$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Characters$Media$characters$pageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$Characters$Media$characters$pageInfo {
  Query$Characters$Media$characters$pageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Characters$Media$characters$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$pageInfo(
      currentPage: (l$currentPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? currentPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPage = currentPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
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

extension UtilityExtension$Query$Characters$Media$characters$pageInfo
    on Query$Characters$Media$characters$pageInfo {
  CopyWith$Query$Characters$Media$characters$pageInfo<
          Query$Characters$Media$characters$pageInfo>
      get copyWith => CopyWith$Query$Characters$Media$characters$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$pageInfo<TRes> {
  factory CopyWith$Query$Characters$Media$characters$pageInfo(
    Query$Characters$Media$characters$pageInfo instance,
    TRes Function(Query$Characters$Media$characters$pageInfo) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$pageInfo;

  factory CopyWith$Query$Characters$Media$characters$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$pageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$pageInfo<TRes>
    implements CopyWith$Query$Characters$Media$characters$pageInfo<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$pageInfo _instance;

  final TRes Function(Query$Characters$Media$characters$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$pageInfo(
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$pageInfo<TRes>
    implements CopyWith$Query$Characters$Media$characters$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$pageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges {
  Query$Characters$Media$characters$edges({
    this.name,
    this.role,
    this.node,
    this.voiceActorRoles,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$Characters$Media$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$node = json['node'];
    final l$voiceActorRoles = json['voiceActorRoles'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges(
      name: (l$name as String?),
      role: l$role == null
          ? null
          : fromJson$Enum$CharacterRole((l$role as String)),
      node: l$node == null
          ? null
          : Query$Characters$Media$characters$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      voiceActorRoles: (l$voiceActorRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Characters$Media$characters$edges$voiceActorRoles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$CharacterRole? role;

  final Query$Characters$Media$characters$edges$node? node;

  final List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
      voiceActorRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$CharacterRole(l$role);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$voiceActorRoles = voiceActorRoles;
    _resultData['voiceActorRoles'] =
        l$voiceActorRoles?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$role = role;
    final l$node = node;
    final l$voiceActorRoles = voiceActorRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$role,
      l$node,
      l$voiceActorRoles == null
          ? null
          : Object.hashAll(l$voiceActorRoles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$voiceActorRoles = voiceActorRoles;
    final lOther$voiceActorRoles = other.voiceActorRoles;
    if (l$voiceActorRoles != null && lOther$voiceActorRoles != null) {
      if (l$voiceActorRoles.length != lOther$voiceActorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActorRoles.length; i++) {
        final l$voiceActorRoles$entry = l$voiceActorRoles[i];
        final lOther$voiceActorRoles$entry = lOther$voiceActorRoles[i];
        if (l$voiceActorRoles$entry != lOther$voiceActorRoles$entry) {
          return false;
        }
      }
    } else if (l$voiceActorRoles != lOther$voiceActorRoles) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges
    on Query$Characters$Media$characters$edges {
  CopyWith$Query$Characters$Media$characters$edges<
          Query$Characters$Media$characters$edges>
      get copyWith => CopyWith$Query$Characters$Media$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges<TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges(
    Query$Characters$Media$characters$edges instance,
    TRes Function(Query$Characters$Media$characters$edges) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges;

  factory CopyWith$Query$Characters$Media$characters$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges;

  TRes call({
    String? name,
    Enum$CharacterRole? role,
    Query$Characters$Media$characters$edges$node? node,
    List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node;
  TRes voiceActorRoles(
      Iterable<Query$Characters$Media$characters$edges$voiceActorRoles?>? Function(
              Iterable<
                  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
                      Query$Characters$Media$characters$edges$voiceActorRoles>?>?)
          _fn);
}

class _CopyWithImpl$Query$Characters$Media$characters$edges<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges _instance;

  final TRes Function(Query$Characters$Media$characters$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? node = _undefined,
    Object? voiceActorRoles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges(
        name: name == _undefined ? _instance.name : (name as String?),
        role:
            role == _undefined ? _instance.role : (role as Enum$CharacterRole?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Characters$Media$characters$edges$node?),
        voiceActorRoles: voiceActorRoles == _undefined
            ? _instance.voiceActorRoles
            : (voiceActorRoles as List<
                Query$Characters$Media$characters$edges$voiceActorRoles?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Characters$Media$characters$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node(
            local$node, (e) => call(node: e));
  }

  TRes voiceActorRoles(
          Iterable<Query$Characters$Media$characters$edges$voiceActorRoles?>? Function(
                  Iterable<
                      CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
                          Query$Characters$Media$characters$edges$voiceActorRoles>?>?)
              _fn) =>
      call(
          voiceActorRoles: _fn(_instance.voiceActorRoles?.map((e) => e == null
              ? null
              : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges(this._res);

  TRes _res;

  call({
    String? name,
    Enum$CharacterRole? role,
    Query$Characters$Media$characters$edges$node? node,
    List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node =>
      CopyWith$Query$Characters$Media$characters$edges$node.stub(_res);
  voiceActorRoles(_fn) => _res;
}

class Query$Characters$Media$characters$edges$node {
  Query$Characters$Media$characters$edges$node({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$Characters$Media$characters$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Characters$Media$characters$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Characters$Media$characters$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Characters$Media$characters$edges$node$name? name;

  final Query$Characters$Media$characters$edges$node$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges$node) ||
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node
    on Query$Characters$Media$characters$edges$node {
  CopyWith$Query$Characters$Media$characters$edges$node<
          Query$Characters$Media$characters$edges$node>
      get copyWith => CopyWith$Query$Characters$Media$characters$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node(
    Query$Characters$Media$characters$edges$node instance,
    TRes Function(Query$Characters$Media$characters$edges$node) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node;

  factory CopyWith$Query$Characters$Media$characters$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node;

  TRes call({
    int? id,
    Query$Characters$Media$characters$edges$node$name? name,
    Query$Characters$Media$characters$edges$node$image? image,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name;
  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Characters$Media$characters$edges$node$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Characters$Media$characters$edges$node$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Characters$Media$characters$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Characters$Media$characters$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$Characters$Media$characters$edges$node$name? name,
    Query$Characters$Media$characters$edges$node$image? image,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name =>
      CopyWith$Query$Characters$Media$characters$edges$node$name.stub(_res);
  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image =>
      CopyWith$Query$Characters$Media$characters$edges$node$image.stub(_res);
}

class Query$Characters$Media$characters$edges$node$name {
  Query$Characters$Media$characters$edges$node$name({
    this.first,
    this.full,
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Characters$Media$characters$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$first = json['first'];
    final l$full = json['full'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node$name(
      first: (l$first as String?),
      full: (l$full as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? first;

  final String? full;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$first = first;
    _resultData['first'] = l$first;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$full = full;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$first,
      l$full,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges$node$name) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node$name
    on Query$Characters$Media$characters$edges$node$name {
  CopyWith$Query$Characters$Media$characters$edges$node$name<
          Query$Characters$Media$characters$edges$node$name>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node$name<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node$name(
    Query$Characters$Media$characters$edges$node$name instance,
    TRes Function(Query$Characters$Media$characters$edges$node$name) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node$name;

  factory CopyWith$Query$Characters$Media$characters$edges$node$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name;

  TRes call({
    String? first,
    String? full,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node$name<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node$name _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? full = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node$name(
        first: first == _undefined ? _instance.first : (first as String?),
        full: full == _undefined ? _instance.full : (full as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name(
      this._res);

  TRes _res;

  call({
    String? first,
    String? full,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$node$image {
  Query$Characters$Media$characters$edges$node$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Characters$Media$characters$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node$image(
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
    if (!(other is Query$Characters$Media$characters$edges$node$image) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node$image
    on Query$Characters$Media$characters$edges$node$image {
  CopyWith$Query$Characters$Media$characters$edges$node$image<
          Query$Characters$Media$characters$edges$node$image>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node$image<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node$image(
    Query$Characters$Media$characters$edges$node$image instance,
    TRes Function(Query$Characters$Media$characters$edges$node$image) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node$image;

  factory CopyWith$Query$Characters$Media$characters$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node$image<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node$image _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$voiceActorRoles {
  Query$Characters$Media$characters$edges$voiceActorRoles({
    this.roleNotes,
    this.dubGroup,
    this.voiceActor,
    this.$__typename = 'StaffRoleType',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles.fromJson(
      Map<String, dynamic> json) {
    final l$roleNotes = json['roleNotes'];
    final l$dubGroup = json['dubGroup'];
    final l$voiceActor = json['voiceActor'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles(
      roleNotes: (l$roleNotes as String?),
      dubGroup: (l$dubGroup as String?),
      voiceActor: l$voiceActor == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
              .fromJson((l$voiceActor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? roleNotes;

  final String? dubGroup;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
      voiceActor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roleNotes = roleNotes;
    _resultData['roleNotes'] = l$roleNotes;
    final l$dubGroup = dubGroup;
    _resultData['dubGroup'] = l$dubGroup;
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roleNotes = roleNotes;
    final l$dubGroup = dubGroup;
    final l$voiceActor = voiceActor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$roleNotes,
      l$dubGroup,
      l$voiceActor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges$voiceActorRoles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roleNotes = roleNotes;
    final lOther$roleNotes = other.roleNotes;
    if (l$roleNotes != lOther$roleNotes) {
      return false;
    }
    final l$dubGroup = dubGroup;
    final lOther$dubGroup = other.dubGroup;
    if (l$dubGroup != lOther$dubGroup) {
      return false;
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles
    on Query$Characters$Media$characters$edges$voiceActorRoles {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
          Query$Characters$Media$characters$edges$voiceActorRoles>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
    Query$Characters$Media$characters$edges$voiceActorRoles instance,
    TRes Function(Query$Characters$Media$characters$edges$voiceActorRoles) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles;

  TRes call({
    String? roleNotes,
    String? dubGroup,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles _instance;

  final TRes Function(Query$Characters$Media$characters$edges$voiceActorRoles)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roleNotes = _undefined,
    Object? dubGroup = _undefined,
    Object? voiceActor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$voiceActorRoles(
        roleNotes: roleNotes == _undefined
            ? _instance.roleNotes
            : (roleNotes as String?),
        dubGroup:
            dubGroup == _undefined ? _instance.dubGroup : (dubGroup as String?),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles(
      this._res);

  TRes _res;

  call({
    String? roleNotes,
    String? dubGroup,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
          TRes>
      get voiceActor =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
              .stub(_res);
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor({
    required this.id,
    this.name,
    this.languageV2,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$languageV2 = json['languageV2'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .fromJson((l$name as Map<String, dynamic>)),
      languageV2: (l$languageV2 as String?),
      image: l$image == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
      name;

  final String? languageV2;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
      image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$languageV2 = languageV2;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$languageV2,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor) ||
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
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor;

  TRes call({
    int? id,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    String? languageV2,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name;
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
      _instance;

  final TRes Function(
      Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? languageV2 = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    String? languageV2,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          TRes>
      get name =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .stub(_res);
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          TRes>
      get image =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .stub(_res);
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
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
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
        instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
      _instance;

  final TRes Function(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
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
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
        instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
      _instance;

  final TRes Function(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$Character {
  factory Variables$Query$Character({
    int? id,
    bool? isBirthday,
    String? search,
    int? id_not,
    List<int?>? id_in,
    List<int?>? id_not_in,
    List<Enum$CharacterSort?>? sort,
    Enum$MediaType? mediaType,
    List<Enum$MediaSort?>? mediaSort,
    bool? onList,
    int? page,
    int? perPage,
  }) =>
      Variables$Query$Character._({
        if (id != null) r'id': id,
        if (isBirthday != null) r'isBirthday': isBirthday,
        if (search != null) r'search': search,
        if (id_not != null) r'id_not': id_not,
        if (id_in != null) r'id_in': id_in,
        if (id_not_in != null) r'id_not_in': id_not_in,
        if (sort != null) r'sort': sort,
        if (mediaType != null) r'mediaType': mediaType,
        if (mediaSort != null) r'mediaSort': mediaSort,
        if (onList != null) r'onList': onList,
        if (page != null) r'page': page,
        if (perPage != null) r'perPage': perPage,
      });

  Variables$Query$Character._(this._$data);

  factory Variables$Query$Character.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('isBirthday')) {
      final l$isBirthday = data['isBirthday'];
      result$data['isBirthday'] = (l$isBirthday as bool?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('id_not')) {
      final l$id_not = data['id_not'];
      result$data['id_not'] = (l$id_not as int?);
    }
    if (data.containsKey('id_in')) {
      final l$id_in = data['id_in'];
      result$data['id_in'] =
          (l$id_in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('id_not_in')) {
      final l$id_not_in = data['id_not_in'];
      result$data['id_not_in'] =
          (l$id_not_in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$CharacterSort((e as String)))
          .toList();
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = l$mediaType == null
          ? null
          : fromJson$Enum$MediaType((l$mediaType as String));
    }
    if (data.containsKey('mediaSort')) {
      final l$mediaSort = data['mediaSort'];
      result$data['mediaSort'] = (l$mediaSort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('perPage')) {
      final l$perPage = data['perPage'];
      result$data['perPage'] = (l$perPage as int?);
    }
    return Variables$Query$Character._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  bool? get isBirthday => (_$data['isBirthday'] as bool?);
  String? get search => (_$data['search'] as String?);
  int? get id_not => (_$data['id_not'] as int?);
  List<int?>? get id_in => (_$data['id_in'] as List<int?>?);
  List<int?>? get id_not_in => (_$data['id_not_in'] as List<int?>?);
  List<Enum$CharacterSort?>? get sort =>
      (_$data['sort'] as List<Enum$CharacterSort?>?);
  Enum$MediaType? get mediaType => (_$data['mediaType'] as Enum$MediaType?);
  List<Enum$MediaSort?>? get mediaSort =>
      (_$data['mediaSort'] as List<Enum$MediaSort?>?);
  bool? get onList => (_$data['onList'] as bool?);
  int? get page => (_$data['page'] as int?);
  int? get perPage => (_$data['perPage'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('isBirthday')) {
      final l$isBirthday = isBirthday;
      result$data['isBirthday'] = l$isBirthday;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('id_not')) {
      final l$id_not = id_not;
      result$data['id_not'] = l$id_not;
    }
    if (_$data.containsKey('id_in')) {
      final l$id_in = id_in;
      result$data['id_in'] = l$id_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('id_not_in')) {
      final l$id_not_in = id_not_in;
      result$data['id_not_in'] = l$id_not_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$CharacterSort(e))
          .toList();
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] =
          l$mediaType == null ? null : toJson$Enum$MediaType(l$mediaType);
    }
    if (_$data.containsKey('mediaSort')) {
      final l$mediaSort = mediaSort;
      result$data['mediaSort'] = l$mediaSort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('perPage')) {
      final l$perPage = perPage;
      result$data['perPage'] = l$perPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Character<Variables$Query$Character> get copyWith =>
      CopyWith$Variables$Query$Character(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Character) ||
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
    final l$isBirthday = isBirthday;
    final lOther$isBirthday = other.isBirthday;
    if (_$data.containsKey('isBirthday') !=
        other._$data.containsKey('isBirthday')) {
      return false;
    }
    if (l$isBirthday != lOther$isBirthday) {
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
    final l$id_not = id_not;
    final lOther$id_not = other.id_not;
    if (_$data.containsKey('id_not') != other._$data.containsKey('id_not')) {
      return false;
    }
    if (l$id_not != lOther$id_not) {
      return false;
    }
    final l$id_in = id_in;
    final lOther$id_in = other.id_in;
    if (_$data.containsKey('id_in') != other._$data.containsKey('id_in')) {
      return false;
    }
    if (l$id_in != null && lOther$id_in != null) {
      if (l$id_in.length != lOther$id_in.length) {
        return false;
      }
      for (int i = 0; i < l$id_in.length; i++) {
        final l$id_in$entry = l$id_in[i];
        final lOther$id_in$entry = lOther$id_in[i];
        if (l$id_in$entry != lOther$id_in$entry) {
          return false;
        }
      }
    } else if (l$id_in != lOther$id_in) {
      return false;
    }
    final l$id_not_in = id_not_in;
    final lOther$id_not_in = other.id_not_in;
    if (_$data.containsKey('id_not_in') !=
        other._$data.containsKey('id_not_in')) {
      return false;
    }
    if (l$id_not_in != null && lOther$id_not_in != null) {
      if (l$id_not_in.length != lOther$id_not_in.length) {
        return false;
      }
      for (int i = 0; i < l$id_not_in.length; i++) {
        final l$id_not_in$entry = l$id_not_in[i];
        final lOther$id_not_in$entry = lOther$id_not_in[i];
        if (l$id_not_in$entry != lOther$id_not_in$entry) {
          return false;
        }
      }
    } else if (l$id_not_in != lOther$id_not_in) {
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
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$mediaSort = mediaSort;
    final lOther$mediaSort = other.mediaSort;
    if (_$data.containsKey('mediaSort') !=
        other._$data.containsKey('mediaSort')) {
      return false;
    }
    if (l$mediaSort != null && lOther$mediaSort != null) {
      if (l$mediaSort.length != lOther$mediaSort.length) {
        return false;
      }
      for (int i = 0; i < l$mediaSort.length; i++) {
        final l$mediaSort$entry = l$mediaSort[i];
        final lOther$mediaSort$entry = lOther$mediaSort[i];
        if (l$mediaSort$entry != lOther$mediaSort$entry) {
          return false;
        }
      }
    } else if (l$mediaSort != lOther$mediaSort) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isBirthday = isBirthday;
    final l$search = search;
    final l$id_not = id_not;
    final l$id_in = id_in;
    final l$id_not_in = id_not_in;
    final l$sort = sort;
    final l$mediaType = mediaType;
    final l$mediaSort = mediaSort;
    final l$onList = onList;
    final l$page = page;
    final l$perPage = perPage;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isBirthday') ? l$isBirthday : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('id_not') ? l$id_not : const {},
      _$data.containsKey('id_in')
          ? l$id_in == null
              ? null
              : Object.hashAll(l$id_in.map((v) => v))
          : const {},
      _$data.containsKey('id_not_in')
          ? l$id_not_in == null
              ? null
              : Object.hashAll(l$id_not_in.map((v) => v))
          : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
      _$data.containsKey('mediaSort')
          ? l$mediaSort == null
              ? null
              : Object.hashAll(l$mediaSort.map((v) => v))
          : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('perPage') ? l$perPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Character<TRes> {
  factory CopyWith$Variables$Query$Character(
    Variables$Query$Character instance,
    TRes Function(Variables$Query$Character) then,
  ) = _CopyWithImpl$Variables$Query$Character;

  factory CopyWith$Variables$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Character;

  TRes call({
    int? id,
    bool? isBirthday,
    String? search,
    int? id_not,
    List<int?>? id_in,
    List<int?>? id_not_in,
    List<Enum$CharacterSort?>? sort,
    Enum$MediaType? mediaType,
    List<Enum$MediaSort?>? mediaSort,
    bool? onList,
    int? page,
    int? perPage,
  });
}

class _CopyWithImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithImpl$Variables$Query$Character(
    this._instance,
    this._then,
  );

  final Variables$Query$Character _instance;

  final TRes Function(Variables$Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isBirthday = _undefined,
    Object? search = _undefined,
    Object? id_not = _undefined,
    Object? id_in = _undefined,
    Object? id_not_in = _undefined,
    Object? sort = _undefined,
    Object? mediaType = _undefined,
    Object? mediaSort = _undefined,
    Object? onList = _undefined,
    Object? page = _undefined,
    Object? perPage = _undefined,
  }) =>
      _then(Variables$Query$Character._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (isBirthday != _undefined) 'isBirthday': (isBirthday as bool?),
        if (search != _undefined) 'search': (search as String?),
        if (id_not != _undefined) 'id_not': (id_not as int?),
        if (id_in != _undefined) 'id_in': (id_in as List<int?>?),
        if (id_not_in != _undefined) 'id_not_in': (id_not_in as List<int?>?),
        if (sort != _undefined) 'sort': (sort as List<Enum$CharacterSort?>?),
        if (mediaType != _undefined)
          'mediaType': (mediaType as Enum$MediaType?),
        if (mediaSort != _undefined)
          'mediaSort': (mediaSort as List<Enum$MediaSort?>?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (page != _undefined) 'page': (page as int?),
        if (perPage != _undefined) 'perPage': (perPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithStubImpl$Variables$Query$Character(this._res);

  TRes _res;

  call({
    int? id,
    bool? isBirthday,
    String? search,
    int? id_not,
    List<int?>? id_in,
    List<int?>? id_not_in,
    List<Enum$CharacterSort?>? sort,
    Enum$MediaType? mediaType,
    List<Enum$MediaSort?>? mediaSort,
    bool? onList,
    int? page,
    int? perPage,
  }) =>
      _res;
}

class Query$Character {
  Query$Character({
    this.Character,
    this.$__typename = 'Query',
  });

  factory Query$Character.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return Query$Character(
      Character: l$Character == null
          ? null
          : Query$Character$Character.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Character$Character? Character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Character = Character;
    _resultData['Character'] = l$Character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Character = Character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Character = Character;
    final lOther$Character = other.Character;
    if (l$Character != lOther$Character) {
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

extension UtilityExtension$Query$Character on Query$Character {
  CopyWith$Query$Character<Query$Character> get copyWith =>
      CopyWith$Query$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character<TRes> {
  factory CopyWith$Query$Character(
    Query$Character instance,
    TRes Function(Query$Character) then,
  ) = _CopyWithImpl$Query$Character;

  factory CopyWith$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character;

  TRes call({
    Query$Character$Character? Character,
    String? $__typename,
  });
  CopyWith$Query$Character$Character<TRes> get Character;
}

class _CopyWithImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithImpl$Query$Character(
    this._instance,
    this._then,
  );

  final Query$Character _instance;

  final TRes Function(Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as Query$Character$Character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Character$Character<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWith$Query$Character$Character.stub(_then(_instance))
        : CopyWith$Query$Character$Character(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithStubImpl$Query$Character(this._res);

  TRes _res;

  call({
    Query$Character$Character? Character,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Character$Character<TRes> get Character =>
      CopyWith$Query$Character$Character.stub(_res);
}

const documentNodeQueryCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Character'),
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
        variable: VariableNode(name: NameNode(value: 'isBirthday')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
        variable: VariableNode(name: NameNode(value: 'id_not')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id_not_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CharacterSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaType')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaSort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(
            value: ListValueNode(values: [
          EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
        ])),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Character'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isBirthday'),
            value: VariableNode(name: NameNode(value: 'isBirthday')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id_not'),
            value: VariableNode(name: NameNode(value: 'id_not')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id_in'),
            value: VariableNode(name: NameNode(value: 'id_in')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id_not_in'),
            value: VariableNode(name: NameNode(value: 'id_not_in')),
          ),
          ArgumentNode(
            name: NameNode(value: 'sort'),
            value: VariableNode(name: NameNode(value: 'sort')),
          ),
        ],
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bloodType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'siteUrl'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'first'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'middle'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'last'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'full'),
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
            name: NameNode(value: 'image'),
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
            name: NameNode(value: 'dateOfBirth'),
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
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'mediaSort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'mediaType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
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
                name: NameNode(value: 'nodes'),
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
Query$Character _parserFn$Query$Character(Map<String, dynamic> data) =>
    Query$Character.fromJson(data);

class Options$Query$Character extends graphql.QueryOptions<Query$Character> {
  Options$Query$Character({
    String? operationName,
    Variables$Query$Character? variables,
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
          document: documentNodeQueryCharacter,
          parserFn: _parserFn$Query$Character,
        );
}

class WatchOptions$Query$Character
    extends graphql.WatchQueryOptions<Query$Character> {
  WatchOptions$Query$Character({
    String? operationName,
    Variables$Query$Character? variables,
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
          document: documentNodeQueryCharacter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Character,
        );
}

class FetchMoreOptions$Query$Character extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Character({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Character? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCharacter,
        );
}

extension ClientExtension$Query$Character on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Character>> query$Character(
          [Options$Query$Character? options]) async =>
      await this.query(options ?? Options$Query$Character());
  graphql.ObservableQuery<Query$Character> watchQuery$Character(
          [WatchOptions$Query$Character? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Character());
  void writeQuery$Character({
    required Query$Character data,
    Variables$Query$Character? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCharacter),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Character? readQuery$Character({
    Variables$Query$Character? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCharacter),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Character.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Character> useQuery$Character(
        [Options$Query$Character? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Character());
graphql.ObservableQuery<Query$Character> useWatchQuery$Character(
        [WatchOptions$Query$Character? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Character());

class Query$Character$Widget extends graphql_flutter.Query<Query$Character> {
  Query$Character$Widget({
    widgets.Key? key,
    Options$Query$Character? options,
    required graphql_flutter.QueryBuilder<Query$Character> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Character(),
          builder: builder,
        );
}

class Query$Character$Character {
  Query$Character$Character({
    required this.id,
    this.gender,
    this.age,
    this.bloodType,
    this.siteUrl,
    this.description,
    this.name,
    this.image,
    this.dateOfBirth,
    this.media,
    this.$__typename = 'Character',
  });

  factory Query$Character$Character.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$bloodType = json['bloodType'];
    final l$siteUrl = json['siteUrl'];
    final l$description = json['description'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character(
      id: (l$id as int),
      gender: (l$gender as String?),
      age: (l$age as String?),
      bloodType: (l$bloodType as String?),
      siteUrl: (l$siteUrl as String?),
      description: (l$description as String?),
      name: l$name == null
          ? null
          : Query$Character$Character$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Character$Character$image.fromJson(
              (l$image as Map<String, dynamic>)),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Query$Character$Character$dateOfBirth.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$Character$Character$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? gender;

  final String? age;

  final String? bloodType;

  final String? siteUrl;

  final String? description;

  final Query$Character$Character$name? name;

  final Query$Character$Character$image? image;

  final Query$Character$Character$dateOfBirth? dateOfBirth;

  final Query$Character$Character$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$gender = gender;
    final l$age = age;
    final l$bloodType = bloodType;
    final l$siteUrl = siteUrl;
    final l$description = description;
    final l$name = name;
    final l$image = image;
    final l$dateOfBirth = dateOfBirth;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$gender,
      l$age,
      l$bloodType,
      l$siteUrl,
      l$description,
      l$name,
      l$image,
      l$dateOfBirth,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$bloodType = bloodType;
    final lOther$bloodType = other.bloodType;
    if (l$bloodType != lOther$bloodType) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
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

extension UtilityExtension$Query$Character$Character
    on Query$Character$Character {
  CopyWith$Query$Character$Character<Query$Character$Character> get copyWith =>
      CopyWith$Query$Character$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character$Character<TRes> {
  factory CopyWith$Query$Character$Character(
    Query$Character$Character instance,
    TRes Function(Query$Character$Character) then,
  ) = _CopyWithImpl$Query$Character$Character;

  factory CopyWith$Query$Character$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character;

  TRes call({
    int? id,
    String? gender,
    String? age,
    String? bloodType,
    String? siteUrl,
    String? description,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    Query$Character$Character$dateOfBirth? dateOfBirth,
    Query$Character$Character$media? media,
    String? $__typename,
  });
  CopyWith$Query$Character$Character$name<TRes> get name;
  CopyWith$Query$Character$Character$image<TRes> get image;
  CopyWith$Query$Character$Character$dateOfBirth<TRes> get dateOfBirth;
  CopyWith$Query$Character$Character$media<TRes> get media;
}

class _CopyWithImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithImpl$Query$Character$Character(
    this._instance,
    this._then,
  );

  final Query$Character$Character _instance;

  final TRes Function(Query$Character$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? bloodType = _undefined,
    Object? siteUrl = _undefined,
    Object? description = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? dateOfBirth = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        age: age == _undefined ? _instance.age : (age as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Character$Character$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Character$Character$image?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Query$Character$Character$dateOfBirth?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Character$Character$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Character$Character$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Character$Character$name.stub(_then(_instance))
        : CopyWith$Query$Character$Character$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Character$Character$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Character$Character$image.stub(_then(_instance))
        : CopyWith$Query$Character$Character$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Query$Character$Character$dateOfBirth<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Query$Character$Character$dateOfBirth.stub(_then(_instance))
        : CopyWith$Query$Character$Character$dateOfBirth(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Query$Character$Character$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Character$Character$media.stub(_then(_instance))
        : CopyWith$Query$Character$Character$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithStubImpl$Query$Character$Character(this._res);

  TRes _res;

  call({
    int? id,
    String? gender,
    String? age,
    String? bloodType,
    String? siteUrl,
    String? description,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    Query$Character$Character$dateOfBirth? dateOfBirth,
    Query$Character$Character$media? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Character$Character$name<TRes> get name =>
      CopyWith$Query$Character$Character$name.stub(_res);
  CopyWith$Query$Character$Character$image<TRes> get image =>
      CopyWith$Query$Character$Character$image.stub(_res);
  CopyWith$Query$Character$Character$dateOfBirth<TRes> get dateOfBirth =>
      CopyWith$Query$Character$Character$dateOfBirth.stub(_res);
  CopyWith$Query$Character$Character$media<TRes> get media =>
      CopyWith$Query$Character$Character$media.stub(_res);
}

class Query$Character$Character$name {
  Query$Character$Character$name({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Character$Character$name.fromJson(Map<String, dynamic> json) {
    final l$first = json['first'];
    final l$middle = json['middle'];
    final l$last = json['last'];
    final l$full = json['full'];
    final l$native = json['native'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$name(
      first: (l$first as String?),
      middle: (l$middle as String?),
      last: (l$last as String?),
      full: (l$full as String?),
      native: (l$native as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? first;

  final String? middle;

  final String? last;

  final String? full;

  final String? native;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$first = first;
    _resultData['first'] = l$first;
    final l$middle = middle;
    _resultData['middle'] = l$middle;
    final l$last = last;
    _resultData['last'] = l$last;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$middle = middle;
    final l$last = last;
    final l$full = full;
    final l$native = native;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$first,
      l$middle,
      l$last,
      l$full,
      l$native,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character$name) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$middle = middle;
    final lOther$middle = other.middle;
    if (l$middle != lOther$middle) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (l$last != lOther$last) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtension$Query$Character$Character$name
    on Query$Character$Character$name {
  CopyWith$Query$Character$Character$name<Query$Character$Character$name>
      get copyWith => CopyWith$Query$Character$Character$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$name<TRes> {
  factory CopyWith$Query$Character$Character$name(
    Query$Character$Character$name instance,
    TRes Function(Query$Character$Character$name) then,
  ) = _CopyWithImpl$Query$Character$Character$name;

  factory CopyWith$Query$Character$Character$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$name;

  TRes call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithImpl$Query$Character$Character$name(
    this._instance,
    this._then,
  );

  final Query$Character$Character$name _instance;

  final TRes Function(Query$Character$Character$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? middle = _undefined,
    Object? last = _undefined,
    Object? full = _undefined,
    Object? native = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$name(
        first: first == _undefined ? _instance.first : (first as String?),
        middle: middle == _undefined ? _instance.middle : (middle as String?),
        last: last == _undefined ? _instance.last : (last as String?),
        full: full == _undefined ? _instance.full : (full as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithStubImpl$Query$Character$Character$name(this._res);

  TRes _res;

  call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$image {
  Query$Character$Character$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Character$Character$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$image(
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
    if (!(other is Query$Character$Character$image) ||
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

extension UtilityExtension$Query$Character$Character$image
    on Query$Character$Character$image {
  CopyWith$Query$Character$Character$image<Query$Character$Character$image>
      get copyWith => CopyWith$Query$Character$Character$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$image<TRes> {
  factory CopyWith$Query$Character$Character$image(
    Query$Character$Character$image instance,
    TRes Function(Query$Character$Character$image) then,
  ) = _CopyWithImpl$Query$Character$Character$image;

  factory CopyWith$Query$Character$Character$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithImpl$Query$Character$Character$image(
    this._instance,
    this._then,
  );

  final Query$Character$Character$image _instance;

  final TRes Function(Query$Character$Character$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithStubImpl$Query$Character$Character$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$dateOfBirth {
  Query$Character$Character$dateOfBirth({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Character$Character$dateOfBirth.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$dateOfBirth(
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
    if (!(other is Query$Character$Character$dateOfBirth) ||
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

extension UtilityExtension$Query$Character$Character$dateOfBirth
    on Query$Character$Character$dateOfBirth {
  CopyWith$Query$Character$Character$dateOfBirth<
          Query$Character$Character$dateOfBirth>
      get copyWith => CopyWith$Query$Character$Character$dateOfBirth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$dateOfBirth<TRes> {
  factory CopyWith$Query$Character$Character$dateOfBirth(
    Query$Character$Character$dateOfBirth instance,
    TRes Function(Query$Character$Character$dateOfBirth) then,
  ) = _CopyWithImpl$Query$Character$Character$dateOfBirth;

  factory CopyWith$Query$Character$Character$dateOfBirth.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$dateOfBirth;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$dateOfBirth<TRes>
    implements CopyWith$Query$Character$Character$dateOfBirth<TRes> {
  _CopyWithImpl$Query$Character$Character$dateOfBirth(
    this._instance,
    this._then,
  );

  final Query$Character$Character$dateOfBirth _instance;

  final TRes Function(Query$Character$Character$dateOfBirth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$dateOfBirth(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$dateOfBirth<TRes>
    implements CopyWith$Query$Character$Character$dateOfBirth<TRes> {
  _CopyWithStubImpl$Query$Character$Character$dateOfBirth(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$media {
  Query$Character$Character$media({
    this.nodes,
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Character$Character$media.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$BasicMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Query$Character$Character$media$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$BasicMedia?>? nodes;

  final Query$Character$Character$media$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$Character$Character$media
    on Query$Character$Character$media {
  CopyWith$Query$Character$Character$media<Query$Character$Character$media>
      get copyWith => CopyWith$Query$Character$Character$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media<TRes> {
  factory CopyWith$Query$Character$Character$media(
    Query$Character$Character$media instance,
    TRes Function(Query$Character$Character$media) then,
  ) = _CopyWithImpl$Query$Character$Character$media;

  factory CopyWith$Query$Character$Character$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media;

  TRes call({
    List<Fragment$BasicMedia?>? nodes,
    Query$Character$Character$media$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$BasicMedia?>? Function(
              Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
          _fn);
  CopyWith$Query$Character$Character$media$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithImpl$Query$Character$Character$media(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media _instance;

  final TRes Function(Query$Character$Character$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$BasicMedia?>?),
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Character$Character$media$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes nodes(
          Iterable<Fragment$BasicMedia?>? Function(
                  Iterable<CopyWith$Fragment$BasicMedia<Fragment$BasicMedia>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$BasicMedia(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$Character$Character$media$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Character$Character$media$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$Character$Character$media$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media(this._res);

  TRes _res;

  call({
    List<Fragment$BasicMedia?>? nodes,
    Query$Character$Character$media$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  nodes(_fn) => _res;
  CopyWith$Query$Character$Character$media$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Character$Character$media$pageInfo.stub(_res);
}

class Query$Character$Character$media$pageInfo {
  Query$Character$Character$media$pageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Character$Character$media$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$pageInfo(
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
    if (!(other is Query$Character$Character$media$pageInfo) ||
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

extension UtilityExtension$Query$Character$Character$media$pageInfo
    on Query$Character$Character$media$pageInfo {
  CopyWith$Query$Character$Character$media$pageInfo<
          Query$Character$Character$media$pageInfo>
      get copyWith => CopyWith$Query$Character$Character$media$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$pageInfo<TRes> {
  factory CopyWith$Query$Character$Character$media$pageInfo(
    Query$Character$Character$media$pageInfo instance,
    TRes Function(Query$Character$Character$media$pageInfo) then,
  ) = _CopyWithImpl$Query$Character$Character$media$pageInfo;

  factory CopyWith$Query$Character$Character$media$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$pageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$media$pageInfo<TRes>
    implements CopyWith$Query$Character$Character$media$pageInfo<TRes> {
  _CopyWithImpl$Query$Character$Character$media$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$pageInfo _instance;

  final TRes Function(Query$Character$Character$media$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media$pageInfo(
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

class _CopyWithStubImpl$Query$Character$Character$media$pageInfo<TRes>
    implements CopyWith$Query$Character$Character$media$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$pageInfo(this._res);

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
