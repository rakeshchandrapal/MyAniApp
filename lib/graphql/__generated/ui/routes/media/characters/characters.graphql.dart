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

class Variables$Query$Characters {
  factory Variables$Query$Characters({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$Characters._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$Characters._(this._$data);

  factory Variables$Query$Characters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$Characters._(result$data);
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

  CopyWith$Variables$Query$Characters<Variables$Query$Characters>
      get copyWith => CopyWith$Variables$Query$Characters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Characters) ||
        runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Characters<TRes> {
  factory CopyWith$Variables$Query$Characters(
    Variables$Query$Characters instance,
    TRes Function(Variables$Query$Characters) then,
  ) = _CopyWithImpl$Variables$Query$Characters;

  factory CopyWith$Variables$Query$Characters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Characters;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$Characters<TRes>
    implements CopyWith$Variables$Query$Characters<TRes> {
  _CopyWithImpl$Variables$Query$Characters(
    this._instance,
    this._then,
  );

  final Variables$Query$Characters _instance;

  final TRes Function(Variables$Query$Characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$Characters._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Characters<TRes>
    implements CopyWith$Variables$Query$Characters<TRes> {
  _CopyWithStubImpl$Variables$Query$Characters(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$Characters {
  Query$Characters({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$Characters.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$Characters(
      Media: l$Media == null
          ? null
          : Query$Characters$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Characters$Media? Media;

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
    if (!(other is Query$Characters) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Characters on Query$Characters {
  CopyWith$Query$Characters<Query$Characters> get copyWith =>
      CopyWith$Query$Characters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Characters<TRes> {
  factory CopyWith$Query$Characters(
    Query$Characters instance,
    TRes Function(Query$Characters) then,
  ) = _CopyWithImpl$Query$Characters;

  factory CopyWith$Query$Characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters;

  TRes call({
    Query$Characters$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media<TRes> get Media;
}

class _CopyWithImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithImpl$Query$Characters(
    this._instance,
    this._then,
  );

  final Query$Characters _instance;

  final TRes Function(Query$Characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$Characters$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$Characters$Media.stub(_then(_instance))
        : CopyWith$Query$Characters$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$Characters<TRes>
    implements CopyWith$Query$Characters<TRes> {
  _CopyWithStubImpl$Query$Characters(this._res);

  TRes _res;

  call({
    Query$Characters$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media<TRes> get Media =>
      CopyWith$Query$Characters$Media.stub(_res);
}

const documentNodeQueryCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Characters'),
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
            name: NameNode(value: 'countryOfOrigin'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'ROLE')),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                            name: NameNode(value: 'first'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'full'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
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
                    name: NameNode(value: 'voiceActorRoles'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: ListValueNode(values: [
                          EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                          EnumValueNode(name: NameNode(value: 'ID')),
                        ]),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'roleNotes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dubGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'voiceActor'),
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
                            name: NameNode(value: 'languageV2'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
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
Query$Characters _parserFn$Query$Characters(Map<String, dynamic> data) =>
    Query$Characters.fromJson(data);
typedef OnQueryComplete$Query$Characters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Characters?,
);

class Options$Query$Characters extends graphql.QueryOptions<Query$Characters> {
  Options$Query$Characters({
    String? operationName,
    Variables$Query$Characters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Characters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Characters? onComplete,
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
                    data == null ? null : _parserFn$Query$Characters(data),
                  ),
          onError: onError,
          document: documentNodeQueryCharacters,
          parserFn: _parserFn$Query$Characters,
        );

  final OnQueryComplete$Query$Characters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Characters
    extends graphql.WatchQueryOptions<Query$Characters> {
  WatchOptions$Query$Characters({
    String? operationName,
    Variables$Query$Characters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Characters? typedOptimisticResult,
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
          document: documentNodeQueryCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Characters,
        );
}

class FetchMoreOptions$Query$Characters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Characters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Characters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCharacters,
        );
}

extension ClientExtension$Query$Characters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Characters>> query$Characters(
          [Options$Query$Characters? options]) async =>
      await this.query(options ?? Options$Query$Characters());
  graphql.ObservableQuery<Query$Characters> watchQuery$Characters(
          [WatchOptions$Query$Characters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Characters());
  void writeQuery$Characters({
    required Query$Characters data,
    Variables$Query$Characters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Characters? readQuery$Characters({
    Variables$Query$Characters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Characters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Characters> useQuery$Characters(
        [Options$Query$Characters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Characters());
graphql.ObservableQuery<Query$Characters> useWatchQuery$Characters(
        [WatchOptions$Query$Characters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Characters());

class Query$Characters$Widget extends graphql_flutter.Query<Query$Characters> {
  Query$Characters$Widget({
    widgets.Key? key,
    Options$Query$Characters? options,
    required graphql_flutter.QueryBuilder<Query$Characters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Characters(),
          builder: builder,
        );
}

class Query$Characters$Media {
  Query$Characters$Media({
    required this.id,
    this.countryOfOrigin,
    this.characters,
    this.$__typename = 'Media',
  });

  factory Query$Characters$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$countryOfOrigin = json['countryOfOrigin'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media(
      id: (l$id as int),
      countryOfOrigin: (l$countryOfOrigin as String?),
      characters: l$characters == null
          ? null
          : Query$Characters$Media$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? countryOfOrigin;

  final Query$Characters$Media$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$countryOfOrigin = countryOfOrigin;
    _resultData['countryOfOrigin'] = l$countryOfOrigin;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$countryOfOrigin = countryOfOrigin;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$countryOfOrigin,
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$Characters$Media on Query$Characters$Media {
  CopyWith$Query$Characters$Media<Query$Characters$Media> get copyWith =>
      CopyWith$Query$Characters$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Characters$Media<TRes> {
  factory CopyWith$Query$Characters$Media(
    Query$Characters$Media instance,
    TRes Function(Query$Characters$Media) then,
  ) = _CopyWithImpl$Query$Characters$Media;

  factory CopyWith$Query$Characters$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media;

  TRes call({
    int? id,
    String? countryOfOrigin,
    Query$Characters$Media$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters<TRes> get characters;
}

class _CopyWithImpl$Query$Characters$Media<TRes>
    implements CopyWith$Query$Characters$Media<TRes> {
  _CopyWithImpl$Query$Characters$Media(
    this._instance,
    this._then,
  );

  final Query$Characters$Media _instance;

  final TRes Function(Query$Characters$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        countryOfOrigin: countryOfOrigin == _undefined
            ? _instance.countryOfOrigin
            : (countryOfOrigin as String?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$Characters$Media$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$Characters$Media$characters.stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media<TRes>
    implements CopyWith$Query$Characters$Media<TRes> {
  _CopyWithStubImpl$Query$Characters$Media(this._res);

  TRes _res;

  call({
    int? id,
    String? countryOfOrigin,
    Query$Characters$Media$characters? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media$characters<TRes> get characters =>
      CopyWith$Query$Characters$Media$characters.stub(_res);
}

class Query$Characters$Media$characters {
  Query$Characters$Media$characters({
    this.pageInfo,
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$Characters$Media$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Characters$Media$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Characters$Media$characters$edges?>? edges;

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
    if (!(other is Query$Characters$Media$characters) ||
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

extension UtilityExtension$Query$Characters$Media$characters
    on Query$Characters$Media$characters {
  CopyWith$Query$Characters$Media$characters<Query$Characters$Media$characters>
      get copyWith => CopyWith$Query$Characters$Media$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters<TRes> {
  factory CopyWith$Query$Characters$Media$characters(
    Query$Characters$Media$characters instance,
    TRes Function(Query$Characters$Media$characters) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters;

  factory CopyWith$Query$Characters$Media$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Characters$Media$characters$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Characters$Media$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$Characters$Media$characters$edges<
                      Query$Characters$Media$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Characters$Media$characters<TRes>
    implements CopyWith$Query$Characters$Media$characters<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters _instance;

  final TRes Function(Query$Characters$Media$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Characters$Media$characters$edges?>?),
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
          Iterable<Query$Characters$Media$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Characters$Media$characters$edges<
                          Query$Characters$Media$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Characters$Media$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Characters$Media$characters<TRes>
    implements CopyWith$Query$Characters$Media$characters<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Characters$Media$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$Characters$Media$characters$edges {
  Query$Characters$Media$characters$edges({
    this.name,
    this.role,
    this.node,
    this.voiceActorRoles,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$Characters$Media$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$role = json['role'];
    final l$node = json['node'];
    final l$voiceActorRoles = json['voiceActorRoles'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges(
      name: (l$name as String?),
      role: l$role == null
          ? null
          : fromJson$Enum$CharacterRole((l$role as String)),
      node: l$node == null
          ? null
          : Query$Characters$Media$characters$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      voiceActorRoles: (l$voiceActorRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Characters$Media$characters$edges$voiceActorRoles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final Enum$CharacterRole? role;

  final Query$Characters$Media$characters$edges$node? node;

  final List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
      voiceActorRoles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$role = role;
    _resultData['role'] =
        l$role == null ? null : toJson$Enum$CharacterRole(l$role);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$voiceActorRoles = voiceActorRoles;
    _resultData['voiceActorRoles'] =
        l$voiceActorRoles?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$role = role;
    final l$node = node;
    final l$voiceActorRoles = voiceActorRoles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$role,
      l$node,
      l$voiceActorRoles == null
          ? null
          : Object.hashAll(l$voiceActorRoles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$voiceActorRoles = voiceActorRoles;
    final lOther$voiceActorRoles = other.voiceActorRoles;
    if (l$voiceActorRoles != null && lOther$voiceActorRoles != null) {
      if (l$voiceActorRoles.length != lOther$voiceActorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActorRoles.length; i++) {
        final l$voiceActorRoles$entry = l$voiceActorRoles[i];
        final lOther$voiceActorRoles$entry = lOther$voiceActorRoles[i];
        if (l$voiceActorRoles$entry != lOther$voiceActorRoles$entry) {
          return false;
        }
      }
    } else if (l$voiceActorRoles != lOther$voiceActorRoles) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges
    on Query$Characters$Media$characters$edges {
  CopyWith$Query$Characters$Media$characters$edges<
          Query$Characters$Media$characters$edges>
      get copyWith => CopyWith$Query$Characters$Media$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges<TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges(
    Query$Characters$Media$characters$edges instance,
    TRes Function(Query$Characters$Media$characters$edges) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges;

  factory CopyWith$Query$Characters$Media$characters$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges;

  TRes call({
    String? name,
    Enum$CharacterRole? role,
    Query$Characters$Media$characters$edges$node? node,
    List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node;
  TRes voiceActorRoles(
      Iterable<Query$Characters$Media$characters$edges$voiceActorRoles?>? Function(
              Iterable<
                  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
                      Query$Characters$Media$characters$edges$voiceActorRoles>?>?)
          _fn);
}

class _CopyWithImpl$Query$Characters$Media$characters$edges<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges _instance;

  final TRes Function(Query$Characters$Media$characters$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? role = _undefined,
    Object? node = _undefined,
    Object? voiceActorRoles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges(
        name: name == _undefined ? _instance.name : (name as String?),
        role:
            role == _undefined ? _instance.role : (role as Enum$CharacterRole?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Characters$Media$characters$edges$node?),
        voiceActorRoles: voiceActorRoles == _undefined
            ? _instance.voiceActorRoles
            : (voiceActorRoles as List<
                Query$Characters$Media$characters$edges$voiceActorRoles?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Characters$Media$characters$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node(
            local$node, (e) => call(node: e));
  }

  TRes voiceActorRoles(
          Iterable<Query$Characters$Media$characters$edges$voiceActorRoles?>? Function(
                  Iterable<
                      CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
                          Query$Characters$Media$characters$edges$voiceActorRoles>?>?)
              _fn) =>
      call(
          voiceActorRoles: _fn(_instance.voiceActorRoles?.map((e) => e == null
              ? null
              : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges(this._res);

  TRes _res;

  call({
    String? name,
    Enum$CharacterRole? role,
    Query$Characters$Media$characters$edges$node? node,
    List<Query$Characters$Media$characters$edges$voiceActorRoles?>?
        voiceActorRoles,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media$characters$edges$node<TRes> get node =>
      CopyWith$Query$Characters$Media$characters$edges$node.stub(_res);

  voiceActorRoles(_fn) => _res;
}

class Query$Characters$Media$characters$edges$node {
  Query$Characters$Media$characters$edges$node({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$Characters$Media$characters$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Characters$Media$characters$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Characters$Media$characters$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Characters$Media$characters$edges$node$name? name;

  final Query$Characters$Media$characters$edges$node$image? image;

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
    if (!(other is Query$Characters$Media$characters$edges$node) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node
    on Query$Characters$Media$characters$edges$node {
  CopyWith$Query$Characters$Media$characters$edges$node<
          Query$Characters$Media$characters$edges$node>
      get copyWith => CopyWith$Query$Characters$Media$characters$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node(
    Query$Characters$Media$characters$edges$node instance,
    TRes Function(Query$Characters$Media$characters$edges$node) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node;

  factory CopyWith$Query$Characters$Media$characters$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node;

  TRes call({
    int? id,
    Query$Characters$Media$characters$edges$node$name? name,
    Query$Characters$Media$characters$edges$node$image? image,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name;
  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Characters$Media$characters$edges$node$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Characters$Media$characters$edges$node$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Characters$Media$characters$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Characters$Media$characters$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$node$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node<TRes>
    implements CopyWith$Query$Characters$Media$characters$edges$node<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$Characters$Media$characters$edges$node$name? name,
    Query$Characters$Media$characters$edges$node$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> get name =>
      CopyWith$Query$Characters$Media$characters$edges$node$name.stub(_res);

  CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> get image =>
      CopyWith$Query$Characters$Media$characters$edges$node$image.stub(_res);
}

class Query$Characters$Media$characters$edges$node$name {
  Query$Characters$Media$characters$edges$node$name({
    this.first,
    this.full,
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Characters$Media$characters$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$first = json['first'];
    final l$full = json['full'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node$name(
      first: (l$first as String?),
      full: (l$full as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? first;

  final String? full;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$first = first;
    _resultData['first'] = l$first;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$full = full;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$first,
      l$full,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges$node$name) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node$name
    on Query$Characters$Media$characters$edges$node$name {
  CopyWith$Query$Characters$Media$characters$edges$node$name<
          Query$Characters$Media$characters$edges$node$name>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node$name<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node$name(
    Query$Characters$Media$characters$edges$node$name instance,
    TRes Function(Query$Characters$Media$characters$edges$node$name) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node$name;

  factory CopyWith$Query$Characters$Media$characters$edges$node$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name;

  TRes call({
    String? first,
    String? full,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node$name<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node$name _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? full = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node$name(
        first: first == _undefined ? _instance.first : (first as String?),
        full: full == _undefined ? _instance.full : (full as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$name(
      this._res);

  TRes _res;

  call({
    String? first,
    String? full,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$node$image {
  Query$Characters$Media$characters$edges$node$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Characters$Media$characters$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$node$image(
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
    if (!(other is Query$Characters$Media$characters$edges$node$image) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$node$image
    on Query$Characters$Media$characters$edges$node$image {
  CopyWith$Query$Characters$Media$characters$edges$node$image<
          Query$Characters$Media$characters$edges$node$image>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$node$image<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$node$image(
    Query$Characters$Media$characters$edges$node$image instance,
    TRes Function(Query$Characters$Media$characters$edges$node$image) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$node$image;

  factory CopyWith$Query$Characters$Media$characters$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$node$image<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$node$image _instance;

  final TRes Function(Query$Characters$Media$characters$edges$node$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image<TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$node$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$voiceActorRoles {
  Query$Characters$Media$characters$edges$voiceActorRoles({
    this.roleNotes,
    this.dubGroup,
    this.voiceActor,
    this.$__typename = 'StaffRoleType',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles.fromJson(
      Map<String, dynamic> json) {
    final l$roleNotes = json['roleNotes'];
    final l$dubGroup = json['dubGroup'];
    final l$voiceActor = json['voiceActor'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles(
      roleNotes: (l$roleNotes as String?),
      dubGroup: (l$dubGroup as String?),
      voiceActor: l$voiceActor == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
              .fromJson((l$voiceActor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? roleNotes;

  final String? dubGroup;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
      voiceActor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roleNotes = roleNotes;
    _resultData['roleNotes'] = l$roleNotes;
    final l$dubGroup = dubGroup;
    _resultData['dubGroup'] = l$dubGroup;
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roleNotes = roleNotes;
    final l$dubGroup = dubGroup;
    final l$voiceActor = voiceActor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$roleNotes,
      l$dubGroup,
      l$voiceActor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Characters$Media$characters$edges$voiceActorRoles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roleNotes = roleNotes;
    final lOther$roleNotes = other.roleNotes;
    if (l$roleNotes != lOther$roleNotes) {
      return false;
    }
    final l$dubGroup = dubGroup;
    final lOther$dubGroup = other.dubGroup;
    if (l$dubGroup != lOther$dubGroup) {
      return false;
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles
    on Query$Characters$Media$characters$edges$voiceActorRoles {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
          Query$Characters$Media$characters$edges$voiceActorRoles>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles(
    Query$Characters$Media$characters$edges$voiceActorRoles instance,
    TRes Function(Query$Characters$Media$characters$edges$voiceActorRoles) then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles;

  TRes call({
    String? roleNotes,
    String? dubGroup,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles _instance;

  final TRes Function(Query$Characters$Media$characters$edges$voiceActorRoles)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roleNotes = _undefined,
    Object? dubGroup = _undefined,
    Object? voiceActor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$voiceActorRoles(
        roleNotes: roleNotes == _undefined
            ? _instance.roleNotes
            : (roleNotes as String?),
        dubGroup:
            dubGroup == _undefined ? _instance.dubGroup : (dubGroup as String?),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles<TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles(
      this._res);

  TRes _res;

  call({
    String? roleNotes,
    String? dubGroup,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
          TRes>
      get voiceActor =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
              .stub(_res);
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor({
    required this.id,
    this.name,
    this.languageV2,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$languageV2 = json['languageV2'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .fromJson((l$name as Map<String, dynamic>)),
      languageV2: (l$languageV2 as String?),
      image: l$image == null
          ? null
          : Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
      name;

  final String? languageV2;

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
      image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
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
    final l$languageV2 = languageV2;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$languageV2,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor) ||
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
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor;

  TRes call({
    int? id,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    String? languageV2,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
  });
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name;
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image;
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor
      _instance;

  final TRes Function(
      Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? languageV2 = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
      TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
      TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
            .stub(_then(_instance))
        : CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name?
        name,
    String? languageV2,
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image?
        image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          TRes>
      get name =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
              .stub(_res);

  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          TRes>
      get image =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
              .stub(_res);
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
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
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
        instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name
      _instance;

  final TRes Function(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image {
  Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
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
    if (!(other
            is Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image) ||
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

extension UtilityExtension$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
    on Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image {
  CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image>
      get copyWith =>
          CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
    TRes> {
  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
        instance,
    TRes Function(
            Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image)
        then,
  ) = _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  factory CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
    this._instance,
    this._then,
  );

  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image
      _instance;

  final TRes Function(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithStubImpl$Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
