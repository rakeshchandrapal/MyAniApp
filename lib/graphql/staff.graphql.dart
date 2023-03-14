import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Staff {
  factory Variables$Query$Staff({int? id}) => Variables$Query$Staff._({
        if (id != null) r'id': id,
      });

  Variables$Query$Staff._(this._$data);

  factory Variables$Query$Staff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$Staff._(result$data);
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$Staff<TRes> {
  factory CopyWith$Variables$Query$Staff(
    Variables$Query$Staff instance,
    TRes Function(Variables$Query$Staff) then,
  ) = _CopyWithImpl$Variables$Query$Staff;

  factory CopyWith$Variables$Query$Staff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Staff;

  TRes call({int? id});
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

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Staff._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Staff<TRes>
    implements CopyWith$Variables$Query$Staff<TRes> {
  _CopyWithStubImpl$Variables$Query$Staff(this._res);

  TRes _res;

  call({int? id}) => _res;
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
      )
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
            name: NameNode(value: 'languageV2'),
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
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'asHtml'),
                value: BooleanValueNode(value: true),
              )
            ],
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
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
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
            name: NameNode(value: 'dateOfDeath'),
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
                name: NameNode(value: 'month'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'day'),
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
Query$Staff _parserFn$Query$Staff(Map<String, dynamic> data) =>
    Query$Staff.fromJson(data);

class Options$Query$Staff extends graphql.QueryOptions<Query$Staff> {
  Options$Query$Staff({
    String? operationName,
    Variables$Query$Staff? variables,
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
          document: documentNodeQueryStaff,
          parserFn: _parserFn$Query$Staff,
        );
}

class WatchOptions$Query$Staff extends graphql.WatchQueryOptions<Query$Staff> {
  WatchOptions$Query$Staff({
    String? operationName,
    Variables$Query$Staff? variables,
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
    this.languageV2,
    this.gender,
    this.homeTown,
    this.bloodType,
    required this.isFavourite,
    this.siteUrl,
    this.description,
    this.age,
    this.name,
    this.image,
    this.dateOfBirth,
    this.dateOfDeath,
    this.$__typename = 'Staff',
  });

  factory Query$Staff$Staff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$languageV2 = json['languageV2'];
    final l$gender = json['gender'];
    final l$homeTown = json['homeTown'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$siteUrl = json['siteUrl'];
    final l$description = json['description'];
    final l$age = json['age'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$dateOfDeath = json['dateOfDeath'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff(
      id: (l$id as int),
      languageV2: (l$languageV2 as String?),
      gender: (l$gender as String?),
      homeTown: (l$homeTown as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      siteUrl: (l$siteUrl as String?),
      description: (l$description as String?),
      age: (l$age as int?),
      name: l$name == null
          ? null
          : Query$Staff$Staff$name.fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$Staff$Staff$image.fromJson((l$image as Map<String, dynamic>)),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Query$Staff$Staff$dateOfBirth.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      dateOfDeath: l$dateOfDeath == null
          ? null
          : Query$Staff$Staff$dateOfDeath.fromJson(
              (l$dateOfDeath as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? languageV2;

  final String? gender;

  final String? homeTown;

  final String? bloodType;

  final bool isFavourite;

  final String? siteUrl;

  final String? description;

  final int? age;

  final Query$Staff$Staff$name? name;

  final Query$Staff$Staff$image? image;

  final Query$Staff$Staff$dateOfBirth? dateOfBirth;

  final Query$Staff$Staff$dateOfDeath? dateOfDeath;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$homeTown = homeTown;
    _resultData['homeTown'] = l$homeTown;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$dateOfDeath = dateOfDeath;
    _resultData['dateOfDeath'] = l$dateOfDeath?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$languageV2 = languageV2;
    final l$gender = gender;
    final l$homeTown = homeTown;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$siteUrl = siteUrl;
    final l$description = description;
    final l$age = age;
    final l$name = name;
    final l$image = image;
    final l$dateOfBirth = dateOfBirth;
    final l$dateOfDeath = dateOfDeath;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$languageV2,
      l$gender,
      l$homeTown,
      l$bloodType,
      l$isFavourite,
      l$siteUrl,
      l$description,
      l$age,
      l$name,
      l$image,
      l$dateOfBirth,
      l$dateOfDeath,
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
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
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
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
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
    final l$dateOfDeath = dateOfDeath;
    final lOther$dateOfDeath = other.dateOfDeath;
    if (l$dateOfDeath != lOther$dateOfDeath) {
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
    String? languageV2,
    String? gender,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    String? description,
    int? age,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    Query$Staff$Staff$dateOfBirth? dateOfBirth,
    Query$Staff$Staff$dateOfDeath? dateOfDeath,
    String? $__typename,
  });
  CopyWith$Query$Staff$Staff$name<TRes> get name;
  CopyWith$Query$Staff$Staff$image<TRes> get image;
  CopyWith$Query$Staff$Staff$dateOfBirth<TRes> get dateOfBirth;
  CopyWith$Query$Staff$Staff$dateOfDeath<TRes> get dateOfDeath;
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
    Object? languageV2 = _undefined,
    Object? gender = _undefined,
    Object? homeTown = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? siteUrl = _undefined,
    Object? description = _undefined,
    Object? age = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? dateOfBirth = _undefined,
    Object? dateOfDeath = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        homeTown:
            homeTown == _undefined ? _instance.homeTown : (homeTown as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        age: age == _undefined ? _instance.age : (age as int?),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Staff$Staff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$Staff$Staff$image?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Query$Staff$Staff$dateOfBirth?),
        dateOfDeath: dateOfDeath == _undefined
            ? _instance.dateOfDeath
            : (dateOfDeath as Query$Staff$Staff$dateOfDeath?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
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

  CopyWith$Query$Staff$Staff$dateOfBirth<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Query$Staff$Staff$dateOfBirth.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$dateOfBirth(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Query$Staff$Staff$dateOfDeath<TRes> get dateOfDeath {
    final local$dateOfDeath = _instance.dateOfDeath;
    return local$dateOfDeath == null
        ? CopyWith$Query$Staff$Staff$dateOfDeath.stub(_then(_instance))
        : CopyWith$Query$Staff$Staff$dateOfDeath(
            local$dateOfDeath, (e) => call(dateOfDeath: e));
  }
}

class _CopyWithStubImpl$Query$Staff$Staff<TRes>
    implements CopyWith$Query$Staff$Staff<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff(this._res);

  TRes _res;

  call({
    int? id,
    String? languageV2,
    String? gender,
    String? homeTown,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    String? description,
    int? age,
    Query$Staff$Staff$name? name,
    Query$Staff$Staff$image? image,
    Query$Staff$Staff$dateOfBirth? dateOfBirth,
    Query$Staff$Staff$dateOfDeath? dateOfDeath,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Staff$Staff$name<TRes> get name =>
      CopyWith$Query$Staff$Staff$name.stub(_res);
  CopyWith$Query$Staff$Staff$image<TRes> get image =>
      CopyWith$Query$Staff$Staff$image.stub(_res);
  CopyWith$Query$Staff$Staff$dateOfBirth<TRes> get dateOfBirth =>
      CopyWith$Query$Staff$Staff$dateOfBirth.stub(_res);
  CopyWith$Query$Staff$Staff$dateOfDeath<TRes> get dateOfDeath =>
      CopyWith$Query$Staff$Staff$dateOfDeath.stub(_res);
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

class Query$Staff$Staff$dateOfBirth {
  Query$Staff$Staff$dateOfBirth({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Staff$Staff$dateOfBirth.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$dateOfBirth(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$dateOfBirth) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension$Query$Staff$Staff$dateOfBirth
    on Query$Staff$Staff$dateOfBirth {
  CopyWith$Query$Staff$Staff$dateOfBirth<Query$Staff$Staff$dateOfBirth>
      get copyWith => CopyWith$Query$Staff$Staff$dateOfBirth(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$dateOfBirth<TRes> {
  factory CopyWith$Query$Staff$Staff$dateOfBirth(
    Query$Staff$Staff$dateOfBirth instance,
    TRes Function(Query$Staff$Staff$dateOfBirth) then,
  ) = _CopyWithImpl$Query$Staff$Staff$dateOfBirth;

  factory CopyWith$Query$Staff$Staff$dateOfBirth.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$dateOfBirth;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$dateOfBirth<TRes>
    implements CopyWith$Query$Staff$Staff$dateOfBirth<TRes> {
  _CopyWithImpl$Query$Staff$Staff$dateOfBirth(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$dateOfBirth _instance;

  final TRes Function(Query$Staff$Staff$dateOfBirth) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$dateOfBirth(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$dateOfBirth<TRes>
    implements CopyWith$Query$Staff$Staff$dateOfBirth<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$dateOfBirth(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}

class Query$Staff$Staff$dateOfDeath {
  Query$Staff$Staff$dateOfDeath({
    this.year,
    this.month,
    this.day,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$Staff$Staff$dateOfDeath.fromJson(Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$month = json['month'];
    final l$day = json['day'];
    final l$$__typename = json['__typename'];
    return Query$Staff$Staff$dateOfDeath(
      year: (l$year as int?),
      month: (l$month as int?),
      day: (l$day as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final int? month;

  final int? day;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$day = day;
    _resultData['day'] = l$day;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$month = month;
    final l$day = day;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$month,
      l$day,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Staff$Staff$dateOfDeath) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
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

extension UtilityExtension$Query$Staff$Staff$dateOfDeath
    on Query$Staff$Staff$dateOfDeath {
  CopyWith$Query$Staff$Staff$dateOfDeath<Query$Staff$Staff$dateOfDeath>
      get copyWith => CopyWith$Query$Staff$Staff$dateOfDeath(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Staff$Staff$dateOfDeath<TRes> {
  factory CopyWith$Query$Staff$Staff$dateOfDeath(
    Query$Staff$Staff$dateOfDeath instance,
    TRes Function(Query$Staff$Staff$dateOfDeath) then,
  ) = _CopyWithImpl$Query$Staff$Staff$dateOfDeath;

  factory CopyWith$Query$Staff$Staff$dateOfDeath.stub(TRes res) =
      _CopyWithStubImpl$Query$Staff$Staff$dateOfDeath;

  TRes call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Staff$Staff$dateOfDeath<TRes>
    implements CopyWith$Query$Staff$Staff$dateOfDeath<TRes> {
  _CopyWithImpl$Query$Staff$Staff$dateOfDeath(
    this._instance,
    this._then,
  );

  final Query$Staff$Staff$dateOfDeath _instance;

  final TRes Function(Query$Staff$Staff$dateOfDeath) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? month = _undefined,
    Object? day = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Staff$Staff$dateOfDeath(
        year: year == _undefined ? _instance.year : (year as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        day: day == _undefined ? _instance.day : (day as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Staff$Staff$dateOfDeath<TRes>
    implements CopyWith$Query$Staff$Staff$dateOfDeath<TRes> {
  _CopyWithStubImpl$Query$Staff$Staff$dateOfDeath(this._res);

  TRes _res;

  call({
    int? year,
    int? month,
    int? day,
    String? $__typename,
  }) =>
      _res;
}
