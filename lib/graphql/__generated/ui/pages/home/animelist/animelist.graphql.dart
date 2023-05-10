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

class Variables$Query$MediaList {
  factory Variables$Query$MediaList({
    int? userId,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      Variables$Query$MediaList._({
        if (userId != null) r'userId': userId,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$MediaList._(this._$data);

  factory Variables$Query$MediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
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

  int? get userId => (_$data['userId'] as int?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  List<Enum$MediaListSort?>? get sort =>
      (_$data['sort'] as List<Enum$MediaListSort?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
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
    final l$userId = userId;
    final l$type = type;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
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
    int? userId,
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
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$MediaList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaListSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaList<TRes>
    implements CopyWith$Variables$Query$MediaList<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaList(this._res);

  TRes _res;

  call({
    int? userId,
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
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
  fragmentDefinitionMedia,
]);
Query$MediaList _parserFn$Query$MediaList(Map<String, dynamic> data) =>
    Query$MediaList.fromJson(data);
typedef OnQueryComplete$Query$MediaList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MediaList?,
);

class Options$Query$MediaList extends graphql.QueryOptions<Query$MediaList> {
  Options$Query$MediaList({
    String? operationName,
    Variables$Query$MediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaList? onComplete,
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
                    data == null ? null : _parserFn$Query$MediaList(data),
                  ),
          onError: onError,
          document: documentNodeQueryMediaList,
          parserFn: _parserFn$Query$MediaList,
        );

  final OnQueryComplete$Query$MediaList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaList
    extends graphql.WatchQueryOptions<Query$MediaList> {
  WatchOptions$Query$MediaList({
    String? operationName,
    Variables$Query$MediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaList? typedOptimisticResult,
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
          document: documentNodeQueryMediaList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MediaList,
        );
}

class FetchMoreOptions$Query$MediaList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMediaList,
        );
}

extension ClientExtension$Query$MediaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaList>> query$MediaList(
          [Options$Query$MediaList? options]) async =>
      await this.query(options ?? Options$Query$MediaList());
  graphql.ObservableQuery<Query$MediaList> watchQuery$MediaList(
          [WatchOptions$Query$MediaList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MediaList());
  void writeQuery$MediaList({
    required Query$MediaList data,
    Variables$Query$MediaList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMediaList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MediaList? readQuery$MediaList({
    Variables$Query$MediaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMediaList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaList> useQuery$MediaList(
        [Options$Query$MediaList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MediaList());
graphql.ObservableQuery<Query$MediaList> useWatchQuery$MediaList(
        [WatchOptions$Query$MediaList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MediaList());

class Query$MediaList$Widget extends graphql_flutter.Query<Query$MediaList> {
  Query$MediaList$Widget({
    widgets.Key? key,
    Options$Query$MediaList? options,
    required graphql_flutter.QueryBuilder<Query$MediaList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MediaList(),
          builder: builder,
        );
}

class Query$MediaList$MediaListCollection {
  Query$MediaList$MediaListCollection({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$MediaList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection(
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
    String? $__typename,
  });
  TRes lists(
      Iterable<Fragment$ListGroup?>? Function(
              Iterable<CopyWith$Fragment$ListGroup<Fragment$ListGroup>?>?)
          _fn);
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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection(
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

class _CopyWithStubImpl$Query$MediaList$MediaListCollection<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection(this._res);

  TRes _res;

  call({
    List<Fragment$ListGroup?>? lists,
    String? $__typename,
  }) =>
      _res;
  lists(_fn) => _res;
}
