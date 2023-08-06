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

class Variables$Query$Staff {
  factory Variables$Query$Staff({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$Staff._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$Staff._(this._$data);

  factory Variables$Query$Staff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Staff._(result$data);
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

  CopyWith$Variables$Query$Staff<Variables$Query$Staff> get copyWith =>
      CopyWith$Variables$Query$Staff(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Staff) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Staff<TRes> {
  factory CopyWith$Variables$Query$Staff(
    Variables$Query$Staff instance,
    TRes Function(Variables$Query$Staff) then,
  ) = _CopyWithImpl$Variables$Query$Staff;

  factory CopyWith$Variables$Query$Staff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Staff;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithImpl$Variables$Query$Staff(
    this._instance,
    this._then,
  );

  final Variables$Query$Staff _instance;

  final TRes Function(Variables$Query$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Staff._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithStubImpl$Variables$Query$Staff(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$Staff {
  Query$Staff({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Staff.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Staff(
      Media: l$Media == null
          ? null
          : Query$Staff$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Staff$Media? Media;

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
    if (!(other is Query$Staff) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Staff on Query$Staff {
  CopyWith$Query$Staff<Query$Staff> get copyWith => CopyWith$Query$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff<TRes> {
  factory CopyWith$Query$Staff(
    Query$Staff instance,
    TRes Function(Query$Staff) then,
  ) = _CopyWithImpl$Query$Staff;

  factory CopyWith$Query$Staff.stub(TRes res) = _CopyWithStubImpl$Query$Staff;

  TRes call({
    Query$Staff$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Staff$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Staff<TRes> implements CopyWith$Query$Staff<TRes> {
  _CopyWithImpl$Query$Staff(
    this._instance,
    this._then,
  );

  final Query$Staff _instance;

  final TRes Function(Query$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Staff$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Staff$Media.stub(_then(_instance))
        : CopyWith$Query$Staff$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Staff<TRes>
    implements CopyWith$Query$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff(this._res);

  TRes _res;

  call({
    Query$Staff$Media? Media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Media<TRes> get Media =>
      CopyWith$Query$Staff$Media.stub(_res);
}

const documentNodeQueryStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Staff'),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
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
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
Query$Staff _parserFn$Query$Staff(Map<String, dynamic> data) =>
    Query$Staff.fromJson(data);
typedef OnQueryComplete$Query$Staff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Staff?,
);

class Options$Query$Staff extends graphql.QueryOptions<Query$Staff> {
  Options$Query$Staff({
    String? operationName,
    Variables$Query$Staff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Staff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Staff? onComplete,
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
                    data == null ? null : _parserFn$Query$Staff(data),
                  ),
          onError: onError,
          document: documentNodeQueryStaff,
          parserFn: _parserFn$Query$Staff,
        );

  final OnQueryComplete$Query$Staff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Staff extends graphql.WatchQueryOptions<Query$Staff> {
  WatchOptions$Query$Staff({
    String? operationName,
    Variables$Query$Staff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Staff? typedOptimisticResult,
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
          document: documentNodeQueryStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Staff,
        );
}

class FetchMoreOptions$Query$Staff extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Staff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Staff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryStaff,
        );
}

extension ClientExtension$Query$Staff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Staff>> query$Staff(
          [Options$Query$Staff? options]) async =>
      await this.query(options ?? Options$Query$Staff());
  graphql.ObservableQuery<Query$Staff> watchQuery$Staff(
          [WatchOptions$Query$Staff? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Staff());
  void writeQuery$Staff({
    required Query$Staff data,
    Variables$Query$Staff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Staff? readQuery$Staff({
    Variables$Query$Staff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Staff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Staff> useQuery$Staff(
        [Options$Query$Staff? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Staff());
graphql.ObservableQuery<Query$Staff> useWatchQuery$Staff(
        [WatchOptions$Query$Staff? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Staff());

class Query$Staff$Widget extends graphql_flutter.Query<Query$Staff> {
  Query$Staff$Widget({
    widgets.Key? key,
    Options$Query$Staff? options,
    required graphql_flutter.QueryBuilder<Query$Staff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Staff(),
          builder: builder,
        );
}

class Query$Staff$Media {
  Query$Staff$Media({
    required this.id,
    this.staff,
    this.$__typename = 'Media',
  });

  factory Query$Staff$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media(
      id: (l$id as int),
      staff: l$staff == null
          ? null
          : Query$Staff$Media$staff.fromJson((l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Staff$Media$staff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Media) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$Staff$Media on Query$Staff$Media {
  CopyWith$Query$Staff$Media<Query$Staff$Media> get copyWith =>
      CopyWith$Query$Staff$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Media<TRes> {
  factory CopyWith$Query$Staff$Media(
    Query$Staff$Media instance,
    TRes Function(Query$Staff$Media) then,
  ) = _CopyWithImpl$Query$Staff$Media;

  factory CopyWith$Query$Staff$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media;

  TRes call({
    int? id,
    Query$Staff$Media$staff? staff,
    String? $__typename,
  });
  CopyWith$Query$Staff$Media$staff<TRes> get staff;
}

class _CopyWithImpl$Query$Staff$Media<TRes>
    implements CopyWith$Query$Staff$Media<TRes> {
  _CopyWithImpl$Query$Staff$Media(
    this._instance,
    this._then,
  );

  final Query$Staff$Media _instance;

  final TRes Function(Query$Staff$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$Staff$Media$staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Media$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$Staff$Media$staff.stub(_then(_instance))
        : CopyWith$Query$Staff$Media$staff(local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Media<TRes>
    implements CopyWith$Query$Staff$Media<TRes> {
  _CopyWithStubImpl$Query$Staff$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$Staff$Media$staff? staff,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Media$staff<TRes> get staff =>
      CopyWith$Query$Staff$Media$staff.stub(_res);
}

class Query$Staff$Media$staff {
  Query$Staff$Media$staff({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory Query$Staff$Media$staff.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Media$staff$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Staff$Media$staff$edges?>? edges;

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
    if (!(other is Query$Staff$Media$staff) ||
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

extension UtilityExtension$Query$Staff$Media$staff on Query$Staff$Media$staff {
  CopyWith$Query$Staff$Media$staff<Query$Staff$Media$staff> get copyWith =>
      CopyWith$Query$Staff$Media$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Media$staff<TRes> {
  factory CopyWith$Query$Staff$Media$staff(
    Query$Staff$Media$staff instance,
    TRes Function(Query$Staff$Media$staff) then,
  ) = _CopyWithImpl$Query$Staff$Media$staff;

  factory CopyWith$Query$Staff$Media$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media$staff;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Media$staff$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Staff$Media$staff$edges?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Media$staff$edges<
                      Query$Staff$Media$staff$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Staff$Media$staff<TRes>
    implements CopyWith$Query$Staff$Media$staff<TRes> {
  _CopyWithImpl$Query$Staff$Media$staff(
    this._instance,
    this._then,
  );

  final Query$Staff$Media$staff _instance;

  final TRes Function(Query$Staff$Media$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Staff$Media$staff$edges?>?),
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

  TRes edges(
          Iterable<Query$Staff$Media$staff$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Media$staff$edges<
                          Query$Staff$Media$staff$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Media$staff$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Media$staff<TRes>
    implements CopyWith$Query$Staff$Media$staff<TRes> {
  _CopyWithStubImpl$Query$Staff$Media$staff(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Media$staff$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$Staff$Media$staff$edges {
  Query$Staff$Media$staff$edges({
    this.role,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory Query$Staff$Media$staff$edges.fromJson(Map<String, dynamic> json) {
    final l$role = json['role'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media$staff$edges(
      role: (l$role as String?),
      node: l$node == null
          ? null
          : Query$Staff$Media$staff$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? role;

  final Query$Staff$Media$staff$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$role = role;
    _resultData['role'] = l$role;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$role = role;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$role,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Media$staff$edges) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Staff$Media$staff$edges
    on Query$Staff$Media$staff$edges {
  CopyWith$Query$Staff$Media$staff$edges<Query$Staff$Media$staff$edges>
      get copyWith => CopyWith$Query$Staff$Media$staff$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Media$staff$edges<TRes> {
  factory CopyWith$Query$Staff$Media$staff$edges(
    Query$Staff$Media$staff$edges instance,
    TRes Function(Query$Staff$Media$staff$edges) then,
  ) = _CopyWithImpl$Query$Staff$Media$staff$edges;

  factory CopyWith$Query$Staff$Media$staff$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media$staff$edges;

  TRes call({
    String? role,
    Query$Staff$Media$staff$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Staff$Media$staff$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Staff$Media$staff$edges<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges<TRes> {
  _CopyWithImpl$Query$Staff$Media$staff$edges(
    this._instance,
    this._then,
  );

  final Query$Staff$Media$staff$edges _instance;

  final TRes Function(Query$Staff$Media$staff$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? role = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media$staff$edges(
        role: role == _undefined ? _instance.role : (role as String?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Staff$Media$staff$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Media$staff$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Staff$Media$staff$edges$node.stub(_then(_instance))
        : CopyWith$Query$Staff$Media$staff$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Media$staff$edges<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges<TRes> {
  _CopyWithStubImpl$Query$Staff$Media$staff$edges(this._res);

  TRes _res;

  call({
    String? role,
    Query$Staff$Media$staff$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Media$staff$edges$node<TRes> get node =>
      CopyWith$Query$Staff$Media$staff$edges$node.stub(_res);
}

class Query$Staff$Media$staff$edges$node {
  Query$Staff$Media$staff$edges$node({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Query$Staff$Media$staff$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media$staff$edges$node(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Staff$Media$staff$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Staff$Media$staff$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Staff$Media$staff$edges$node$name? name;

  final Query$Staff$Media$staff$edges$node$image? image;

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
    if (!(other is Query$Staff$Media$staff$edges$node) ||
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

extension UtilityExtension$Query$Staff$Media$staff$edges$node
    on Query$Staff$Media$staff$edges$node {
  CopyWith$Query$Staff$Media$staff$edges$node<
          Query$Staff$Media$staff$edges$node>
      get copyWith => CopyWith$Query$Staff$Media$staff$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Media$staff$edges$node<TRes> {
  factory CopyWith$Query$Staff$Media$staff$edges$node(
    Query$Staff$Media$staff$edges$node instance,
    TRes Function(Query$Staff$Media$staff$edges$node) then,
  ) = _CopyWithImpl$Query$Staff$Media$staff$edges$node;

  factory CopyWith$Query$Staff$Media$staff$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media$staff$edges$node;

  TRes call({
    int? id,
    Query$Staff$Media$staff$edges$node$name? name,
    Query$Staff$Media$staff$edges$node$image? image,
    String? $__typename,
  });
  CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> get name;
  CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> get image;
}

class _CopyWithImpl$Query$Staff$Media$staff$edges$node<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node<TRes> {
  _CopyWithImpl$Query$Staff$Media$staff$edges$node(
    this._instance,
    this._then,
  );

  final Query$Staff$Media$staff$edges$node _instance;

  final TRes Function(Query$Staff$Media$staff$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media$staff$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Staff$Media$staff$edges$node$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Staff$Media$staff$edges$node$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Staff$Media$staff$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Media$staff$edges$node$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Staff$Media$staff$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Media$staff$edges$node$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Media$staff$edges$node<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node<TRes> {
  _CopyWithStubImpl$Query$Staff$Media$staff$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$Staff$Media$staff$edges$node$name? name,
    Query$Staff$Media$staff$edges$node$image? image,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> get name =>
      CopyWith$Query$Staff$Media$staff$edges$node$name.stub(_res);
  CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> get image =>
      CopyWith$Query$Staff$Media$staff$edges$node$image.stub(_res);
}

class Query$Staff$Media$staff$edges$node$name {
  Query$Staff$Media$staff$edges$node$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Staff$Media$staff$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media$staff$edges$node$name(
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
    if (!(other is Query$Staff$Media$staff$edges$node$name) ||
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

extension UtilityExtension$Query$Staff$Media$staff$edges$node$name
    on Query$Staff$Media$staff$edges$node$name {
  CopyWith$Query$Staff$Media$staff$edges$node$name<
          Query$Staff$Media$staff$edges$node$name>
      get copyWith => CopyWith$Query$Staff$Media$staff$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> {
  factory CopyWith$Query$Staff$Media$staff$edges$node$name(
    Query$Staff$Media$staff$edges$node$name instance,
    TRes Function(Query$Staff$Media$staff$edges$node$name) then,
  ) = _CopyWithImpl$Query$Staff$Media$staff$edges$node$name;

  factory CopyWith$Query$Staff$Media$staff$edges$node$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Media$staff$edges$node$name<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> {
  _CopyWithImpl$Query$Staff$Media$staff$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$Staff$Media$staff$edges$node$name _instance;

  final TRes Function(Query$Staff$Media$staff$edges$node$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media$staff$edges$node$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$name<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Media$staff$edges$node$image {
  Query$Staff$Media$staff$edges$node$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Staff$Media$staff$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Media$staff$edges$node$image(
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
    if (!(other is Query$Staff$Media$staff$edges$node$image) ||
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

extension UtilityExtension$Query$Staff$Media$staff$edges$node$image
    on Query$Staff$Media$staff$edges$node$image {
  CopyWith$Query$Staff$Media$staff$edges$node$image<
          Query$Staff$Media$staff$edges$node$image>
      get copyWith => CopyWith$Query$Staff$Media$staff$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> {
  factory CopyWith$Query$Staff$Media$staff$edges$node$image(
    Query$Staff$Media$staff$edges$node$image instance,
    TRes Function(Query$Staff$Media$staff$edges$node$image) then,
  ) = _CopyWithImpl$Query$Staff$Media$staff$edges$node$image;

  factory CopyWith$Query$Staff$Media$staff$edges$node$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Media$staff$edges$node$image<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> {
  _CopyWithImpl$Query$Staff$Media$staff$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$Staff$Media$staff$edges$node$image _instance;

  final TRes Function(Query$Staff$Media$staff$edges$node$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Media$staff$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$image<TRes>
    implements CopyWith$Query$Staff$Media$staff$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$Staff$Media$staff$edges$node$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
