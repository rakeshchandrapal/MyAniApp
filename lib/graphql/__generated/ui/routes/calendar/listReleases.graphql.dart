// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ReleasesList {
  factory Variables$Query$ReleasesList({int? page}) =>
      Variables$Query$ReleasesList._({
        if (page != null) r'page': page,
      });

  Variables$Query$ReleasesList._(this._$data);

  factory Variables$Query$ReleasesList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$ReleasesList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ReleasesList<Variables$Query$ReleasesList>
      get copyWith => CopyWith$Variables$Query$ReleasesList(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ReleasesList) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$ReleasesList<TRes> {
  factory CopyWith$Variables$Query$ReleasesList(
    Variables$Query$ReleasesList instance,
    TRes Function(Variables$Query$ReleasesList) then,
  ) = _CopyWithImpl$Variables$Query$ReleasesList;

  factory CopyWith$Variables$Query$ReleasesList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReleasesList;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$ReleasesList<TRes>
    implements CopyWith$Variables$Query$ReleasesList<TRes> {
  _CopyWithImpl$Variables$Query$ReleasesList(
    this._instance,
    this._then,
  );

  final Variables$Query$ReleasesList _instance;

  final TRes Function(Variables$Query$ReleasesList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$ReleasesList._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReleasesList<TRes>
    implements CopyWith$Variables$Query$ReleasesList<TRes> {
  _CopyWithStubImpl$Variables$Query$ReleasesList(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$ReleasesList {
  Query$ReleasesList({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$ReleasesList.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$ReleasesList(
      Page: l$Page == null
          ? null
          : Query$ReleasesList$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReleasesList$Page? Page;

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
    if (!(other is Query$ReleasesList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ReleasesList on Query$ReleasesList {
  CopyWith$Query$ReleasesList<Query$ReleasesList> get copyWith =>
      CopyWith$Query$ReleasesList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReleasesList<TRes> {
  factory CopyWith$Query$ReleasesList(
    Query$ReleasesList instance,
    TRes Function(Query$ReleasesList) then,
  ) = _CopyWithImpl$Query$ReleasesList;

  factory CopyWith$Query$ReleasesList.stub(TRes res) =
      _CopyWithStubImpl$Query$ReleasesList;

  TRes call({
    Query$ReleasesList$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$ReleasesList$Page<TRes> get Page;
}

class _CopyWithImpl$Query$ReleasesList<TRes>
    implements CopyWith$Query$ReleasesList<TRes> {
  _CopyWithImpl$Query$ReleasesList(
    this._instance,
    this._then,
  );

  final Query$ReleasesList _instance;

  final TRes Function(Query$ReleasesList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReleasesList(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$ReleasesList$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ReleasesList$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$ReleasesList$Page.stub(_then(_instance))
        : CopyWith$Query$ReleasesList$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$ReleasesList<TRes>
    implements CopyWith$Query$ReleasesList<TRes> {
  _CopyWithStubImpl$Query$ReleasesList(this._res);

  TRes _res;

  call({
    Query$ReleasesList$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ReleasesList$Page<TRes> get Page =>
      CopyWith$Query$ReleasesList$Page.stub(_res);
}

const documentNodeQueryReleasesList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReleasesList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
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
                value: EnumValueNode(name: NameNode(value: 'START_DATE')),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionReleasingMedia,
  fragmentDefinitionMediaFragment,
]);
Query$ReleasesList _parserFn$Query$ReleasesList(Map<String, dynamic> data) =>
    Query$ReleasesList.fromJson(data);
typedef OnQueryComplete$Query$ReleasesList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ReleasesList?,
);

class Options$Query$ReleasesList
    extends graphql.QueryOptions<Query$ReleasesList> {
  Options$Query$ReleasesList({
    String? operationName,
    Variables$Query$ReleasesList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReleasesList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ReleasesList? onComplete,
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
                    data == null ? null : _parserFn$Query$ReleasesList(data),
                  ),
          onError: onError,
          document: documentNodeQueryReleasesList,
          parserFn: _parserFn$Query$ReleasesList,
        );

  final OnQueryComplete$Query$ReleasesList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ReleasesList
    extends graphql.WatchQueryOptions<Query$ReleasesList> {
  WatchOptions$Query$ReleasesList({
    String? operationName,
    Variables$Query$ReleasesList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReleasesList? typedOptimisticResult,
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
          document: documentNodeQueryReleasesList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ReleasesList,
        );
}

class FetchMoreOptions$Query$ReleasesList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ReleasesList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ReleasesList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryReleasesList,
        );
}

extension ClientExtension$Query$ReleasesList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ReleasesList>> query$ReleasesList(
          [Options$Query$ReleasesList? options]) async =>
      await this.query(options ?? Options$Query$ReleasesList());
  graphql.ObservableQuery<Query$ReleasesList> watchQuery$ReleasesList(
          [WatchOptions$Query$ReleasesList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ReleasesList());
  void writeQuery$ReleasesList({
    required Query$ReleasesList data,
    Variables$Query$ReleasesList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryReleasesList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ReleasesList? readQuery$ReleasesList({
    Variables$Query$ReleasesList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReleasesList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ReleasesList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ReleasesList> useQuery$ReleasesList(
        [Options$Query$ReleasesList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ReleasesList());
graphql.ObservableQuery<Query$ReleasesList> useWatchQuery$ReleasesList(
        [WatchOptions$Query$ReleasesList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$ReleasesList());

class Query$ReleasesList$Widget
    extends graphql_flutter.Query<Query$ReleasesList> {
  Query$ReleasesList$Widget({
    widgets.Key? key,
    Options$Query$ReleasesList? options,
    required graphql_flutter.QueryBuilder<Query$ReleasesList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ReleasesList(),
          builder: builder,
        );
}

class Query$ReleasesList$Page {
  Query$ReleasesList$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$ReleasesList$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$ReleasesList$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ReleasingMedia.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

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
    if (!(other is Query$ReleasesList$Page) ||
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

extension UtilityExtension$Query$ReleasesList$Page on Query$ReleasesList$Page {
  CopyWith$Query$ReleasesList$Page<Query$ReleasesList$Page> get copyWith =>
      CopyWith$Query$ReleasesList$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReleasesList$Page<TRes> {
  factory CopyWith$Query$ReleasesList$Page(
    Query$ReleasesList$Page instance,
    TRes Function(Query$ReleasesList$Page) then,
  ) = _CopyWithImpl$Query$ReleasesList$Page;

  factory CopyWith$Query$ReleasesList$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$ReleasesList$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$ReleasingMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$ReleasingMedia<Fragment$ReleasingMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$ReleasesList$Page<TRes>
    implements CopyWith$Query$ReleasesList$Page<TRes> {
  _CopyWithImpl$Query$ReleasesList$Page(
    this._instance,
    this._then,
  );

  final Query$ReleasesList$Page _instance;

  final TRes Function(Query$ReleasesList$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReleasesList$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$ReleasingMedia?>?),
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

class _CopyWithStubImpl$Query$ReleasesList$Page<TRes>
    implements CopyWith$Query$ReleasesList$Page<TRes> {
  _CopyWithStubImpl$Query$ReleasesList$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$ReleasingMedia?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  media(_fn) => _res;
}
