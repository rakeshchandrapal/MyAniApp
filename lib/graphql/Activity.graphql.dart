import 'Media.graphql.dart';
import 'Notifications.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Query$Activities {
  factory Variables$Query$Activities({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      Variables$Query$Activities._({
        if (isFollowing != null) r'isFollowing': isFollowing,
        if (hasReplies != null) r'hasReplies': hasReplies,
        if (activityType != null) r'activityType': activityType,
        if (page != null) r'page': page,
      });

  Variables$Query$Activities._(this._$data);

  factory Variables$Query$Activities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    if (data.containsKey('hasReplies')) {
      final l$hasReplies = data['hasReplies'];
      result$data['hasReplies'] = (l$hasReplies as bool?);
    }
    if (data.containsKey('activityType')) {
      final l$activityType = data['activityType'];
      result$data['activityType'] = l$activityType == null
          ? null
          : fromJson$Enum$ActivityType((l$activityType as String));
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Activities._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get isFollowing => (_$data['isFollowing'] as bool?);
  bool? get hasReplies => (_$data['hasReplies'] as bool?);
  Enum$ActivityType? get activityType =>
      (_$data['activityType'] as Enum$ActivityType?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    if (_$data.containsKey('hasReplies')) {
      final l$hasReplies = hasReplies;
      result$data['hasReplies'] = l$hasReplies;
    }
    if (_$data.containsKey('activityType')) {
      final l$activityType = activityType;
      result$data['activityType'] = l$activityType == null
          ? null
          : toJson$Enum$ActivityType(l$activityType);
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Activities<Variables$Query$Activities>
      get copyWith => CopyWith$Variables$Query$Activities(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Activities) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (_$data.containsKey('isFollowing') !=
        other._$data.containsKey('isFollowing')) {
      return false;
    }
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    final l$hasReplies = hasReplies;
    final lOther$hasReplies = other.hasReplies;
    if (_$data.containsKey('hasReplies') !=
        other._$data.containsKey('hasReplies')) {
      return false;
    }
    if (l$hasReplies != lOther$hasReplies) {
      return false;
    }
    final l$activityType = activityType;
    final lOther$activityType = other.activityType;
    if (_$data.containsKey('activityType') !=
        other._$data.containsKey('activityType')) {
      return false;
    }
    if (l$activityType != lOther$activityType) {
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
    final l$isFollowing = isFollowing;
    final l$hasReplies = hasReplies;
    final l$activityType = activityType;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
      _$data.containsKey('hasReplies') ? l$hasReplies : const {},
      _$data.containsKey('activityType') ? l$activityType : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Activities<TRes> {
  factory CopyWith$Variables$Query$Activities(
    Variables$Query$Activities instance,
    TRes Function(Variables$Query$Activities) then,
  ) = _CopyWithImpl$Variables$Query$Activities;

  factory CopyWith$Variables$Query$Activities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Activities;

  TRes call({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Activities<TRes>
    implements CopyWith$Variables$Query$Activities<TRes> {
  _CopyWithImpl$Variables$Query$Activities(
    this._instance,
    this._then,
  );

  final Variables$Query$Activities _instance;

  final TRes Function(Variables$Query$Activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isFollowing = _undefined,
    Object? hasReplies = _undefined,
    Object? activityType = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Activities._({
        ..._instance._$data,
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
        if (hasReplies != _undefined) 'hasReplies': (hasReplies as bool?),
        if (activityType != _undefined)
          'activityType': (activityType as Enum$ActivityType?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Activities<TRes>
    implements CopyWith$Variables$Query$Activities<TRes> {
  _CopyWithStubImpl$Variables$Query$Activities(this._res);

  TRes _res;

  call({
    bool? isFollowing,
    bool? hasReplies,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      _res;
}

class Query$Activities {
  Query$Activities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Activities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Activities(
      Page: l$Page == null
          ? null
          : Query$Activities$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activities$Page? Page;

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
    if (!(other is Query$Activities) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activities on Query$Activities {
  CopyWith$Query$Activities<Query$Activities> get copyWith =>
      CopyWith$Query$Activities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activities<TRes> {
  factory CopyWith$Query$Activities(
    Query$Activities instance,
    TRes Function(Query$Activities) then,
  ) = _CopyWithImpl$Query$Activities;

  factory CopyWith$Query$Activities.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities;

  TRes call({
    Query$Activities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Activities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Activities<TRes>
    implements CopyWith$Query$Activities<TRes> {
  _CopyWithImpl$Query$Activities(
    this._instance,
    this._then,
  );

  final Query$Activities _instance;

  final TRes Function(Query$Activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Activities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Activities$Page.stub(_then(_instance))
        : CopyWith$Query$Activities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Activities<TRes>
    implements CopyWith$Query$Activities<TRes> {
  _CopyWithStubImpl$Query$Activities(this._res);

  TRes _res;

  call({
    Query$Activities$Page? Page,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activities$Page<TRes> get Page =>
      CopyWith$Query$Activities$Page.stub(_res);
}

const documentNodeQueryActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activities'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isFollowing')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hasReplies')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ActivityType'),
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
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '25'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: VariableNode(name: NameNode(value: 'isFollowing')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'activityType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'hasRepliesOrTypeText'),
                value: VariableNode(name: NameNode(value: 'hasReplies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'TEXT')),
                  EnumValueNode(name: NameNode(value: 'ANIME_LIST')),
                  EnumValueNode(name: NameNode(value: 'MANGA_LIST')),
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'ID_DESC')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TextActivity'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'replyCount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'text'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isSubscribed'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isLiked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'likeCount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'BasicUser'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
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
                    name: NameNode(value: 'userId'),
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
                    name: NameNode(value: 'replyCount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isLocked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isSubscribed'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isLiked'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'likeCount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'BasicUser'),
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
  fragmentDefinitionBasicUser,
  fragmentDefinitionBasicMedia,
]);
Query$Activities _parserFn$Query$Activities(Map<String, dynamic> data) =>
    Query$Activities.fromJson(data);

class Options$Query$Activities extends graphql.QueryOptions<Query$Activities> {
  Options$Query$Activities({
    String? operationName,
    Variables$Query$Activities? variables,
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
          document: documentNodeQueryActivities,
          parserFn: _parserFn$Query$Activities,
        );
}

class WatchOptions$Query$Activities
    extends graphql.WatchQueryOptions<Query$Activities> {
  WatchOptions$Query$Activities({
    String? operationName,
    Variables$Query$Activities? variables,
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
          document: documentNodeQueryActivities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Activities,
        );
}

class FetchMoreOptions$Query$Activities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Activities({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Activities? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryActivities,
        );
}

extension ClientExtension$Query$Activities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Activities>> query$Activities(
          [Options$Query$Activities? options]) async =>
      await this.query(options ?? Options$Query$Activities());
  graphql.ObservableQuery<Query$Activities> watchQuery$Activities(
          [WatchOptions$Query$Activities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Activities());
  void writeQuery$Activities({
    required Query$Activities data,
    Variables$Query$Activities? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryActivities),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Activities? readQuery$Activities({
    Variables$Query$Activities? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryActivities),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Activities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Activities> useQuery$Activities(
        [Options$Query$Activities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Activities());
graphql.ObservableQuery<Query$Activities> useWatchQuery$Activities(
        [WatchOptions$Query$Activities? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Activities());

class Query$Activities$Widget extends graphql_flutter.Query<Query$Activities> {
  Query$Activities$Widget({
    widgets.Key? key,
    Options$Query$Activities? options,
    required graphql_flutter.QueryBuilder<Query$Activities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Activities(),
          builder: builder,
        );
}

class Query$Activities$Page {
  Query$Activities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$Activities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Activities$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Activities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activities$Page$pageInfo? pageInfo;

  final List<Query$Activities$Page$activities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtension$Query$Activities$Page on Query$Activities$Page {
  CopyWith$Query$Activities$Page<Query$Activities$Page> get copyWith =>
      CopyWith$Query$Activities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activities$Page<TRes> {
  factory CopyWith$Query$Activities$Page(
    Query$Activities$Page instance,
    TRes Function(Query$Activities$Page) then,
  ) = _CopyWithImpl$Query$Activities$Page;

  factory CopyWith$Query$Activities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities$Page;

  TRes call({
    Query$Activities$Page$pageInfo? pageInfo,
    List<Query$Activities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Query$Activities$Page$pageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$Activities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$Activities$Page$activities<
                      Query$Activities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$Activities$Page<TRes>
    implements CopyWith$Query$Activities$Page<TRes> {
  _CopyWithImpl$Query$Activities$Page(
    this._instance,
    this._then,
  );

  final Query$Activities$Page _instance;

  final TRes Function(Query$Activities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Activities$Page$pageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$Activities$Page$activities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activities$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Activities$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Activities$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<Query$Activities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$Activities$Page$activities<
                          Query$Activities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$Activities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Activities$Page<TRes>
    implements CopyWith$Query$Activities$Page<TRes> {
  _CopyWithStubImpl$Query$Activities$Page(this._res);

  TRes _res;

  call({
    Query$Activities$Page$pageInfo? pageInfo,
    List<Query$Activities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activities$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Activities$Page$pageInfo.stub(_res);
  activities(_fn) => _res;
}

class Query$Activities$Page$pageInfo {
  Query$Activities$Page$pageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Activities$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$pageInfo(
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
    if (!(other is Query$Activities$Page$pageInfo) ||
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

extension UtilityExtension$Query$Activities$Page$pageInfo
    on Query$Activities$Page$pageInfo {
  CopyWith$Query$Activities$Page$pageInfo<Query$Activities$Page$pageInfo>
      get copyWith => CopyWith$Query$Activities$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$pageInfo<TRes> {
  factory CopyWith$Query$Activities$Page$pageInfo(
    Query$Activities$Page$pageInfo instance,
    TRes Function(Query$Activities$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Activities$Page$pageInfo;

  factory CopyWith$Query$Activities$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$pageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Activities$Page$pageInfo<TRes>
    implements CopyWith$Query$Activities$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Activities$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$pageInfo _instance;

  final TRes Function(Query$Activities$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$pageInfo(
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

class _CopyWithStubImpl$Query$Activities$Page$pageInfo<TRes>
    implements CopyWith$Query$Activities$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Activities$Page$activities {
  Query$Activities$Page$activities({required this.$__typename});

  factory Query$Activities$Page$activities.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$Activities$Page$activities$$TextActivity.fromJson(json);

      case "ListActivity":
        return Query$Activities$Page$activities$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$Activities$Page$activities$$MessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Activities$Page$activities(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activities$Page$activities
    on Query$Activities$Page$activities {
  CopyWith$Query$Activities$Page$activities<Query$Activities$Page$activities>
      get copyWith => CopyWith$Query$Activities$Page$activities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities<TRes> {
  factory CopyWith$Query$Activities$Page$activities(
    Query$Activities$Page$activities instance,
    TRes Function(Query$Activities$Page$activities) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities;

  factory CopyWith$Query$Activities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activities$Page$activities<TRes>
    implements CopyWith$Query$Activities$Page$activities<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities _instance;

  final TRes Function(Query$Activities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activities$Page$activities<TRes>
    implements CopyWith$Query$Activities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Activities$Page$activities$$TextActivity
    implements Query$Activities$Page$activities {
  Query$Activities$Page$activities$$TextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Query$Activities$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$TextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$BasicUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$BasicUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Activities$Page$activities$$TextActivity
    on Query$Activities$Page$activities$$TextActivity {
  CopyWith$Query$Activities$Page$activities$$TextActivity<
          Query$Activities$Page$activities$$TextActivity>
      get copyWith => CopyWith$Query$Activities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  factory CopyWith$Query$Activities$Page$activities$$TextActivity(
    Query$Activities$Page$activities$$TextActivity instance,
    TRes Function(Query$Activities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$TextActivity;

  factory CopyWith$Query$Activities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    String? $__typename,
  });
  CopyWith$Fragment$BasicUser<TRes> get user;
}

class _CopyWithImpl$Query$Activities$Page$activities$$TextActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user:
            user == _undefined ? _instance.user : (user as Fragment$BasicUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$BasicUser.stub(_then(_instance))
        : CopyWith$Fragment$BasicUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicUser<TRes> get user =>
      CopyWith$Fragment$BasicUser.stub(_res);
}

class Query$Activities$Page$activities$$ListActivity
    implements Query$Activities$Page$activities {
  Query$Activities$Page$activities$$ListActivity({
    required this.id,
    this.userId,
    this.type,
    this.status,
    this.progress,
    required this.replyCount,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$Activities$Page$activities$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$replyCount = json['replyCount'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$ListActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      replyCount: (l$replyCount as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$BasicUser.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$BasicMedia.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final String? status;

  final String? progress;

  final int replyCount;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$BasicUser? user;

  final Fragment$BasicMedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$status = status;
    final l$progress = progress;
    final l$replyCount = replyCount;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$status,
      l$progress,
      l$replyCount,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$Activities$Page$activities$$ListActivity
    on Query$Activities$Page$activities$$ListActivity {
  CopyWith$Query$Activities$Page$activities$$ListActivity<
          Query$Activities$Page$activities$$ListActivity>
      get copyWith => CopyWith$Query$Activities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  factory CopyWith$Query$Activities$Page$activities$$ListActivity(
    Query$Activities$Page$activities$$ListActivity instance,
    TRes Function(Query$Activities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$ListActivity;

  factory CopyWith$Query$Activities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    Fragment$BasicMedia? media,
    String? $__typename,
  });
  CopyWith$Fragment$BasicUser<TRes> get user;
  CopyWith$Fragment$BasicMedia<TRes> get media;
}

class _CopyWithImpl$Query$Activities$Page$activities$$ListActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? replyCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activities$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user:
            user == _undefined ? _instance.user : (user as Fragment$BasicUser?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$BasicUser.stub(_then(_instance))
        : CopyWith$Fragment$BasicUser(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$BasicMedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity<TRes>
    implements CopyWith$Query$Activities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    Fragment$BasicMedia? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicUser<TRes> get user =>
      CopyWith$Fragment$BasicUser.stub(_res);
  CopyWith$Fragment$BasicMedia<TRes> get media =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$Activities$Page$activities$$MessageActivity
    implements Query$Activities$Page$activities {
  Query$Activities$Page$activities$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Query$Activities$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Activities$Page$activities$$MessageActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activities$Page$activities$$MessageActivity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activities$Page$activities$$MessageActivity
    on Query$Activities$Page$activities$$MessageActivity {
  CopyWith$Query$Activities$Page$activities$$MessageActivity<
          Query$Activities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$Activities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$Activities$Page$activities$$MessageActivity(
    Query$Activities$Page$activities$$MessageActivity instance,
    TRes Function(Query$Activities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity;

  factory CopyWith$Query$Activities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$Activities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$Activities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$Activities$Page$activities$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activities$Page$activities$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$Activities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$Activities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Variables$Query$Activity {
  factory Variables$Query$Activity({
    int? id,
    int? page,
  }) =>
      Variables$Query$Activity._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$Activity._(this._$data);

  factory Variables$Query$Activity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Activity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Activity<Variables$Query$Activity> get copyWith =>
      CopyWith$Variables$Query$Activity(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Activity) ||
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
    final l$id = id;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Activity<TRes> {
  factory CopyWith$Variables$Query$Activity(
    Variables$Query$Activity instance,
    TRes Function(Variables$Query$Activity) then,
  ) = _CopyWithImpl$Variables$Query$Activity;

  factory CopyWith$Variables$Query$Activity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Activity;

  TRes call({
    int? id,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Activity<TRes>
    implements CopyWith$Variables$Query$Activity<TRes> {
  _CopyWithImpl$Variables$Query$Activity(
    this._instance,
    this._then,
  );

  final Variables$Query$Activity _instance;

  final TRes Function(Variables$Query$Activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Activity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Activity<TRes>
    implements CopyWith$Variables$Query$Activity<TRes> {
  _CopyWithStubImpl$Variables$Query$Activity(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$Activity {
  Query$Activity({
    this.activity,
    this.replies,
    this.$__typename = 'Query',
  });

  factory Query$Activity.fromJson(Map<String, dynamic> json) {
    final l$activity = json['activity'];
    final l$replies = json['replies'];
    final l$$__typename = json['__typename'];
    return Query$Activity(
      activity: l$activity == null
          ? null
          : Query$Activity$activity.fromJson(
              (l$activity as Map<String, dynamic>)),
      replies: l$replies == null
          ? null
          : Query$Activity$replies.fromJson(
              (l$replies as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activity$activity? activity;

  final Query$Activity$replies? replies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$activity = activity;
    _resultData['activity'] = l$activity?.toJson();
    final l$replies = replies;
    _resultData['replies'] = l$replies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$activity = activity;
    final l$replies = replies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$activity,
      l$replies,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$activity = activity;
    final lOther$activity = other.activity;
    if (l$activity != lOther$activity) {
      return false;
    }
    final l$replies = replies;
    final lOther$replies = other.replies;
    if (l$replies != lOther$replies) {
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

extension UtilityExtension$Query$Activity on Query$Activity {
  CopyWith$Query$Activity<Query$Activity> get copyWith =>
      CopyWith$Query$Activity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activity<TRes> {
  factory CopyWith$Query$Activity(
    Query$Activity instance,
    TRes Function(Query$Activity) then,
  ) = _CopyWithImpl$Query$Activity;

  factory CopyWith$Query$Activity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity;

  TRes call({
    Query$Activity$activity? activity,
    Query$Activity$replies? replies,
    String? $__typename,
  });
  CopyWith$Query$Activity$activity<TRes> get activity;
  CopyWith$Query$Activity$replies<TRes> get replies;
}

class _CopyWithImpl$Query$Activity<TRes>
    implements CopyWith$Query$Activity<TRes> {
  _CopyWithImpl$Query$Activity(
    this._instance,
    this._then,
  );

  final Query$Activity _instance;

  final TRes Function(Query$Activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activity = _undefined,
    Object? replies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity(
        activity: activity == _undefined
            ? _instance.activity
            : (activity as Query$Activity$activity?),
        replies: replies == _undefined
            ? _instance.replies
            : (replies as Query$Activity$replies?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activity$activity<TRes> get activity {
    final local$activity = _instance.activity;
    return local$activity == null
        ? CopyWith$Query$Activity$activity.stub(_then(_instance))
        : CopyWith$Query$Activity$activity(
            local$activity, (e) => call(activity: e));
  }

  CopyWith$Query$Activity$replies<TRes> get replies {
    final local$replies = _instance.replies;
    return local$replies == null
        ? CopyWith$Query$Activity$replies.stub(_then(_instance))
        : CopyWith$Query$Activity$replies(
            local$replies, (e) => call(replies: e));
  }
}

class _CopyWithStubImpl$Query$Activity<TRes>
    implements CopyWith$Query$Activity<TRes> {
  _CopyWithStubImpl$Query$Activity(this._res);

  TRes _res;

  call({
    Query$Activity$activity? activity,
    Query$Activity$replies? replies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activity$activity<TRes> get activity =>
      CopyWith$Query$Activity$activity.stub(_res);
  CopyWith$Query$Activity$replies<TRes> get replies =>
      CopyWith$Query$Activity$replies.stub(_res);
}

const documentNodeQueryActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Activity'),
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
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '1')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Activity'),
        alias: NameNode(value: 'activity'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TextActivity'),
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
                name: NameNode(value: 'userId'),
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
                name: NameNode(value: 'replyCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'text'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLocked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSubscribed'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likeCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'BasicUser'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ListActivity'),
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
                name: NameNode(value: 'userId'),
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
                name: NameNode(value: 'replyCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLocked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSubscribed'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likeCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'BasicUser'),
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
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'replies'),
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
            name: NameNode(value: 'activityReplies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'activityId'),
                value: VariableNode(name: NameNode(value: 'id')),
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
                name: NameNode(value: 'userId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'text'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'createdAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'activityId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isLiked'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'likeCount'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'BasicUser'),
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
  fragmentDefinitionBasicUser,
  fragmentDefinitionBasicMedia,
]);
Query$Activity _parserFn$Query$Activity(Map<String, dynamic> data) =>
    Query$Activity.fromJson(data);

class Options$Query$Activity extends graphql.QueryOptions<Query$Activity> {
  Options$Query$Activity({
    String? operationName,
    Variables$Query$Activity? variables,
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
          document: documentNodeQueryActivity,
          parserFn: _parserFn$Query$Activity,
        );
}

class WatchOptions$Query$Activity
    extends graphql.WatchQueryOptions<Query$Activity> {
  WatchOptions$Query$Activity({
    String? operationName,
    Variables$Query$Activity? variables,
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
          document: documentNodeQueryActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Activity,
        );
}

class FetchMoreOptions$Query$Activity extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Activity({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Activity? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryActivity,
        );
}

extension ClientExtension$Query$Activity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Activity>> query$Activity(
          [Options$Query$Activity? options]) async =>
      await this.query(options ?? Options$Query$Activity());
  graphql.ObservableQuery<Query$Activity> watchQuery$Activity(
          [WatchOptions$Query$Activity? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Activity());
  void writeQuery$Activity({
    required Query$Activity data,
    Variables$Query$Activity? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryActivity),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Activity? readQuery$Activity({
    Variables$Query$Activity? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryActivity),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Activity.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Activity> useQuery$Activity(
        [Options$Query$Activity? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Activity());
graphql.ObservableQuery<Query$Activity> useWatchQuery$Activity(
        [WatchOptions$Query$Activity? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Activity());

class Query$Activity$Widget extends graphql_flutter.Query<Query$Activity> {
  Query$Activity$Widget({
    widgets.Key? key,
    Options$Query$Activity? options,
    required graphql_flutter.QueryBuilder<Query$Activity> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Activity(),
          builder: builder,
        );
}

class Query$Activity$activity {
  Query$Activity$activity({required this.$__typename});

  factory Query$Activity$activity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$Activity$activity$$TextActivity.fromJson(json);

      case "ListActivity":
        return Query$Activity$activity$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$Activity$activity$$MessageActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Activity$activity($__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$activity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activity$activity on Query$Activity$activity {
  CopyWith$Query$Activity$activity<Query$Activity$activity> get copyWith =>
      CopyWith$Query$Activity$activity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activity$activity<TRes> {
  factory CopyWith$Query$Activity$activity(
    Query$Activity$activity instance,
    TRes Function(Query$Activity$activity) then,
  ) = _CopyWithImpl$Query$Activity$activity;

  factory CopyWith$Query$Activity$activity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activity$activity<TRes>
    implements CopyWith$Query$Activity$activity<TRes> {
  _CopyWithImpl$Query$Activity$activity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity _instance;

  final TRes Function(Query$Activity$activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activity$activity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activity$activity<TRes>
    implements CopyWith$Query$Activity$activity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Activity$activity$$TextActivity implements Query$Activity$activity {
  Query$Activity$activity$$TextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Query$Activity$activity$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Activity$activity$$TextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$BasicUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$BasicUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$activity$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Activity$activity$$TextActivity
    on Query$Activity$activity$$TextActivity {
  CopyWith$Query$Activity$activity$$TextActivity<
          Query$Activity$activity$$TextActivity>
      get copyWith => CopyWith$Query$Activity$activity$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$TextActivity(
    Query$Activity$activity$$TextActivity instance,
    TRes Function(Query$Activity$activity$$TextActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$TextActivity;

  factory CopyWith$Query$Activity$activity$$TextActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$TextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    String? $__typename,
  });
  CopyWith$Fragment$BasicUser<TRes> get user;
}

class _CopyWithImpl$Query$Activity$activity$$TextActivity<TRes>
    implements CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$TextActivity _instance;

  final TRes Function(Query$Activity$activity$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$activity$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user:
            user == _undefined ? _instance.user : (user as Fragment$BasicUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$BasicUser.stub(_then(_instance))
        : CopyWith$Fragment$BasicUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Activity$activity$$TextActivity<TRes>
    implements CopyWith$Query$Activity$activity$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicUser<TRes> get user =>
      CopyWith$Fragment$BasicUser.stub(_res);
}

class Query$Activity$activity$$ListActivity implements Query$Activity$activity {
  Query$Activity$activity$$ListActivity({
    required this.id,
    this.userId,
    this.type,
    this.status,
    this.progress,
    required this.replyCount,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$Activity$activity$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$replyCount = json['replyCount'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Activity$activity$$ListActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      replyCount: (l$replyCount as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$BasicUser.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$BasicMedia.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final String? status;

  final String? progress;

  final int replyCount;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$BasicUser? user;

  final Fragment$BasicMedia? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$status = status;
    final l$progress = progress;
    final l$replyCount = replyCount;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$status,
      l$progress,
      l$replyCount,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$activity$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$Activity$activity$$ListActivity
    on Query$Activity$activity$$ListActivity {
  CopyWith$Query$Activity$activity$$ListActivity<
          Query$Activity$activity$$ListActivity>
      get copyWith => CopyWith$Query$Activity$activity$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$ListActivity(
    Query$Activity$activity$$ListActivity instance,
    TRes Function(Query$Activity$activity$$ListActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$ListActivity;

  factory CopyWith$Query$Activity$activity$$ListActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$ListActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    Fragment$BasicMedia? media,
    String? $__typename,
  });
  CopyWith$Fragment$BasicUser<TRes> get user;
  CopyWith$Fragment$BasicMedia<TRes> get media;
}

class _CopyWithImpl$Query$Activity$activity$$ListActivity<TRes>
    implements CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$ListActivity _instance;

  final TRes Function(Query$Activity$activity$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? replyCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$activity$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user:
            user == _undefined ? _instance.user : (user as Fragment$BasicUser?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$BasicUser.stub(_then(_instance))
        : CopyWith$Fragment$BasicUser(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$BasicMedia<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Activity$activity$$ListActivity<TRes>
    implements CopyWith$Query$Activity$activity$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$BasicUser? user,
    Fragment$BasicMedia? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicUser<TRes> get user =>
      CopyWith$Fragment$BasicUser.stub(_res);
  CopyWith$Fragment$BasicMedia<TRes> get media =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$Activity$activity$$MessageActivity
    implements Query$Activity$activity {
  Query$Activity$activity$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Query$Activity$activity$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$Activity$activity$$MessageActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$activity$$MessageActivity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Activity$activity$$MessageActivity
    on Query$Activity$activity$$MessageActivity {
  CopyWith$Query$Activity$activity$$MessageActivity<
          Query$Activity$activity$$MessageActivity>
      get copyWith => CopyWith$Query$Activity$activity$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  factory CopyWith$Query$Activity$activity$$MessageActivity(
    Query$Activity$activity$$MessageActivity instance,
    TRes Function(Query$Activity$activity$$MessageActivity) then,
  ) = _CopyWithImpl$Query$Activity$activity$$MessageActivity;

  factory CopyWith$Query$Activity$activity$$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$activity$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Activity$activity$$MessageActivity<TRes>
    implements CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  _CopyWithImpl$Query$Activity$activity$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$Activity$activity$$MessageActivity _instance;

  final TRes Function(Query$Activity$activity$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Activity$activity$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Activity$activity$$MessageActivity<TRes>
    implements CopyWith$Query$Activity$activity$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$Activity$activity$$MessageActivity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Activity$replies {
  Query$Activity$replies({
    this.pageInfo,
    this.activityReplies,
    this.$__typename = 'Page',
  });

  factory Query$Activity$replies.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activityReplies = json['activityReplies'];
    final l$$__typename = json['__typename'];
    return Query$Activity$replies(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Activity$replies$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activityReplies: (l$activityReplies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Activity$replies$activityReplies.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Activity$replies$pageInfo? pageInfo;

  final List<Query$Activity$replies$activityReplies?>? activityReplies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activityReplies = activityReplies;
    _resultData['activityReplies'] =
        l$activityReplies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activityReplies = activityReplies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activityReplies == null
          ? null
          : Object.hashAll(l$activityReplies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$replies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activityReplies = activityReplies;
    final lOther$activityReplies = other.activityReplies;
    if (l$activityReplies != null && lOther$activityReplies != null) {
      if (l$activityReplies.length != lOther$activityReplies.length) {
        return false;
      }
      for (int i = 0; i < l$activityReplies.length; i++) {
        final l$activityReplies$entry = l$activityReplies[i];
        final lOther$activityReplies$entry = lOther$activityReplies[i];
        if (l$activityReplies$entry != lOther$activityReplies$entry) {
          return false;
        }
      }
    } else if (l$activityReplies != lOther$activityReplies) {
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

extension UtilityExtension$Query$Activity$replies on Query$Activity$replies {
  CopyWith$Query$Activity$replies<Query$Activity$replies> get copyWith =>
      CopyWith$Query$Activity$replies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Activity$replies<TRes> {
  factory CopyWith$Query$Activity$replies(
    Query$Activity$replies instance,
    TRes Function(Query$Activity$replies) then,
  ) = _CopyWithImpl$Query$Activity$replies;

  factory CopyWith$Query$Activity$replies.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$replies;

  TRes call({
    Query$Activity$replies$pageInfo? pageInfo,
    List<Query$Activity$replies$activityReplies?>? activityReplies,
    String? $__typename,
  });
  CopyWith$Query$Activity$replies$pageInfo<TRes> get pageInfo;
  TRes activityReplies(
      Iterable<Query$Activity$replies$activityReplies?>? Function(
              Iterable<
                  CopyWith$Query$Activity$replies$activityReplies<
                      Query$Activity$replies$activityReplies>?>?)
          _fn);
}

class _CopyWithImpl$Query$Activity$replies<TRes>
    implements CopyWith$Query$Activity$replies<TRes> {
  _CopyWithImpl$Query$Activity$replies(
    this._instance,
    this._then,
  );

  final Query$Activity$replies _instance;

  final TRes Function(Query$Activity$replies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activityReplies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$replies(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Activity$replies$pageInfo?),
        activityReplies: activityReplies == _undefined
            ? _instance.activityReplies
            : (activityReplies
                as List<Query$Activity$replies$activityReplies?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Activity$replies$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Activity$replies$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Activity$replies$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activityReplies(
          Iterable<Query$Activity$replies$activityReplies?>? Function(
                  Iterable<
                      CopyWith$Query$Activity$replies$activityReplies<
                          Query$Activity$replies$activityReplies>?>?)
              _fn) =>
      call(
          activityReplies: _fn(_instance.activityReplies?.map((e) => e == null
              ? null
              : CopyWith$Query$Activity$replies$activityReplies(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Activity$replies<TRes>
    implements CopyWith$Query$Activity$replies<TRes> {
  _CopyWithStubImpl$Query$Activity$replies(this._res);

  TRes _res;

  call({
    Query$Activity$replies$pageInfo? pageInfo,
    List<Query$Activity$replies$activityReplies?>? activityReplies,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Activity$replies$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Activity$replies$pageInfo.stub(_res);
  activityReplies(_fn) => _res;
}

class Query$Activity$replies$pageInfo {
  Query$Activity$replies$pageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Activity$replies$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Activity$replies$pageInfo(
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
    if (!(other is Query$Activity$replies$pageInfo) ||
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

extension UtilityExtension$Query$Activity$replies$pageInfo
    on Query$Activity$replies$pageInfo {
  CopyWith$Query$Activity$replies$pageInfo<Query$Activity$replies$pageInfo>
      get copyWith => CopyWith$Query$Activity$replies$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$replies$pageInfo<TRes> {
  factory CopyWith$Query$Activity$replies$pageInfo(
    Query$Activity$replies$pageInfo instance,
    TRes Function(Query$Activity$replies$pageInfo) then,
  ) = _CopyWithImpl$Query$Activity$replies$pageInfo;

  factory CopyWith$Query$Activity$replies$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$replies$pageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Activity$replies$pageInfo<TRes>
    implements CopyWith$Query$Activity$replies$pageInfo<TRes> {
  _CopyWithImpl$Query$Activity$replies$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Activity$replies$pageInfo _instance;

  final TRes Function(Query$Activity$replies$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$replies$pageInfo(
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

class _CopyWithStubImpl$Query$Activity$replies$pageInfo<TRes>
    implements CopyWith$Query$Activity$replies$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Activity$replies$pageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$Activity$replies$activityReplies {
  Query$Activity$replies$activityReplies({
    required this.id,
    this.userId,
    this.text,
    required this.createdAt,
    this.activityId,
    this.isLiked,
    required this.likeCount,
    this.user,
    this.$__typename = 'ActivityReply',
  });

  factory Query$Activity$replies$activityReplies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$text = json['text'];
    final l$createdAt = json['createdAt'];
    final l$activityId = json['activityId'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$Activity$replies$activityReplies(
      id: (l$id as int),
      userId: (l$userId as int?),
      text: (l$text as String?),
      createdAt: (l$createdAt as int),
      activityId: (l$activityId as int?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      user: l$user == null
          ? null
          : Fragment$BasicUser.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final String? text;

  final int createdAt;

  final int? activityId;

  final bool? isLiked;

  final int likeCount;

  final Fragment$BasicUser? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$text = text;
    final l$createdAt = createdAt;
    final l$activityId = activityId;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$text,
      l$createdAt,
      l$activityId,
      l$isLiked,
      l$likeCount,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Activity$replies$activityReplies) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
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

extension UtilityExtension$Query$Activity$replies$activityReplies
    on Query$Activity$replies$activityReplies {
  CopyWith$Query$Activity$replies$activityReplies<
          Query$Activity$replies$activityReplies>
      get copyWith => CopyWith$Query$Activity$replies$activityReplies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Activity$replies$activityReplies<TRes> {
  factory CopyWith$Query$Activity$replies$activityReplies(
    Query$Activity$replies$activityReplies instance,
    TRes Function(Query$Activity$replies$activityReplies) then,
  ) = _CopyWithImpl$Query$Activity$replies$activityReplies;

  factory CopyWith$Query$Activity$replies$activityReplies.stub(TRes res) =
      _CopyWithStubImpl$Query$Activity$replies$activityReplies;

  TRes call({
    int? id,
    int? userId,
    String? text,
    int? createdAt,
    int? activityId,
    bool? isLiked,
    int? likeCount,
    Fragment$BasicUser? user,
    String? $__typename,
  });
  CopyWith$Fragment$BasicUser<TRes> get user;
}

class _CopyWithImpl$Query$Activity$replies$activityReplies<TRes>
    implements CopyWith$Query$Activity$replies$activityReplies<TRes> {
  _CopyWithImpl$Query$Activity$replies$activityReplies(
    this._instance,
    this._then,
  );

  final Query$Activity$replies$activityReplies _instance;

  final TRes Function(Query$Activity$replies$activityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? text = _undefined,
    Object? createdAt = _undefined,
    Object? activityId = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Activity$replies$activityReplies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        text: text == _undefined ? _instance.text : (text as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        activityId: activityId == _undefined
            ? _instance.activityId
            : (activityId as int?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        user:
            user == _undefined ? _instance.user : (user as Fragment$BasicUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicUser<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$BasicUser.stub(_then(_instance))
        : CopyWith$Fragment$BasicUser(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Activity$replies$activityReplies<TRes>
    implements CopyWith$Query$Activity$replies$activityReplies<TRes> {
  _CopyWithStubImpl$Query$Activity$replies$activityReplies(this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    String? text,
    int? createdAt,
    int? activityId,
    bool? isLiked,
    int? likeCount,
    Fragment$BasicUser? user,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicUser<TRes> get user =>
      CopyWith$Fragment$BasicUser.stub(_res);
}
