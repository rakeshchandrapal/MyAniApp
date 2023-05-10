// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Reviews {
  factory Variables$Query$Reviews({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$Reviews._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$Reviews._(this._$data);

  factory Variables$Query$Reviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Reviews._(result$data);
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

  CopyWith$Variables$Query$Reviews<Variables$Query$Reviews> get copyWith =>
      CopyWith$Variables$Query$Reviews(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Reviews) ||
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

abstract class CopyWith$Variables$Query$Reviews<TRes> {
  factory CopyWith$Variables$Query$Reviews(
    Variables$Query$Reviews instance,
    TRes Function(Variables$Query$Reviews) then,
  ) = _CopyWithImpl$Variables$Query$Reviews;

  factory CopyWith$Variables$Query$Reviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Reviews;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Reviews<TRes>
    implements CopyWith$Variables$Query$Reviews<TRes> {
  _CopyWithImpl$Variables$Query$Reviews(
    this._instance,
    this._then,
  );

  final Variables$Query$Reviews _instance;

  final TRes Function(Variables$Query$Reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Reviews._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Reviews<TRes>
    implements CopyWith$Variables$Query$Reviews<TRes> {
  _CopyWithStubImpl$Variables$Query$Reviews(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$Reviews {
  Query$Reviews({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Reviews.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Reviews(
      Media: l$Media == null
          ? null
          : Query$Reviews$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Reviews$Media? Media;

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
    if (!(other is Query$Reviews) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Reviews on Query$Reviews {
  CopyWith$Query$Reviews<Query$Reviews> get copyWith => CopyWith$Query$Reviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Reviews<TRes> {
  factory CopyWith$Query$Reviews(
    Query$Reviews instance,
    TRes Function(Query$Reviews) then,
  ) = _CopyWithImpl$Query$Reviews;

  factory CopyWith$Query$Reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews;

  TRes call({
    Query$Reviews$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Reviews<TRes>
    implements CopyWith$Query$Reviews<TRes> {
  _CopyWithImpl$Query$Reviews(
    this._instance,
    this._then,
  );

  final Query$Reviews _instance;

  final TRes Function(Query$Reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Reviews$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Reviews$Media.stub(_then(_instance))
        : CopyWith$Query$Reviews$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Reviews<TRes>
    implements CopyWith$Query$Reviews<TRes> {
  _CopyWithStubImpl$Query$Reviews(this._res);

  TRes _res;

  call({
    Query$Reviews$Media? Media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Media<TRes> get Media =>
      CopyWith$Query$Reviews$Media.stub(_res);
}

const documentNodeQueryReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Reviews'),
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RATING_DESC')),
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
  fragmentDefinitionPageInfo,
]);
Query$Reviews _parserFn$Query$Reviews(Map<String, dynamic> data) =>
    Query$Reviews.fromJson(data);
typedef OnQueryComplete$Query$Reviews = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Reviews?,
);

class Options$Query$Reviews extends graphql.QueryOptions<Query$Reviews> {
  Options$Query$Reviews({
    String? operationName,
    Variables$Query$Reviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Reviews? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Reviews? onComplete,
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
                    data == null ? null : _parserFn$Query$Reviews(data),
                  ),
          onError: onError,
          document: documentNodeQueryReviews,
          parserFn: _parserFn$Query$Reviews,
        );

  final OnQueryComplete$Query$Reviews? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Reviews
    extends graphql.WatchQueryOptions<Query$Reviews> {
  WatchOptions$Query$Reviews({
    String? operationName,
    Variables$Query$Reviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Reviews? typedOptimisticResult,
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
          document: documentNodeQueryReviews,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Reviews,
        );
}

class FetchMoreOptions$Query$Reviews extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Reviews({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Reviews? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryReviews,
        );
}

extension ClientExtension$Query$Reviews on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Reviews>> query$Reviews(
          [Options$Query$Reviews? options]) async =>
      await this.query(options ?? Options$Query$Reviews());
  graphql.ObservableQuery<Query$Reviews> watchQuery$Reviews(
          [WatchOptions$Query$Reviews? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Reviews());
  void writeQuery$Reviews({
    required Query$Reviews data,
    Variables$Query$Reviews? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryReviews),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Reviews? readQuery$Reviews({
    Variables$Query$Reviews? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReviews),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Reviews.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Reviews> useQuery$Reviews(
        [Options$Query$Reviews? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Reviews());
graphql.ObservableQuery<Query$Reviews> useWatchQuery$Reviews(
        [WatchOptions$Query$Reviews? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Reviews());

class Query$Reviews$Widget extends graphql_flutter.Query<Query$Reviews> {
  Query$Reviews$Widget({
    widgets.Key? key,
    Options$Query$Reviews? options,
    required graphql_flutter.QueryBuilder<Query$Reviews> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Reviews(),
          builder: builder,
        );
}

class Query$Reviews$Media {
  Query$Reviews$Media({
    required this.id,
    this.reviews,
    this.$__typename = 'Media',
  });

  factory Query$Reviews$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Media(
      id: (l$id as int),
      reviews: l$reviews == null
          ? null
          : Query$Reviews$Media$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Reviews$Media$reviews? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$reviews,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reviews$Media) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$Reviews$Media on Query$Reviews$Media {
  CopyWith$Query$Reviews$Media<Query$Reviews$Media> get copyWith =>
      CopyWith$Query$Reviews$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Reviews$Media<TRes> {
  factory CopyWith$Query$Reviews$Media(
    Query$Reviews$Media instance,
    TRes Function(Query$Reviews$Media) then,
  ) = _CopyWithImpl$Query$Reviews$Media;

  factory CopyWith$Query$Reviews$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Media;

  TRes call({
    int? id,
    Query$Reviews$Media$reviews? reviews,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Media$reviews<TRes> get reviews;
}

class _CopyWithImpl$Query$Reviews$Media<TRes>
    implements CopyWith$Query$Reviews$Media<TRes> {
  _CopyWithImpl$Query$Reviews$Media(
    this._instance,
    this._then,
  );

  final Query$Reviews$Media _instance;

  final TRes Function(Query$Reviews$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$Reviews$Media$reviews?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Media$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$Reviews$Media$reviews.stub(_then(_instance))
        : CopyWith$Query$Reviews$Media$reviews(
            local$reviews, (e) => call(reviews: e));
  }
}

class _CopyWithStubImpl$Query$Reviews$Media<TRes>
    implements CopyWith$Query$Reviews$Media<TRes> {
  _CopyWithStubImpl$Query$Reviews$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Reviews$Media$reviews? reviews,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Media$reviews<TRes> get reviews =>
      CopyWith$Query$Reviews$Media$reviews.stub(_res);
}

class Query$Reviews$Media$reviews {
  Query$Reviews$Media$reviews({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'ReviewConnection',
  });

  factory Query$Reviews$Media$reviews.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Media$reviews(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Reviews$Media$reviews$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Reviews$Media$reviews$nodes?>? nodes;

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
    if (!(other is Query$Reviews$Media$reviews) ||
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

extension UtilityExtension$Query$Reviews$Media$reviews
    on Query$Reviews$Media$reviews {
  CopyWith$Query$Reviews$Media$reviews<Query$Reviews$Media$reviews>
      get copyWith => CopyWith$Query$Reviews$Media$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Media$reviews<TRes> {
  factory CopyWith$Query$Reviews$Media$reviews(
    Query$Reviews$Media$reviews instance,
    TRes Function(Query$Reviews$Media$reviews) then,
  ) = _CopyWithImpl$Query$Reviews$Media$reviews;

  factory CopyWith$Query$Reviews$Media$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Media$reviews;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Reviews$Media$reviews$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$Reviews$Media$reviews$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Reviews$Media$reviews$nodes<
                      Query$Reviews$Media$reviews$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Reviews$Media$reviews<TRes>
    implements CopyWith$Query$Reviews$Media$reviews<TRes> {
  _CopyWithImpl$Query$Reviews$Media$reviews(
    this._instance,
    this._then,
  );

  final Query$Reviews$Media$reviews _instance;

  final TRes Function(Query$Reviews$Media$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Media$reviews(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Reviews$Media$reviews$nodes?>?),
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
          Iterable<Query$Reviews$Media$reviews$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Reviews$Media$reviews$nodes<
                          Query$Reviews$Media$reviews$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Reviews$Media$reviews$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Reviews$Media$reviews<TRes>
    implements CopyWith$Query$Reviews$Media$reviews<TRes> {
  _CopyWithStubImpl$Query$Reviews$Media$reviews(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Reviews$Media$reviews$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  nodes(_fn) => _res;
}

class Query$Reviews$Media$reviews$nodes {
  Query$Reviews$Media$reviews$nodes({
    required this.id,
    this.summary,
    this.rating,
    this.score,
    this.user,
    this.$__typename = 'Review',
  });

  factory Query$Reviews$Media$reviews$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$rating = json['rating'];
    final l$score = json['score'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Media$reviews$nodes(
      id: (l$id as int),
      summary: (l$summary as String?),
      rating: (l$rating as int?),
      score: (l$score as int?),
      user: l$user == null
          ? null
          : Query$Reviews$Media$reviews$nodes$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final int? rating;

  final int? score;

  final Query$Reviews$Media$reviews$nodes$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$summary = summary;
    final l$rating = rating;
    final l$score = score;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$rating,
      l$score,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reviews$Media$reviews$nodes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Reviews$Media$reviews$nodes
    on Query$Reviews$Media$reviews$nodes {
  CopyWith$Query$Reviews$Media$reviews$nodes<Query$Reviews$Media$reviews$nodes>
      get copyWith => CopyWith$Query$Reviews$Media$reviews$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Media$reviews$nodes<TRes> {
  factory CopyWith$Query$Reviews$Media$reviews$nodes(
    Query$Reviews$Media$reviews$nodes instance,
    TRes Function(Query$Reviews$Media$reviews$nodes) then,
  ) = _CopyWithImpl$Query$Reviews$Media$reviews$nodes;

  factory CopyWith$Query$Reviews$Media$reviews$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes;

  TRes call({
    int? id,
    String? summary,
    int? rating,
    int? score,
    Query$Reviews$Media$reviews$nodes$user? user,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> get user;
}

class _CopyWithImpl$Query$Reviews$Media$reviews$nodes<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes<TRes> {
  _CopyWithImpl$Query$Reviews$Media$reviews$nodes(
    this._instance,
    this._then,
  );

  final Query$Reviews$Media$reviews$nodes _instance;

  final TRes Function(Query$Reviews$Media$reviews$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? rating = _undefined,
    Object? score = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Media$reviews$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$Reviews$Media$reviews$nodes$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$Reviews$Media$reviews$nodes$user.stub(_then(_instance))
        : CopyWith$Query$Reviews$Media$reviews$nodes$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes<TRes> {
  _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    int? rating,
    int? score,
    Query$Reviews$Media$reviews$nodes$user? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> get user =>
      CopyWith$Query$Reviews$Media$reviews$nodes$user.stub(_res);
}

class Query$Reviews$Media$reviews$nodes$user {
  Query$Reviews$Media$reviews$nodes$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$Reviews$Media$reviews$nodes$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Media$reviews$nodes$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Reviews$Media$reviews$nodes$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Reviews$Media$reviews$nodes$user$avatar? avatar;

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
    if (!(other is Query$Reviews$Media$reviews$nodes$user) ||
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

extension UtilityExtension$Query$Reviews$Media$reviews$nodes$user
    on Query$Reviews$Media$reviews$nodes$user {
  CopyWith$Query$Reviews$Media$reviews$nodes$user<
          Query$Reviews$Media$reviews$nodes$user>
      get copyWith => CopyWith$Query$Reviews$Media$reviews$nodes$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> {
  factory CopyWith$Query$Reviews$Media$reviews$nodes$user(
    Query$Reviews$Media$reviews$nodes$user instance,
    TRes Function(Query$Reviews$Media$reviews$nodes$user) then,
  ) = _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user;

  factory CopyWith$Query$Reviews$Media$reviews$nodes$user.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user;

  TRes call({
    int? id,
    String? name,
    Query$Reviews$Media$reviews$nodes$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> {
  _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user(
    this._instance,
    this._then,
  );

  final Query$Reviews$Media$reviews$nodes$user _instance;

  final TRes Function(Query$Reviews$Media$reviews$nodes$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Media$reviews$nodes$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Reviews$Media$reviews$nodes$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes$user<TRes> {
  _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Reviews$Media$reviews$nodes$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> get avatar =>
      CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar.stub(_res);
}

class Query$Reviews$Media$reviews$nodes$user$avatar {
  Query$Reviews$Media$reviews$nodes$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$Reviews$Media$reviews$nodes$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Media$reviews$nodes$user$avatar(
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
    if (!(other is Query$Reviews$Media$reviews$nodes$user$avatar) ||
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

extension UtilityExtension$Query$Reviews$Media$reviews$nodes$user$avatar
    on Query$Reviews$Media$reviews$nodes$user$avatar {
  CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<
          Query$Reviews$Media$reviews$nodes$user$avatar>
      get copyWith => CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> {
  factory CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar(
    Query$Reviews$Media$reviews$nodes$user$avatar instance,
    TRes Function(Query$Reviews$Media$reviews$nodes$user$avatar) then,
  ) = _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user$avatar;

  factory CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user$avatar<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> {
  _CopyWithImpl$Query$Reviews$Media$reviews$nodes$user$avatar(
    this._instance,
    this._then,
  );

  final Query$Reviews$Media$reviews$nodes$user$avatar _instance;

  final TRes Function(Query$Reviews$Media$reviews$nodes$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Media$reviews$nodes$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user$avatar<TRes>
    implements CopyWith$Query$Reviews$Media$reviews$nodes$user$avatar<TRes> {
  _CopyWithStubImpl$Query$Reviews$Media$reviews$nodes$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
