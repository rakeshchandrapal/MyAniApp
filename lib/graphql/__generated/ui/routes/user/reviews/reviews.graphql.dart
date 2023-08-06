// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Reviews {
  factory Variables$Query$Reviews({
    int? userId,
    int? page,
  }) =>
      Variables$Query$Reviews._({
        if (userId != null) r'userId': userId,
        if (page != null) r'page': page,
      });

  Variables$Query$Reviews._(this._$data);

  factory Variables$Query$Reviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Reviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
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
    final l$userId = userId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
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
    int? userId,
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
    Object? userId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Reviews._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Reviews<TRes>
    implements CopyWith$Variables$Query$Reviews<TRes> {
  _CopyWithStubImpl$Variables$Query$Reviews(this._res);

  TRes _res;

  call({
    int? userId,
    int? page,
  }) =>
      _res;
}

class Query$Reviews {
  Query$Reviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Reviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Reviews(
      Page: l$Page == null
          ? null
          : Query$Reviews$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Reviews$Page? Page;

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
    if (!(other is Query$Reviews) || runtimeType != other.runtimeType) {
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
    Query$Reviews$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Page<TRes> get Page;
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
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews(
        Page:
            Page == _undefined ? _instance.Page : (Page as Query$Reviews$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Reviews$Page.stub(_then(_instance))
        : CopyWith$Query$Reviews$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Reviews<TRes>
    implements CopyWith$Query$Reviews<TRes> {
  _CopyWithStubImpl$Query$Reviews(this._res);

  TRes _res;

  call({
    Query$Reviews$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Page<TRes> get Page =>
      CopyWith$Query$Reviews$Page.stub(_res);
}

const documentNodeQueryReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Reviews'),
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
        name: NameNode(value: 'Page'),
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
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
                name: NameNode(value: 'media'),
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

class Query$Reviews$Page {
  Query$Reviews$Page({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$Reviews$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Reviews$Page$reviews.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Reviews$Page$reviews?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reviews$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != null && lOther$reviews != null) {
      if (l$reviews.length != lOther$reviews.length) {
        return false;
      }
      for (int i = 0; i < l$reviews.length; i++) {
        final l$reviews$entry = l$reviews[i];
        final lOther$reviews$entry = lOther$reviews[i];
        if (l$reviews$entry != lOther$reviews$entry) {
          return false;
        }
      }
    } else if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$Reviews$Page on Query$Reviews$Page {
  CopyWith$Query$Reviews$Page<Query$Reviews$Page> get copyWith =>
      CopyWith$Query$Reviews$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Reviews$Page<TRes> {
  factory CopyWith$Query$Reviews$Page(
    Query$Reviews$Page instance,
    TRes Function(Query$Reviews$Page) then,
  ) = _CopyWithImpl$Query$Reviews$Page;

  factory CopyWith$Query$Reviews$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Reviews$Page$reviews?>? reviews,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<Query$Reviews$Page$reviews?>? Function(
              Iterable<
                  CopyWith$Query$Reviews$Page$reviews<
                      Query$Reviews$Page$reviews>?>?)
          _fn);
}

class _CopyWithImpl$Query$Reviews$Page<TRes>
    implements CopyWith$Query$Reviews$Page<TRes> {
  _CopyWithImpl$Query$Reviews$Page(
    this._instance,
    this._then,
  );

  final Query$Reviews$Page _instance;

  final TRes Function(Query$Reviews$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Query$Reviews$Page$reviews?>?),
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

  TRes reviews(
          Iterable<Query$Reviews$Page$reviews?>? Function(
                  Iterable<
                      CopyWith$Query$Reviews$Page$reviews<
                          Query$Reviews$Page$reviews>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWith$Query$Reviews$Page$reviews(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Reviews$Page<TRes>
    implements CopyWith$Query$Reviews$Page<TRes> {
  _CopyWithStubImpl$Query$Reviews$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Reviews$Page$reviews?>? reviews,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  reviews(_fn) => _res;
}

class Query$Reviews$Page$reviews {
  Query$Reviews$Page$reviews({
    required this.id,
    this.summary,
    this.rating,
    this.score,
    this.media,
    this.$__typename = 'Review',
  });

  factory Query$Reviews$Page$reviews.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$rating = json['rating'];
    final l$score = json['score'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Page$reviews(
      id: (l$id as int),
      summary: (l$summary as String?),
      rating: (l$rating as int?),
      score: (l$score as int?),
      media: l$media == null
          ? null
          : Query$Reviews$Page$reviews$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final int? rating;

  final int? score;

  final Query$Reviews$Page$reviews$media? media;

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
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
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
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$rating,
      l$score,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reviews$Page$reviews) ||
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

extension UtilityExtension$Query$Reviews$Page$reviews
    on Query$Reviews$Page$reviews {
  CopyWith$Query$Reviews$Page$reviews<Query$Reviews$Page$reviews>
      get copyWith => CopyWith$Query$Reviews$Page$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Page$reviews<TRes> {
  factory CopyWith$Query$Reviews$Page$reviews(
    Query$Reviews$Page$reviews instance,
    TRes Function(Query$Reviews$Page$reviews) then,
  ) = _CopyWithImpl$Query$Reviews$Page$reviews;

  factory CopyWith$Query$Reviews$Page$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Page$reviews;

  TRes call({
    int? id,
    String? summary,
    int? rating,
    int? score,
    Query$Reviews$Page$reviews$media? media,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Page$reviews$media<TRes> get media;
}

class _CopyWithImpl$Query$Reviews$Page$reviews<TRes>
    implements CopyWith$Query$Reviews$Page$reviews<TRes> {
  _CopyWithImpl$Query$Reviews$Page$reviews(
    this._instance,
    this._then,
  );

  final Query$Reviews$Page$reviews _instance;

  final TRes Function(Query$Reviews$Page$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? rating = _undefined,
    Object? score = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Page$reviews(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Reviews$Page$reviews$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Page$reviews$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Reviews$Page$reviews$media.stub(_then(_instance))
        : CopyWith$Query$Reviews$Page$reviews$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Reviews$Page$reviews<TRes>
    implements CopyWith$Query$Reviews$Page$reviews<TRes> {
  _CopyWithStubImpl$Query$Reviews$Page$reviews(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    int? rating,
    int? score,
    Query$Reviews$Page$reviews$media? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Page$reviews$media<TRes> get media =>
      CopyWith$Query$Reviews$Page$reviews$media.stub(_res);
}

class Query$Reviews$Page$reviews$media {
  Query$Reviews$Page$reviews$media({
    required this.id,
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$Reviews$Page$reviews$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Page$reviews$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$Reviews$Page$reviews$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Reviews$Page$reviews$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Reviews$Page$reviews$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Reviews$Page$reviews$media
    on Query$Reviews$Page$reviews$media {
  CopyWith$Query$Reviews$Page$reviews$media<Query$Reviews$Page$reviews$media>
      get copyWith => CopyWith$Query$Reviews$Page$reviews$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Page$reviews$media<TRes> {
  factory CopyWith$Query$Reviews$Page$reviews$media(
    Query$Reviews$Page$reviews$media instance,
    TRes Function(Query$Reviews$Page$reviews$media) then,
  ) = _CopyWithImpl$Query$Reviews$Page$reviews$media;

  factory CopyWith$Query$Reviews$Page$reviews$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Page$reviews$media;

  TRes call({
    int? id,
    Query$Reviews$Page$reviews$media$title? title,
    String? $__typename,
  });
  CopyWith$Query$Reviews$Page$reviews$media$title<TRes> get title;
}

class _CopyWithImpl$Query$Reviews$Page$reviews$media<TRes>
    implements CopyWith$Query$Reviews$Page$reviews$media<TRes> {
  _CopyWithImpl$Query$Reviews$Page$reviews$media(
    this._instance,
    this._then,
  );

  final Query$Reviews$Page$reviews$media _instance;

  final TRes Function(Query$Reviews$Page$reviews$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Page$reviews$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Reviews$Page$reviews$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Reviews$Page$reviews$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Reviews$Page$reviews$media$title.stub(_then(_instance))
        : CopyWith$Query$Reviews$Page$reviews$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$Reviews$Page$reviews$media<TRes>
    implements CopyWith$Query$Reviews$Page$reviews$media<TRes> {
  _CopyWithStubImpl$Query$Reviews$Page$reviews$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Reviews$Page$reviews$media$title? title,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Reviews$Page$reviews$media$title<TRes> get title =>
      CopyWith$Query$Reviews$Page$reviews$media$title.stub(_res);
}

class Query$Reviews$Page$reviews$media$title {
  Query$Reviews$Page$reviews$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Reviews$Page$reviews$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Reviews$Page$reviews$media$title(
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
    if (!(other is Query$Reviews$Page$reviews$media$title) ||
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

extension UtilityExtension$Query$Reviews$Page$reviews$media$title
    on Query$Reviews$Page$reviews$media$title {
  CopyWith$Query$Reviews$Page$reviews$media$title<
          Query$Reviews$Page$reviews$media$title>
      get copyWith => CopyWith$Query$Reviews$Page$reviews$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Reviews$Page$reviews$media$title<TRes> {
  factory CopyWith$Query$Reviews$Page$reviews$media$title(
    Query$Reviews$Page$reviews$media$title instance,
    TRes Function(Query$Reviews$Page$reviews$media$title) then,
  ) = _CopyWithImpl$Query$Reviews$Page$reviews$media$title;

  factory CopyWith$Query$Reviews$Page$reviews$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Reviews$Page$reviews$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Reviews$Page$reviews$media$title<TRes>
    implements CopyWith$Query$Reviews$Page$reviews$media$title<TRes> {
  _CopyWithImpl$Query$Reviews$Page$reviews$media$title(
    this._instance,
    this._then,
  );

  final Query$Reviews$Page$reviews$media$title _instance;

  final TRes Function(Query$Reviews$Page$reviews$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Reviews$Page$reviews$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Reviews$Page$reviews$media$title<TRes>
    implements CopyWith$Query$Reviews$Page$reviews$media$title<TRes> {
  _CopyWithStubImpl$Query$Reviews$Page$reviews$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
