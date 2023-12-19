// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../../graphql/fragments.graphql.dart';
import '../../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Overview {
  factory Variables$Query$Overview({
    int? page,
    required int userId,
    Enum$MediaType? type,
  }) =>
      Variables$Query$Overview._({
        if (page != null) r'page': page,
        r'userId': userId,
        if (type != null) r'type': type,
      });

  Variables$Query$Overview._(this._$data);

  factory Variables$Query$Overview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$Overview._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int get userId => (_$data['userId'] as int);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
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

  CopyWith$Variables$Query$Overview<Variables$Query$Overview> get copyWith =>
      CopyWith$Variables$Query$Overview(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Overview) ||
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
    final l$userId = userId;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      l$userId,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Overview<TRes> {
  factory CopyWith$Variables$Query$Overview(
    Variables$Query$Overview instance,
    TRes Function(Variables$Query$Overview) then,
  ) = _CopyWithImpl$Variables$Query$Overview;

  factory CopyWith$Variables$Query$Overview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Overview;

  TRes call({
    int? page,
    int? userId,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$Overview<TRes>
    implements CopyWith$Variables$Query$Overview<TRes> {
  _CopyWithImpl$Variables$Query$Overview(
    this._instance,
    this._then,
  );

  final Variables$Query$Overview _instance;

  final TRes Function(Variables$Query$Overview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$Overview._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Overview<TRes>
    implements CopyWith$Variables$Query$Overview<TRes> {
  _CopyWithStubImpl$Variables$Query$Overview(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$Overview {
  Query$Overview({
    this.releasing,
    this.list,
    this.forums,
    this.reviews,
    this.$__typename = 'Query',
  });

  factory Query$Overview.fromJson(Map<String, dynamic> json) {
    final l$releasing = json['releasing'];
    final l$list = json['list'];
    final l$forums = json['forums'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$Overview(
      releasing: l$releasing == null
          ? null
          : Query$Overview$releasing.fromJson(
              (l$releasing as Map<String, dynamic>)),
      list: l$list == null
          ? null
          : Query$Overview$list.fromJson((l$list as Map<String, dynamic>)),
      forums: l$forums == null
          ? null
          : Query$Overview$forums.fromJson((l$forums as Map<String, dynamic>)),
      reviews: l$reviews == null
          ? null
          : Query$Overview$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Overview$releasing? releasing;

  final Query$Overview$list? list;

  final Query$Overview$forums? forums;

  final Query$Overview$reviews? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$releasing = releasing;
    _resultData['releasing'] = l$releasing?.toJson();
    final l$list = list;
    _resultData['list'] = l$list?.toJson();
    final l$forums = forums;
    _resultData['forums'] = l$forums?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$releasing = releasing;
    final l$list = list;
    final l$forums = forums;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$releasing,
      l$list,
      l$forums,
      l$reviews,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview) || runtimeType != other.runtimeType) {
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
    final l$forums = forums;
    final lOther$forums = other.forums;
    if (l$forums != lOther$forums) {
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

extension UtilityExtension$Query$Overview on Query$Overview {
  CopyWith$Query$Overview<Query$Overview> get copyWith =>
      CopyWith$Query$Overview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Overview<TRes> {
  factory CopyWith$Query$Overview(
    Query$Overview instance,
    TRes Function(Query$Overview) then,
  ) = _CopyWithImpl$Query$Overview;

  factory CopyWith$Query$Overview.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview;

  TRes call({
    Query$Overview$releasing? releasing,
    Query$Overview$list? list,
    Query$Overview$forums? forums,
    Query$Overview$reviews? reviews,
    String? $__typename,
  });
  CopyWith$Query$Overview$releasing<TRes> get releasing;
  CopyWith$Query$Overview$list<TRes> get list;
  CopyWith$Query$Overview$forums<TRes> get forums;
  CopyWith$Query$Overview$reviews<TRes> get reviews;
}

class _CopyWithImpl$Query$Overview<TRes>
    implements CopyWith$Query$Overview<TRes> {
  _CopyWithImpl$Query$Overview(
    this._instance,
    this._then,
  );

  final Query$Overview _instance;

  final TRes Function(Query$Overview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? releasing = _undefined,
    Object? list = _undefined,
    Object? forums = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview(
        releasing: releasing == _undefined
            ? _instance.releasing
            : (releasing as Query$Overview$releasing?),
        list: list == _undefined
            ? _instance.list
            : (list as Query$Overview$list?),
        forums: forums == _undefined
            ? _instance.forums
            : (forums as Query$Overview$forums?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$Overview$reviews?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Overview$releasing<TRes> get releasing {
    final local$releasing = _instance.releasing;
    return local$releasing == null
        ? CopyWith$Query$Overview$releasing.stub(_then(_instance))
        : CopyWith$Query$Overview$releasing(
            local$releasing, (e) => call(releasing: e));
  }

  CopyWith$Query$Overview$list<TRes> get list {
    final local$list = _instance.list;
    return local$list == null
        ? CopyWith$Query$Overview$list.stub(_then(_instance))
        : CopyWith$Query$Overview$list(local$list, (e) => call(list: e));
  }

  CopyWith$Query$Overview$forums<TRes> get forums {
    final local$forums = _instance.forums;
    return local$forums == null
        ? CopyWith$Query$Overview$forums.stub(_then(_instance))
        : CopyWith$Query$Overview$forums(local$forums, (e) => call(forums: e));
  }

  CopyWith$Query$Overview$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$Overview$reviews.stub(_then(_instance))
        : CopyWith$Query$Overview$reviews(
            local$reviews, (e) => call(reviews: e));
  }
}

class _CopyWithStubImpl$Query$Overview<TRes>
    implements CopyWith$Query$Overview<TRes> {
  _CopyWithStubImpl$Query$Overview(this._res);

  TRes _res;

  call({
    Query$Overview$releasing? releasing,
    Query$Overview$list? list,
    Query$Overview$forums? forums,
    Query$Overview$reviews? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Overview$releasing<TRes> get releasing =>
      CopyWith$Query$Overview$releasing.stub(_res);

  CopyWith$Query$Overview$list<TRes> get list =>
      CopyWith$Query$Overview$list.stub(_res);

  CopyWith$Query$Overview$forums<TRes> get forums =>
      CopyWith$Query$Overview$forums.stub(_res);

  CopyWith$Query$Overview$reviews<TRes> get reviews =>
      CopyWith$Query$Overview$reviews.stub(_res);
}

const documentNodeQueryOverview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Overview'),
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
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'STATUS')),
                  EnumValueNode(name: NameNode(value: 'START_DATE')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReleasingMedia'),
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
        alias: NameNode(value: 'list'),
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'mediaList'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'CURRENT')),
                  EnumValueNode(name: NameNode(value: 'REPEATING')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value:
                    EnumValueNode(name: NameNode(value: 'UPDATED_TIME_DESC')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
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
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'forums'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '5'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'threads'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'REPLIED_AT_DESC')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadFragment'),
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
        alias: NameNode(value: 'reviews'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '5'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
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
                name: NameNode(value: 'summary'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'bannerImage'),
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
                name: NameNode(value: 'user'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserFragment'),
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
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionThreadFragment,
  fragmentDefinitionUserFragment,
]);
Query$Overview _parserFn$Query$Overview(Map<String, dynamic> data) =>
    Query$Overview.fromJson(data);
typedef OnQueryComplete$Query$Overview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Overview?,
);

class Options$Query$Overview extends graphql.QueryOptions<Query$Overview> {
  Options$Query$Overview({
    String? operationName,
    required Variables$Query$Overview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Overview? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Overview? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Overview(data),
                  ),
          onError: onError,
          document: documentNodeQueryOverview,
          parserFn: _parserFn$Query$Overview,
        );

  final OnQueryComplete$Query$Overview? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Overview
    extends graphql.WatchQueryOptions<Query$Overview> {
  WatchOptions$Query$Overview({
    String? operationName,
    required Variables$Query$Overview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Overview? typedOptimisticResult,
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
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryOverview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Overview,
        );
}

class FetchMoreOptions$Query$Overview extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Overview({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Overview variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOverview,
        );
}

extension ClientExtension$Query$Overview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Overview>> query$Overview(
          Options$Query$Overview options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Overview> watchQuery$Overview(
          WatchOptions$Query$Overview options) =>
      this.watchQuery(options);
  void writeQuery$Overview({
    required Query$Overview data,
    required Variables$Query$Overview variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryOverview),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Overview? readQuery$Overview({
    required Variables$Query$Overview variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOverview),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Overview.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Overview> useQuery$Overview(
        Options$Query$Overview options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Overview> useWatchQuery$Overview(
        WatchOptions$Query$Overview options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Overview$Widget extends graphql_flutter.Query<Query$Overview> {
  Query$Overview$Widget({
    widgets.Key? key,
    required Options$Query$Overview options,
    required graphql_flutter.QueryBuilder<Query$Overview> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Overview$releasing {
  Query$Overview$releasing({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$Overview$releasing.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Overview$releasing(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Overview$releasing$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Overview$releasing$pageInfo? pageInfo;

  final List<Fragment$ReleasingMedia?>? media;

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
    if (!(other is Query$Overview$releasing) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Overview$releasing
    on Query$Overview$releasing {
  CopyWith$Query$Overview$releasing<Query$Overview$releasing> get copyWith =>
      CopyWith$Query$Overview$releasing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Overview$releasing<TRes> {
  factory CopyWith$Query$Overview$releasing(
    Query$Overview$releasing instance,
    TRes Function(Query$Overview$releasing) then,
  ) = _CopyWithImpl$Query$Overview$releasing;

  factory CopyWith$Query$Overview$releasing.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$releasing;

  TRes call({
    Query$Overview$releasing$pageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  CopyWith$Query$Overview$releasing$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$Overview$releasing<TRes>
    implements CopyWith$Query$Overview$releasing<TRes> {
  _CopyWithImpl$Query$Overview$releasing(
    this._instance,
    this._then,
  );

  final Query$Overview$releasing _instance;

  final TRes Function(Query$Overview$releasing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$releasing(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Overview$releasing$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$ReleasingMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Overview$releasing$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Overview$releasing$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Overview$releasing$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$ReleasingMedia?>? Function(
                  Iterable<
                      CopyWith$Fragment$ReleasingMedia<
                          Fragment$ReleasingMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ReleasingMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Overview$releasing<TRes>
    implements CopyWith$Query$Overview$releasing<TRes> {
  _CopyWithStubImpl$Query$Overview$releasing(this._res);

  TRes _res;

  call({
    Query$Overview$releasing$pageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Overview$releasing$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Overview$releasing$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$Overview$releasing$pageInfo {
  Query$Overview$releasing$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Overview$releasing$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Overview$releasing$pageInfo(
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
    if (!(other is Query$Overview$releasing$pageInfo) ||
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

extension UtilityExtension$Query$Overview$releasing$pageInfo
    on Query$Overview$releasing$pageInfo {
  CopyWith$Query$Overview$releasing$pageInfo<Query$Overview$releasing$pageInfo>
      get copyWith => CopyWith$Query$Overview$releasing$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Overview$releasing$pageInfo<TRes> {
  factory CopyWith$Query$Overview$releasing$pageInfo(
    Query$Overview$releasing$pageInfo instance,
    TRes Function(Query$Overview$releasing$pageInfo) then,
  ) = _CopyWithImpl$Query$Overview$releasing$pageInfo;

  factory CopyWith$Query$Overview$releasing$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$releasing$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Overview$releasing$pageInfo<TRes>
    implements CopyWith$Query$Overview$releasing$pageInfo<TRes> {
  _CopyWithImpl$Query$Overview$releasing$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Overview$releasing$pageInfo _instance;

  final TRes Function(Query$Overview$releasing$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$releasing$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Overview$releasing$pageInfo<TRes>
    implements CopyWith$Query$Overview$releasing$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Overview$releasing$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Overview$list {
  Query$Overview$list({
    this.mediaList,
    this.$__typename = 'Page',
  });

  factory Query$Overview$list.fromJson(Map<String, dynamic> json) {
    final l$mediaList = json['mediaList'];
    final l$$__typename = json['__typename'];
    return Query$Overview$list(
      mediaList: (l$mediaList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaListEntry?>? mediaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaList = mediaList;
    _resultData['mediaList'] = l$mediaList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaList = mediaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaList == null ? null : Object.hashAll(l$mediaList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview$list) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaList = mediaList;
    final lOther$mediaList = other.mediaList;
    if (l$mediaList != null && lOther$mediaList != null) {
      if (l$mediaList.length != lOther$mediaList.length) {
        return false;
      }
      for (int i = 0; i < l$mediaList.length; i++) {
        final l$mediaList$entry = l$mediaList[i];
        final lOther$mediaList$entry = lOther$mediaList[i];
        if (l$mediaList$entry != lOther$mediaList$entry) {
          return false;
        }
      }
    } else if (l$mediaList != lOther$mediaList) {
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

extension UtilityExtension$Query$Overview$list on Query$Overview$list {
  CopyWith$Query$Overview$list<Query$Overview$list> get copyWith =>
      CopyWith$Query$Overview$list(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Overview$list<TRes> {
  factory CopyWith$Query$Overview$list(
    Query$Overview$list instance,
    TRes Function(Query$Overview$list) then,
  ) = _CopyWithImpl$Query$Overview$list;

  factory CopyWith$Query$Overview$list.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$list;

  TRes call({
    List<Fragment$MediaListEntry?>? mediaList,
    String? $__typename,
  });
  TRes mediaList(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$Overview$list<TRes>
    implements CopyWith$Query$Overview$list<TRes> {
  _CopyWithImpl$Query$Overview$list(
    this._instance,
    this._then,
  );

  final Query$Overview$list _instance;

  final TRes Function(Query$Overview$list) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$list(
        mediaList: mediaList == _undefined
            ? _instance.mediaList
            : (mediaList as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes mediaList(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          mediaList: _fn(_instance.mediaList?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Overview$list<TRes>
    implements CopyWith$Query$Overview$list<TRes> {
  _CopyWithStubImpl$Query$Overview$list(this._res);

  TRes _res;

  call({
    List<Fragment$MediaListEntry?>? mediaList,
    String? $__typename,
  }) =>
      _res;

  mediaList(_fn) => _res;
}

class Query$Overview$forums {
  Query$Overview$forums({
    this.threads,
    this.$__typename = 'Page',
  });

  factory Query$Overview$forums.fromJson(Map<String, dynamic> json) {
    final l$threads = json['threads'];
    final l$$__typename = json['__typename'];
    return Query$Overview$forums(
      threads: (l$threads as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ThreadFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ThreadFragment?>? threads;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$threads = threads;
    _resultData['threads'] = l$threads?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$threads = threads;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$threads == null ? null : Object.hashAll(l$threads.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview$forums) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$threads = threads;
    final lOther$threads = other.threads;
    if (l$threads != null && lOther$threads != null) {
      if (l$threads.length != lOther$threads.length) {
        return false;
      }
      for (int i = 0; i < l$threads.length; i++) {
        final l$threads$entry = l$threads[i];
        final lOther$threads$entry = lOther$threads[i];
        if (l$threads$entry != lOther$threads$entry) {
          return false;
        }
      }
    } else if (l$threads != lOther$threads) {
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

extension UtilityExtension$Query$Overview$forums on Query$Overview$forums {
  CopyWith$Query$Overview$forums<Query$Overview$forums> get copyWith =>
      CopyWith$Query$Overview$forums(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Overview$forums<TRes> {
  factory CopyWith$Query$Overview$forums(
    Query$Overview$forums instance,
    TRes Function(Query$Overview$forums) then,
  ) = _CopyWithImpl$Query$Overview$forums;

  factory CopyWith$Query$Overview$forums.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$forums;

  TRes call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  });
  TRes threads(
      Iterable<Fragment$ThreadFragment?>? Function(
              Iterable<
                  CopyWith$Fragment$ThreadFragment<Fragment$ThreadFragment>?>?)
          _fn);
}

class _CopyWithImpl$Query$Overview$forums<TRes>
    implements CopyWith$Query$Overview$forums<TRes> {
  _CopyWithImpl$Query$Overview$forums(
    this._instance,
    this._then,
  );

  final Query$Overview$forums _instance;

  final TRes Function(Query$Overview$forums) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? threads = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$forums(
        threads: threads == _undefined
            ? _instance.threads
            : (threads as List<Fragment$ThreadFragment?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes threads(
          Iterable<Fragment$ThreadFragment?>? Function(
                  Iterable<
                      CopyWith$Fragment$ThreadFragment<
                          Fragment$ThreadFragment>?>?)
              _fn) =>
      call(
          threads: _fn(_instance.threads?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ThreadFragment(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Overview$forums<TRes>
    implements CopyWith$Query$Overview$forums<TRes> {
  _CopyWithStubImpl$Query$Overview$forums(this._res);

  TRes _res;

  call({
    List<Fragment$ThreadFragment?>? threads,
    String? $__typename,
  }) =>
      _res;

  threads(_fn) => _res;
}

class Query$Overview$reviews {
  Query$Overview$reviews({
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$Overview$reviews.fromJson(Map<String, dynamic> json) {
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$Overview$reviews(
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Overview$reviews$reviews.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Overview$reviews$reviews?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview$reviews) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Overview$reviews on Query$Overview$reviews {
  CopyWith$Query$Overview$reviews<Query$Overview$reviews> get copyWith =>
      CopyWith$Query$Overview$reviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Overview$reviews<TRes> {
  factory CopyWith$Query$Overview$reviews(
    Query$Overview$reviews instance,
    TRes Function(Query$Overview$reviews) then,
  ) = _CopyWithImpl$Query$Overview$reviews;

  factory CopyWith$Query$Overview$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$reviews;

  TRes call({
    List<Query$Overview$reviews$reviews?>? reviews,
    String? $__typename,
  });
  TRes reviews(
      Iterable<Query$Overview$reviews$reviews?>? Function(
              Iterable<
                  CopyWith$Query$Overview$reviews$reviews<
                      Query$Overview$reviews$reviews>?>?)
          _fn);
}

class _CopyWithImpl$Query$Overview$reviews<TRes>
    implements CopyWith$Query$Overview$reviews<TRes> {
  _CopyWithImpl$Query$Overview$reviews(
    this._instance,
    this._then,
  );

  final Query$Overview$reviews _instance;

  final TRes Function(Query$Overview$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$reviews(
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Query$Overview$reviews$reviews?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes reviews(
          Iterable<Query$Overview$reviews$reviews?>? Function(
                  Iterable<
                      CopyWith$Query$Overview$reviews$reviews<
                          Query$Overview$reviews$reviews>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWith$Query$Overview$reviews$reviews(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Overview$reviews<TRes>
    implements CopyWith$Query$Overview$reviews<TRes> {
  _CopyWithStubImpl$Query$Overview$reviews(this._res);

  TRes _res;

  call({
    List<Query$Overview$reviews$reviews?>? reviews,
    String? $__typename,
  }) =>
      _res;

  reviews(_fn) => _res;
}

class Query$Overview$reviews$reviews {
  Query$Overview$reviews$reviews({
    required this.id,
    this.rating,
    this.ratingAmount,
    this.summary,
    this.media,
    this.user,
    this.$__typename = 'Review',
  });

  factory Query$Overview$reviews$reviews.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$summary = json['summary'];
    final l$media = json['media'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Overview$reviews$reviews(
      id: (l$id as int),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      summary: (l$summary as String?),
      media: l$media == null
          ? null
          : Query$Overview$reviews$reviews$media.fromJson(
              (l$media as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final int? ratingAmount;

  final String? summary;

  final Query$Overview$reviews$reviews$media? media;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$summary = summary;
    final l$media = media;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$ratingAmount,
      l$summary,
      l$media,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview$reviews$reviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$Overview$reviews$reviews
    on Query$Overview$reviews$reviews {
  CopyWith$Query$Overview$reviews$reviews<Query$Overview$reviews$reviews>
      get copyWith => CopyWith$Query$Overview$reviews$reviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Overview$reviews$reviews<TRes> {
  factory CopyWith$Query$Overview$reviews$reviews(
    Query$Overview$reviews$reviews instance,
    TRes Function(Query$Overview$reviews$reviews) then,
  ) = _CopyWithImpl$Query$Overview$reviews$reviews;

  factory CopyWith$Query$Overview$reviews$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$reviews$reviews;

  TRes call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$Overview$reviews$reviews$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Query$Overview$reviews$reviews$media<TRes> get media;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Overview$reviews$reviews<TRes>
    implements CopyWith$Query$Overview$reviews$reviews<TRes> {
  _CopyWithImpl$Query$Overview$reviews$reviews(
    this._instance,
    this._then,
  );

  final Query$Overview$reviews$reviews _instance;

  final TRes Function(Query$Overview$reviews$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? summary = _undefined,
    Object? media = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$reviews$reviews(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Overview$reviews$reviews$media?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Overview$reviews$reviews$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Overview$reviews$reviews$media.stub(_then(_instance))
        : CopyWith$Query$Overview$reviews$reviews$media(
            local$media, (e) => call(media: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Overview$reviews$reviews<TRes>
    implements CopyWith$Query$Overview$reviews$reviews<TRes> {
  _CopyWithStubImpl$Query$Overview$reviews$reviews(this._res);

  TRes _res;

  call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Query$Overview$reviews$reviews$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Overview$reviews$reviews$media<TRes> get media =>
      CopyWith$Query$Overview$reviews$reviews$media.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Overview$reviews$reviews$media {
  Query$Overview$reviews$reviews$media({
    required this.id,
    this.title,
    this.type,
    this.bannerImage,
    this.$__typename = 'Media',
  });

  factory Query$Overview$reviews$reviews$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return Query$Overview$reviews$reviews$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$Overview$reviews$reviews$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Overview$reviews$reviews$media$title? title;

  final Enum$MediaType? type;

  final String? bannerImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$bannerImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Overview$reviews$reviews$media) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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

extension UtilityExtension$Query$Overview$reviews$reviews$media
    on Query$Overview$reviews$reviews$media {
  CopyWith$Query$Overview$reviews$reviews$media<
          Query$Overview$reviews$reviews$media>
      get copyWith => CopyWith$Query$Overview$reviews$reviews$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Overview$reviews$reviews$media<TRes> {
  factory CopyWith$Query$Overview$reviews$reviews$media(
    Query$Overview$reviews$reviews$media instance,
    TRes Function(Query$Overview$reviews$reviews$media) then,
  ) = _CopyWithImpl$Query$Overview$reviews$reviews$media;

  factory CopyWith$Query$Overview$reviews$reviews$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$reviews$reviews$media;

  TRes call({
    int? id,
    Query$Overview$reviews$reviews$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  });
  CopyWith$Query$Overview$reviews$reviews$media$title<TRes> get title;
}

class _CopyWithImpl$Query$Overview$reviews$reviews$media<TRes>
    implements CopyWith$Query$Overview$reviews$reviews$media<TRes> {
  _CopyWithImpl$Query$Overview$reviews$reviews$media(
    this._instance,
    this._then,
  );

  final Query$Overview$reviews$reviews$media _instance;

  final TRes Function(Query$Overview$reviews$reviews$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$reviews$reviews$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Overview$reviews$reviews$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Overview$reviews$reviews$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Overview$reviews$reviews$media$title.stub(
            _then(_instance))
        : CopyWith$Query$Overview$reviews$reviews$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$Overview$reviews$reviews$media<TRes>
    implements CopyWith$Query$Overview$reviews$reviews$media<TRes> {
  _CopyWithStubImpl$Query$Overview$reviews$reviews$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Overview$reviews$reviews$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Overview$reviews$reviews$media$title<TRes> get title =>
      CopyWith$Query$Overview$reviews$reviews$media$title.stub(_res);
}

class Query$Overview$reviews$reviews$media$title {
  Query$Overview$reviews$reviews$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Overview$reviews$reviews$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Overview$reviews$reviews$media$title(
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
    if (!(other is Query$Overview$reviews$reviews$media$title) ||
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

extension UtilityExtension$Query$Overview$reviews$reviews$media$title
    on Query$Overview$reviews$reviews$media$title {
  CopyWith$Query$Overview$reviews$reviews$media$title<
          Query$Overview$reviews$reviews$media$title>
      get copyWith => CopyWith$Query$Overview$reviews$reviews$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Overview$reviews$reviews$media$title<TRes> {
  factory CopyWith$Query$Overview$reviews$reviews$media$title(
    Query$Overview$reviews$reviews$media$title instance,
    TRes Function(Query$Overview$reviews$reviews$media$title) then,
  ) = _CopyWithImpl$Query$Overview$reviews$reviews$media$title;

  factory CopyWith$Query$Overview$reviews$reviews$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Overview$reviews$reviews$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Overview$reviews$reviews$media$title<TRes>
    implements CopyWith$Query$Overview$reviews$reviews$media$title<TRes> {
  _CopyWithImpl$Query$Overview$reviews$reviews$media$title(
    this._instance,
    this._then,
  );

  final Query$Overview$reviews$reviews$media$title _instance;

  final TRes Function(Query$Overview$reviews$reviews$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Overview$reviews$reviews$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Overview$reviews$reviews$media$title<TRes>
    implements CopyWith$Query$Overview$reviews$reviews$media$title<TRes> {
  _CopyWithStubImpl$Query$Overview$reviews$reviews$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
