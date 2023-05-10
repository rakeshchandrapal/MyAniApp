// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteMangas {
  factory Variables$Query$FavoriteMangas({
    String? name,
    int? page,
  }) =>
      Variables$Query$FavoriteMangas._({
        if (name != null) r'name': name,
        if (page != null) r'page': page,
      });

  Variables$Query$FavoriteMangas._(this._$data);

  factory Variables$Query$FavoriteMangas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$FavoriteMangas._(result$data);
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

  CopyWith$Variables$Query$FavoriteMangas<Variables$Query$FavoriteMangas>
      get copyWith => CopyWith$Variables$Query$FavoriteMangas(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FavoriteMangas) ||
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

abstract class CopyWith$Variables$Query$FavoriteMangas<TRes> {
  factory CopyWith$Variables$Query$FavoriteMangas(
    Variables$Query$FavoriteMangas instance,
    TRes Function(Variables$Query$FavoriteMangas) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteMangas;

  factory CopyWith$Variables$Query$FavoriteMangas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteMangas;

  TRes call({
    String? name,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteMangas<TRes>
    implements CopyWith$Variables$Query$FavoriteMangas<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteMangas(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteMangas _instance;

  final TRes Function(Variables$Query$FavoriteMangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$FavoriteMangas._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteMangas<TRes>
    implements CopyWith$Variables$Query$FavoriteMangas<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteMangas(this._res);

  TRes _res;

  call({
    String? name,
    int? page,
  }) =>
      _res;
}

class Query$FavoriteMangas {
  Query$FavoriteMangas({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteMangas.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteMangas(
      User: l$User == null
          ? null
          : Query$FavoriteMangas$User.fromJson(
              (l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteMangas$User? User;

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
    if (!(other is Query$FavoriteMangas) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteMangas on Query$FavoriteMangas {
  CopyWith$Query$FavoriteMangas<Query$FavoriteMangas> get copyWith =>
      CopyWith$Query$FavoriteMangas(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteMangas<TRes> {
  factory CopyWith$Query$FavoriteMangas(
    Query$FavoriteMangas instance,
    TRes Function(Query$FavoriteMangas) then,
  ) = _CopyWithImpl$Query$FavoriteMangas;

  factory CopyWith$Query$FavoriteMangas.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteMangas;

  TRes call({
    Query$FavoriteMangas$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteMangas$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteMangas<TRes>
    implements CopyWith$Query$FavoriteMangas<TRes> {
  _CopyWithImpl$Query$FavoriteMangas(
    this._instance,
    this._then,
  );

  final Query$FavoriteMangas _instance;

  final TRes Function(Query$FavoriteMangas) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteMangas(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteMangas$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteMangas$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteMangas$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteMangas$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteMangas<TRes>
    implements CopyWith$Query$FavoriteMangas<TRes> {
  _CopyWithStubImpl$Query$FavoriteMangas(this._res);

  TRes _res;

  call({
    Query$FavoriteMangas$User? User,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteMangas$User<TRes> get User =>
      CopyWith$Query$FavoriteMangas$User.stub(_res);
}

const documentNodeQueryFavoriteMangas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteMangas'),
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
                name: NameNode(value: 'manga'),
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
Query$FavoriteMangas _parserFn$Query$FavoriteMangas(
        Map<String, dynamic> data) =>
    Query$FavoriteMangas.fromJson(data);
typedef OnQueryComplete$Query$FavoriteMangas = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteMangas?,
);

class Options$Query$FavoriteMangas
    extends graphql.QueryOptions<Query$FavoriteMangas> {
  Options$Query$FavoriteMangas({
    String? operationName,
    Variables$Query$FavoriteMangas? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteMangas? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteMangas? onComplete,
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
                    data == null ? null : _parserFn$Query$FavoriteMangas(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteMangas,
          parserFn: _parserFn$Query$FavoriteMangas,
        );

  final OnQueryComplete$Query$FavoriteMangas? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteMangas
    extends graphql.WatchQueryOptions<Query$FavoriteMangas> {
  WatchOptions$Query$FavoriteMangas({
    String? operationName,
    Variables$Query$FavoriteMangas? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteMangas? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteMangas,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteMangas,
        );
}

class FetchMoreOptions$Query$FavoriteMangas extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteMangas({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteMangas? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteMangas,
        );
}

extension ClientExtension$Query$FavoriteMangas on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteMangas>> query$FavoriteMangas(
          [Options$Query$FavoriteMangas? options]) async =>
      await this.query(options ?? Options$Query$FavoriteMangas());
  graphql.ObservableQuery<Query$FavoriteMangas> watchQuery$FavoriteMangas(
          [WatchOptions$Query$FavoriteMangas? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteMangas());
  void writeQuery$FavoriteMangas({
    required Query$FavoriteMangas data,
    Variables$Query$FavoriteMangas? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteMangas),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteMangas? readQuery$FavoriteMangas({
    Variables$Query$FavoriteMangas? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavoriteMangas),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteMangas.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteMangas> useQuery$FavoriteMangas(
        [Options$Query$FavoriteMangas? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteMangas());
graphql.ObservableQuery<Query$FavoriteMangas> useWatchQuery$FavoriteMangas(
        [WatchOptions$Query$FavoriteMangas? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteMangas());

class Query$FavoriteMangas$Widget
    extends graphql_flutter.Query<Query$FavoriteMangas> {
  Query$FavoriteMangas$Widget({
    widgets.Key? key,
    Options$Query$FavoriteMangas? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteMangas> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteMangas(),
          builder: builder,
        );
}

class Query$FavoriteMangas$User {
  Query$FavoriteMangas$User({
    required this.id,
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteMangas$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteMangas$User(
      id: (l$id as int),
      favourites: l$favourites == null
          ? null
          : Query$FavoriteMangas$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$FavoriteMangas$User$favourites? favourites;

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
    if (!(other is Query$FavoriteMangas$User) ||
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

extension UtilityExtension$Query$FavoriteMangas$User
    on Query$FavoriteMangas$User {
  CopyWith$Query$FavoriteMangas$User<Query$FavoriteMangas$User> get copyWith =>
      CopyWith$Query$FavoriteMangas$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteMangas$User<TRes> {
  factory CopyWith$Query$FavoriteMangas$User(
    Query$FavoriteMangas$User instance,
    TRes Function(Query$FavoriteMangas$User) then,
  ) = _CopyWithImpl$Query$FavoriteMangas$User;

  factory CopyWith$Query$FavoriteMangas$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteMangas$User;

  TRes call({
    int? id,
    Query$FavoriteMangas$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteMangas$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteMangas$User<TRes>
    implements CopyWith$Query$FavoriteMangas$User<TRes> {
  _CopyWithImpl$Query$FavoriteMangas$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteMangas$User _instance;

  final TRes Function(Query$FavoriteMangas$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteMangas$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteMangas$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteMangas$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteMangas$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteMangas$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteMangas$User<TRes>
    implements CopyWith$Query$FavoriteMangas$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteMangas$User(this._res);

  TRes _res;

  call({
    int? id,
    Query$FavoriteMangas$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteMangas$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteMangas$User$favourites.stub(_res);
}

class Query$FavoriteMangas$User$favourites {
  Query$FavoriteMangas$User$favourites({
    this.manga,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteMangas$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteMangas$User$favourites(
      manga: l$manga == null
          ? null
          : Query$FavoriteMangas$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteMangas$User$favourites$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteMangas$User$favourites) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteMangas$User$favourites
    on Query$FavoriteMangas$User$favourites {
  CopyWith$Query$FavoriteMangas$User$favourites<
          Query$FavoriteMangas$User$favourites>
      get copyWith => CopyWith$Query$FavoriteMangas$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteMangas$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteMangas$User$favourites(
    Query$FavoriteMangas$User$favourites instance,
    TRes Function(Query$FavoriteMangas$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteMangas$User$favourites;

  factory CopyWith$Query$FavoriteMangas$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteMangas$User$favourites;

  TRes call({
    Query$FavoriteMangas$User$favourites$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> get manga;
}

class _CopyWithImpl$Query$FavoriteMangas$User$favourites<TRes>
    implements CopyWith$Query$FavoriteMangas$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteMangas$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteMangas$User$favourites _instance;

  final TRes Function(Query$FavoriteMangas$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteMangas$User$favourites(
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$FavoriteMangas$User$favourites$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$FavoriteMangas$User$favourites$manga.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteMangas$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteMangas$User$favourites<TRes>
    implements CopyWith$Query$FavoriteMangas$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteMangas$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteMangas$User$favourites$manga? manga,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$FavoriteMangas$User$favourites$manga.stub(_res);
}

class Query$FavoriteMangas$User$favourites$manga {
  Query$FavoriteMangas$User$favourites$manga({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$FavoriteMangas$User$favourites$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteMangas$User$favourites$manga(
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
    if (!(other is Query$FavoriteMangas$User$favourites$manga) ||
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

extension UtilityExtension$Query$FavoriteMangas$User$favourites$manga
    on Query$FavoriteMangas$User$favourites$manga {
  CopyWith$Query$FavoriteMangas$User$favourites$manga<
          Query$FavoriteMangas$User$favourites$manga>
      get copyWith => CopyWith$Query$FavoriteMangas$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> {
  factory CopyWith$Query$FavoriteMangas$User$favourites$manga(
    Query$FavoriteMangas$User$favourites$manga instance,
    TRes Function(Query$FavoriteMangas$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$FavoriteMangas$User$favourites$manga;

  factory CopyWith$Query$FavoriteMangas$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteMangas$User$favourites$manga;

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

class _CopyWithImpl$Query$FavoriteMangas$User$favourites$manga<TRes>
    implements CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$FavoriteMangas$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$FavoriteMangas$User$favourites$manga _instance;

  final TRes Function(Query$FavoriteMangas$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteMangas$User$favourites$manga(
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

class _CopyWithStubImpl$Query$FavoriteMangas$User$favourites$manga<TRes>
    implements CopyWith$Query$FavoriteMangas$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$FavoriteMangas$User$favourites$manga(this._res);

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
