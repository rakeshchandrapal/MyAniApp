import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$ToggleLike {
  factory Variables$Mutation$ToggleLike({
    int? id,
    Enum$LikeableType? type,
  }) =>
      Variables$Mutation$ToggleLike._({
        if (id != null) r'id': id,
        if (type != null) r'type': type,
      });

  Variables$Mutation$ToggleLike._(this._$data);

  factory Variables$Mutation$ToggleLike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$LikeableType((l$type as String));
    }
    return Variables$Mutation$ToggleLike._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  Enum$LikeableType? get type => (_$data['type'] as Enum$LikeableType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$LikeableType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleLike<Variables$Mutation$ToggleLike>
      get copyWith => CopyWith$Variables$Mutation$ToggleLike(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleLike) ||
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
    final l$id = id;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleLike<TRes> {
  factory CopyWith$Variables$Mutation$ToggleLike(
    Variables$Mutation$ToggleLike instance,
    TRes Function(Variables$Mutation$ToggleLike) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleLike;

  factory CopyWith$Variables$Mutation$ToggleLike.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleLike;

  TRes call({
    int? id,
    Enum$LikeableType? type,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleLike<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleLike(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleLike _instance;

  final TRes Function(Variables$Mutation$ToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleLike._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (type != _undefined) 'type': (type as Enum$LikeableType?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleLike<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleLike(this._res);

  TRes _res;

  call({
    int? id,
    Enum$LikeableType? type,
  }) =>
      _res;
}

class Mutation$ToggleLike {
  Mutation$ToggleLike({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : Mutation$ToggleLike$ToggleLikeV2.fromJson(
              (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleLikeV2 = ToggleLikeV2;
    _resultData['ToggleLikeV2'] = l$ToggleLikeV2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleLikeV2 = ToggleLikeV2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleLikeV2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleLikeV2 = ToggleLikeV2;
    final lOther$ToggleLikeV2 = other.ToggleLikeV2;
    if (l$ToggleLikeV2 != lOther$ToggleLikeV2) {
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

extension UtilityExtension$Mutation$ToggleLike on Mutation$ToggleLike {
  CopyWith$Mutation$ToggleLike<Mutation$ToggleLike> get copyWith =>
      CopyWith$Mutation$ToggleLike(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleLike<TRes> {
  factory CopyWith$Mutation$ToggleLike(
    Mutation$ToggleLike instance,
    TRes Function(Mutation$ToggleLike) then,
  ) = _CopyWithImpl$Mutation$ToggleLike;

  factory CopyWith$Mutation$ToggleLike.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike;

  TRes call({
    Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2;
}

class _CopyWithImpl$Mutation$ToggleLike<TRes>
    implements CopyWith$Mutation$ToggleLike<TRes> {
  _CopyWithImpl$Mutation$ToggleLike(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike _instance;

  final TRes Function(Mutation$ToggleLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as Mutation$ToggleLike$ToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(_then(_instance))
        : CopyWith$Mutation$ToggleLike$ToggleLikeV2(
            local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleLike<TRes>
    implements CopyWith$Mutation$ToggleLike<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike(this._res);

  TRes _res;

  call({
    Mutation$ToggleLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(_res);
}

const documentNodeMutationToggleLike = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleLike'),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'LikeableType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ToggleLikeV2'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'likeCount'),
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
              name: NameNode(value: 'MessageActivity'),
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
                name: NameNode(value: 'likeCount'),
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
                name: NameNode(value: 'likeCount'),
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
              name: NameNode(value: 'ActivityReply'),
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
                name: NameNode(value: 'likeCount'),
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
              name: NameNode(value: 'Thread'),
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
                name: NameNode(value: 'likeCount'),
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
              name: NameNode(value: 'ThreadComment'),
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
                name: NameNode(value: 'likeCount'),
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
]);
Mutation$ToggleLike _parserFn$Mutation$ToggleLike(Map<String, dynamic> data) =>
    Mutation$ToggleLike.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleLike = FutureOr<void> Function(
  dynamic,
  Mutation$ToggleLike?,
);

class Options$Mutation$ToggleLike
    extends graphql.MutationOptions<Mutation$ToggleLike> {
  Options$Mutation$ToggleLike({
    String? operationName,
    Variables$Mutation$ToggleLike? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleLike>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ToggleLike(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleLike,
          parserFn: _parserFn$Mutation$ToggleLike,
        );

  final OnMutationCompleted$Mutation$ToggleLike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleLike
    extends graphql.WatchQueryOptions<Mutation$ToggleLike> {
  WatchOptions$Mutation$ToggleLike({
    String? operationName,
    Variables$Mutation$ToggleLike? variables,
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
          document: documentNodeMutationToggleLike,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleLike,
        );
}

extension ClientExtension$Mutation$ToggleLike on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleLike>> mutate$ToggleLike(
          [Options$Mutation$ToggleLike? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleLike());
  graphql.ObservableQuery<Mutation$ToggleLike> watchMutation$ToggleLike(
          [WatchOptions$Mutation$ToggleLike? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ToggleLike());
}

class Mutation$ToggleLike$HookResult {
  Mutation$ToggleLike$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleLike runMutation;

  final graphql.QueryResult<Mutation$ToggleLike> result;
}

Mutation$ToggleLike$HookResult useMutation$ToggleLike(
    [WidgetOptions$Mutation$ToggleLike? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleLike());
  return Mutation$ToggleLike$HookResult(
    ({variables, optimisticResult}) => result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleLike> useWatchMutation$ToggleLike(
        [WatchOptions$Mutation$ToggleLike? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$ToggleLike());

class WidgetOptions$Mutation$ToggleLike
    extends graphql.MutationOptions<Mutation$ToggleLike> {
  WidgetOptions$Mutation$ToggleLike({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleLike>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ToggleLike(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleLike,
          parserFn: _parserFn$Mutation$ToggleLike,
        );

  final OnMutationCompleted$Mutation$ToggleLike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleLike
    = graphql.MultiSourceResult<Mutation$ToggleLike> Function({
  Variables$Mutation$ToggleLike? variables,
  Object? optimisticResult,
});
typedef Builder$Mutation$ToggleLike = widgets.Widget Function(
  RunMutation$Mutation$ToggleLike,
  graphql.QueryResult<Mutation$ToggleLike>?,
);

class Mutation$ToggleLike$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleLike> {
  Mutation$ToggleLike$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleLike? options,
    required Builder$Mutation$ToggleLike builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleLike(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult: optimisticResult,
            ),
            result,
          ),
        );
}

class Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2({required this.$__typename});

  factory Mutation$ToggleLike$ToggleLikeV2.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.fromJson(json);

      case "TextActivity":
        return Mutation$ToggleLike$ToggleLikeV2$$TextActivity.fromJson(json);

      case "ActivityReply":
        return Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.fromJson(json);

      case "Thread":
        return Mutation$ToggleLike$ToggleLikeV2$$Thread.fromJson(json);

      case "ThreadComment":
        return Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ToggleLike$ToggleLikeV2(
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
    if (!(other is Mutation$ToggleLike$ToggleLikeV2) ||
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2
    on Mutation$ToggleLike$ToggleLikeV2 {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2<Mutation$ToggleLike$ToggleLikeV2>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2(
    Mutation$ToggleLike$ToggleLikeV2 instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2 _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleLike$ToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ListActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ListActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ListActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ListActivity
    on Mutation$ToggleLike$ToggleLikeV2$$ListActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<
          Mutation$ToggleLike$ToggleLikeV2$$ListActivity>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
    Mutation$ToggleLike$ToggleLikeV2$$ListActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ListActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$MessageActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$MessageActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'MessageActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity
    on Mutation$ToggleLike$ToggleLikeV2$$MessageActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<
          Mutation$ToggleLike$ToggleLikeV2$$MessageActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
    Mutation$ToggleLike$ToggleLikeV2$$MessageActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes>
    implements
        CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$MessageActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes>
    implements
        CopyWith$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$TextActivity
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$TextActivity({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'TextActivity',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$TextActivity
    on Mutation$ToggleLike$ToggleLikeV2$$TextActivity {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<
          Mutation$ToggleLike$ToggleLikeV2$$TextActivity>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
    Mutation$ToggleLike$ToggleLikeV2$$TextActivity instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$TextActivity _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ActivityReply
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ActivityReply({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ActivityReply',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$ActivityReply) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply
    on Mutation$ToggleLike$ToggleLikeV2$$ActivityReply {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<
          Mutation$ToggleLike$ToggleLikeV2$$ActivityReply>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
    Mutation$ToggleLike$ToggleLikeV2$$ActivityReply instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ActivityReply _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$Thread
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$Thread({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'Thread',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$Thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$Thread(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$Thread) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$Thread
    on Mutation$ToggleLike$ToggleLikeV2$$Thread {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<
          Mutation$ToggleLike$ToggleLikeV2$$Thread>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread(
    Mutation$ToggleLike$ToggleLikeV2$$Thread instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$Thread) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$Thread _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$Thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$Thread(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleLike$ToggleLikeV2$$ThreadComment
    implements Mutation$ToggleLike$ToggleLikeV2 {
  Mutation$ToggleLike$ToggleLikeV2$$ThreadComment({
    required this.id,
    required this.likeCount,
    this.isLiked,
    this.$__typename = 'ThreadComment',
  });

  factory Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$likeCount = json['likeCount'];
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
      id: (l$id as int),
      likeCount: (l$likeCount as int),
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int likeCount;

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$likeCount = likeCount;
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$likeCount,
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleLike$ToggleLikeV2$$ThreadComment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment
    on Mutation$ToggleLike$ToggleLikeV2$$ThreadComment {
  CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<
          Mutation$ToggleLike$ToggleLikeV2$$ThreadComment>
      get copyWith => CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
    Mutation$ToggleLike$ToggleLikeV2$$ThreadComment instance,
    TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment) then,
  ) = _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment;

  factory CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment;

  TRes call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
    this._instance,
    this._then,
  );

  final Mutation$ToggleLike$ToggleLikeV2$$ThreadComment _instance;

  final TRes Function(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? likeCount = _undefined,
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes>
    implements CopyWith$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithStubImpl$Mutation$ToggleLike$ToggleLikeV2$$ThreadComment(this._res);

  TRes _res;

  call({
    int? id,
    int? likeCount,
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}
