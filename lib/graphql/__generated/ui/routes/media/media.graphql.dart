// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
import '../../../graphql/fragments.graphql.dart';
import '../../../graphql/schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Media {
  factory Variables$Query$Media({int? id}) => Variables$Query$Media._({
        if (id != null) r'id': id,
      });

  Variables$Query$Media._(this._$data);

  factory Variables$Query$Media.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$Media._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Media<Variables$Query$Media> get copyWith =>
      CopyWith$Variables$Query$Media(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Media) || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Media<TRes> {
  factory CopyWith$Variables$Query$Media(
    Variables$Query$Media instance,
    TRes Function(Variables$Query$Media) then,
  ) = _CopyWithImpl$Variables$Query$Media;

  factory CopyWith$Variables$Query$Media.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Media;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$Media<TRes>
    implements CopyWith$Variables$Query$Media<TRes> {
  _CopyWithImpl$Variables$Query$Media(
    this._instance,
    this._then,
  );

  final Variables$Query$Media _instance;

  final TRes Function(Variables$Query$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Media._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Media<TRes>
    implements CopyWith$Variables$Query$Media<TRes> {
  _CopyWithStubImpl$Variables$Query$Media(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$Media {
  Query$Media({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Media.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Media(
      Media: l$Media == null
          ? null
          : Query$Media$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Media$Media? Media;

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
    if (!(other is Query$Media) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media on Query$Media {
  CopyWith$Query$Media<Query$Media> get copyWith => CopyWith$Query$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media<TRes> {
  factory CopyWith$Query$Media(
    Query$Media instance,
    TRes Function(Query$Media) then,
  ) = _CopyWithImpl$Query$Media;

  factory CopyWith$Query$Media.stub(TRes res) = _CopyWithStubImpl$Query$Media;

  TRes call({
    Query$Media$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Media$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Media<TRes> implements CopyWith$Query$Media<TRes> {
  _CopyWithImpl$Query$Media(
    this._instance,
    this._then,
  );

  final Query$Media _instance;

  final TRes Function(Query$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Media$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Media$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Media$Media.stub(_then(_instance))
        : CopyWith$Query$Media$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Media<TRes>
    implements CopyWith$Query$Media<TRes> {
  _CopyWithStubImpl$Query$Media(this._res);

  TRes _res;

  call({
    Query$Media$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Media$Media<TRes> get Media =>
      CopyWith$Query$Media$Media.stub(_res);
}

const documentNodeQueryMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Media'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MediaFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'bannerImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'favourites'),
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
            name: NameNode(value: 'averageScore'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'version'),
                value: IntValueNode(value: '2'),
              )
            ],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'season'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'seasonYear'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'source'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hashtag'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'volumes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'episodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'chapters'),
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
                name: NameNode(value: 'english'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'native'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'romaji'),
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
            name: NameNode(value: 'coverImage'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'extraLarge'),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'isMain'),
                value: BooleanValueNode(value: true),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                    name: NameNode(value: 'name'),
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
            name: NameNode(value: 'startDate'),
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
            name: NameNode(value: 'endDate'),
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
            name: NameNode(value: 'tags'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rank'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isMediaSpoiler'),
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
            name: NameNode(value: 'relations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'relationType'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'version'),
                        value: IntValueNode(value: '2'),
                      )
                    ],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaFragment'),
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
            name: NameNode(value: 'externalLinks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'url'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'color'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isDisabled'),
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
            name: NameNode(value: 'trailer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'site'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'thumbnail'),
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
            name: NameNode(value: 'mediaListEntry'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'status'),
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
  fragmentDefinitionMediaFragment,
  fragmentDefinitionFuzzyDate,
]);
Query$Media _parserFn$Query$Media(Map<String, dynamic> data) =>
    Query$Media.fromJson(data);
typedef OnQueryComplete$Query$Media = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Media?,
);

class Options$Query$Media extends graphql.QueryOptions<Query$Media> {
  Options$Query$Media({
    String? operationName,
    Variables$Query$Media? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Media? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Media? onComplete,
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
                    data == null ? null : _parserFn$Query$Media(data),
                  ),
          onError: onError,
          document: documentNodeQueryMedia,
          parserFn: _parserFn$Query$Media,
        );

  final OnQueryComplete$Query$Media? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Media extends graphql.WatchQueryOptions<Query$Media> {
  WatchOptions$Query$Media({
    String? operationName,
    Variables$Query$Media? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Media? typedOptimisticResult,
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
          document: documentNodeQueryMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Media,
        );
}

class FetchMoreOptions$Query$Media extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Media({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Media? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMedia,
        );
}

extension ClientExtension$Query$Media on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Media>> query$Media(
          [Options$Query$Media? options]) async =>
      await this.query(options ?? Options$Query$Media());
  graphql.ObservableQuery<Query$Media> watchQuery$Media(
          [WatchOptions$Query$Media? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Media());
  void writeQuery$Media({
    required Query$Media data,
    Variables$Query$Media? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Media? readQuery$Media({
    Variables$Query$Media? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Media.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Media> useQuery$Media(
        [Options$Query$Media? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Media());
graphql.ObservableQuery<Query$Media> useWatchQuery$Media(
        [WatchOptions$Query$Media? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Media());

class Query$Media$Widget extends graphql_flutter.Query<Query$Media> {
  Query$Media$Widget({
    widgets.Key? key,
    Options$Query$Media? options,
    required graphql_flutter.QueryBuilder<Query$Media> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Media(),
          builder: builder,
        );
}

class Query$Media$Media implements Fragment$MediaFragment {
  Query$Media$Media({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
    this.bannerImage,
    this.favourites,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.averageScore,
    this.duration,
    this.status,
    this.season,
    this.seasonYear,
    this.source,
    this.hashtag,
    this.volumes,
    this.episodes,
    this.chapters,
    this.studios,
    this.startDate,
    this.endDate,
    this.tags,
    this.relations,
    this.externalLinks,
    this.trailer,
    this.characters,
    this.staff,
    this.recommendations,
    this.reviews,
    this.mediaListEntry,
  });

  factory Query$Media$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    final l$bannerImage = json['bannerImage'];
    final l$favourites = json['favourites'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$averageScore = json['averageScore'];
    final l$duration = json['duration'];
    final l$status = json['status'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$source = json['source'];
    final l$hashtag = json['hashtag'];
    final l$volumes = json['volumes'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$studios = json['studios'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$tags = json['tags'];
    final l$relations = json['relations'];
    final l$externalLinks = json['externalLinks'];
    final l$trailer = json['trailer'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$recommendations = json['recommendations'];
    final l$reviews = json['reviews'];
    final l$mediaListEntry = json['mediaListEntry'];
    return Query$Media$Media(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Query$Media$Media$title.fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$Media$Media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      bannerImage: (l$bannerImage as String?),
      favourites: (l$favourites as int?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      averageScore: (l$averageScore as int?),
      duration: (l$duration as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      source: l$source == null
          ? null
          : fromJson$Enum$MediaSource((l$source as String)),
      hashtag: (l$hashtag as String?),
      volumes: (l$volumes as int?),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      studios: l$studios == null
          ? null
          : Query$Media$Media$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      startDate: l$startDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$endDate as Map<String, dynamic>)),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$tags.fromJson((e as Map<String, dynamic>)))
          .toList(),
      relations: l$relations == null
          ? null
          : Query$Media$Media$relations.fromJson(
              (l$relations as Map<String, dynamic>)),
      externalLinks: (l$externalLinks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$externalLinks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      trailer: l$trailer == null
          ? null
          : Query$Media$Media$trailer.fromJson(
              (l$trailer as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Query$Media$Media$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Query$Media$Media$staff.fromJson((l$staff as Map<String, dynamic>)),
      recommendations: l$recommendations == null
          ? null
          : Query$Media$Media$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      reviews: l$reviews == null
          ? null
          : Query$Media$Media$reviews.fromJson(
              (l$reviews as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Query$Media$Media$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Query$Media$Media$title? title;

  final Query$Media$Media$coverImage? coverImage;

  final String $__typename;

  final String? bannerImage;

  final int? favourites;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final int? averageScore;

  final int? duration;

  final Enum$MediaStatus? status;

  final Enum$MediaSeason? season;

  final int? seasonYear;

  final Enum$MediaSource? source;

  final String? hashtag;

  final int? volumes;

  final int? episodes;

  final int? chapters;

  final Query$Media$Media$studios? studios;

  final Fragment$FuzzyDate? startDate;

  final Fragment$FuzzyDate? endDate;

  final List<Query$Media$Media$tags?>? tags;

  final Query$Media$Media$relations? relations;

  final List<Query$Media$Media$externalLinks?>? externalLinks;

  final Query$Media$Media$trailer? trailer;

  final Query$Media$Media$characters? characters;

  final Query$Media$Media$staff? staff;

  final Query$Media$Media$recommendations? recommendations;

  final Query$Media$Media$reviews? reviews;

  final Query$Media$Media$mediaListEntry? mediaListEntry;

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
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJson$Enum$MediaSource(l$source);
    final l$hashtag = hashtag;
    _resultData['hashtag'] = l$hashtag;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$relations = relations;
    _resultData['relations'] = l$relations?.toJson();
    final l$externalLinks = externalLinks;
    _resultData['externalLinks'] =
        l$externalLinks?.map((e) => e?.toJson()).toList();
    final l$trailer = trailer;
    _resultData['trailer'] = l$trailer?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    final l$bannerImage = bannerImage;
    final l$favourites = favourites;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$averageScore = averageScore;
    final l$duration = duration;
    final l$status = status;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$source = source;
    final l$hashtag = hashtag;
    final l$volumes = volumes;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$studios = studios;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$tags = tags;
    final l$relations = relations;
    final l$externalLinks = externalLinks;
    final l$trailer = trailer;
    final l$characters = characters;
    final l$staff = staff;
    final l$recommendations = recommendations;
    final l$reviews = reviews;
    final l$mediaListEntry = mediaListEntry;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
      l$bannerImage,
      l$favourites,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$averageScore,
      l$duration,
      l$status,
      l$season,
      l$seasonYear,
      l$source,
      l$hashtag,
      l$volumes,
      l$episodes,
      l$chapters,
      l$studios,
      l$startDate,
      l$endDate,
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$relations,
      l$externalLinks == null
          ? null
          : Object.hashAll(l$externalLinks.map((v) => v)),
      l$trailer,
      l$characters,
      l$staff,
      l$recommendations,
      l$reviews,
      l$mediaListEntry,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media) || runtimeType != other.runtimeType) {
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
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$hashtag = hashtag;
    final lOther$hashtag = other.hashtag;
    if (l$hashtag != lOther$hashtag) {
      return false;
    }
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$relations = relations;
    final lOther$relations = other.relations;
    if (l$relations != lOther$relations) {
      return false;
    }
    final l$externalLinks = externalLinks;
    final lOther$externalLinks = other.externalLinks;
    if (l$externalLinks != null && lOther$externalLinks != null) {
      if (l$externalLinks.length != lOther$externalLinks.length) {
        return false;
      }
      for (int i = 0; i < l$externalLinks.length; i++) {
        final l$externalLinks$entry = l$externalLinks[i];
        final lOther$externalLinks$entry = lOther$externalLinks[i];
        if (l$externalLinks$entry != lOther$externalLinks$entry) {
          return false;
        }
      }
    } else if (l$externalLinks != lOther$externalLinks) {
      return false;
    }
    final l$trailer = trailer;
    final lOther$trailer = other.trailer;
    if (l$trailer != lOther$trailer) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Media$Media on Query$Media$Media {
  CopyWith$Query$Media$Media<Query$Media$Media> get copyWith =>
      CopyWith$Query$Media$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media<TRes> {
  factory CopyWith$Query$Media$Media(
    Query$Media$Media instance,
    TRes Function(Query$Media$Media) then,
  ) = _CopyWithImpl$Query$Media$Media;

  factory CopyWith$Query$Media$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$Media$Media$title? title,
    Query$Media$Media$coverImage? coverImage,
    String? $__typename,
    String? bannerImage,
    int? favourites,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    int? averageScore,
    int? duration,
    Enum$MediaStatus? status,
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSource? source,
    String? hashtag,
    int? volumes,
    int? episodes,
    int? chapters,
    Query$Media$Media$studios? studios,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    List<Query$Media$Media$tags?>? tags,
    Query$Media$Media$relations? relations,
    List<Query$Media$Media$externalLinks?>? externalLinks,
    Query$Media$Media$trailer? trailer,
    Query$Media$Media$characters? characters,
    Query$Media$Media$staff? staff,
    Query$Media$Media$recommendations? recommendations,
    Query$Media$Media$reviews? reviews,
    Query$Media$Media$mediaListEntry? mediaListEntry,
  });
  CopyWith$Query$Media$Media$title<TRes> get title;
  CopyWith$Query$Media$Media$coverImage<TRes> get coverImage;
  CopyWith$Query$Media$Media$studios<TRes> get studios;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
  CopyWith$Fragment$FuzzyDate<TRes> get endDate;
  TRes tags(
      Iterable<Query$Media$Media$tags?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$tags<Query$Media$Media$tags>?>?)
          _fn);
  CopyWith$Query$Media$Media$relations<TRes> get relations;
  TRes externalLinks(
      Iterable<Query$Media$Media$externalLinks?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$externalLinks<
                      Query$Media$Media$externalLinks>?>?)
          _fn);
  CopyWith$Query$Media$Media$trailer<TRes> get trailer;
  CopyWith$Query$Media$Media$characters<TRes> get characters;
  CopyWith$Query$Media$Media$staff<TRes> get staff;
  CopyWith$Query$Media$Media$recommendations<TRes> get recommendations;
  CopyWith$Query$Media$Media$reviews<TRes> get reviews;
  CopyWith$Query$Media$Media$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Query$Media$Media<TRes>
    implements CopyWith$Query$Media$Media<TRes> {
  _CopyWithImpl$Query$Media$Media(
    this._instance,
    this._then,
  );

  final Query$Media$Media _instance;

  final TRes Function(Query$Media$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
    Object? bannerImage = _undefined,
    Object? favourites = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? averageScore = _undefined,
    Object? duration = _undefined,
    Object? status = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? source = _undefined,
    Object? hashtag = _undefined,
    Object? volumes = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? studios = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? tags = _undefined,
    Object? relations = _undefined,
    Object? externalLinks = _undefined,
    Object? trailer = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? recommendations = _undefined,
    Object? reviews = _undefined,
    Object? mediaListEntry = _undefined,
  }) =>
      _then(Query$Media$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$Media$Media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$Media$Media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        source: source == _undefined
            ? _instance.source
            : (source as Enum$MediaSource?),
        hashtag:
            hashtag == _undefined ? _instance.hashtag : (hashtag as String?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$Media$Media$studios?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$FuzzyDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Fragment$FuzzyDate?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Query$Media$Media$tags?>?),
        relations: relations == _undefined
            ? _instance.relations
            : (relations as Query$Media$Media$relations?),
        externalLinks: externalLinks == _undefined
            ? _instance.externalLinks
            : (externalLinks as List<Query$Media$Media$externalLinks?>?),
        trailer: trailer == _undefined
            ? _instance.trailer
            : (trailer as Query$Media$Media$trailer?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$Media$Media$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$Media$Media$staff?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as Query$Media$Media$recommendations?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$Media$Media$reviews?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Query$Media$Media$mediaListEntry?),
      ));

  CopyWith$Query$Media$Media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$Media$Media$title.stub(_then(_instance))
        : CopyWith$Query$Media$Media$title(local$title, (e) => call(title: e));
  }

  CopyWith$Query$Media$Media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$Media$Media$coverImage.stub(_then(_instance))
        : CopyWith$Query$Media$Media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$Media$Media$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$Media$Media$studios.stub(_then(_instance))
        : CopyWith$Query$Media$Media$studios(
            local$studios, (e) => call(studios: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(local$endDate, (e) => call(endDate: e));
  }

  TRes tags(
          Iterable<Query$Media$Media$tags?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$tags<
                          Query$Media$Media$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$tags(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$Media$Media$relations<TRes> get relations {
    final local$relations = _instance.relations;
    return local$relations == null
        ? CopyWith$Query$Media$Media$relations.stub(_then(_instance))
        : CopyWith$Query$Media$Media$relations(
            local$relations, (e) => call(relations: e));
  }

  TRes externalLinks(
          Iterable<Query$Media$Media$externalLinks?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$externalLinks<
                          Query$Media$Media$externalLinks>?>?)
              _fn) =>
      call(
          externalLinks: _fn(_instance.externalLinks?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$externalLinks(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$Media$Media$trailer<TRes> get trailer {
    final local$trailer = _instance.trailer;
    return local$trailer == null
        ? CopyWith$Query$Media$Media$trailer.stub(_then(_instance))
        : CopyWith$Query$Media$Media$trailer(
            local$trailer, (e) => call(trailer: e));
  }

  CopyWith$Query$Media$Media$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$Media$Media$characters.stub(_then(_instance))
        : CopyWith$Query$Media$Media$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Query$Media$Media$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$Media$Media$staff.stub(_then(_instance))
        : CopyWith$Query$Media$Media$staff(local$staff, (e) => call(staff: e));
  }

  CopyWith$Query$Media$Media$recommendations<TRes> get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Query$Media$Media$recommendations.stub(_then(_instance))
        : CopyWith$Query$Media$Media$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }

  CopyWith$Query$Media$Media$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$Media$Media$reviews.stub(_then(_instance))
        : CopyWith$Query$Media$Media$reviews(
            local$reviews, (e) => call(reviews: e));
  }

  CopyWith$Query$Media$Media$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Query$Media$Media$mediaListEntry.stub(_then(_instance))
        : CopyWith$Query$Media$Media$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Query$Media$Media<TRes>
    implements CopyWith$Query$Media$Media<TRes> {
  _CopyWithStubImpl$Query$Media$Media(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Query$Media$Media$title? title,
    Query$Media$Media$coverImage? coverImage,
    String? $__typename,
    String? bannerImage,
    int? favourites,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    int? averageScore,
    int? duration,
    Enum$MediaStatus? status,
    Enum$MediaSeason? season,
    int? seasonYear,
    Enum$MediaSource? source,
    String? hashtag,
    int? volumes,
    int? episodes,
    int? chapters,
    Query$Media$Media$studios? studios,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    List<Query$Media$Media$tags?>? tags,
    Query$Media$Media$relations? relations,
    List<Query$Media$Media$externalLinks?>? externalLinks,
    Query$Media$Media$trailer? trailer,
    Query$Media$Media$characters? characters,
    Query$Media$Media$staff? staff,
    Query$Media$Media$recommendations? recommendations,
    Query$Media$Media$reviews? reviews,
    Query$Media$Media$mediaListEntry? mediaListEntry,
  }) =>
      _res;

  CopyWith$Query$Media$Media$title<TRes> get title =>
      CopyWith$Query$Media$Media$title.stub(_res);

  CopyWith$Query$Media$Media$coverImage<TRes> get coverImage =>
      CopyWith$Query$Media$Media$coverImage.stub(_res);

  CopyWith$Query$Media$Media$studios<TRes> get studios =>
      CopyWith$Query$Media$Media$studios.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get endDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  tags(_fn) => _res;

  CopyWith$Query$Media$Media$relations<TRes> get relations =>
      CopyWith$Query$Media$Media$relations.stub(_res);

  externalLinks(_fn) => _res;

  CopyWith$Query$Media$Media$trailer<TRes> get trailer =>
      CopyWith$Query$Media$Media$trailer.stub(_res);

  CopyWith$Query$Media$Media$characters<TRes> get characters =>
      CopyWith$Query$Media$Media$characters.stub(_res);

  CopyWith$Query$Media$Media$staff<TRes> get staff =>
      CopyWith$Query$Media$Media$staff.stub(_res);

  CopyWith$Query$Media$Media$recommendations<TRes> get recommendations =>
      CopyWith$Query$Media$Media$recommendations.stub(_res);

  CopyWith$Query$Media$Media$reviews<TRes> get reviews =>
      CopyWith$Query$Media$Media$reviews.stub(_res);

  CopyWith$Query$Media$Media$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Query$Media$Media$mediaListEntry.stub(_res);
}

class Query$Media$Media$title implements Fragment$MediaFragment$title {
  Query$Media$Media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
    this.english,
    this.native,
    this.romaji,
  });

  factory Query$Media$Media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    final l$english = json['english'];
    final l$native = json['native'];
    final l$romaji = json['romaji'];
    return Query$Media$Media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
      english: (l$english as String?),
      native: (l$native as String?),
      romaji: (l$romaji as String?),
    );
  }

  final String? userPreferred;

  final String $__typename;

  final String? english;

  final String? native;

  final String? romaji;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    final l$english = english;
    final l$native = native;
    final l$romaji = romaji;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
      l$english,
      l$native,
      l$romaji,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$title) ||
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
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Media$Media$title on Query$Media$Media$title {
  CopyWith$Query$Media$Media$title<Query$Media$Media$title> get copyWith =>
      CopyWith$Query$Media$Media$title(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$title<TRes> {
  factory CopyWith$Query$Media$Media$title(
    Query$Media$Media$title instance,
    TRes Function(Query$Media$Media$title) then,
  ) = _CopyWithImpl$Query$Media$Media$title;

  factory CopyWith$Query$Media$Media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
    String? english,
    String? native,
    String? romaji,
  });
}

class _CopyWithImpl$Query$Media$Media$title<TRes>
    implements CopyWith$Query$Media$Media$title<TRes> {
  _CopyWithImpl$Query$Media$Media$title(
    this._instance,
    this._then,
  );

  final Query$Media$Media$title _instance;

  final TRes Function(Query$Media$Media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
    Object? english = _undefined,
    Object? native = _undefined,
    Object? romaji = _undefined,
  }) =>
      _then(Query$Media$Media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        english:
            english == _undefined ? _instance.english : (english as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$title<TRes>
    implements CopyWith$Query$Media$Media$title<TRes> {
  _CopyWithStubImpl$Query$Media$Media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
    String? english,
    String? native,
    String? romaji,
  }) =>
      _res;
}

class Query$Media$Media$coverImage
    implements Fragment$MediaFragment$coverImage {
  Query$Media$Media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$Media$Media$coverImage.fromJson(Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Query$Media$Media$coverImage
    on Query$Media$Media$coverImage {
  CopyWith$Query$Media$Media$coverImage<Query$Media$Media$coverImage>
      get copyWith => CopyWith$Query$Media$Media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$coverImage<TRes> {
  factory CopyWith$Query$Media$Media$coverImage(
    Query$Media$Media$coverImage instance,
    TRes Function(Query$Media$Media$coverImage) then,
  ) = _CopyWithImpl$Query$Media$Media$coverImage;

  factory CopyWith$Query$Media$Media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$coverImage<TRes>
    implements CopyWith$Query$Media$Media$coverImage<TRes> {
  _CopyWithImpl$Query$Media$Media$coverImage(
    this._instance,
    this._then,
  );

  final Query$Media$Media$coverImage _instance;

  final TRes Function(Query$Media$Media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$coverImage<TRes>
    implements CopyWith$Query$Media$Media$coverImage<TRes> {
  _CopyWithStubImpl$Query$Media$Media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$studios {
  Query$Media$Media$studios({
    this.nodes,
    this.$__typename = 'StudioConnection',
  });

  factory Query$Media$Media$studios.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$studios(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$studios$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$studios$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$studios) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$studios
    on Query$Media$Media$studios {
  CopyWith$Query$Media$Media$studios<Query$Media$Media$studios> get copyWith =>
      CopyWith$Query$Media$Media$studios(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$studios<TRes> {
  factory CopyWith$Query$Media$Media$studios(
    Query$Media$Media$studios instance,
    TRes Function(Query$Media$Media$studios) then,
  ) = _CopyWithImpl$Query$Media$Media$studios;

  factory CopyWith$Query$Media$Media$studios.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$studios;

  TRes call({
    List<Query$Media$Media$studios$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Media$Media$studios$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$studios$nodes<
                      Query$Media$Media$studios$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$studios<TRes>
    implements CopyWith$Query$Media$Media$studios<TRes> {
  _CopyWithImpl$Query$Media$Media$studios(
    this._instance,
    this._then,
  );

  final Query$Media$Media$studios _instance;

  final TRes Function(Query$Media$Media$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$studios(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Media$Media$studios$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Media$Media$studios$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$studios$nodes<
                          Query$Media$Media$studios$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$studios$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$studios<TRes>
    implements CopyWith$Query$Media$Media$studios<TRes> {
  _CopyWithStubImpl$Query$Media$Media$studios(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$studios$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Media$Media$studios$nodes {
  Query$Media$Media$studios$nodes({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
  });

  factory Query$Media$Media$studios$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$studios$nodes(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$studios$nodes) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Media$Media$studios$nodes
    on Query$Media$Media$studios$nodes {
  CopyWith$Query$Media$Media$studios$nodes<Query$Media$Media$studios$nodes>
      get copyWith => CopyWith$Query$Media$Media$studios$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$studios$nodes<TRes> {
  factory CopyWith$Query$Media$Media$studios$nodes(
    Query$Media$Media$studios$nodes instance,
    TRes Function(Query$Media$Media$studios$nodes) then,
  ) = _CopyWithImpl$Query$Media$Media$studios$nodes;

  factory CopyWith$Query$Media$Media$studios$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$studios$nodes;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$studios$nodes<TRes>
    implements CopyWith$Query$Media$Media$studios$nodes<TRes> {
  _CopyWithImpl$Query$Media$Media$studios$nodes(
    this._instance,
    this._then,
  );

  final Query$Media$Media$studios$nodes _instance;

  final TRes Function(Query$Media$Media$studios$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$studios$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$studios$nodes<TRes>
    implements CopyWith$Query$Media$Media$studios$nodes<TRes> {
  _CopyWithStubImpl$Query$Media$Media$studios$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$tags {
  Query$Media$Media$tags({
    required this.name,
    this.rank,
    this.isMediaSpoiler,
    this.$__typename = 'MediaTag',
  });

  factory Query$Media$Media$tags.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$rank = json['rank'];
    final l$isMediaSpoiler = json['isMediaSpoiler'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$tags(
      name: (l$name as String),
      rank: (l$rank as int?),
      isMediaSpoiler: (l$isMediaSpoiler as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? rank;

  final bool? isMediaSpoiler;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$rank = rank;
    _resultData['rank'] = l$rank;
    final l$isMediaSpoiler = isMediaSpoiler;
    _resultData['isMediaSpoiler'] = l$isMediaSpoiler;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$rank = rank;
    final l$isMediaSpoiler = isMediaSpoiler;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$rank,
      l$isMediaSpoiler,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$tags) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$rank = rank;
    final lOther$rank = other.rank;
    if (l$rank != lOther$rank) {
      return false;
    }
    final l$isMediaSpoiler = isMediaSpoiler;
    final lOther$isMediaSpoiler = other.isMediaSpoiler;
    if (l$isMediaSpoiler != lOther$isMediaSpoiler) {
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

extension UtilityExtension$Query$Media$Media$tags on Query$Media$Media$tags {
  CopyWith$Query$Media$Media$tags<Query$Media$Media$tags> get copyWith =>
      CopyWith$Query$Media$Media$tags(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$tags<TRes> {
  factory CopyWith$Query$Media$Media$tags(
    Query$Media$Media$tags instance,
    TRes Function(Query$Media$Media$tags) then,
  ) = _CopyWithImpl$Query$Media$Media$tags;

  factory CopyWith$Query$Media$Media$tags.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$tags;

  TRes call({
    String? name,
    int? rank,
    bool? isMediaSpoiler,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$tags<TRes>
    implements CopyWith$Query$Media$Media$tags<TRes> {
  _CopyWithImpl$Query$Media$Media$tags(
    this._instance,
    this._then,
  );

  final Query$Media$Media$tags _instance;

  final TRes Function(Query$Media$Media$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? rank = _undefined,
    Object? isMediaSpoiler = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$tags(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        rank: rank == _undefined ? _instance.rank : (rank as int?),
        isMediaSpoiler: isMediaSpoiler == _undefined
            ? _instance.isMediaSpoiler
            : (isMediaSpoiler as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$tags<TRes>
    implements CopyWith$Query$Media$Media$tags<TRes> {
  _CopyWithStubImpl$Query$Media$Media$tags(this._res);

  TRes _res;

  call({
    String? name,
    int? rank,
    bool? isMediaSpoiler,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$relations {
  Query$Media$Media$relations({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Media$Media$relations.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$relations(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$relations$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$relations$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$relations) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$relations
    on Query$Media$Media$relations {
  CopyWith$Query$Media$Media$relations<Query$Media$Media$relations>
      get copyWith => CopyWith$Query$Media$Media$relations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$relations<TRes> {
  factory CopyWith$Query$Media$Media$relations(
    Query$Media$Media$relations instance,
    TRes Function(Query$Media$Media$relations) then,
  ) = _CopyWithImpl$Query$Media$Media$relations;

  factory CopyWith$Query$Media$Media$relations.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$relations;

  TRes call({
    List<Query$Media$Media$relations$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Media$Media$relations$edges?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$relations$edges<
                      Query$Media$Media$relations$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$relations<TRes>
    implements CopyWith$Query$Media$Media$relations<TRes> {
  _CopyWithImpl$Query$Media$Media$relations(
    this._instance,
    this._then,
  );

  final Query$Media$Media$relations _instance;

  final TRes Function(Query$Media$Media$relations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$relations(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Media$Media$relations$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Media$Media$relations$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$relations$edges<
                          Query$Media$Media$relations$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$relations$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$relations<TRes>
    implements CopyWith$Query$Media$Media$relations<TRes> {
  _CopyWithStubImpl$Query$Media$Media$relations(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$relations$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Media$Media$relations$edges {
  Query$Media$Media$relations$edges({
    this.relationType,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Media$Media$relations$edges.fromJson(
      Map<String, dynamic> json) {
    final l$relationType = json['relationType'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$relations$edges(
      relationType: l$relationType == null
          ? null
          : fromJson$Enum$MediaRelation((l$relationType as String)),
      node: l$node == null
          ? null
          : Fragment$MediaFragment.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaRelation? relationType;

  final Fragment$MediaFragment? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$relationType = relationType;
    _resultData['relationType'] = l$relationType == null
        ? null
        : toJson$Enum$MediaRelation(l$relationType);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$relationType = relationType;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$relationType,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$relations$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$relationType = relationType;
    final lOther$relationType = other.relationType;
    if (l$relationType != lOther$relationType) {
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

extension UtilityExtension$Query$Media$Media$relations$edges
    on Query$Media$Media$relations$edges {
  CopyWith$Query$Media$Media$relations$edges<Query$Media$Media$relations$edges>
      get copyWith => CopyWith$Query$Media$Media$relations$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$relations$edges<TRes> {
  factory CopyWith$Query$Media$Media$relations$edges(
    Query$Media$Media$relations$edges instance,
    TRes Function(Query$Media$Media$relations$edges) then,
  ) = _CopyWithImpl$Query$Media$Media$relations$edges;

  factory CopyWith$Query$Media$Media$relations$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$relations$edges;

  TRes call({
    Enum$MediaRelation? relationType,
    Fragment$MediaFragment? node,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get node;
}

class _CopyWithImpl$Query$Media$Media$relations$edges<TRes>
    implements CopyWith$Query$Media$Media$relations$edges<TRes> {
  _CopyWithImpl$Query$Media$Media$relations$edges(
    this._instance,
    this._then,
  );

  final Query$Media$Media$relations$edges _instance;

  final TRes Function(Query$Media$Media$relations$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? relationType = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$relations$edges(
        relationType: relationType == _undefined
            ? _instance.relationType
            : (relationType as Enum$MediaRelation?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Media$Media$relations$edges<TRes>
    implements CopyWith$Query$Media$Media$relations$edges<TRes> {
  _CopyWithStubImpl$Query$Media$Media$relations$edges(this._res);

  TRes _res;

  call({
    Enum$MediaRelation? relationType,
    Fragment$MediaFragment? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get node =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Media$Media$externalLinks {
  Query$Media$Media$externalLinks({
    required this.site,
    this.url,
    this.color,
    this.icon,
    this.isDisabled,
    this.$__typename = 'MediaExternalLink',
  });

  factory Query$Media$Media$externalLinks.fromJson(Map<String, dynamic> json) {
    final l$site = json['site'];
    final l$url = json['url'];
    final l$color = json['color'];
    final l$icon = json['icon'];
    final l$isDisabled = json['isDisabled'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$externalLinks(
      site: (l$site as String),
      url: (l$url as String?),
      color: (l$color as String?),
      icon: (l$icon as String?),
      isDisabled: (l$isDisabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String site;

  final String? url;

  final String? color;

  final String? icon;

  final bool? isDisabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$site = site;
    _resultData['site'] = l$site;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$isDisabled = isDisabled;
    _resultData['isDisabled'] = l$isDisabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$site = site;
    final l$url = url;
    final l$color = color;
    final l$icon = icon;
    final l$isDisabled = isDisabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$site,
      l$url,
      l$color,
      l$icon,
      l$isDisabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$externalLinks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$isDisabled = isDisabled;
    final lOther$isDisabled = other.isDisabled;
    if (l$isDisabled != lOther$isDisabled) {
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

extension UtilityExtension$Query$Media$Media$externalLinks
    on Query$Media$Media$externalLinks {
  CopyWith$Query$Media$Media$externalLinks<Query$Media$Media$externalLinks>
      get copyWith => CopyWith$Query$Media$Media$externalLinks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$externalLinks<TRes> {
  factory CopyWith$Query$Media$Media$externalLinks(
    Query$Media$Media$externalLinks instance,
    TRes Function(Query$Media$Media$externalLinks) then,
  ) = _CopyWithImpl$Query$Media$Media$externalLinks;

  factory CopyWith$Query$Media$Media$externalLinks.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$externalLinks;

  TRes call({
    String? site,
    String? url,
    String? color,
    String? icon,
    bool? isDisabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$externalLinks<TRes>
    implements CopyWith$Query$Media$Media$externalLinks<TRes> {
  _CopyWithImpl$Query$Media$Media$externalLinks(
    this._instance,
    this._then,
  );

  final Query$Media$Media$externalLinks _instance;

  final TRes Function(Query$Media$Media$externalLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? site = _undefined,
    Object? url = _undefined,
    Object? color = _undefined,
    Object? icon = _undefined,
    Object? isDisabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$externalLinks(
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        url: url == _undefined ? _instance.url : (url as String?),
        color: color == _undefined ? _instance.color : (color as String?),
        icon: icon == _undefined ? _instance.icon : (icon as String?),
        isDisabled: isDisabled == _undefined
            ? _instance.isDisabled
            : (isDisabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$externalLinks<TRes>
    implements CopyWith$Query$Media$Media$externalLinks<TRes> {
  _CopyWithStubImpl$Query$Media$Media$externalLinks(this._res);

  TRes _res;

  call({
    String? site,
    String? url,
    String? color,
    String? icon,
    bool? isDisabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$trailer {
  Query$Media$Media$trailer({
    this.site,
    this.id,
    this.thumbnail,
    this.$__typename = 'MediaTrailer',
  });

  factory Query$Media$Media$trailer.fromJson(Map<String, dynamic> json) {
    final l$site = json['site'];
    final l$id = json['id'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$trailer(
      site: (l$site as String?),
      id: (l$id as String?),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? site;

  final String? id;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$site = site;
    _resultData['site'] = l$site;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$site = site;
    final l$id = id;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$site,
      l$id,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$trailer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtension$Query$Media$Media$trailer
    on Query$Media$Media$trailer {
  CopyWith$Query$Media$Media$trailer<Query$Media$Media$trailer> get copyWith =>
      CopyWith$Query$Media$Media$trailer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$trailer<TRes> {
  factory CopyWith$Query$Media$Media$trailer(
    Query$Media$Media$trailer instance,
    TRes Function(Query$Media$Media$trailer) then,
  ) = _CopyWithImpl$Query$Media$Media$trailer;

  factory CopyWith$Query$Media$Media$trailer.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$trailer;

  TRes call({
    String? site,
    String? id,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$trailer<TRes>
    implements CopyWith$Query$Media$Media$trailer<TRes> {
  _CopyWithImpl$Query$Media$Media$trailer(
    this._instance,
    this._then,
  );

  final Query$Media$Media$trailer _instance;

  final TRes Function(Query$Media$Media$trailer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? site = _undefined,
    Object? id = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$trailer(
        site: site == _undefined ? _instance.site : (site as String?),
        id: id == _undefined ? _instance.id : (id as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$trailer<TRes>
    implements CopyWith$Query$Media$Media$trailer<TRes> {
  _CopyWithStubImpl$Query$Media$Media$trailer(this._res);

  TRes _res;

  call({
    String? site,
    String? id,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$characters {
  Query$Media$Media$characters({
    this.nodes,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$Media$Media$characters.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$characters(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$characters$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$characters$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$characters) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$characters
    on Query$Media$Media$characters {
  CopyWith$Query$Media$Media$characters<Query$Media$Media$characters>
      get copyWith => CopyWith$Query$Media$Media$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$characters<TRes> {
  factory CopyWith$Query$Media$Media$characters(
    Query$Media$Media$characters instance,
    TRes Function(Query$Media$Media$characters) then,
  ) = _CopyWithImpl$Query$Media$Media$characters;

  factory CopyWith$Query$Media$Media$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$characters;

  TRes call({
    List<Query$Media$Media$characters$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Media$Media$characters$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$characters$nodes<
                      Query$Media$Media$characters$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$characters<TRes>
    implements CopyWith$Query$Media$Media$characters<TRes> {
  _CopyWithImpl$Query$Media$Media$characters(
    this._instance,
    this._then,
  );

  final Query$Media$Media$characters _instance;

  final TRes Function(Query$Media$Media$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$characters(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Media$Media$characters$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Media$Media$characters$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$characters$nodes<
                          Query$Media$Media$characters$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$characters$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$characters<TRes>
    implements CopyWith$Query$Media$Media$characters<TRes> {
  _CopyWithStubImpl$Query$Media$Media$characters(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$characters$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Media$Media$characters$nodes {
  Query$Media$Media$characters$nodes({
    required this.id,
    this.$__typename = 'Character',
  });

  factory Query$Media$Media$characters$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$characters$nodes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$characters$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Media$Media$characters$nodes
    on Query$Media$Media$characters$nodes {
  CopyWith$Query$Media$Media$characters$nodes<
          Query$Media$Media$characters$nodes>
      get copyWith => CopyWith$Query$Media$Media$characters$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$characters$nodes<TRes> {
  factory CopyWith$Query$Media$Media$characters$nodes(
    Query$Media$Media$characters$nodes instance,
    TRes Function(Query$Media$Media$characters$nodes) then,
  ) = _CopyWithImpl$Query$Media$Media$characters$nodes;

  factory CopyWith$Query$Media$Media$characters$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$characters$nodes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$characters$nodes<TRes>
    implements CopyWith$Query$Media$Media$characters$nodes<TRes> {
  _CopyWithImpl$Query$Media$Media$characters$nodes(
    this._instance,
    this._then,
  );

  final Query$Media$Media$characters$nodes _instance;

  final TRes Function(Query$Media$Media$characters$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$characters$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$characters$nodes<TRes>
    implements CopyWith$Query$Media$Media$characters$nodes<TRes> {
  _CopyWithStubImpl$Query$Media$Media$characters$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$staff {
  Query$Media$Media$staff({
    this.nodes,
    this.$__typename = 'StaffConnection',
  });

  factory Query$Media$Media$staff.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$staff(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$staff$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$staff$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$staff) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$staff on Query$Media$Media$staff {
  CopyWith$Query$Media$Media$staff<Query$Media$Media$staff> get copyWith =>
      CopyWith$Query$Media$Media$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$staff<TRes> {
  factory CopyWith$Query$Media$Media$staff(
    Query$Media$Media$staff instance,
    TRes Function(Query$Media$Media$staff) then,
  ) = _CopyWithImpl$Query$Media$Media$staff;

  factory CopyWith$Query$Media$Media$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$staff;

  TRes call({
    List<Query$Media$Media$staff$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Media$Media$staff$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$staff$nodes<
                      Query$Media$Media$staff$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$staff<TRes>
    implements CopyWith$Query$Media$Media$staff<TRes> {
  _CopyWithImpl$Query$Media$Media$staff(
    this._instance,
    this._then,
  );

  final Query$Media$Media$staff _instance;

  final TRes Function(Query$Media$Media$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$staff(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Media$Media$staff$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Media$Media$staff$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$staff$nodes<
                          Query$Media$Media$staff$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$staff$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$staff<TRes>
    implements CopyWith$Query$Media$Media$staff<TRes> {
  _CopyWithStubImpl$Query$Media$Media$staff(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$staff$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Media$Media$staff$nodes {
  Query$Media$Media$staff$nodes({
    required this.id,
    this.$__typename = 'Staff',
  });

  factory Query$Media$Media$staff$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$staff$nodes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$staff$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Media$Media$staff$nodes
    on Query$Media$Media$staff$nodes {
  CopyWith$Query$Media$Media$staff$nodes<Query$Media$Media$staff$nodes>
      get copyWith => CopyWith$Query$Media$Media$staff$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$staff$nodes<TRes> {
  factory CopyWith$Query$Media$Media$staff$nodes(
    Query$Media$Media$staff$nodes instance,
    TRes Function(Query$Media$Media$staff$nodes) then,
  ) = _CopyWithImpl$Query$Media$Media$staff$nodes;

  factory CopyWith$Query$Media$Media$staff$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$staff$nodes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$staff$nodes<TRes>
    implements CopyWith$Query$Media$Media$staff$nodes<TRes> {
  _CopyWithImpl$Query$Media$Media$staff$nodes(
    this._instance,
    this._then,
  );

  final Query$Media$Media$staff$nodes _instance;

  final TRes Function(Query$Media$Media$staff$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$staff$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$staff$nodes<TRes>
    implements CopyWith$Query$Media$Media$staff$nodes<TRes> {
  _CopyWithStubImpl$Query$Media$Media$staff$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$recommendations {
  Query$Media$Media$recommendations({
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory Query$Media$Media$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$recommendations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$recommendations$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$recommendations$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$recommendations) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$recommendations
    on Query$Media$Media$recommendations {
  CopyWith$Query$Media$Media$recommendations<Query$Media$Media$recommendations>
      get copyWith => CopyWith$Query$Media$Media$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$recommendations<TRes> {
  factory CopyWith$Query$Media$Media$recommendations(
    Query$Media$Media$recommendations instance,
    TRes Function(Query$Media$Media$recommendations) then,
  ) = _CopyWithImpl$Query$Media$Media$recommendations;

  factory CopyWith$Query$Media$Media$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$recommendations;

  TRes call({
    List<Query$Media$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Media$Media$recommendations$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$recommendations$nodes<
                      Query$Media$Media$recommendations$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$recommendations<TRes>
    implements CopyWith$Query$Media$Media$recommendations<TRes> {
  _CopyWithImpl$Query$Media$Media$recommendations(
    this._instance,
    this._then,
  );

  final Query$Media$Media$recommendations _instance;

  final TRes Function(Query$Media$Media$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$recommendations(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Media$Media$recommendations$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Media$Media$recommendations$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$recommendations$nodes<
                          Query$Media$Media$recommendations$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$recommendations$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$recommendations<TRes>
    implements CopyWith$Query$Media$Media$recommendations<TRes> {
  _CopyWithStubImpl$Query$Media$Media$recommendations(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$recommendations$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Media$Media$recommendations$nodes {
  Query$Media$Media$recommendations$nodes({
    required this.id,
    this.$__typename = 'Recommendation',
  });

  factory Query$Media$Media$recommendations$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$recommendations$nodes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$recommendations$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Media$Media$recommendations$nodes
    on Query$Media$Media$recommendations$nodes {
  CopyWith$Query$Media$Media$recommendations$nodes<
          Query$Media$Media$recommendations$nodes>
      get copyWith => CopyWith$Query$Media$Media$recommendations$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$recommendations$nodes<TRes> {
  factory CopyWith$Query$Media$Media$recommendations$nodes(
    Query$Media$Media$recommendations$nodes instance,
    TRes Function(Query$Media$Media$recommendations$nodes) then,
  ) = _CopyWithImpl$Query$Media$Media$recommendations$nodes;

  factory CopyWith$Query$Media$Media$recommendations$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$recommendations$nodes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$Media$Media$recommendations$nodes<TRes> {
  _CopyWithImpl$Query$Media$Media$recommendations$nodes(
    this._instance,
    this._then,
  );

  final Query$Media$Media$recommendations$nodes _instance;

  final TRes Function(Query$Media$Media$recommendations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$recommendations$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$recommendations$nodes<TRes>
    implements CopyWith$Query$Media$Media$recommendations$nodes<TRes> {
  _CopyWithStubImpl$Query$Media$Media$recommendations$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$reviews {
  Query$Media$Media$reviews({
    this.nodes,
    this.$__typename = 'ReviewConnection',
  });

  factory Query$Media$Media$reviews.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$reviews(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Media$Media$reviews$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Media$Media$reviews$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$reviews) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Media$Media$reviews
    on Query$Media$Media$reviews {
  CopyWith$Query$Media$Media$reviews<Query$Media$Media$reviews> get copyWith =>
      CopyWith$Query$Media$Media$reviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Media$Media$reviews<TRes> {
  factory CopyWith$Query$Media$Media$reviews(
    Query$Media$Media$reviews instance,
    TRes Function(Query$Media$Media$reviews) then,
  ) = _CopyWithImpl$Query$Media$Media$reviews;

  factory CopyWith$Query$Media$Media$reviews.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$reviews;

  TRes call({
    List<Query$Media$Media$reviews$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$Media$Media$reviews$nodes?>? Function(
              Iterable<
                  CopyWith$Query$Media$Media$reviews$nodes<
                      Query$Media$Media$reviews$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$Media$Media$reviews<TRes>
    implements CopyWith$Query$Media$Media$reviews<TRes> {
  _CopyWithImpl$Query$Media$Media$reviews(
    this._instance,
    this._then,
  );

  final Query$Media$Media$reviews _instance;

  final TRes Function(Query$Media$Media$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$reviews(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$Media$Media$reviews$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$Media$Media$reviews$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$Media$Media$reviews$nodes<
                          Query$Media$Media$reviews$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$Media$Media$reviews$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Media$Media$reviews<TRes>
    implements CopyWith$Query$Media$Media$reviews<TRes> {
  _CopyWithStubImpl$Query$Media$Media$reviews(this._res);

  TRes _res;

  call({
    List<Query$Media$Media$reviews$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Media$Media$reviews$nodes {
  Query$Media$Media$reviews$nodes({
    required this.id,
    this.$__typename = 'Review',
  });

  factory Query$Media$Media$reviews$nodes.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$reviews$nodes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$reviews$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$Media$Media$reviews$nodes
    on Query$Media$Media$reviews$nodes {
  CopyWith$Query$Media$Media$reviews$nodes<Query$Media$Media$reviews$nodes>
      get copyWith => CopyWith$Query$Media$Media$reviews$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$reviews$nodes<TRes> {
  factory CopyWith$Query$Media$Media$reviews$nodes(
    Query$Media$Media$reviews$nodes instance,
    TRes Function(Query$Media$Media$reviews$nodes) then,
  ) = _CopyWithImpl$Query$Media$Media$reviews$nodes;

  factory CopyWith$Query$Media$Media$reviews$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$reviews$nodes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$reviews$nodes<TRes>
    implements CopyWith$Query$Media$Media$reviews$nodes<TRes> {
  _CopyWithImpl$Query$Media$Media$reviews$nodes(
    this._instance,
    this._then,
  );

  final Query$Media$Media$reviews$nodes _instance;

  final TRes Function(Query$Media$Media$reviews$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$reviews$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$reviews$nodes<TRes>
    implements CopyWith$Query$Media$Media$reviews$nodes<TRes> {
  _CopyWithStubImpl$Query$Media$Media$reviews$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$Media$Media$mediaListEntry {
  Query$Media$Media$mediaListEntry({
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Query$Media$Media$mediaListEntry.fromJson(Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Query$Media$Media$mediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Media$Media$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Query$Media$Media$mediaListEntry
    on Query$Media$Media$mediaListEntry {
  CopyWith$Query$Media$Media$mediaListEntry<Query$Media$Media$mediaListEntry>
      get copyWith => CopyWith$Query$Media$Media$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Media$Media$mediaListEntry<TRes> {
  factory CopyWith$Query$Media$Media$mediaListEntry(
    Query$Media$Media$mediaListEntry instance,
    TRes Function(Query$Media$Media$mediaListEntry) then,
  ) = _CopyWithImpl$Query$Media$Media$mediaListEntry;

  factory CopyWith$Query$Media$Media$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Query$Media$Media$mediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Media$Media$mediaListEntry<TRes>
    implements CopyWith$Query$Media$Media$mediaListEntry<TRes> {
  _CopyWithImpl$Query$Media$Media$mediaListEntry(
    this._instance,
    this._then,
  );

  final Query$Media$Media$mediaListEntry _instance;

  final TRes Function(Query$Media$Media$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Media$Media$mediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Media$Media$mediaListEntry<TRes>
    implements CopyWith$Query$Media$Media$mediaListEntry<TRes> {
  _CopyWithStubImpl$Query$Media$Media$mediaListEntry(this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$ToggleFavorite {
  factory Variables$Mutation$ToggleFavorite({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  }) =>
      Variables$Mutation$ToggleFavorite._({
        if (animeId != null) r'animeId': animeId,
        if (mangaId != null) r'mangaId': mangaId,
        if (characterId != null) r'characterId': characterId,
        if (staffId != null) r'staffId': staffId,
        if (studioId != null) r'studioId': studioId,
      });

  Variables$Mutation$ToggleFavorite._(this._$data);

  factory Variables$Mutation$ToggleFavorite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('animeId')) {
      final l$animeId = data['animeId'];
      result$data['animeId'] = (l$animeId as int?);
    }
    if (data.containsKey('mangaId')) {
      final l$mangaId = data['mangaId'];
      result$data['mangaId'] = (l$mangaId as int?);
    }
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as int?);
    }
    if (data.containsKey('studioId')) {
      final l$studioId = data['studioId'];
      result$data['studioId'] = (l$studioId as int?);
    }
    return Variables$Mutation$ToggleFavorite._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get animeId => (_$data['animeId'] as int?);

  int? get mangaId => (_$data['mangaId'] as int?);

  int? get characterId => (_$data['characterId'] as int?);

  int? get staffId => (_$data['staffId'] as int?);

  int? get studioId => (_$data['studioId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('animeId')) {
      final l$animeId = animeId;
      result$data['animeId'] = l$animeId;
    }
    if (_$data.containsKey('mangaId')) {
      final l$mangaId = mangaId;
      result$data['mangaId'] = l$mangaId;
    }
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    if (_$data.containsKey('studioId')) {
      final l$studioId = studioId;
      result$data['studioId'] = l$studioId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavorite<Variables$Mutation$ToggleFavorite>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavorite(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$animeId = animeId;
    final lOther$animeId = other.animeId;
    if (_$data.containsKey('animeId') != other._$data.containsKey('animeId')) {
      return false;
    }
    if (l$animeId != lOther$animeId) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (_$data.containsKey('mangaId') != other._$data.containsKey('mangaId')) {
      return false;
    }
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    final l$characterId = characterId;
    final lOther$characterId = other.characterId;
    if (_$data.containsKey('characterId') !=
        other._$data.containsKey('characterId')) {
      return false;
    }
    if (l$characterId != lOther$characterId) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (_$data.containsKey('staffId') != other._$data.containsKey('staffId')) {
      return false;
    }
    if (l$staffId != lOther$staffId) {
      return false;
    }
    final l$studioId = studioId;
    final lOther$studioId = other.studioId;
    if (_$data.containsKey('studioId') !=
        other._$data.containsKey('studioId')) {
      return false;
    }
    if (l$studioId != lOther$studioId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$animeId = animeId;
    final l$mangaId = mangaId;
    final l$characterId = characterId;
    final l$staffId = staffId;
    final l$studioId = studioId;
    return Object.hashAll([
      _$data.containsKey('animeId') ? l$animeId : const {},
      _$data.containsKey('mangaId') ? l$mangaId : const {},
      _$data.containsKey('characterId') ? l$characterId : const {},
      _$data.containsKey('staffId') ? l$staffId : const {},
      _$data.containsKey('studioId') ? l$studioId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavorite<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavorite(
    Variables$Mutation$ToggleFavorite instance,
    TRes Function(Variables$Mutation$ToggleFavorite) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavorite;

  factory CopyWith$Variables$Mutation$ToggleFavorite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavorite;

  TRes call({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleFavorite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavorite<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavorite(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavorite _instance;

  final TRes Function(Variables$Mutation$ToggleFavorite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? animeId = _undefined,
    Object? mangaId = _undefined,
    Object? characterId = _undefined,
    Object? staffId = _undefined,
    Object? studioId = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleFavorite._({
        ..._instance._$data,
        if (animeId != _undefined) 'animeId': (animeId as int?),
        if (mangaId != _undefined) 'mangaId': (mangaId as int?),
        if (characterId != _undefined) 'characterId': (characterId as int?),
        if (staffId != _undefined) 'staffId': (staffId as int?),
        if (studioId != _undefined) 'studioId': (studioId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavorite<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavorite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavorite(this._res);

  TRes _res;

  call({
    int? animeId,
    int? mangaId,
    int? characterId,
    int? staffId,
    int? studioId,
  }) =>
      _res;
}

class Mutation$ToggleFavorite {
  Mutation$ToggleFavorite({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavorite.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite? ToggleFavourite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleFavourite = ToggleFavourite;
    _resultData['ToggleFavourite'] = l$ToggleFavourite?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleFavourite = ToggleFavourite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleFavourite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleFavourite = ToggleFavourite;
    final lOther$ToggleFavourite = other.ToggleFavourite;
    if (l$ToggleFavourite != lOther$ToggleFavourite) {
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

extension UtilityExtension$Mutation$ToggleFavorite on Mutation$ToggleFavorite {
  CopyWith$Mutation$ToggleFavorite<Mutation$ToggleFavorite> get copyWith =>
      CopyWith$Mutation$ToggleFavorite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleFavorite<TRes> {
  factory CopyWith$Mutation$ToggleFavorite(
    Mutation$ToggleFavorite instance,
    TRes Function(Mutation$ToggleFavorite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite;

  factory CopyWith$Mutation$ToggleFavorite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavorite<TRes>
    implements CopyWith$Mutation$ToggleFavorite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite _instance;

  final TRes Function(Mutation$ToggleFavorite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite as Mutation$ToggleFavorite$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite<TRes>
    implements CopyWith$Mutation$ToggleFavorite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> get ToggleFavourite =>
      CopyWith$Mutation$ToggleFavorite$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavorite = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavorite'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studioId')),
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
        name: NameNode(value: 'ToggleFavourite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'animeId'),
            value: VariableNode(name: NameNode(value: 'animeId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaId'),
            value: VariableNode(name: NameNode(value: 'mangaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'characterId'),
            value: VariableNode(name: NameNode(value: 'characterId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'staffId'),
            value: VariableNode(name: NameNode(value: 'staffId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'studioId'),
            value: VariableNode(name: NameNode(value: 'studioId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'anime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
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
            name: NameNode(value: 'manga'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
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
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'total'),
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
]);
Mutation$ToggleFavorite _parserFn$Mutation$ToggleFavorite(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavorite.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavorite = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavorite?,
);

class Options$Mutation$ToggleFavorite
    extends graphql.MutationOptions<Mutation$ToggleFavorite> {
  Options$Mutation$ToggleFavorite({
    String? operationName,
    Variables$Mutation$ToggleFavorite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavorite? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavorite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavorite>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleFavorite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavorite,
          parserFn: _parserFn$Mutation$ToggleFavorite,
        );

  final OnMutationCompleted$Mutation$ToggleFavorite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavorite
    extends graphql.WatchQueryOptions<Mutation$ToggleFavorite> {
  WatchOptions$Mutation$ToggleFavorite({
    String? operationName,
    Variables$Mutation$ToggleFavorite? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavorite? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavorite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavorite,
        );
}

extension ClientExtension$Mutation$ToggleFavorite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavorite>> mutate$ToggleFavorite(
          [Options$Mutation$ToggleFavorite? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleFavorite());
  graphql.ObservableQuery<Mutation$ToggleFavorite> watchMutation$ToggleFavorite(
          [WatchOptions$Mutation$ToggleFavorite? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ToggleFavorite());
}

class Mutation$ToggleFavorite$HookResult {
  Mutation$ToggleFavorite$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavorite runMutation;

  final graphql.QueryResult<Mutation$ToggleFavorite> result;
}

Mutation$ToggleFavorite$HookResult useMutation$ToggleFavorite(
    [WidgetOptions$Mutation$ToggleFavorite? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavorite());
  return Mutation$ToggleFavorite$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavorite>
    useWatchMutation$ToggleFavorite(
            [WatchOptions$Mutation$ToggleFavorite? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavorite());

class WidgetOptions$Mutation$ToggleFavorite
    extends graphql.MutationOptions<Mutation$ToggleFavorite> {
  WidgetOptions$Mutation$ToggleFavorite({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavorite? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavorite? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavorite>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$ToggleFavorite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavorite,
          parserFn: _parserFn$Mutation$ToggleFavorite,
        );

  final OnMutationCompleted$Mutation$ToggleFavorite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavorite
    = graphql.MultiSourceResult<Mutation$ToggleFavorite> Function({
  Variables$Mutation$ToggleFavorite? variables,
  Object? optimisticResult,
  Mutation$ToggleFavorite? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavorite = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavorite,
  graphql.QueryResult<Mutation$ToggleFavorite>?,
);

class Mutation$ToggleFavorite$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavorite> {
  Mutation$ToggleFavorite$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavorite? options,
    required Builder$Mutation$ToggleFavorite builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavorite(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$ToggleFavorite$ToggleFavourite {
  Mutation$ToggleFavorite$ToggleFavourite({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite(
      anime: l$anime == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$anime? anime;

  final Mutation$ToggleFavorite$ToggleFavourite$manga? manga;

  final Mutation$ToggleFavorite$ToggleFavourite$characters? characters;

  final Mutation$ToggleFavorite$ToggleFavourite$staff? staff;

  final Mutation$ToggleFavorite$ToggleFavourite$studios? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$characters = characters;
    final l$staff = staff;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$characters,
      l$staff,
      l$studios,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite
    on Mutation$ToggleFavorite$ToggleFavourite {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite<
          Mutation$ToggleFavorite$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavorite$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite(
    Mutation$ToggleFavorite$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavorite$ToggleFavourite$manga? manga,
    Mutation$ToggleFavorite$ToggleFavourite$characters? characters,
    Mutation$ToggleFavorite$ToggleFavourite$staff? staff,
    Mutation$ToggleFavorite$ToggleFavourite$studios? studios,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> get anime;
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> get manga;
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes>
      get characters;
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> get staff;
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> get studios;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Mutation$ToggleFavorite$ToggleFavourite$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Mutation$ToggleFavorite$ToggleFavourite$manga?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters
                as Mutation$ToggleFavorite$ToggleFavourite$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Mutation$ToggleFavorite$ToggleFavourite$staff?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Mutation$ToggleFavorite$ToggleFavourite$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga(
            local$manga, (e) => call(manga: e));
  }

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes>
      get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff(
            local$staff, (e) => call(staff: e));
  }

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$anime? anime,
    Mutation$ToggleFavorite$ToggleFavourite$manga? manga,
    Mutation$ToggleFavorite$ToggleFavourite$characters? characters,
    Mutation$ToggleFavorite$ToggleFavourite$staff? staff,
    Mutation$ToggleFavorite$ToggleFavourite$studios? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> get anime =>
      CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime.stub(_res);

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> get manga =>
      CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga.stub(_res);

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes>
      get characters =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters.stub(
              _res);

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> get staff =>
      CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff.stub(_res);

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> get studios =>
      CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios.stub(_res);
}

class Mutation$ToggleFavorite$ToggleFavourite$anime {
  Mutation$ToggleFavorite$ToggleFavourite$anime({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$anime
    on Mutation$ToggleFavorite$ToggleFavourite$anime {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<
          Mutation$ToggleFavorite$ToggleFavourite$anime>
      get copyWith => CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime(
    Mutation$ToggleFavorite$ToggleFavourite$anime instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$anime) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$anime _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo {
  Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo
    on Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<
          Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
    Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$anime$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavorite$ToggleFavourite$manga {
  Mutation$ToggleFavorite$ToggleFavourite$manga({
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$manga(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$manga) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$manga
    on Mutation$ToggleFavorite$ToggleFavourite$manga {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<
          Mutation$ToggleFavorite$ToggleFavourite$manga>
      get copyWith => CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga(
    Mutation$ToggleFavorite$ToggleFavourite$manga instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$manga) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$manga _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$manga(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo {
  Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo
    on Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<
          Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
    Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$manga$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavorite$ToggleFavourite$characters {
  Mutation$ToggleFavorite$ToggleFavourite$characters({
    this.pageInfo,
    this.$__typename = 'CharacterConnection',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$characters
    on Mutation$ToggleFavorite$ToggleFavourite$characters {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<
          Mutation$ToggleFavorite$ToggleFavourite$characters>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters(
    Mutation$ToggleFavorite$ToggleFavourite$characters instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$characters) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$characters _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo
            .stub(_then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters(
      this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo
              .stub(_res);
}

class Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo {
  Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo
    on Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
          Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
    Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo)
        then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
            TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo _instance;

  final TRes Function(
      Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$characters$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavorite$ToggleFavourite$staff {
  Mutation$ToggleFavorite$ToggleFavourite$staff({
    this.pageInfo,
    this.$__typename = 'StaffConnection',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$staff.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$staff) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$staff
    on Mutation$ToggleFavorite$ToggleFavourite$staff {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<
          Mutation$ToggleFavorite$ToggleFavourite$staff>
      get copyWith => CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff(
    Mutation$ToggleFavorite$ToggleFavourite$staff instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$staff) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$staff _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo.stub(
              _res);
}

class Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo {
  Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo
    on Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<
          Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
    Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$staff$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleFavorite$ToggleFavourite$studios {
  Mutation$ToggleFavorite$ToggleFavourite$studios({
    this.pageInfo,
    this.$__typename = 'StudioConnection',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$studios.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$studios(
      pageInfo: l$pageInfo == null
          ? null
          : Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$studios) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$studios
    on Mutation$ToggleFavorite$ToggleFavourite$studios {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<
          Mutation$ToggleFavorite$ToggleFavourite$studios>
      get copyWith => CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios(
    Mutation$ToggleFavorite$ToggleFavourite$studios instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$studios) then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios;

  TRes call({
    Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo? pageInfo,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$studios _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$studios(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo
            .stub(_then(_instance))
        : CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes>
    implements CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo
              .stub(_res);
}

class Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo {
  Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo
    on Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo {
  CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
          Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo>
      get copyWith =>
          CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
    TRes> {
  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
    Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo instance,
    TRes Function(Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo)
        then,
  ) = _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo;

  factory CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
            TRes> {
  _CopyWithImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo _instance;

  final TRes Function(Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
        TRes>
    implements
        CopyWith$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavorite$ToggleFavourite$studios$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}
