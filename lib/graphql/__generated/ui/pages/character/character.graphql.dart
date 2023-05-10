// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../../graphql/fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Character {
  factory Variables$Query$Character({
    int? id,
    int? page,
    bool? onList,
  }) =>
      Variables$Query$Character._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$Character._(this._$data);

  factory Variables$Query$Character.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    return Variables$Query$Character._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);
  int? get page => (_$data['page'] as int?);
  bool? get onList => (_$data['onList'] as bool?);
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
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Character<Variables$Query$Character> get copyWith =>
      CopyWith$Variables$Query$Character(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Character) ||
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
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$page = page;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Character<TRes> {
  factory CopyWith$Variables$Query$Character(
    Variables$Query$Character instance,
    TRes Function(Variables$Query$Character) then,
  ) = _CopyWithImpl$Variables$Query$Character;

  factory CopyWith$Variables$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Character;

  TRes call({
    int? id,
    int? page,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithImpl$Variables$Query$Character(
    this._instance,
    this._then,
  );

  final Variables$Query$Character _instance;

  final TRes Function(Variables$Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$Character._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Character<TRes>
    implements CopyWith$Variables$Query$Character<TRes> {
  _CopyWithStubImpl$Variables$Query$Character(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
    bool? onList,
  }) =>
      _res;
}

class Query$Character {
  Query$Character({
    this.Character,
    this.$__typename = 'Query',
  });

  factory Query$Character.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return Query$Character(
      Character: l$Character == null
          ? null
          : Query$Character$Character.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Character$Character? Character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Character = Character;
    _resultData['Character'] = l$Character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Character = Character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Character = Character;
    final lOther$Character = other.Character;
    if (l$Character != lOther$Character) {
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

extension UtilityExtension$Query$Character on Query$Character {
  CopyWith$Query$Character<Query$Character> get copyWith =>
      CopyWith$Query$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character<TRes> {
  factory CopyWith$Query$Character(
    Query$Character instance,
    TRes Function(Query$Character) then,
  ) = _CopyWithImpl$Query$Character;

  factory CopyWith$Query$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character;

  TRes call({
    Query$Character$Character? Character,
    String? $__typename,
  });
  CopyWith$Query$Character$Character<TRes> get Character;
}

class _CopyWithImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithImpl$Query$Character(
    this._instance,
    this._then,
  );

  final Query$Character _instance;

  final TRes Function(Query$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as Query$Character$Character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Character$Character<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWith$Query$Character$Character.stub(_then(_instance))
        : CopyWith$Query$Character$Character(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImpl$Query$Character<TRes>
    implements CopyWith$Query$Character<TRes> {
  _CopyWithStubImpl$Query$Character(this._res);

  TRes _res;

  call({
    Query$Character$Character? Character,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Character$Character<TRes> get Character =>
      CopyWith$Query$Character$Character.stub(_res);
}

const documentNodeQueryCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Character'),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Character'),
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
            name: NameNode(value: 'age'),
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
            name: NameNode(value: 'favourites'),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
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
Query$Character _parserFn$Query$Character(Map<String, dynamic> data) =>
    Query$Character.fromJson(data);
typedef OnQueryComplete$Query$Character = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Character?,
);

class Options$Query$Character extends graphql.QueryOptions<Query$Character> {
  Options$Query$Character({
    String? operationName,
    Variables$Query$Character? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Character? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Character? onComplete,
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
                    data == null ? null : _parserFn$Query$Character(data),
                  ),
          onError: onError,
          document: documentNodeQueryCharacter,
          parserFn: _parserFn$Query$Character,
        );

  final OnQueryComplete$Query$Character? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Character
    extends graphql.WatchQueryOptions<Query$Character> {
  WatchOptions$Query$Character({
    String? operationName,
    Variables$Query$Character? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Character? typedOptimisticResult,
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
          document: documentNodeQueryCharacter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Character,
        );
}

class FetchMoreOptions$Query$Character extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Character({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Character? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCharacter,
        );
}

extension ClientExtension$Query$Character on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Character>> query$Character(
          [Options$Query$Character? options]) async =>
      await this.query(options ?? Options$Query$Character());
  graphql.ObservableQuery<Query$Character> watchQuery$Character(
          [WatchOptions$Query$Character? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Character());
  void writeQuery$Character({
    required Query$Character data,
    Variables$Query$Character? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryCharacter),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Character? readQuery$Character({
    Variables$Query$Character? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCharacter),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Character.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Character> useQuery$Character(
        [Options$Query$Character? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Character());
graphql.ObservableQuery<Query$Character> useWatchQuery$Character(
        [WatchOptions$Query$Character? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Character());

class Query$Character$Widget extends graphql_flutter.Query<Query$Character> {
  Query$Character$Widget({
    widgets.Key? key,
    Options$Query$Character? options,
    required graphql_flutter.QueryBuilder<Query$Character> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Character(),
          builder: builder,
        );
}

class Query$Character$Character {
  Query$Character$Character({
    required this.id,
    this.description,
    this.gender,
    this.age,
    this.bloodType,
    required this.isFavourite,
    required this.isFavouriteBlocked,
    this.favourites,
    this.name,
    this.image,
    this.dateOfBirth,
    this.media,
    this.$__typename = 'Character',
  });

  factory Query$Character$Character.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$favourites = json['favourites'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character(
      id: (l$id as int),
      description: (l$description as String?),
      gender: (l$gender as String?),
      age: (l$age as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      favourites: (l$favourites as int?),
      name: l$name == null
          ? null
          : Query$Character$Character$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Character$Character$image.fromJson(
              (l$image as Map<String, dynamic>)),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Query$Character$Character$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? description;

  final String? gender;

  final String? age;

  final String? bloodType;

  final bool isFavourite;

  final bool isFavouriteBlocked;

  final int? favourites;

  final Query$Character$Character$name? name;

  final Query$Character$Character$image? image;

  final Fragment$FuzzyDate? dateOfBirth;

  final Query$Character$Character$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$description = description;
    final l$gender = gender;
    final l$age = age;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$favourites = favourites;
    final l$name = name;
    final l$image = image;
    final l$dateOfBirth = dateOfBirth;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$description,
      l$gender,
      l$age,
      l$bloodType,
      l$isFavourite,
      l$isFavouriteBlocked,
      l$favourites,
      l$name,
      l$image,
      l$dateOfBirth,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character) ||
        runtimeType != other.runtimeType) {
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
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
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

extension UtilityExtension$Query$Character$Character
    on Query$Character$Character {
  CopyWith$Query$Character$Character<Query$Character$Character> get copyWith =>
      CopyWith$Query$Character$Character(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Character$Character<TRes> {
  factory CopyWith$Query$Character$Character(
    Query$Character$Character instance,
    TRes Function(Query$Character$Character) then,
  ) = _CopyWithImpl$Query$Character$Character;

  factory CopyWith$Query$Character$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character;

  TRes call({
    int? id,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    int? favourites,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    Fragment$FuzzyDate? dateOfBirth,
    Query$Character$Character$media? media,
    String? $__typename,
  });
  CopyWith$Query$Character$Character$name<TRes> get name;
  CopyWith$Query$Character$Character$image<TRes> get image;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Query$Character$Character$media<TRes> get media;
}

class _CopyWithImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithImpl$Query$Character$Character(
    this._instance,
    this._then,
  );

  final Query$Character$Character _instance;

  final TRes Function(Query$Character$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? favourites = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? dateOfBirth = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        age: age == _undefined ? _instance.age : (age as String?),
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
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Character$Character$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Character$Character$image?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$Character$Character$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Character$Character$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Character$Character$name.stub(_then(_instance))
        : CopyWith$Query$Character$Character$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$Character$Character$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Character$Character$image.stub(_then(_instance))
        : CopyWith$Query$Character$Character$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Query$Character$Character$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Character$Character$media.stub(_then(_instance))
        : CopyWith$Query$Character$Character$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Character$Character<TRes>
    implements CopyWith$Query$Character$Character<TRes> {
  _CopyWithStubImpl$Query$Character$Character(this._res);

  TRes _res;

  call({
    int? id,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    bool? isFavouriteBlocked,
    int? favourites,
    Query$Character$Character$name? name,
    Query$Character$Character$image? image,
    Fragment$FuzzyDate? dateOfBirth,
    Query$Character$Character$media? media,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Character$Character$name<TRes> get name =>
      CopyWith$Query$Character$Character$name.stub(_res);
  CopyWith$Query$Character$Character$image<TRes> get image =>
      CopyWith$Query$Character$Character$image.stub(_res);
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
  CopyWith$Query$Character$Character$media<TRes> get media =>
      CopyWith$Query$Character$Character$media.stub(_res);
}

class Query$Character$Character$name {
  Query$Character$Character$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Character$Character$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$name(
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
    if (!(other is Query$Character$Character$name) ||
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

extension UtilityExtension$Query$Character$Character$name
    on Query$Character$Character$name {
  CopyWith$Query$Character$Character$name<Query$Character$Character$name>
      get copyWith => CopyWith$Query$Character$Character$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$name<TRes> {
  factory CopyWith$Query$Character$Character$name(
    Query$Character$Character$name instance,
    TRes Function(Query$Character$Character$name) then,
  ) = _CopyWithImpl$Query$Character$Character$name;

  factory CopyWith$Query$Character$Character$name.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithImpl$Query$Character$Character$name(
    this._instance,
    this._then,
  );

  final Query$Character$Character$name _instance;

  final TRes Function(Query$Character$Character$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$name<TRes>
    implements CopyWith$Query$Character$Character$name<TRes> {
  _CopyWithStubImpl$Query$Character$Character$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$image {
  Query$Character$Character$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Character$Character$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$image(
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
    if (!(other is Query$Character$Character$image) ||
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

extension UtilityExtension$Query$Character$Character$image
    on Query$Character$Character$image {
  CopyWith$Query$Character$Character$image<Query$Character$Character$image>
      get copyWith => CopyWith$Query$Character$Character$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$image<TRes> {
  factory CopyWith$Query$Character$Character$image(
    Query$Character$Character$image instance,
    TRes Function(Query$Character$Character$image) then,
  ) = _CopyWithImpl$Query$Character$Character$image;

  factory CopyWith$Query$Character$Character$image.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithImpl$Query$Character$Character$image(
    this._instance,
    this._then,
  );

  final Query$Character$Character$image _instance;

  final TRes Function(Query$Character$Character$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Character$Character$image<TRes>
    implements CopyWith$Query$Character$Character$image<TRes> {
  _CopyWithStubImpl$Query$Character$Character$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Character$Character$media {
  Query$Character$Character$media({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Character$Character$media.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Character$Character$media$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Character$Character$media$edges?>? edges;

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
    if (!(other is Query$Character$Character$media) ||
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

extension UtilityExtension$Query$Character$Character$media
    on Query$Character$Character$media {
  CopyWith$Query$Character$Character$media<Query$Character$Character$media>
      get copyWith => CopyWith$Query$Character$Character$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media<TRes> {
  factory CopyWith$Query$Character$Character$media(
    Query$Character$Character$media instance,
    TRes Function(Query$Character$Character$media) then,
  ) = _CopyWithImpl$Query$Character$Character$media;

  factory CopyWith$Query$Character$Character$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Character$Character$media$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$Character$Character$media$edges?>? Function(
              Iterable<
                  CopyWith$Query$Character$Character$media$edges<
                      Query$Character$Character$media$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithImpl$Query$Character$Character$media(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media _instance;

  final TRes Function(Query$Character$Character$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Character$Character$media$edges?>?),
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
          Iterable<Query$Character$Character$media$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Character$Character$media$edges<
                          Query$Character$Character$media$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Character$Character$media$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Character$Character$media<TRes>
    implements CopyWith$Query$Character$Character$media<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Character$Character$media$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$Character$Character$media$edges {
  Query$Character$Character$media$edges({
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Character$Character$media$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Character$Character$media$edges(
      node: l$node == null
          ? null
          : Fragment$Media.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Media? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Character$Character$media$edges) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Character$Character$media$edges
    on Query$Character$Character$media$edges {
  CopyWith$Query$Character$Character$media$edges<
          Query$Character$Character$media$edges>
      get copyWith => CopyWith$Query$Character$Character$media$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Character$Character$media$edges<TRes> {
  factory CopyWith$Query$Character$Character$media$edges(
    Query$Character$Character$media$edges instance,
    TRes Function(Query$Character$Character$media$edges) then,
  ) = _CopyWithImpl$Query$Character$Character$media$edges;

  factory CopyWith$Query$Character$Character$media$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Character$Character$media$edges;

  TRes call({
    Fragment$Media? node,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get node;
}

class _CopyWithImpl$Query$Character$Character$media$edges<TRes>
    implements CopyWith$Query$Character$Character$media$edges<TRes> {
  _CopyWithImpl$Query$Character$Character$media$edges(
    this._instance,
    this._then,
  );

  final Query$Character$Character$media$edges _instance;

  final TRes Function(Query$Character$Character$media$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Character$Character$media$edges(
        node: node == _undefined ? _instance.node : (node as Fragment$Media?),
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

class _CopyWithStubImpl$Query$Character$Character$media$edges<TRes>
    implements CopyWith$Query$Character$Character$media$edges<TRes> {
  _CopyWithStubImpl$Query$Character$Character$media$edges(this._res);

  TRes _res;

  call({
    Fragment$Media? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$Media<TRes> get node => CopyWith$Fragment$Media.stub(_res);
}
