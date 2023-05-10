// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteAnimes {
  factory Variables$Query$FavoriteAnimes({
    String? name,
    int? page,
  }) =>
      Variables$Query$FavoriteAnimes._({
        if (name != null) r'name': name,
        if (page != null) r'page': page,
      });

  Variables$Query$FavoriteAnimes._(this._$data);

  factory Variables$Query$FavoriteAnimes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$FavoriteAnimes._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FavoriteAnimes<Variables$Query$FavoriteAnimes>
      get copyWith => CopyWith$Variables$Query$FavoriteAnimes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FavoriteAnimes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$name = name;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FavoriteAnimes<TRes> {
  factory CopyWith$Variables$Query$FavoriteAnimes(
    Variables$Query$FavoriteAnimes instance,
    TRes Function(Variables$Query$FavoriteAnimes) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteAnimes;

  factory CopyWith$Variables$Query$FavoriteAnimes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteAnimes;

  TRes call({
    String? name,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteAnimes<TRes>
    implements CopyWith$Variables$Query$FavoriteAnimes<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteAnimes(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteAnimes _instance;

  final TRes Function(Variables$Query$FavoriteAnimes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$FavoriteAnimes._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteAnimes<TRes>
    implements CopyWith$Variables$Query$FavoriteAnimes<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteAnimes(this._res);

  TRes _res;

  call({
    String? name,
    int? page,
  }) =>
      _res;
}

class Query$FavoriteAnimes {
  Query$FavoriteAnimes({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteAnimes.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnimes(
      User: l$User == null
          ? null
          : Query$FavoriteAnimes$User.fromJson(
              (l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnimes$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteAnimes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$FavoriteAnimes on Query$FavoriteAnimes {
  CopyWith$Query$FavoriteAnimes<Query$FavoriteAnimes> get copyWith =>
      CopyWith$Query$FavoriteAnimes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteAnimes<TRes> {
  factory CopyWith$Query$FavoriteAnimes(
    Query$FavoriteAnimes instance,
    TRes Function(Query$FavoriteAnimes) then,
  ) = _CopyWithImpl$Query$FavoriteAnimes;

  factory CopyWith$Query$FavoriteAnimes.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnimes;

  TRes call({
    Query$FavoriteAnimes$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnimes$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteAnimes<TRes>
    implements CopyWith$Query$FavoriteAnimes<TRes> {
  _CopyWithImpl$Query$FavoriteAnimes(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnimes _instance;

  final TRes Function(Query$FavoriteAnimes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnimes(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteAnimes$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteAnimes$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteAnimes$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteAnimes$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnimes<TRes>
    implements CopyWith$Query$FavoriteAnimes<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnimes(this._res);

  TRes _res;

  call({
    Query$FavoriteAnimes$User? User,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteAnimes$User<TRes> get User =>
      CopyWith$Query$FavoriteAnimes$User.stub(_res);
}

const documentNodeQueryFavoriteAnimes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteAnimes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'pageInfo'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageInfo'),
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
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Media'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionMedia,
]);
Query$FavoriteAnimes _parserFn$Query$FavoriteAnimes(
        Map<String, dynamic> data) =>
    Query$FavoriteAnimes.fromJson(data);
typedef OnQueryComplete$Query$FavoriteAnimes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteAnimes?,
);

class Options$Query$FavoriteAnimes
    extends graphql.QueryOptions<Query$FavoriteAnimes> {
  Options$Query$FavoriteAnimes({
    String? operationName,
    Variables$Query$FavoriteAnimes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteAnimes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteAnimes? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$FavoriteAnimes(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteAnimes,
          parserFn: _parserFn$Query$FavoriteAnimes,
        );

  final OnQueryComplete$Query$FavoriteAnimes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteAnimes
    extends graphql.WatchQueryOptions<Query$FavoriteAnimes> {
  WatchOptions$Query$FavoriteAnimes({
    String? operationName,
    Variables$Query$FavoriteAnimes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteAnimes? typedOptimisticResult,
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
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFavoriteAnimes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteAnimes,
        );
}

class FetchMoreOptions$Query$FavoriteAnimes extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteAnimes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteAnimes? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteAnimes,
        );
}

extension ClientExtension$Query$FavoriteAnimes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteAnimes>> query$FavoriteAnimes(
          [Options$Query$FavoriteAnimes? options]) async =>
      await this.query(options ?? Options$Query$FavoriteAnimes());
  graphql.ObservableQuery<Query$FavoriteAnimes> watchQuery$FavoriteAnimes(
          [WatchOptions$Query$FavoriteAnimes? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteAnimes());
  void writeQuery$FavoriteAnimes({
    required Query$FavoriteAnimes data,
    Variables$Query$FavoriteAnimes? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteAnimes),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteAnimes? readQuery$FavoriteAnimes({
    Variables$Query$FavoriteAnimes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavoriteAnimes),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteAnimes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteAnimes> useQuery$FavoriteAnimes(
        [Options$Query$FavoriteAnimes? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteAnimes());
graphql.ObservableQuery<Query$FavoriteAnimes> useWatchQuery$FavoriteAnimes(
        [WatchOptions$Query$FavoriteAnimes? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteAnimes());

class Query$FavoriteAnimes$Widget
    extends graphql_flutter.Query<Query$FavoriteAnimes> {
  Query$FavoriteAnimes$Widget({
    widgets.Key? key,
    Options$Query$FavoriteAnimes? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteAnimes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteAnimes(),
          builder: builder,
        );
}

class Query$FavoriteAnimes$User {
  Query$FavoriteAnimes$User({
    required this.id,
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteAnimes$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnimes$User(
      id: (l$id as int),
      favourites: l$favourites == null
          ? null
          : Query$FavoriteAnimes$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$FavoriteAnimes$User$favourites? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteAnimes$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Query$FavoriteAnimes$User
    on Query$FavoriteAnimes$User {
  CopyWith$Query$FavoriteAnimes$User<Query$FavoriteAnimes$User> get copyWith =>
      CopyWith$Query$FavoriteAnimes$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteAnimes$User<TRes> {
  factory CopyWith$Query$FavoriteAnimes$User(
    Query$FavoriteAnimes$User instance,
    TRes Function(Query$FavoriteAnimes$User) then,
  ) = _CopyWithImpl$Query$FavoriteAnimes$User;

  factory CopyWith$Query$FavoriteAnimes$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnimes$User;

  TRes call({
    int? id,
    Query$FavoriteAnimes$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnimes$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteAnimes$User<TRes>
    implements CopyWith$Query$FavoriteAnimes$User<TRes> {
  _CopyWithImpl$Query$FavoriteAnimes$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnimes$User _instance;

  final TRes Function(Query$FavoriteAnimes$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnimes$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteAnimes$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteAnimes$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteAnimes$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteAnimes$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnimes$User<TRes>
    implements CopyWith$Query$FavoriteAnimes$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnimes$User(this._res);

  TRes _res;

  call({
    int? id,
    Query$FavoriteAnimes$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteAnimes$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteAnimes$User$favourites.stub(_res);
}

class Query$FavoriteAnimes$User$favourites {
  Query$FavoriteAnimes$User$favourites({
    this.anime,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteAnimes$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnimes$User$favourites(
      anime: l$anime == null
          ? null
          : Query$FavoriteAnimes$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnimes$User$favourites$anime? anime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteAnimes$User$favourites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
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

extension UtilityExtension$Query$FavoriteAnimes$User$favourites
    on Query$FavoriteAnimes$User$favourites {
  CopyWith$Query$FavoriteAnimes$User$favourites<
          Query$FavoriteAnimes$User$favourites>
      get copyWith => CopyWith$Query$FavoriteAnimes$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteAnimes$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteAnimes$User$favourites(
    Query$FavoriteAnimes$User$favourites instance,
    TRes Function(Query$FavoriteAnimes$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteAnimes$User$favourites;

  factory CopyWith$Query$FavoriteAnimes$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites;

  TRes call({
    Query$FavoriteAnimes$User$favourites$anime? anime,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> get anime;
}

class _CopyWithImpl$Query$FavoriteAnimes$User$favourites<TRes>
    implements CopyWith$Query$FavoriteAnimes$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteAnimes$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnimes$User$favourites _instance;

  final TRes Function(Query$FavoriteAnimes$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnimes$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$FavoriteAnimes$User$favourites$anime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$FavoriteAnimes$User$favourites$anime.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteAnimes$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites<TRes>
    implements CopyWith$Query$FavoriteAnimes$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteAnimes$User$favourites$anime? anime,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$FavoriteAnimes$User$favourites$anime.stub(_res);
}

class Query$FavoriteAnimes$User$favourites$anime {
  Query$FavoriteAnimes$User$favourites$anime({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$FavoriteAnimes$User$favourites$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnimes$User$favourites$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$Media?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteAnimes$User$favourites$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$FavoriteAnimes$User$favourites$anime
    on Query$FavoriteAnimes$User$favourites$anime {
  CopyWith$Query$FavoriteAnimes$User$favourites$anime<
          Query$FavoriteAnimes$User$favourites$anime>
      get copyWith => CopyWith$Query$FavoriteAnimes$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> {
  factory CopyWith$Query$FavoriteAnimes$User$favourites$anime(
    Query$FavoriteAnimes$User$favourites$anime instance,
    TRes Function(Query$FavoriteAnimes$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$FavoriteAnimes$User$favourites$anime;

  factory CopyWith$Query$FavoriteAnimes$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites$anime;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Media?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Fragment$Media?>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteAnimes$User$favourites$anime<TRes>
    implements CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$FavoriteAnimes$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnimes$User$favourites$anime _instance;

  final TRes Function(Query$FavoriteAnimes$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnimes$User$favourites$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$Media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Fragment$Media?>? Function(
                  Iterable<CopyWith$Fragment$Media<Fragment$Media>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites$anime<TRes>
    implements CopyWith$Query$FavoriteAnimes$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnimes$User$favourites$anime(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Media?>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  nodes(_fn) => _res;
}
