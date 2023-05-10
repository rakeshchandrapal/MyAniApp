// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Staff {
  factory Variables$Query$Staff({
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
  }) =>
      Variables$Query$Staff._({
        if (id != null) r'id': id,
        if (onList != null) r'onList': onList,
        if (characterPage != null) r'characterPage': characterPage,
        if (staffPage != null) r'staffPage': staffPage,
      });

  Variables$Query$Staff._(this._$data);

  factory Variables$Query$Staff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('characterPage')) {
      final l$characterPage = data['characterPage'];
      result$data['characterPage'] = (l$characterPage as int?);
    }
    if (data.containsKey('staffPage')) {
      final l$staffPage = data['staffPage'];
      result$data['staffPage'] = (l$staffPage as int?);
    }
    return Variables$Query$Staff._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  bool? get onList => (_$data['onList'] as bool?);
  int? get characterPage => (_$data['characterPage'] as int?);
  int? get staffPage => (_$data['staffPage'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('characterPage')) {
      final l$characterPage = characterPage;
      result$data['characterPage'] = l$characterPage;
    }
    if (_$data.containsKey('staffPage')) {
      final l$staffPage = staffPage;
      result$data['staffPage'] = l$staffPage;
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
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    final l$characterPage = characterPage;
    final lOther$characterPage = other.characterPage;
    if (_$data.containsKey('characterPage') !=
        other._$data.containsKey('characterPage')) {
      return false;
    }
    if (l$characterPage != lOther$characterPage) {
      return false;
    }
    final l$staffPage = staffPage;
    final lOther$staffPage = other.staffPage;
    if (_$data.containsKey('staffPage') !=
        other._$data.containsKey('staffPage')) {
      return false;
    }
    if (l$staffPage != lOther$staffPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$onList = onList;
    final l$characterPage = characterPage;
    final l$staffPage = staffPage;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('characterPage') ? l$characterPage : const {},
      _$data.containsKey('staffPage') ? l$staffPage : const {},
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
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
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
    Object? id = _undefined,
    Object? onList = _undefined,
    Object? characterPage = _undefined,
    Object? staffPage = _undefined,
  }) =>
      _then(Variables$Query$Staff._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (characterPage != _undefined)
          'characterPage': (characterPage as int?),
        if (staffPage != _undefined) 'staffPage': (staffPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithStubImpl$Variables$Query$Staff(this._res);

  TRes _res;

  call({
    int? id,
    bool? onList,
    int? characterPage,
    int? staffPage,
  }) =>
      _res;
}

class Query$Staff {
  Query$Staff({
    this.Staff,
    this.$__typename = 'Query',
  });

  factory Query$Staff.fromJson(Map<String, dynamic> json) {
    final l$Staff = json['Staff'];
    final l$$__typename = json['__typename'];
    return Query$Staff(
      Staff: l$Staff == null
          ? null
          : Query$Staff$Staff.fromJson((l$Staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Staff$Staff? Staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Staff = Staff;
    _resultData['Staff'] = l$Staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Staff = Staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Staff,
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
    final l$Staff = Staff;
    final lOther$Staff = other.Staff;
    if (l$Staff != lOther$Staff) {
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
    Query$Staff$Staff? Staff,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff<TRes> get Staff;
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
    Object? Staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff(
        Staff: Staff == _undefined
            ? _instance.Staff
            : (Staff as Query$Staff$Staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Staff<TRes> get Staff {
    final local$Staff = _instance.Staff;
    return local$Staff == null
        ? CopyWith$Query$Staff$Staff.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff(local$Staff, (e) => call(Staff: e));
  }
}

class _CopyWithStubImpl$Query$Staff<TRes>
    implements CopyWith$Query$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff(this._res);

  TRes _res;

  call({
    Query$Staff$Staff? Staff,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Staff<TRes> get Staff =>
      CopyWith$Query$Staff$Staff.stub(_res);
}

const documentNodeQueryStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Staff'),
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
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffPage')),
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
        name: NameNode(value: 'Staff'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
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
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'languageV2'),
            alias: NameNode(value: 'language'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dateOfBirth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FuzzyDate'),
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
            name: NameNode(value: 'dateOfDeath'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FuzzyDate'),
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
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yearsActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'homeTown'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bloodType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
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
            name: NameNode(value: 'characterMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'characterPage')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'START_DATE_DESC'))
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
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Media'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'startDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'year'),
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
                    name: NameNode(value: 'characters'),
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
            name: NameNode(value: 'staffMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'staffPage')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'START_DATE_DESC'))
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
                    name: NameNode(value: 'node'),
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
                    name: NameNode(value: 'staffRole'),
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
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionPageInfo,
  fragmentDefinitionMedia,
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

class Query$Staff$Staff {
  Query$Staff$Staff({
    required this.id,
    this.description,
    this.gender,
    this.language,
    this.dateOfBirth,
    this.dateOfDeath,
    this.age,
    this.yearsActive,
    this.homeTown,
    this.bloodType,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.name,
    this.image,
    this.characterMedia,
    this.staffMedia,
    this.$__typename = 'Staff',
  });

  factory Query$Staff$Staff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$language = json['language'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$dateOfDeath = json['dateOfDeath'];
    final l$age = json['age'];
    final l$yearsActive = json['yearsActive'];
    final l$homeTown = json['homeTown'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$characterMedia = json['characterMedia'];
    final l$staffMedia = json['staffMedia'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff(
      id: (l$id as int),
      description: (l$description as String?),
      gender: (l$gender as String?),
      language: (l$language as String?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      dateOfDeath: l$dateOfDeath == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfDeath as Map<String, dynamic>)),
      age: (l$age as int?),
      yearsActive:
          (l$yearsActive as List<dynamic>?)?.map((e) => (e as int?)).toList(),
      homeTown: (l$homeTown as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      name: l$name == null
          ? null
          : Query$Staff$Staff$name.fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Staff$Staff$image.fromJson((l$image as Map<String, dynamic>)),
      characterMedia: l$characterMedia == null
          ? null
          : Query$Staff$Staff$characterMedia.fromJson(
              (l$characterMedia as Map<String, dynamic>)),
      staffMedia: l$staffMedia == null
          ? null
          : Query$Staff$Staff$staffMedia.fromJson(
              (l$staffMedia as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? description;

  final String? gender;

  final String? language;

  final Fragment$FuzzyDate? dateOfBirth;

  final Fragment$FuzzyDate? dateOfDeath;

  final int? age;

  final List<int?>? yearsActive;

  final String? homeTown;

  final String? bloodType;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final Query$Staff$Staff$name? name;

  final Query$Staff$Staff$image? image;

  final Query$Staff$Staff$characterMedia? characterMedia;

  final Query$Staff$Staff$staffMedia? staffMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$language = language;
    _resultData['language'] = l$language;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$dateOfDeath = dateOfDeath;
    _resultData['dateOfDeath'] = l$dateOfDeath?.toJson();
    final l$age = age;
    _resultData['age'] = l$age;
    final l$yearsActive = yearsActive;
    _resultData['yearsActive'] = l$yearsActive?.map((e) => e).toList();
    final l$homeTown = homeTown;
    _resultData['homeTown'] = l$homeTown;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$characterMedia = characterMedia;
    _resultData['characterMedia'] = l$characterMedia?.toJson();
    final l$staffMedia = staffMedia;
    _resultData['staffMedia'] = l$staffMedia?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$description = description;
    final l$gender = gender;
    final l$language = language;
    final l$dateOfBirth = dateOfBirth;
    final l$dateOfDeath = dateOfDeath;
    final l$age = age;
    final l$yearsActive = yearsActive;
    final l$homeTown = homeTown;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$name = name;
    final l$image = image;
    final l$characterMedia = characterMedia;
    final l$staffMedia = staffMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$description,
      l$gender,
      l$language,
      l$dateOfBirth,
      l$dateOfDeath,
      l$age,
      l$yearsActive == null
          ? null
          : Object.hashAll(l$yearsActive.map((v) => v)),
      l$homeTown,
      l$bloodType,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$name,
      l$image,
      l$characterMedia,
      l$staffMedia,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$dateOfDeath = dateOfDeath;
    final lOther$dateOfDeath = other.dateOfDeath;
    if (l$dateOfDeath != lOther$dateOfDeath) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$yearsActive = yearsActive;
    final lOther$yearsActive = other.yearsActive;
    if (l$yearsActive != null && lOther$yearsActive != null) {
      if (l$yearsActive.length != lOther$yearsActive.length) {
        return false;
      }
      for (int i = 0; i < l$yearsActive.length; i++) {
        final l$yearsActive$entry = l$yearsActive[i];
        final lOther$yearsActive$entry = lOther$yearsActive[i];
        if (l$yearsActive$entry != lOther$yearsActive$entry) {
          return false;
        }
      }
    } else if (l$yearsActive != lOther$yearsActive) {
      return false;
    }
    final l$homeTown = homeTown;
    final lOther$homeTown = other.homeTown;
    if (l$homeTown != lOther$homeTown) {
      return false;
    }
    final l$bloodType = bloodType;
    final lOther$bloodType = other.bloodType;
    if (l$bloodType != lOther$bloodType) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
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
    final l$characterMedia = characterMedia;
    final lOther$characterMedia = other.characterMedia;
    if (l$characterMedia != lOther$characterMedia) {
      return false;
    }
    final l$staffMedia = staffMedia;
    final lOther$staffMedia = other.staffMedia;
    if (l$staffMedia != lOther$staffMedia) {
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

extension UtilityExtension$Query$Staff$Staff on Query$Staff$Staff {
  CopyWith$Query$Staff$Staff<Query$Staff$Staff> get copyWith =>
      CopyWith$Query$Staff$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff<TRes> {
  factory CopyWith$Query$Staff$Staff(
    Query$Staff$Staff instance,
    TRes Function(Query$Staff$Staff) then,
  ) = _CopyWithImpl$Query$Staff$Staff;

  factory CopyWith$Query$Staff$Staff.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff;

  TRes call({
    int? id,
    String? description,
    String? gender,
    String? language,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    int? age,
    List<int?>? yearsActive,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    Query$Staff$Staff$characterMedia? characterMedia,
    Query$Staff$Staff$staffMedia? staffMedia,
    String? $__typename,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath;
  CopyWith$Query$Staff$Staff$name<TRes> get name;
  CopyWith$Query$Staff$Staff$image<TRes> get image;
  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia;
  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia;
}

class _CopyWithImpl$Query$Staff$Staff<TRes>
    implements CopyWith$Query$Staff$Staff<TRes> {
  _CopyWithImpl$Query$Staff$Staff(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff _instance;

  final TRes Function(Query$Staff$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? language = _undefined,
    Object? dateOfBirth = _undefined,
    Object? dateOfDeath = _undefined,
    Object? age = _undefined,
    Object? yearsActive = _undefined,
    Object? homeTown = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? characterMedia = _undefined,
    Object? staffMedia = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        language:
            language == _undefined ? _instance.language : (language as String?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        dateOfDeath: dateOfDeath == _undefined
            ? _instance.dateOfDeath
            : (dateOfDeath as Fragment$FuzzyDate?),
        age: age == _undefined ? _instance.age : (age as int?),
        yearsActive: yearsActive == _undefined
            ? _instance.yearsActive
            : (yearsActive as List<int?>?),
        homeTown:
            homeTown == _undefined ? _instance.homeTown : (homeTown as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Staff$Staff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Staff$Staff$image?),
        characterMedia: characterMedia == _undefined
            ? _instance.characterMedia
            : (characterMedia as Query$Staff$Staff$characterMedia?),
        staffMedia: staffMedia == _undefined
            ? _instance.staffMedia
            : (staffMedia as Query$Staff$Staff$staffMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath {
    final local$dateOfDeath = _instance.dateOfDeath;
    return local$dateOfDeath == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfDeath, (e) => call(dateOfDeath: e));
  }

  CopyWith$Query$Staff$Staff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Staff$Staff$name.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$name(local$name, (e) => call(name: e));
  }

  CopyWith$Query$Staff$Staff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Staff$Staff$image.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$image(local$image, (e) => call(image: e));
  }

  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia {
    final local$characterMedia = _instance.characterMedia;
    return local$characterMedia == null
        ? CopyWith$Query$Staff$Staff$characterMedia.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia(
            local$characterMedia, (e) => call(characterMedia: e));
  }

  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia {
    final local$staffMedia = _instance.staffMedia;
    return local$staffMedia == null
        ? CopyWith$Query$Staff$Staff$staffMedia.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$staffMedia(
            local$staffMedia, (e) => call(staffMedia: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff<TRes>
    implements CopyWith$Query$Staff$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff(this._res);

  TRes _res;

  call({
    int? id,
    String? description,
    String? gender,
    String? language,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    int? age,
    List<int?>? yearsActive,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    Query$Staff$Staff$characterMedia? characterMedia,
    Query$Staff$Staff$staffMedia? staffMedia,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
  CopyWith$Query$Staff$Staff$name<TRes> get name =>
      CopyWith$Query$Staff$Staff$name.stub(_res);
  CopyWith$Query$Staff$Staff$image<TRes> get image =>
      CopyWith$Query$Staff$Staff$image.stub(_res);
  CopyWith$Query$Staff$Staff$characterMedia<TRes> get characterMedia =>
      CopyWith$Query$Staff$Staff$characterMedia.stub(_res);
  CopyWith$Query$Staff$Staff$staffMedia<TRes> get staffMedia =>
      CopyWith$Query$Staff$Staff$staffMedia.stub(_res);
}

class Query$Staff$Staff$name {
  Query$Staff$Staff$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Staff$Staff$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$name(
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
    if (!(other is Query$Staff$Staff$name) ||
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

extension UtilityExtension$Query$Staff$Staff$name on Query$Staff$Staff$name {
  CopyWith$Query$Staff$Staff$name<Query$Staff$Staff$name> get copyWith =>
      CopyWith$Query$Staff$Staff$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff$name<TRes> {
  factory CopyWith$Query$Staff$Staff$name(
    Query$Staff$Staff$name instance,
    TRes Function(Query$Staff$Staff$name) then,
  ) = _CopyWithImpl$Query$Staff$Staff$name;

  factory CopyWith$Query$Staff$Staff$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$name<TRes>
    implements CopyWith$Query$Staff$Staff$name<TRes> {
  _CopyWithImpl$Query$Staff$Staff$name(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$name _instance;

  final TRes Function(Query$Staff$Staff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$name<TRes>
    implements CopyWith$Query$Staff$Staff$name<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$image {
  Query$Staff$Staff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Staff$Staff$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$image(
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
    if (!(other is Query$Staff$Staff$image) ||
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

extension UtilityExtension$Query$Staff$Staff$image on Query$Staff$Staff$image {
  CopyWith$Query$Staff$Staff$image<Query$Staff$Staff$image> get copyWith =>
      CopyWith$Query$Staff$Staff$image(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Staff$Staff$image<TRes> {
  factory CopyWith$Query$Staff$Staff$image(
    Query$Staff$Staff$image instance,
    TRes Function(Query$Staff$Staff$image) then,
  ) = _CopyWithImpl$Query$Staff$Staff$image;

  factory CopyWith$Query$Staff$Staff$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$image<TRes>
    implements CopyWith$Query$Staff$Staff$image<TRes> {
  _CopyWithImpl$Query$Staff$Staff$image(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$image _instance;

  final TRes Function(Query$Staff$Staff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$image<TRes>
    implements CopyWith$Query$Staff$Staff$image<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia {
  Query$Staff$Staff$characterMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Staff$Staff$characterMedia.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Staff$characterMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Staff$Staff$characterMedia$edges?>? edges;

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
    if (!(other is Query$Staff$Staff$characterMedia) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia
    on Query$Staff$Staff$characterMedia {
  CopyWith$Query$Staff$Staff$characterMedia<Query$Staff$Staff$characterMedia>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia(
    Query$Staff$Staff$characterMedia instance,
    TRes Function(Query$Staff$Staff$characterMedia) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia;

  factory CopyWith$Query$Staff$Staff$characterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Staff$Staff$characterMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Staff$characterMedia$edges<
                      Query$Staff$Staff$characterMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia _instance;

  final TRes Function(Query$Staff$Staff$characterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Staff$Staff$characterMedia$edges?>?),
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
          Iterable<Query$Staff$Staff$characterMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Staff$characterMedia$edges<
                          Query$Staff$Staff$characterMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Staff$characterMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$Staff$Staff$characterMedia$edges {
  Query$Staff$Staff$characterMedia$edges({
    this.node,
    this.characters,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Staff$Staff$characterMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges(
      node: l$node == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Staff$characterMedia$edges$characters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Staff$Staff$characterMedia$edges$node? node;

  final List<Query$Staff$Staff$characterMedia$edges$characters?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$characterMedia$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges
    on Query$Staff$Staff$characterMedia$edges {
  CopyWith$Query$Staff$Staff$characterMedia$edges<
          Query$Staff$Staff$characterMedia$edges>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges(
    Query$Staff$Staff$characterMedia$edges instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges;

  TRes call({
    Query$Staff$Staff$characterMedia$edges$node? node,
    List<Query$Staff$Staff$characterMedia$edges$characters?>? characters,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node;
  TRes characters(
      Iterable<Query$Staff$Staff$characterMedia$edges$characters?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Staff$characterMedia$edges$characters<
                      Query$Staff$Staff$characterMedia$edges$characters>?>?)
          _fn);
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$Staff$Staff$characterMedia$edges$node?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters
                as List<Query$Staff$Staff$characterMedia$edges$characters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node(
            local$node, (e) => call(node: e));
  }

  TRes characters(
          Iterable<Query$Staff$Staff$characterMedia$edges$characters?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Staff$characterMedia$edges$characters<
                          Query$Staff$Staff$characterMedia$edges$characters>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Staff$characterMedia$edges$characters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges(this._res);

  TRes _res;

  call({
    Query$Staff$Staff$characterMedia$edges$node? node,
    List<Query$Staff$Staff$characterMedia$edges$characters?>? characters,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> get node =>
      CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(_res);
  characters(_fn) => _res;
}

class Query$Staff$Staff$characterMedia$edges$node implements Fragment$Media {
  Query$Staff$Staff$characterMedia$edges$node({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.episodes,
    this.format,
    this.chapters,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.startDate,
  });

  factory Query$Staff$Staff$characterMedia$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$episodes = json['episodes'];
    final l$format = json['format'];
    final l$chapters = json['chapters'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$startDate = json['startDate'];
    return Query$Staff$Staff$characterMedia$edges$node(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      chapters: (l$chapters as int?),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      startDate: l$startDate == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$node$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final int? episodes;

  final Enum$MediaFormat? format;

  final int? chapters;

  final String? description;

  final Query$Staff$Staff$characterMedia$edges$node$title? title;

  final Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage;

  final String $__typename;

  final Query$Staff$Staff$characterMedia$edges$node$startDate? startDate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$episodes = episodes;
    final l$format = format;
    final l$chapters = chapters;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$startDate = startDate;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$episodes,
      l$format,
      l$chapters,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
      l$startDate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$characterMedia$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node
    on Query$Staff$Staff$characterMedia$edges$node {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node<
          Query$Staff$Staff$characterMedia$edges$node>
      get copyWith => CopyWith$Query$Staff$Staff$characterMedia$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node(
    Query$Staff$Staff$characterMedia$edges$node instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    String? description,
    Query$Staff$Staff$characterMedia$edges$node$title? title,
    Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage,
    String? $__typename,
    Query$Staff$Staff$characterMedia$edges$node$startDate? startDate,
  });
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate;
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? episodes = _undefined,
    Object? format = _undefined,
    Object? chapters = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? startDate = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Staff$Staff$characterMedia$edges$node$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$Staff$Staff$characterMedia$edges$node$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate
                as Query$Staff$Staff$characterMedia$edges$node$startDate?),
      ));
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$Staff$Staff$characterMedia$edges$node<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    int? episodes,
    Enum$MediaFormat? format,
    int? chapters,
    String? description,
    Query$Staff$Staff$characterMedia$edges$node$title? title,
    Query$Staff$Staff$characterMedia$edges$node$coverImage? coverImage,
    String? $__typename,
    Query$Staff$Staff$characterMedia$edges$node$startDate? startDate,
  }) =>
      _res;
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> get title =>
      CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(_res);
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
              _res);
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
              _res);
}

class Query$Staff$Staff$characterMedia$edges$node$title
    implements Fragment$Media$title {
  Query$Staff$Staff$characterMedia$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$title(
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
    if (!(other is Query$Staff$Staff$characterMedia$edges$node$title) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$title
    on Query$Staff$Staff$characterMedia$edges$node$title {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<
          Query$Staff$Staff$characterMedia$edges$node$title>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$title(
    Query$Staff$Staff$characterMedia$edges$node$title instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$title) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$title(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$title _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$node$coverImage
    implements Fragment$Media$coverImage {
  Query$Staff$Staff$characterMedia$edges$node$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$coverImage(
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
    if (!(other is Query$Staff$Staff$characterMedia$edges$node$coverImage) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$coverImage
    on Query$Staff$Staff$characterMedia$edges$node$coverImage {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<
          Query$Staff$Staff$characterMedia$edges$node$coverImage>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage(
    Query$Staff$Staff$characterMedia$edges$node$coverImage instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$coverImage) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$coverImage _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$coverImage<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$node$startDate {
  Query$Staff$Staff$characterMedia$edges$node$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Staff$Staff$characterMedia$edges$node$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$node$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$characterMedia$edges$node$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$node$startDate
    on Query$Staff$Staff$characterMedia$edges$node$startDate {
  CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<
          Query$Staff$Staff$characterMedia$edges$node$startDate>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate(
    Query$Staff$Staff$characterMedia$edges$node$startDate instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$node$startDate) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$node$startDate(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$node$startDate _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$node$startDate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$node$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$node$startDate<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$node$startDate(
      this._res);

  TRes _res;

  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$characters {
  Query$Staff$Staff$characterMedia$edges$characters({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$Staff$Staff$characterMedia$edges$characters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$characters(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$characters$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Staff$Staff$characterMedia$edges$characters$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Staff$Staff$characterMedia$edges$characters$name? name;

  final Query$Staff$Staff$characterMedia$edges$characters$image? image;

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
    if (!(other is Query$Staff$Staff$characterMedia$edges$characters) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$characters
    on Query$Staff$Staff$characterMedia$edges$characters {
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters<
          Query$Staff$Staff$characterMedia$edges$characters>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$characters<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters(
    Query$Staff$Staff$characterMedia$edges$characters instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$characters) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters;

  TRes call({
    int? id,
    Query$Staff$Staff$characterMedia$edges$characters$name? name,
    Query$Staff$Staff$characterMedia$edges$characters$image? image,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<TRes>
      get name;
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<TRes>
      get image;
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$characters _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$characters(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Staff$Staff$characterMedia$edges$characters$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Staff$Staff$characterMedia$edges$characters$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<TRes>
      get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image.stub(
            _then(_instance))
        : CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$Staff$Staff$characterMedia$edges$characters$name? name,
    Query$Staff$Staff$characterMedia$edges$characters$image? image,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<TRes>
      get name =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name.stub(
              _res);
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<TRes>
      get image =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image.stub(
              _res);
}

class Query$Staff$Staff$characterMedia$edges$characters$name {
  Query$Staff$Staff$characterMedia$edges$characters$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Staff$Staff$characterMedia$edges$characters$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$characters$name(
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
    if (!(other is Query$Staff$Staff$characterMedia$edges$characters$name) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$characters$name
    on Query$Staff$Staff$characterMedia$edges$characters$name {
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<
          Query$Staff$Staff$characterMedia$edges$characters$name>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name(
    Query$Staff$Staff$characterMedia$edges$characters$name instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$characters$name) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$name;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$name<TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$name(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$characters$name _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$characters$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$characters$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$name<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters$name<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$characterMedia$edges$characters$image {
  Query$Staff$Staff$characterMedia$edges$characters$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Staff$Staff$characterMedia$edges$characters$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$characterMedia$edges$characters$image(
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
    if (!(other is Query$Staff$Staff$characterMedia$edges$characters$image) ||
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

extension UtilityExtension$Query$Staff$Staff$characterMedia$edges$characters$image
    on Query$Staff$Staff$characterMedia$edges$characters$image {
  CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<
          Query$Staff$Staff$characterMedia$edges$characters$image>
      get copyWith =>
          CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<
    TRes> {
  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image(
    Query$Staff$Staff$characterMedia$edges$characters$image instance,
    TRes Function(Query$Staff$Staff$characterMedia$edges$characters$image) then,
  ) = _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$image;

  factory CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$image<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<TRes> {
  _CopyWithImpl$Query$Staff$Staff$characterMedia$edges$characters$image(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$characterMedia$edges$characters$image _instance;

  final TRes Function(Query$Staff$Staff$characterMedia$edges$characters$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$characterMedia$edges$characters$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$image<
        TRes>
    implements
        CopyWith$Query$Staff$Staff$characterMedia$edges$characters$image<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$characterMedia$edges$characters$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$staffMedia {
  Query$Staff$Staff$staffMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Staff$Staff$staffMedia.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$staffMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Staff$Staff$staffMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Staff$Staff$staffMedia$edges?>? edges;

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
    if (!(other is Query$Staff$Staff$staffMedia) ||
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

extension UtilityExtension$Query$Staff$Staff$staffMedia
    on Query$Staff$Staff$staffMedia {
  CopyWith$Query$Staff$Staff$staffMedia<Query$Staff$Staff$staffMedia>
      get copyWith => CopyWith$Query$Staff$Staff$staffMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  factory CopyWith$Query$Staff$Staff$staffMedia(
    Query$Staff$Staff$staffMedia instance,
    TRes Function(Query$Staff$Staff$staffMedia) then,
  ) = _CopyWithImpl$Query$Staff$Staff$staffMedia;

  factory CopyWith$Query$Staff$Staff$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$staffMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Staff$Staff$staffMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$Staff$Staff$staffMedia$edges<
                      Query$Staff$Staff$staffMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Staff$Staff$staffMedia<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  _CopyWithImpl$Query$Staff$Staff$staffMedia(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$staffMedia _instance;

  final TRes Function(Query$Staff$Staff$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$staffMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Staff$Staff$staffMedia$edges?>?),
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
          Iterable<Query$Staff$Staff$staffMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Staff$Staff$staffMedia$edges<
                          Query$Staff$Staff$staffMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Staff$Staff$staffMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Staff$Staff$staffMedia<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$staffMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Staff$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$Staff$Staff$staffMedia$edges {
  Query$Staff$Staff$staffMedia$edges({
    this.node,
    this.staffRole,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Staff$Staff$staffMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$staffRole = json['staffRole'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$staffMedia$edges(
      node: l$node == null
          ? null
          : Fragment$Media.fromJson((l$node as Map<String, dynamic>)),
      staffRole: (l$staffRole as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Media? node;

  final String? staffRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$staffRole = staffRole;
    _resultData['staffRole'] = l$staffRole;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$staffRole = staffRole;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$staffRole,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$staffMedia$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$staffRole = staffRole;
    final lOther$staffRole = other.staffRole;
    if (l$staffRole != lOther$staffRole) {
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

extension UtilityExtension$Query$Staff$Staff$staffMedia$edges
    on Query$Staff$Staff$staffMedia$edges {
  CopyWith$Query$Staff$Staff$staffMedia$edges<
          Query$Staff$Staff$staffMedia$edges>
      get copyWith => CopyWith$Query$Staff$Staff$staffMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  factory CopyWith$Query$Staff$Staff$staffMedia$edges(
    Query$Staff$Staff$staffMedia$edges instance,
    TRes Function(Query$Staff$Staff$staffMedia$edges) then,
  ) = _CopyWithImpl$Query$Staff$Staff$staffMedia$edges;

  factory CopyWith$Query$Staff$Staff$staffMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges;

  TRes call({
    Fragment$Media? node,
    String? staffRole,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get node;
}

class _CopyWithImpl$Query$Staff$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  _CopyWithImpl$Query$Staff$Staff$staffMedia$edges(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$staffMedia$edges _instance;

  final TRes Function(Query$Staff$Staff$staffMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? staffRole = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$staffMedia$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Media?),
        staffRole: staffRole == _undefined
            ? _instance.staffRole
            : (staffRole as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$Media<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$Media.stub(_then(_instance))
        : CopyWith$Fragment$Media(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$Staff$Staff$staffMedia$edges<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$staffMedia$edges(this._res);

  TRes _res;

  call({
    Fragment$Media? node,
    String? staffRole,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Media<TRes> get node => CopyWith$Fragment$Media.stub(_res);
}
