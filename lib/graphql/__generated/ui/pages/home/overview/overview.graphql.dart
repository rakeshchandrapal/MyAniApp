// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../../graphql/fragments.graphql.dart';
import '../../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

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
            value: ListValueNode(
                values: [EnumValueNode(name: NameNode(value: 'CURRENT'))]),
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
  fragmentDefinitionMedia,
  fragmentDefinitionListGroup,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionFuzzyDate,
]);
Query$Home _parserFn$Query$Home(Map<String, dynamic> data) =>
    Query$Home.fromJson(data);
typedef OnQueryComplete$Query$Home = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Home?,
);

class Options$Query$Home extends graphql.QueryOptions<Query$Home> {
  Options$Query$Home({
    String? operationName,
    required Variables$Query$Home variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Home? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Home? onComplete,
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
                    data == null ? null : _parserFn$Query$Home(data),
                  ),
          onError: onError,
          document: documentNodeQueryHome,
          parserFn: _parserFn$Query$Home,
        );

  final OnQueryComplete$Query$Home? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Home extends graphql.WatchQueryOptions<Query$Home> {
  WatchOptions$Query$Home({
    String? operationName,
    required Variables$Query$Home variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Home? typedOptimisticResult,
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
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Home$releasing$pageInfo? pageInfo;

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
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  CopyWith$Query$Home$releasing$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
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
            : (media as List<Fragment$ReleasingMedia?>?),
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

class _CopyWithStubImpl$Query$Home$releasing<TRes>
    implements CopyWith$Query$Home$releasing<TRes> {
  _CopyWithStubImpl$Query$Home$releasing(this._res);

  TRes _res;

  call({
    Query$Home$releasing$pageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
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
              : Fragment$ListGroup.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ListGroup?>? lists;

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
    List<Fragment$ListGroup?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<Fragment$ListGroup?>? Function(
              Iterable<CopyWith$Fragment$ListGroup<Fragment$ListGroup>?>?)
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
            : (lists as List<Fragment$ListGroup?>?),
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
}

class _CopyWithStubImpl$Query$Home$list<TRes>
    implements CopyWith$Query$Home$list<TRes> {
  _CopyWithStubImpl$Query$Home$list(this._res);

  TRes _res;

  call({
    List<Fragment$ListGroup?>? lists,
    String? $__typename,
  }) =>
      _res;
  lists(_fn) => _res;
}
