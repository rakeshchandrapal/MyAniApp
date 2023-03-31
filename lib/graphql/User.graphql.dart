import 'Media.graphql.dart';
import 'Notifications.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$ListGroup {
  Fragment$ListGroup({
    this.name,
    this.isCustomList,
    this.isSplitCompletedList,
    this.status,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Fragment$ListGroup.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isCustomList = json['isCustomList'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$status = json['status'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Fragment$ListGroup(
      name: (l$name as String?),
      isCustomList: (l$isCustomList as bool?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isCustomList;

  final bool? isSplitCompletedList;

  final Enum$MediaListStatus? status;

  final List<Fragment$MediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isCustomList = isCustomList;
    _resultData['isCustomList'] = l$isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isCustomList = isCustomList;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$status = status;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isCustomList,
      l$isSplitCompletedList,
      l$status,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListGroup) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isCustomList = isCustomList;
    final lOther$isCustomList = other.isCustomList;
    if (l$isCustomList != lOther$isCustomList) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Fragment$ListGroup on Fragment$ListGroup {
  CopyWith$Fragment$ListGroup<Fragment$ListGroup> get copyWith =>
      CopyWith$Fragment$ListGroup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ListGroup<TRes> {
  factory CopyWith$Fragment$ListGroup(
    Fragment$ListGroup instance,
    TRes Function(Fragment$ListGroup) then,
  ) = _CopyWithImpl$Fragment$ListGroup;

  factory CopyWith$Fragment$ListGroup.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListGroup;

  TRes call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$ListGroup<TRes>
    implements CopyWith$Fragment$ListGroup<TRes> {
  _CopyWithImpl$Fragment$ListGroup(
    this._instance,
    this._then,
  );

  final Fragment$ListGroup _instance;

  final TRes Function(Fragment$ListGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isCustomList = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? status = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListGroup(
        name: name == _undefined ? _instance.name : (name as String?),
        isCustomList: isCustomList == _undefined
            ? _instance.isCustomList
            : (isCustomList as bool?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes entries(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$ListGroup<TRes>
    implements CopyWith$Fragment$ListGroup<TRes> {
  _CopyWithStubImpl$Fragment$ListGroup(this._res);

  TRes _res;

  call({
    String? name,
    bool? isCustomList,
    bool? isSplitCompletedList,
    Enum$MediaListStatus? status,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;
  entries(_fn) => _res;
}

const fragmentDefinitionListGroup = FragmentDefinitionNode(
  name: NameNode(value: 'ListGroup'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaListGroup'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'isCustomList'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSplitCompletedList'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'entries'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MediaListEntry'),
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
);
const documentNodeFragmentListGroup = DocumentNode(definitions: [
  fragmentDefinitionListGroup,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionBasicMedia,
]);

extension ClientExtension$Fragment$ListGroup on graphql.GraphQLClient {
  void writeFragment$ListGroup({
    required Fragment$ListGroup data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ListGroup',
            document: documentNodeFragmentListGroup,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ListGroup? readFragment$ListGroup({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ListGroup',
          document: documentNodeFragmentListGroup,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ListGroup.fromJson(result);
  }
}

class Variables$Query$User {
  factory Variables$Query$User({String? name}) => Variables$Query$User._({
        if (name != null) r'name': name,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([_$data.containsKey('name') ? l$name : const {}]);
  }
}

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(
    Variables$Query$User instance,
    TRes Function(Variables$Query$User) then,
  ) = _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({String? name});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(
    this._instance,
    this._then,
  );

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? name = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Query$User {
  Query$User({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$User(
      User: l$User == null
          ? null
          : Query$User$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Query$User$User? User,
    String? $__typename,
  });
  CopyWith$Query$User$User<TRes> get User;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        User: User == _undefined ? _instance.User : (User as Query$User$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$User$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$User$User.stub(_then(_instance))
        : CopyWith$Query$User$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$User? User,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$User$User<TRes> get User =>
      CopyWith$Query$User$User.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'BasicUser'),
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
            name: NameNode(value: 'about'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statistics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'episodesWatched'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'minutesWatched'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'meanScore'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'standardDeviation'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'count'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'chaptersRead'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'volumesRead'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'meanScore'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'standardDeviation'),
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: IntValueNode(value: '1'),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: IntValueNode(value: '1'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                            name: NameNode(value: 'BasicMedia'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: IntValueNode(value: '1'),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                            name: NameNode(value: 'BasicMedia'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionBasicUser,
  fragmentDefinitionBasicMedia,
]);
Query$User _parserFn$Query$User(Map<String, dynamic> data) =>
    Query$User.fromJson(data);
typedef OnQueryComplete$Query$User = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$User?,
);

class Options$Query$User extends graphql.QueryOptions<Query$User> {
  Options$Query$User({
    String? operationName,
    Variables$Query$User? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$User? onComplete,
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
                    data == null ? null : _parserFn$Query$User(data),
                  ),
          onError: onError,
          document: documentNodeQueryUser,
          parserFn: _parserFn$Query$User,
        );

  final OnQueryComplete$Query$User? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$User extends graphql.WatchQueryOptions<Query$User> {
  WatchOptions$Query$User({
    String? operationName,
    Variables$Query$User? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
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
          document: documentNodeQueryUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$User,
        );
}

class FetchMoreOptions$Query$User extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$User? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUser,
        );
}

extension ClientExtension$Query$User on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User>> query$User(
          [Options$Query$User? options]) async =>
      await this.query(options ?? Options$Query$User());
  graphql.ObservableQuery<Query$User> watchQuery$User(
          [WatchOptions$Query$User? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$User());
  void writeQuery$User({
    required Query$User data,
    Variables$Query$User? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUser),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User? readQuery$User({
    Variables$Query$User? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUser),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$User.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User> useQuery$User(
        [Options$Query$User? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$User());
graphql.ObservableQuery<Query$User> useWatchQuery$User(
        [WatchOptions$Query$User? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$User());

class Query$User$Widget extends graphql_flutter.Query<Query$User> {
  Query$User$Widget({
    widgets.Key? key,
    Options$Query$User? options,
    required graphql_flutter.QueryBuilder<Query$User> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$User(),
          builder: builder,
        );
}

class Query$User$User implements Fragment$BasicUser {
  Query$User$User({
    required this.id,
    required this.name,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.avatar,
    this.$__typename = 'User',
    this.bannerImage,
    this.about,
    this.statistics,
    this.favourites,
  });

  factory Query$User$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    final l$bannerImage = json['bannerImage'];
    final l$about = json['about'];
    final l$statistics = json['statistics'];
    final l$favourites = json['favourites'];
    return Query$User$User(
      id: (l$id as int),
      name: (l$name as String),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      avatar: l$avatar == null
          ? null
          : Query$User$User$avatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      bannerImage: (l$bannerImage as String?),
      about: (l$about as String?),
      statistics: l$statistics == null
          ? null
          : Query$User$User$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      favourites: l$favourites == null
          ? null
          : Query$User$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
    );
  }

  final int id;

  final String name;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$User$User$avatar? avatar;

  final String $__typename;

  final String? bannerImage;

  final String? about;

  final Query$User$User$statistics? statistics;

  final Query$User$User$favourites? favourites;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$about = about;
    _resultData['about'] = l$about;
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    final l$bannerImage = bannerImage;
    final l$about = about;
    final l$statistics = statistics;
    final l$favourites = favourites;
    return Object.hashAll([
      l$id,
      l$name,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$avatar,
      l$$__typename,
      l$bannerImage,
      l$about,
      l$statistics,
      l$favourites,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$User) || runtimeType != other.runtimeType) {
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
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User on Query$User$User {
  CopyWith$Query$User$User<Query$User$User> get copyWith =>
      CopyWith$Query$User$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$User<TRes> {
  factory CopyWith$Query$User$User(
    Query$User$User instance,
    TRes Function(Query$User$User) then,
  ) = _CopyWithImpl$Query$User$User;

  factory CopyWith$Query$User$User.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User;

  TRes call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$User$User$avatar? avatar,
    String? $__typename,
    String? bannerImage,
    String? about,
    Query$User$User$statistics? statistics,
    Query$User$User$favourites? favourites,
  });
  CopyWith$Query$User$User$avatar<TRes> get avatar;
  CopyWith$Query$User$User$statistics<TRes> get statistics;
  CopyWith$Query$User$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$User$User<TRes>
    implements CopyWith$Query$User$User<TRes> {
  _CopyWithImpl$Query$User$User(
    this._instance,
    this._then,
  );

  final Query$User$User _instance;

  final TRes Function(Query$User$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
    Object? bannerImage = _undefined,
    Object? about = _undefined,
    Object? statistics = _undefined,
    Object? favourites = _undefined,
  }) =>
      _then(Query$User$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$User$User$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        about: about == _undefined ? _instance.about : (about as String?),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Query$User$User$statistics?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$User$User$favourites?),
      ));
  CopyWith$Query$User$User$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$User$User$avatar.stub(_then(_instance))
        : CopyWith$Query$User$User$avatar(local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Query$User$User$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Query$User$User$statistics.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics(
            local$statistics, (e) => call(statistics: e));
  }

  CopyWith$Query$User$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$User$User$favourites.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$User$User<TRes>
    implements CopyWith$Query$User$User<TRes> {
  _CopyWithStubImpl$Query$User$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$User$User$avatar? avatar,
    String? $__typename,
    String? bannerImage,
    String? about,
    Query$User$User$statistics? statistics,
    Query$User$User$favourites? favourites,
  }) =>
      _res;
  CopyWith$Query$User$User$avatar<TRes> get avatar =>
      CopyWith$Query$User$User$avatar.stub(_res);
  CopyWith$Query$User$User$statistics<TRes> get statistics =>
      CopyWith$Query$User$User$statistics.stub(_res);
  CopyWith$Query$User$User$favourites<TRes> get favourites =>
      CopyWith$Query$User$User$favourites.stub(_res);
}

class Query$User$User$avatar implements Fragment$BasicUser$avatar {
  Query$User$User$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$User$User$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$User$User$avatar(
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
    if (!(other is Query$User$User$avatar) ||
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

extension UtilityExtension$Query$User$User$avatar on Query$User$User$avatar {
  CopyWith$Query$User$User$avatar<Query$User$User$avatar> get copyWith =>
      CopyWith$Query$User$User$avatar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$User$avatar<TRes> {
  factory CopyWith$Query$User$User$avatar(
    Query$User$User$avatar instance,
    TRes Function(Query$User$User$avatar) then,
  ) = _CopyWithImpl$Query$User$User$avatar;

  factory CopyWith$Query$User$User$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$User$avatar<TRes>
    implements CopyWith$Query$User$User$avatar<TRes> {
  _CopyWithImpl$Query$User$User$avatar(
    this._instance,
    this._then,
  );

  final Query$User$User$avatar _instance;

  final TRes Function(Query$User$User$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$User$avatar<TRes>
    implements CopyWith$Query$User$User$avatar<TRes> {
  _CopyWithStubImpl$Query$User$User$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$User$User$statistics {
  Query$User$User$statistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Query$User$User$statistics.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics(
      anime: l$anime == null
          ? null
          : Query$User$User$statistics$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$User$User$statistics$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User$statistics$anime? anime;

  final Query$User$User$statistics$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$User$statistics) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User$statistics
    on Query$User$User$statistics {
  CopyWith$Query$User$User$statistics<Query$User$User$statistics>
      get copyWith => CopyWith$Query$User$User$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics<TRes> {
  factory CopyWith$Query$User$User$statistics(
    Query$User$User$statistics instance,
    TRes Function(Query$User$User$statistics) then,
  ) = _CopyWithImpl$Query$User$User$statistics;

  factory CopyWith$Query$User$User$statistics.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics;

  TRes call({
    Query$User$User$statistics$anime? anime,
    Query$User$User$statistics$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$User$User$statistics$anime<TRes> get anime;
  CopyWith$Query$User$User$statistics$manga<TRes> get manga;
}

class _CopyWithImpl$Query$User$User$statistics<TRes>
    implements CopyWith$Query$User$User$statistics<TRes> {
  _CopyWithImpl$Query$User$User$statistics(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics _instance;

  final TRes Function(Query$User$User$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$User$User$statistics$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$User$User$statistics$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$User$User$statistics$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$User$User$statistics$anime.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$User$User$statistics$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$User$User$statistics$manga.stub(_then(_instance))
        : CopyWith$Query$User$User$statistics$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$User$User$statistics<TRes>
    implements CopyWith$Query$User$User$statistics<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics(this._res);

  TRes _res;

  call({
    Query$User$User$statistics$anime? anime,
    Query$User$User$statistics$manga? manga,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$User$User$statistics$anime<TRes> get anime =>
      CopyWith$Query$User$User$statistics$anime.stub(_res);
  CopyWith$Query$User$User$statistics$manga<TRes> get manga =>
      CopyWith$Query$User$User$statistics$manga.stub(_res);
}

class Query$User$User$statistics$anime {
  Query$User$User$statistics$anime({
    required this.count,
    required this.episodesWatched,
    required this.minutesWatched,
    required this.meanScore,
    required this.standardDeviation,
    this.$__typename = 'UserStatistics',
  });

  factory Query$User$User$statistics$anime.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$episodesWatched = json['episodesWatched'];
    final l$minutesWatched = json['minutesWatched'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics$anime(
      count: (l$count as int),
      episodesWatched: (l$episodesWatched as int),
      minutesWatched: (l$minutesWatched as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int episodesWatched;

  final int minutesWatched;

  final double meanScore;

  final double standardDeviation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$episodesWatched = episodesWatched;
    final l$minutesWatched = minutesWatched;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$episodesWatched,
      l$minutesWatched,
      l$meanScore,
      l$standardDeviation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$User$statistics$anime) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$episodesWatched = episodesWatched;
    final lOther$episodesWatched = other.episodesWatched;
    if (l$episodesWatched != lOther$episodesWatched) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
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

extension UtilityExtension$Query$User$User$statistics$anime
    on Query$User$User$statistics$anime {
  CopyWith$Query$User$User$statistics$anime<Query$User$User$statistics$anime>
      get copyWith => CopyWith$Query$User$User$statistics$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics$anime<TRes> {
  factory CopyWith$Query$User$User$statistics$anime(
    Query$User$User$statistics$anime instance,
    TRes Function(Query$User$User$statistics$anime) then,
  ) = _CopyWithImpl$Query$User$User$statistics$anime;

  factory CopyWith$Query$User$User$statistics$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics$anime;

  TRes call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$User$statistics$anime<TRes>
    implements CopyWith$Query$User$User$statistics$anime<TRes> {
  _CopyWithImpl$Query$User$User$statistics$anime(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics$anime _instance;

  final TRes Function(Query$User$User$statistics$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? episodesWatched = _undefined,
    Object? minutesWatched = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics$anime(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        episodesWatched:
            episodesWatched == _undefined || episodesWatched == null
                ? _instance.episodesWatched
                : (episodesWatched as int),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$User$statistics$anime<TRes>
    implements CopyWith$Query$User$User$statistics$anime<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics$anime(this._res);

  TRes _res;

  call({
    int? count,
    int? episodesWatched,
    int? minutesWatched,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  }) =>
      _res;
}

class Query$User$User$statistics$manga {
  Query$User$User$statistics$manga({
    required this.count,
    required this.chaptersRead,
    required this.volumesRead,
    required this.meanScore,
    required this.standardDeviation,
    this.$__typename = 'UserStatistics',
  });

  factory Query$User$User$statistics$manga.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$$__typename = json['__typename'];
    return Query$User$User$statistics$manga(
      count: (l$count as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final int chaptersRead;

  final int volumesRead;

  final double meanScore;

  final double standardDeviation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$chaptersRead,
      l$volumesRead,
      l$meanScore,
      l$standardDeviation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$User$statistics$manga) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$volumesRead = volumesRead;
    final lOther$volumesRead = other.volumesRead;
    if (l$volumesRead != lOther$volumesRead) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
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

extension UtilityExtension$Query$User$User$statistics$manga
    on Query$User$User$statistics$manga {
  CopyWith$Query$User$User$statistics$manga<Query$User$User$statistics$manga>
      get copyWith => CopyWith$Query$User$User$statistics$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$statistics$manga<TRes> {
  factory CopyWith$Query$User$User$statistics$manga(
    Query$User$User$statistics$manga instance,
    TRes Function(Query$User$User$statistics$manga) then,
  ) = _CopyWithImpl$Query$User$User$statistics$manga;

  factory CopyWith$Query$User$User$statistics$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$statistics$manga;

  TRes call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$User$User$statistics$manga<TRes>
    implements CopyWith$Query$User$User$statistics$manga<TRes> {
  _CopyWithImpl$Query$User$User$statistics$manga(
    this._instance,
    this._then,
  );

  final Query$User$User$statistics$manga _instance;

  final TRes Function(Query$User$User$statistics$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$statistics$manga(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$User$User$statistics$manga<TRes>
    implements CopyWith$Query$User$User$statistics$manga<TRes> {
  _CopyWithStubImpl$Query$User$User$statistics$manga(this._res);

  TRes _res;

  call({
    int? count,
    int? chaptersRead,
    int? volumesRead,
    double? meanScore,
    double? standardDeviation,
    String? $__typename,
  }) =>
      _res;
}

class Query$User$User$favourites {
  Query$User$User$favourites({
    this.anime,
    this.manga,
    this.$__typename = 'Favourites',
  });

  factory Query$User$User$favourites.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites(
      anime: l$anime == null
          ? null
          : Query$User$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$User$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$User$favourites$anime? anime;

  final Query$User$User$favourites$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$User$User$favourites) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$User$User$favourites
    on Query$User$User$favourites {
  CopyWith$Query$User$User$favourites<Query$User$User$favourites>
      get copyWith => CopyWith$Query$User$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites<TRes> {
  factory CopyWith$Query$User$User$favourites(
    Query$User$User$favourites instance,
    TRes Function(Query$User$User$favourites) then,
  ) = _CopyWithImpl$Query$User$User$favourites;

  factory CopyWith$Query$User$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites;

  TRes call({
    Query$User$User$favourites$anime? anime,
    Query$User$User$favourites$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$User$User$favourites$anime<TRes> get anime;
  CopyWith$Query$User$User$favourites$manga<TRes> get manga;
}

class _CopyWithImpl$Query$User$User$favourites<TRes>
    implements CopyWith$Query$User$User$favourites<TRes> {
  _CopyWithImpl$Query$User$User$favourites(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites _instance;

  final TRes Function(Query$User$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$User$User$favourites$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$User$User$favourites$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$User$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$User$User$favourites$anime.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$User$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$User$User$favourites$manga.stub(_then(_instance))
        : CopyWith$Query$User$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$User$User$favourites<TRes>
    implements CopyWith$Query$User$User$favourites<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites(this._res);

  TRes _res;

  call({
    Query$User$User$favourites$anime? anime,
    Query$User$User$favourites$manga? manga,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$User$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$User$User$favourites$anime.stub(_res);
  CopyWith$Query$User$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$User$User$favourites$manga.stub(_res);
}

class Query$User$User$favourites$anime {
  Query$User$User$favourites$anime({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$User$User$favourites$anime.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$anime(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$User$User$favourites$anime$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User$User$favourites$anime$edges?>? edges;

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
    if (!(other is Query$User$User$favourites$anime) ||
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

extension UtilityExtension$Query$User$User$favourites$anime
    on Query$User$User$favourites$anime {
  CopyWith$Query$User$User$favourites$anime<Query$User$User$favourites$anime>
      get copyWith => CopyWith$Query$User$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$anime<TRes> {
  factory CopyWith$Query$User$User$favourites$anime(
    Query$User$User$favourites$anime instance,
    TRes Function(Query$User$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$User$User$favourites$anime;

  factory CopyWith$Query$User$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$anime;

  TRes call({
    List<Query$User$User$favourites$anime$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$User$User$favourites$anime$edges?>? Function(
              Iterable<
                  CopyWith$Query$User$User$favourites$anime$edges<
                      Query$User$User$favourites$anime$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$anime<TRes>
    implements CopyWith$Query$User$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$User$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$anime _instance;

  final TRes Function(Query$User$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$anime(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$User$User$favourites$anime$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$User$User$favourites$anime$edges?>? Function(
                  Iterable<
                      CopyWith$Query$User$User$favourites$anime$edges<
                          Query$User$User$favourites$anime$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$User$User$favourites$anime$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$anime<TRes>
    implements CopyWith$Query$User$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$anime(this._res);

  TRes _res;

  call({
    List<Query$User$User$favourites$anime$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$User$User$favourites$anime$edges {
  Query$User$User$favourites$anime$edges({
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$User$User$favourites$anime$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$anime$edges(
      node: l$node == null
          ? null
          : Fragment$BasicMedia.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$BasicMedia? node;

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
    if (!(other is Query$User$User$favourites$anime$edges) ||
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

extension UtilityExtension$Query$User$User$favourites$anime$edges
    on Query$User$User$favourites$anime$edges {
  CopyWith$Query$User$User$favourites$anime$edges<
          Query$User$User$favourites$anime$edges>
      get copyWith => CopyWith$Query$User$User$favourites$anime$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$anime$edges<TRes> {
  factory CopyWith$Query$User$User$favourites$anime$edges(
    Query$User$User$favourites$anime$edges instance,
    TRes Function(Query$User$User$favourites$anime$edges) then,
  ) = _CopyWithImpl$Query$User$User$favourites$anime$edges;

  factory CopyWith$Query$User$User$favourites$anime$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$anime$edges;

  TRes call({
    Fragment$BasicMedia? node,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get node;
}

class _CopyWithImpl$Query$User$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$User$User$favourites$anime$edges<TRes> {
  _CopyWithImpl$Query$User$User$favourites$anime$edges(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$anime$edges _instance;

  final TRes Function(Query$User$User$favourites$anime$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$anime$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$User$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$User$User$favourites$anime$edges<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$anime$edges(this._res);

  TRes _res;

  call({
    Fragment$BasicMedia? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get node =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$User$User$favourites$manga {
  Query$User$User$favourites$manga({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$User$User$favourites$manga.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$manga(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$User$User$favourites$manga$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User$User$favourites$manga$edges?>? edges;

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
    if (!(other is Query$User$User$favourites$manga) ||
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

extension UtilityExtension$Query$User$User$favourites$manga
    on Query$User$User$favourites$manga {
  CopyWith$Query$User$User$favourites$manga<Query$User$User$favourites$manga>
      get copyWith => CopyWith$Query$User$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$manga<TRes> {
  factory CopyWith$Query$User$User$favourites$manga(
    Query$User$User$favourites$manga instance,
    TRes Function(Query$User$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$User$User$favourites$manga;

  factory CopyWith$Query$User$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$manga;

  TRes call({
    List<Query$User$User$favourites$manga$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$User$User$favourites$manga$edges?>? Function(
              Iterable<
                  CopyWith$Query$User$User$favourites$manga$edges<
                      Query$User$User$favourites$manga$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$User$User$favourites$manga<TRes>
    implements CopyWith$Query$User$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$User$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$manga _instance;

  final TRes Function(Query$User$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$manga(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$User$User$favourites$manga$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$User$User$favourites$manga$edges?>? Function(
                  Iterable<
                      CopyWith$Query$User$User$favourites$manga$edges<
                          Query$User$User$favourites$manga$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$User$User$favourites$manga$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$User$User$favourites$manga<TRes>
    implements CopyWith$Query$User$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$manga(this._res);

  TRes _res;

  call({
    List<Query$User$User$favourites$manga$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$User$User$favourites$manga$edges {
  Query$User$User$favourites$manga$edges({
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$User$User$favourites$manga$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$User$User$favourites$manga$edges(
      node: l$node == null
          ? null
          : Fragment$BasicMedia.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$BasicMedia? node;

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
    if (!(other is Query$User$User$favourites$manga$edges) ||
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

extension UtilityExtension$Query$User$User$favourites$manga$edges
    on Query$User$User$favourites$manga$edges {
  CopyWith$Query$User$User$favourites$manga$edges<
          Query$User$User$favourites$manga$edges>
      get copyWith => CopyWith$Query$User$User$favourites$manga$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$User$favourites$manga$edges<TRes> {
  factory CopyWith$Query$User$User$favourites$manga$edges(
    Query$User$User$favourites$manga$edges instance,
    TRes Function(Query$User$User$favourites$manga$edges) then,
  ) = _CopyWithImpl$Query$User$User$favourites$manga$edges;

  factory CopyWith$Query$User$User$favourites$manga$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$User$User$favourites$manga$edges;

  TRes call({
    Fragment$BasicMedia? node,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get node;
}

class _CopyWithImpl$Query$User$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$User$User$favourites$manga$edges<TRes> {
  _CopyWithImpl$Query$User$User$favourites$manga$edges(
    this._instance,
    this._then,
  );

  final Query$User$User$favourites$manga$edges _instance;

  final TRes Function(Query$User$User$favourites$manga$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$User$favourites$manga$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$User$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$User$User$favourites$manga$edges<TRes> {
  _CopyWithStubImpl$Query$User$User$favourites$manga$edges(this._res);

  TRes _res;

  call({
    Fragment$BasicMedia? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get node =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Variables$Query$Favorites {
  factory Variables$Query$Favorites({
    String? username,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  }) =>
      Variables$Query$Favorites._({
        if (username != null) r'username': username,
        if (animePage != null) r'animePage': animePage,
        if (mangaPage != null) r'mangaPage': mangaPage,
        if (characterPage != null) r'characterPage': characterPage,
        if (staffPage != null) r'staffPage': staffPage,
        if (studioPage != null) r'studioPage': studioPage,
      });

  Variables$Query$Favorites._(this._$data);

  factory Variables$Query$Favorites.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('username')) {
      final l$username = data['username'];
      result$data['username'] = (l$username as String?);
    }
    if (data.containsKey('animePage')) {
      final l$animePage = data['animePage'];
      result$data['animePage'] = (l$animePage as int?);
    }
    if (data.containsKey('mangaPage')) {
      final l$mangaPage = data['mangaPage'];
      result$data['mangaPage'] = (l$mangaPage as int?);
    }
    if (data.containsKey('characterPage')) {
      final l$characterPage = data['characterPage'];
      result$data['characterPage'] = (l$characterPage as int?);
    }
    if (data.containsKey('staffPage')) {
      final l$staffPage = data['staffPage'];
      result$data['staffPage'] = (l$staffPage as int?);
    }
    if (data.containsKey('studioPage')) {
      final l$studioPage = data['studioPage'];
      result$data['studioPage'] = (l$studioPage as int?);
    }
    return Variables$Query$Favorites._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get username => (_$data['username'] as String?);
  int? get animePage => (_$data['animePage'] as int?);
  int? get mangaPage => (_$data['mangaPage'] as int?);
  int? get characterPage => (_$data['characterPage'] as int?);
  int? get staffPage => (_$data['staffPage'] as int?);
  int? get studioPage => (_$data['studioPage'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('username')) {
      final l$username = username;
      result$data['username'] = l$username;
    }
    if (_$data.containsKey('animePage')) {
      final l$animePage = animePage;
      result$data['animePage'] = l$animePage;
    }
    if (_$data.containsKey('mangaPage')) {
      final l$mangaPage = mangaPage;
      result$data['mangaPage'] = l$mangaPage;
    }
    if (_$data.containsKey('characterPage')) {
      final l$characterPage = characterPage;
      result$data['characterPage'] = l$characterPage;
    }
    if (_$data.containsKey('staffPage')) {
      final l$staffPage = staffPage;
      result$data['staffPage'] = l$staffPage;
    }
    if (_$data.containsKey('studioPage')) {
      final l$studioPage = studioPage;
      result$data['studioPage'] = l$studioPage;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Favorites<Variables$Query$Favorites> get copyWith =>
      CopyWith$Variables$Query$Favorites(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Favorites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (_$data.containsKey('username') !=
        other._$data.containsKey('username')) {
      return false;
    }
    if (l$username != lOther$username) {
      return false;
    }
    final l$animePage = animePage;
    final lOther$animePage = other.animePage;
    if (_$data.containsKey('animePage') !=
        other._$data.containsKey('animePage')) {
      return false;
    }
    if (l$animePage != lOther$animePage) {
      return false;
    }
    final l$mangaPage = mangaPage;
    final lOther$mangaPage = other.mangaPage;
    if (_$data.containsKey('mangaPage') !=
        other._$data.containsKey('mangaPage')) {
      return false;
    }
    if (l$mangaPage != lOther$mangaPage) {
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
    final l$studioPage = studioPage;
    final lOther$studioPage = other.studioPage;
    if (_$data.containsKey('studioPage') !=
        other._$data.containsKey('studioPage')) {
      return false;
    }
    if (l$studioPage != lOther$studioPage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$animePage = animePage;
    final l$mangaPage = mangaPage;
    final l$characterPage = characterPage;
    final l$staffPage = staffPage;
    final l$studioPage = studioPage;
    return Object.hashAll([
      _$data.containsKey('username') ? l$username : const {},
      _$data.containsKey('animePage') ? l$animePage : const {},
      _$data.containsKey('mangaPage') ? l$mangaPage : const {},
      _$data.containsKey('characterPage') ? l$characterPage : const {},
      _$data.containsKey('staffPage') ? l$staffPage : const {},
      _$data.containsKey('studioPage') ? l$studioPage : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Favorites<TRes> {
  factory CopyWith$Variables$Query$Favorites(
    Variables$Query$Favorites instance,
    TRes Function(Variables$Query$Favorites) then,
  ) = _CopyWithImpl$Variables$Query$Favorites;

  factory CopyWith$Variables$Query$Favorites.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Favorites;

  TRes call({
    String? username,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  });
}

class _CopyWithImpl$Variables$Query$Favorites<TRes>
    implements CopyWith$Variables$Query$Favorites<TRes> {
  _CopyWithImpl$Variables$Query$Favorites(
    this._instance,
    this._then,
  );

  final Variables$Query$Favorites _instance;

  final TRes Function(Variables$Query$Favorites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? animePage = _undefined,
    Object? mangaPage = _undefined,
    Object? characterPage = _undefined,
    Object? staffPage = _undefined,
    Object? studioPage = _undefined,
  }) =>
      _then(Variables$Query$Favorites._({
        ..._instance._$data,
        if (username != _undefined) 'username': (username as String?),
        if (animePage != _undefined) 'animePage': (animePage as int?),
        if (mangaPage != _undefined) 'mangaPage': (mangaPage as int?),
        if (characterPage != _undefined)
          'characterPage': (characterPage as int?),
        if (staffPage != _undefined) 'staffPage': (staffPage as int?),
        if (studioPage != _undefined) 'studioPage': (studioPage as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Favorites<TRes>
    implements CopyWith$Variables$Query$Favorites<TRes> {
  _CopyWithStubImpl$Variables$Query$Favorites(this._res);

  TRes _res;

  call({
    String? username,
    int? animePage,
    int? mangaPage,
    int? characterPage,
    int? staffPage,
    int? studioPage,
  }) =>
      _res;
}

class Query$Favorites {
  Query$Favorites({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$Favorites.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$Favorites(
      User: l$User == null
          ? null
          : Query$Favorites$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Favorites$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$Favorites on Query$Favorites {
  CopyWith$Query$Favorites<Query$Favorites> get copyWith =>
      CopyWith$Query$Favorites(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Favorites<TRes> {
  factory CopyWith$Query$Favorites(
    Query$Favorites instance,
    TRes Function(Query$Favorites) then,
  ) = _CopyWithImpl$Query$Favorites;

  factory CopyWith$Query$Favorites.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites;

  TRes call({
    Query$Favorites$User? User,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User<TRes> get User;
}

class _CopyWithImpl$Query$Favorites<TRes>
    implements CopyWith$Query$Favorites<TRes> {
  _CopyWithImpl$Query$Favorites(
    this._instance,
    this._then,
  );

  final Query$Favorites _instance;

  final TRes Function(Query$Favorites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites(
        User: User == _undefined
            ? _instance.User
            : (User as Query$Favorites$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$Favorites$User.stub(_then(_instance))
        : CopyWith$Query$Favorites$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$Favorites<TRes>
    implements CopyWith$Query$Favorites<TRes> {
  _CopyWithStubImpl$Query$Favorites(this._res);

  TRes _res;

  call({
    Query$Favorites$User? User,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User<TRes> get User =>
      CopyWith$Query$Favorites$User.stub(_res);
}

const documentNodeQueryFavorites = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Favorites'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animePage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaPage')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studioPage')),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'username')),
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
            name: NameNode(value: 'name'),
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
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'animePage')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'favouriteOrder'),
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
                          FragmentSpreadNode(
                            name: NameNode(value: 'BasicMedia'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'mangaPage')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'favouriteOrder'),
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
                          FragmentSpreadNode(
                            name: NameNode(value: 'BasicMedia'),
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
                name: NameNode(value: 'characters'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'characterPage')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'favouriteOrder'),
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
                name: NameNode(value: 'staff'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'staffPage')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'favouriteOrder'),
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
                name: NameNode(value: 'studios'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'studioPage')),
                  )
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'edges'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'favouriteOrder'),
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
  fragmentDefinitionBasicMedia,
]);
Query$Favorites _parserFn$Query$Favorites(Map<String, dynamic> data) =>
    Query$Favorites.fromJson(data);
typedef OnQueryComplete$Query$Favorites = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Favorites?,
);

class Options$Query$Favorites extends graphql.QueryOptions<Query$Favorites> {
  Options$Query$Favorites({
    String? operationName,
    Variables$Query$Favorites? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Favorites? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Favorites? onComplete,
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
                    data == null ? null : _parserFn$Query$Favorites(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavorites,
          parserFn: _parserFn$Query$Favorites,
        );

  final OnQueryComplete$Query$Favorites? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Favorites
    extends graphql.WatchQueryOptions<Query$Favorites> {
  WatchOptions$Query$Favorites({
    String? operationName,
    Variables$Query$Favorites? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Favorites? typedOptimisticResult,
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
          document: documentNodeQueryFavorites,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Favorites,
        );
}

class FetchMoreOptions$Query$Favorites extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Favorites({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Favorites? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavorites,
        );
}

extension ClientExtension$Query$Favorites on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Favorites>> query$Favorites(
          [Options$Query$Favorites? options]) async =>
      await this.query(options ?? Options$Query$Favorites());
  graphql.ObservableQuery<Query$Favorites> watchQuery$Favorites(
          [WatchOptions$Query$Favorites? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Favorites());
  void writeQuery$Favorites({
    required Query$Favorites data,
    Variables$Query$Favorites? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFavorites),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Favorites? readQuery$Favorites({
    Variables$Query$Favorites? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavorites),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Favorites.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Favorites> useQuery$Favorites(
        [Options$Query$Favorites? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Favorites());
graphql.ObservableQuery<Query$Favorites> useWatchQuery$Favorites(
        [WatchOptions$Query$Favorites? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Favorites());

class Query$Favorites$Widget extends graphql_flutter.Query<Query$Favorites> {
  Query$Favorites$Widget({
    widgets.Key? key,
    Options$Query$Favorites? options,
    required graphql_flutter.QueryBuilder<Query$Favorites> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Favorites(),
          builder: builder,
        );
}

class Query$Favorites$User {
  Query$Favorites$User({
    required this.id,
    required this.name,
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$Favorites$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User(
      id: (l$id as int),
      name: (l$name as String),
      favourites: l$favourites == null
          ? null
          : Query$Favorites$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$Favorites$User$favourites? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User) || runtimeType != other.runtimeType) {
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Query$Favorites$User on Query$Favorites$User {
  CopyWith$Query$Favorites$User<Query$Favorites$User> get copyWith =>
      CopyWith$Query$Favorites$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Favorites$User<TRes> {
  factory CopyWith$Query$Favorites$User(
    Query$Favorites$User instance,
    TRes Function(Query$Favorites$User) then,
  ) = _CopyWithImpl$Query$Favorites$User;

  factory CopyWith$Query$Favorites$User.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User;

  TRes call({
    int? id,
    String? name,
    Query$Favorites$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$Favorites$User<TRes>
    implements CopyWith$Query$Favorites$User<TRes> {
  _CopyWithImpl$Query$Favorites$User(
    this._instance,
    this._then,
  );

  final Query$Favorites$User _instance;

  final TRes Function(Query$Favorites$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$Favorites$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$Favorites$User$favourites.stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User<TRes>
    implements CopyWith$Query$Favorites$User<TRes> {
  _CopyWithStubImpl$Query$Favorites$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Favorites$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites<TRes> get favourites =>
      CopyWith$Query$Favorites$User$favourites.stub(_res);
}

class Query$Favorites$User$favourites {
  Query$Favorites$User$favourites({
    this.anime,
    this.manga,
    this.characters,
    this.staff,
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Query$Favorites$User$favourites.fromJson(Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$characters = json['characters'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites(
      anime: l$anime == null
          ? null
          : Query$Favorites$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Query$Favorites$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      characters: l$characters == null
          ? null
          : Query$Favorites$User$favourites$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      staff: l$staff == null
          ? null
          : Query$Favorites$User$favourites$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      studios: l$studios == null
          ? null
          : Query$Favorites$User$favourites$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Favorites$User$favourites$anime? anime;

  final Query$Favorites$User$favourites$manga? manga;

  final Query$Favorites$User$favourites$characters? characters;

  final Query$Favorites$User$favourites$staff? staff;

  final Query$Favorites$User$favourites$studios? studios;

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
    if (!(other is Query$Favorites$User$favourites) ||
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

extension UtilityExtension$Query$Favorites$User$favourites
    on Query$Favorites$User$favourites {
  CopyWith$Query$Favorites$User$favourites<Query$Favorites$User$favourites>
      get copyWith => CopyWith$Query$Favorites$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites<TRes> {
  factory CopyWith$Query$Favorites$User$favourites(
    Query$Favorites$User$favourites instance,
    TRes Function(Query$Favorites$User$favourites) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites;

  factory CopyWith$Query$Favorites$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites;

  TRes call({
    Query$Favorites$User$favourites$anime? anime,
    Query$Favorites$User$favourites$manga? manga,
    Query$Favorites$User$favourites$characters? characters,
    Query$Favorites$User$favourites$staff? staff,
    Query$Favorites$User$favourites$studios? studios,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$anime<TRes> get anime;
  CopyWith$Query$Favorites$User$favourites$manga<TRes> get manga;
  CopyWith$Query$Favorites$User$favourites$characters<TRes> get characters;
  CopyWith$Query$Favorites$User$favourites$staff<TRes> get staff;
  CopyWith$Query$Favorites$User$favourites$studios<TRes> get studios;
}

class _CopyWithImpl$Query$Favorites$User$favourites<TRes>
    implements CopyWith$Query$Favorites$User$favourites<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites _instance;

  final TRes Function(Query$Favorites$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? characters = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$Favorites$User$favourites$anime?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$Favorites$User$favourites$manga?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as Query$Favorites$User$favourites$characters?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$Favorites$User$favourites$staff?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$Favorites$User$favourites$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$Favorites$User$favourites$anime.stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }

  CopyWith$Query$Favorites$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$Favorites$User$favourites$manga.stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }

  CopyWith$Query$Favorites$User$favourites$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$Favorites$User$favourites$characters.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$characters(
            local$characters, (e) => call(characters: e));
  }

  CopyWith$Query$Favorites$User$favourites$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$Favorites$User$favourites$staff.stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites$staff(
            local$staff, (e) => call(staff: e));
  }

  CopyWith$Query$Favorites$User$favourites$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$Favorites$User$favourites$studios.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites<TRes>
    implements CopyWith$Query$Favorites$User$favourites<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites(this._res);

  TRes _res;

  call({
    Query$Favorites$User$favourites$anime? anime,
    Query$Favorites$User$favourites$manga? manga,
    Query$Favorites$User$favourites$characters? characters,
    Query$Favorites$User$favourites$staff? staff,
    Query$Favorites$User$favourites$studios? studios,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$Favorites$User$favourites$anime.stub(_res);
  CopyWith$Query$Favorites$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$Favorites$User$favourites$manga.stub(_res);
  CopyWith$Query$Favorites$User$favourites$characters<TRes> get characters =>
      CopyWith$Query$Favorites$User$favourites$characters.stub(_res);
  CopyWith$Query$Favorites$User$favourites$staff<TRes> get staff =>
      CopyWith$Query$Favorites$User$favourites$staff.stub(_res);
  CopyWith$Query$Favorites$User$favourites$studios<TRes> get studios =>
      CopyWith$Query$Favorites$User$favourites$studios.stub(_res);
}

class Query$Favorites$User$favourites$anime {
  Query$Favorites$User$favourites$anime({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Favorites$User$favourites$anime.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$anime(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Favorites$User$favourites$anime$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Favorites$User$favourites$anime$edges?>? edges;

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
    if (!(other is Query$Favorites$User$favourites$anime) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$anime
    on Query$Favorites$User$favourites$anime {
  CopyWith$Query$Favorites$User$favourites$anime<
          Query$Favorites$User$favourites$anime>
      get copyWith => CopyWith$Query$Favorites$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$anime<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$anime(
    Query$Favorites$User$favourites$anime instance,
    TRes Function(Query$Favorites$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$anime;

  factory CopyWith$Query$Favorites$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$anime;

  TRes call({
    List<Query$Favorites$User$favourites$anime$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Favorites$User$favourites$anime$edges?>? Function(
              Iterable<
                  CopyWith$Query$Favorites$User$favourites$anime$edges<
                      Query$Favorites$User$favourites$anime$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Favorites$User$favourites$anime<TRes>
    implements CopyWith$Query$Favorites$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$anime _instance;

  final TRes Function(Query$Favorites$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$anime(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Favorites$User$favourites$anime$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Favorites$User$favourites$anime$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Favorites$User$favourites$anime$edges<
                          Query$Favorites$User$favourites$anime$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Favorites$User$favourites$anime$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$anime<TRes>
    implements CopyWith$Query$Favorites$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$anime(this._res);

  TRes _res;

  call({
    List<Query$Favorites$User$favourites$anime$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Favorites$User$favourites$anime$edges {
  Query$Favorites$User$favourites$anime$edges({
    this.favouriteOrder,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Favorites$User$favourites$anime$edges.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$anime$edges(
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$BasicMedia.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? favouriteOrder;

  final Fragment$BasicMedia? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$anime$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$Favorites$User$favourites$anime$edges
    on Query$Favorites$User$favourites$anime$edges {
  CopyWith$Query$Favorites$User$favourites$anime$edges<
          Query$Favorites$User$favourites$anime$edges>
      get copyWith => CopyWith$Query$Favorites$User$favourites$anime$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$anime$edges<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$anime$edges(
    Query$Favorites$User$favourites$anime$edges instance,
    TRes Function(Query$Favorites$User$favourites$anime$edges) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$anime$edges;

  factory CopyWith$Query$Favorites$User$favourites$anime$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$anime$edges;

  TRes call({
    int? favouriteOrder,
    Fragment$BasicMedia? node,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get node;
}

class _CopyWithImpl$Query$Favorites$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$anime$edges<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$anime$edges(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$anime$edges _instance;

  final TRes Function(Query$Favorites$User$favourites$anime$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$anime$edges(
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$anime$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$anime$edges<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$anime$edges(this._res);

  TRes _res;

  call({
    int? favouriteOrder,
    Fragment$BasicMedia? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get node =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$Favorites$User$favourites$manga {
  Query$Favorites$User$favourites$manga({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$Favorites$User$favourites$manga.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$manga(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Favorites$User$favourites$manga$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Favorites$User$favourites$manga$edges?>? edges;

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
    if (!(other is Query$Favorites$User$favourites$manga) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$manga
    on Query$Favorites$User$favourites$manga {
  CopyWith$Query$Favorites$User$favourites$manga<
          Query$Favorites$User$favourites$manga>
      get copyWith => CopyWith$Query$Favorites$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$manga<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$manga(
    Query$Favorites$User$favourites$manga instance,
    TRes Function(Query$Favorites$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$manga;

  factory CopyWith$Query$Favorites$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$manga;

  TRes call({
    List<Query$Favorites$User$favourites$manga$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Favorites$User$favourites$manga$edges?>? Function(
              Iterable<
                  CopyWith$Query$Favorites$User$favourites$manga$edges<
                      Query$Favorites$User$favourites$manga$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Favorites$User$favourites$manga<TRes>
    implements CopyWith$Query$Favorites$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$manga _instance;

  final TRes Function(Query$Favorites$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$manga(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Favorites$User$favourites$manga$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Favorites$User$favourites$manga$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Favorites$User$favourites$manga$edges<
                          Query$Favorites$User$favourites$manga$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Favorites$User$favourites$manga$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$manga<TRes>
    implements CopyWith$Query$Favorites$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$manga(this._res);

  TRes _res;

  call({
    List<Query$Favorites$User$favourites$manga$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Favorites$User$favourites$manga$edges {
  Query$Favorites$User$favourites$manga$edges({
    this.favouriteOrder,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$Favorites$User$favourites$manga$edges.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$manga$edges(
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Fragment$BasicMedia.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? favouriteOrder;

  final Fragment$BasicMedia? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$manga$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$Favorites$User$favourites$manga$edges
    on Query$Favorites$User$favourites$manga$edges {
  CopyWith$Query$Favorites$User$favourites$manga$edges<
          Query$Favorites$User$favourites$manga$edges>
      get copyWith => CopyWith$Query$Favorites$User$favourites$manga$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$manga$edges<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$manga$edges(
    Query$Favorites$User$favourites$manga$edges instance,
    TRes Function(Query$Favorites$User$favourites$manga$edges) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$manga$edges;

  factory CopyWith$Query$Favorites$User$favourites$manga$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$manga$edges;

  TRes call({
    int? favouriteOrder,
    Fragment$BasicMedia? node,
    String? $__typename,
  });
  CopyWith$Fragment$BasicMedia<TRes> get node;
}

class _CopyWithImpl$Query$Favorites$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$manga$edges<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$manga$edges(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$manga$edges _instance;

  final TRes Function(Query$Favorites$User$favourites$manga$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$manga$edges(
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$BasicMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$BasicMedia<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$BasicMedia.stub(_then(_instance))
        : CopyWith$Fragment$BasicMedia(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$manga$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$manga$edges<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$manga$edges(this._res);

  TRes _res;

  call({
    int? favouriteOrder,
    Fragment$BasicMedia? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$BasicMedia<TRes> get node =>
      CopyWith$Fragment$BasicMedia.stub(_res);
}

class Query$Favorites$User$favourites$characters {
  Query$Favorites$User$favourites$characters({
    this.edges,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$Favorites$User$favourites$characters.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$characters(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Favorites$User$favourites$characters$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Favorites$User$favourites$characters$edges?>? edges;

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
    if (!(other is Query$Favorites$User$favourites$characters) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$characters
    on Query$Favorites$User$favourites$characters {
  CopyWith$Query$Favorites$User$favourites$characters<
          Query$Favorites$User$favourites$characters>
      get copyWith => CopyWith$Query$Favorites$User$favourites$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$characters<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$characters(
    Query$Favorites$User$favourites$characters instance,
    TRes Function(Query$Favorites$User$favourites$characters) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$characters;

  factory CopyWith$Query$Favorites$User$favourites$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$characters;

  TRes call({
    List<Query$Favorites$User$favourites$characters$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Favorites$User$favourites$characters$edges?>? Function(
              Iterable<
                  CopyWith$Query$Favorites$User$favourites$characters$edges<
                      Query$Favorites$User$favourites$characters$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Favorites$User$favourites$characters<TRes>
    implements CopyWith$Query$Favorites$User$favourites$characters<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$characters(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$characters _instance;

  final TRes Function(Query$Favorites$User$favourites$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$characters(
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$Favorites$User$favourites$characters$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Favorites$User$favourites$characters$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Favorites$User$favourites$characters$edges<
                          Query$Favorites$User$favourites$characters$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Favorites$User$favourites$characters$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$characters<TRes>
    implements CopyWith$Query$Favorites$User$favourites$characters<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$characters(this._res);

  TRes _res;

  call({
    List<Query$Favorites$User$favourites$characters$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Favorites$User$favourites$characters$edges {
  Query$Favorites$User$favourites$characters$edges({
    this.favouriteOrder,
    this.node,
    this.$__typename = 'CharacterEdge',
  });

  factory Query$Favorites$User$favourites$characters$edges.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$characters$edges(
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Query$Favorites$User$favourites$characters$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? favouriteOrder;

  final Query$Favorites$User$favourites$characters$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$characters$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$Favorites$User$favourites$characters$edges
    on Query$Favorites$User$favourites$characters$edges {
  CopyWith$Query$Favorites$User$favourites$characters$edges<
          Query$Favorites$User$favourites$characters$edges>
      get copyWith => CopyWith$Query$Favorites$User$favourites$characters$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$characters$edges<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$characters$edges(
    Query$Favorites$User$favourites$characters$edges instance,
    TRes Function(Query$Favorites$User$favourites$characters$edges) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$characters$edges;

  factory CopyWith$Query$Favorites$User$favourites$characters$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges;

  TRes call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$characters$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$characters$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Favorites$User$favourites$characters$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$characters$edges<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$characters$edges(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$characters$edges _instance;

  final TRes Function(Query$Favorites$User$favourites$characters$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$characters$edges(
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Favorites$User$favourites$characters$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$characters$edges$node<TRes>
      get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Favorites$User$favourites$characters$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$characters$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$characters$edges<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges(this._res);

  TRes _res;

  call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$characters$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$characters$edges$node<TRes>
      get node =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node.stub(
              _res);
}

class Query$Favorites$User$favourites$characters$edges$node {
  Query$Favorites$User$favourites$characters$edges$node({
    required this.id,
    this.image,
    this.name,
    this.$__typename = 'Character',
  });

  factory Query$Favorites$User$favourites$characters$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$characters$edges$node(
      id: (l$id as int),
      image: l$image == null
          ? null
          : Query$Favorites$User$favourites$characters$edges$node$image
              .fromJson((l$image as Map<String, dynamic>)),
      name: l$name == null
          ? null
          : Query$Favorites$User$favourites$characters$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Favorites$User$favourites$characters$edges$node$image? image;

  final Query$Favorites$User$favourites$characters$edges$node$name? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$characters$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$Favorites$User$favourites$characters$edges$node
    on Query$Favorites$User$favourites$characters$edges$node {
  CopyWith$Query$Favorites$User$favourites$characters$edges$node<
          Query$Favorites$User$favourites$characters$edges$node>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$characters$edges$node<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node(
    Query$Favorites$User$favourites$characters$edges$node instance,
    TRes Function(Query$Favorites$User$favourites$characters$edges$node) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node;

  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node;

  TRes call({
    int? id,
    Query$Favorites$User$favourites$characters$edges$node$image? image,
    Query$Favorites$User$favourites$characters$edges$node$name? name,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<TRes>
      get image;
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<TRes>
      get name;
}

class _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node<TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$characters$edges$node _instance;

  final TRes Function(Query$Favorites$User$favourites$characters$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$characters$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Favorites$User$favourites$characters$edges$node$image?),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$Favorites$User$favourites$characters$edges$node$name?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Favorites$User$favourites$characters$edges$node$image
            .stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites$characters$edges$node$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<TRes>
      get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Favorites$User$favourites$characters$edges$node$name
            .stub(_then(_instance))
        : CopyWith$Query$Favorites$User$favourites$characters$edges$node$name(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$Favorites$User$favourites$characters$edges$node$image? image,
    Query$Favorites$User$favourites$characters$edges$node$name? name,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<TRes>
      get image =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node$image
              .stub(_res);
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<TRes>
      get name =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node$name
              .stub(_res);
}

class Query$Favorites$User$favourites$characters$edges$node$image {
  Query$Favorites$User$favourites$characters$edges$node$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$Favorites$User$favourites$characters$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$characters$edges$node$image(
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
            is Query$Favorites$User$favourites$characters$edges$node$image) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$characters$edges$node$image
    on Query$Favorites$User$favourites$characters$edges$node$image {
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<
          Query$Favorites$User$favourites$characters$edges$node$image>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node$image(
    Query$Favorites$User$favourites$characters$edges$node$image instance,
    TRes Function(Query$Favorites$User$favourites$characters$edges$node$image)
        then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$image;

  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$image<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<
            TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$characters$edges$node$image _instance;

  final TRes Function(
      Query$Favorites$User$favourites$characters$edges$node$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$characters$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$image<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node$image<
            TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Favorites$User$favourites$characters$edges$node$name {
  Query$Favorites$User$favourites$characters$edges$node$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$Favorites$User$favourites$characters$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$characters$edges$node$name(
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
            is Query$Favorites$User$favourites$characters$edges$node$name) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$characters$edges$node$name
    on Query$Favorites$User$favourites$characters$edges$node$name {
  CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<
          Query$Favorites$User$favourites$characters$edges$node$name>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$characters$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node$name(
    Query$Favorites$User$favourites$characters$edges$node$name instance,
    TRes Function(Query$Favorites$User$favourites$characters$edges$node$name)
        then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$name;

  factory CopyWith$Query$Favorites$User$favourites$characters$edges$node$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$name<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<
            TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$characters$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$characters$edges$node$name _instance;

  final TRes Function(
      Query$Favorites$User$favourites$characters$edges$node$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$characters$edges$node$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$name<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$characters$edges$node$name<
            TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$characters$edges$node$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Favorites$User$favourites$staff {
  Query$Favorites$User$favourites$staff({
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory Query$Favorites$User$favourites$staff.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$staff(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Favorites$User$favourites$staff$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Favorites$User$favourites$staff$edges?>? edges;

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
    if (!(other is Query$Favorites$User$favourites$staff) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$staff
    on Query$Favorites$User$favourites$staff {
  CopyWith$Query$Favorites$User$favourites$staff<
          Query$Favorites$User$favourites$staff>
      get copyWith => CopyWith$Query$Favorites$User$favourites$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$staff<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$staff(
    Query$Favorites$User$favourites$staff instance,
    TRes Function(Query$Favorites$User$favourites$staff) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$staff;

  factory CopyWith$Query$Favorites$User$favourites$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$staff;

  TRes call({
    List<Query$Favorites$User$favourites$staff$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Favorites$User$favourites$staff$edges?>? Function(
              Iterable<
                  CopyWith$Query$Favorites$User$favourites$staff$edges<
                      Query$Favorites$User$favourites$staff$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Favorites$User$favourites$staff<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$staff(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$staff _instance;

  final TRes Function(Query$Favorites$User$favourites$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$staff(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Favorites$User$favourites$staff$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Favorites$User$favourites$staff$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Favorites$User$favourites$staff$edges<
                          Query$Favorites$User$favourites$staff$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Favorites$User$favourites$staff$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$staff<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$staff(this._res);

  TRes _res;

  call({
    List<Query$Favorites$User$favourites$staff$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Favorites$User$favourites$staff$edges {
  Query$Favorites$User$favourites$staff$edges({
    this.favouriteOrder,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory Query$Favorites$User$favourites$staff$edges.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$staff$edges(
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Query$Favorites$User$favourites$staff$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? favouriteOrder;

  final Query$Favorites$User$favourites$staff$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$staff$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$Favorites$User$favourites$staff$edges
    on Query$Favorites$User$favourites$staff$edges {
  CopyWith$Query$Favorites$User$favourites$staff$edges<
          Query$Favorites$User$favourites$staff$edges>
      get copyWith => CopyWith$Query$Favorites$User$favourites$staff$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$staff$edges<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$staff$edges(
    Query$Favorites$User$favourites$staff$edges instance,
    TRes Function(Query$Favorites$User$favourites$staff$edges) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$staff$edges;

  factory CopyWith$Query$Favorites$User$favourites$staff$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges;

  TRes call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$staff$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Favorites$User$favourites$staff$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff$edges<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$staff$edges(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$staff$edges _instance;

  final TRes Function(Query$Favorites$User$favourites$staff$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$staff$edges(
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Favorites$User$favourites$staff$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Favorites$User$favourites$staff$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$staff$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff$edges<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges(this._res);

  TRes _res;

  call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$staff$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> get node =>
      CopyWith$Query$Favorites$User$favourites$staff$edges$node.stub(_res);
}

class Query$Favorites$User$favourites$staff$edges$node {
  Query$Favorites$User$favourites$staff$edges$node({
    required this.id,
    this.image,
    this.name,
    this.$__typename = 'Staff',
  });

  factory Query$Favorites$User$favourites$staff$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$staff$edges$node(
      id: (l$id as int),
      image: l$image == null
          ? null
          : Query$Favorites$User$favourites$staff$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      name: l$name == null
          ? null
          : Query$Favorites$User$favourites$staff$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$Favorites$User$favourites$staff$edges$node$image? image;

  final Query$Favorites$User$favourites$staff$edges$node$name? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$staff$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$Favorites$User$favourites$staff$edges$node
    on Query$Favorites$User$favourites$staff$edges$node {
  CopyWith$Query$Favorites$User$favourites$staff$edges$node<
          Query$Favorites$User$favourites$staff$edges$node>
      get copyWith => CopyWith$Query$Favorites$User$favourites$staff$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node(
    Query$Favorites$User$favourites$staff$edges$node instance,
    TRes Function(Query$Favorites$User$favourites$staff$edges$node) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node;

  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node;

  TRes call({
    int? id,
    Query$Favorites$User$favourites$staff$edges$node$image? image,
    Query$Favorites$User$favourites$staff$edges$node$name? name,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<TRes>
      get image;
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<TRes> get name;
}

class _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$staff$edges$node _instance;

  final TRes Function(Query$Favorites$User$favourites$staff$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$staff$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$Favorites$User$favourites$staff$edges$node$image?),
        name: name == _undefined
            ? _instance.name
            : (name as Query$Favorites$User$favourites$staff$edges$node$name?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$Favorites$User$favourites$staff$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$staff$edges$node$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<TRes>
      get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$Favorites$User$favourites$staff$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$staff$edges$node$name(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node<TRes>
    implements CopyWith$Query$Favorites$User$favourites$staff$edges$node<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$Favorites$User$favourites$staff$edges$node$image? image,
    Query$Favorites$User$favourites$staff$edges$node$name? name,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<TRes>
      get image =>
          CopyWith$Query$Favorites$User$favourites$staff$edges$node$image.stub(
              _res);
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<TRes>
      get name =>
          CopyWith$Query$Favorites$User$favourites$staff$edges$node$name.stub(
              _res);
}

class Query$Favorites$User$favourites$staff$edges$node$image {
  Query$Favorites$User$favourites$staff$edges$node$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$Favorites$User$favourites$staff$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$staff$edges$node$image(
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
    if (!(other is Query$Favorites$User$favourites$staff$edges$node$image) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$staff$edges$node$image
    on Query$Favorites$User$favourites$staff$edges$node$image {
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<
          Query$Favorites$User$favourites$staff$edges$node$image>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$staff$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node$image(
    Query$Favorites$User$favourites$staff$edges$node$image instance,
    TRes Function(Query$Favorites$User$favourites$staff$edges$node$image) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$image;

  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$image<TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$staff$edges$node$image _instance;

  final TRes Function(Query$Favorites$User$favourites$staff$edges$node$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$staff$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$image<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$staff$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$Favorites$User$favourites$staff$edges$node$name {
  Query$Favorites$User$favourites$staff$edges$node$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$Favorites$User$favourites$staff$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$staff$edges$node$name(
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
    if (!(other is Query$Favorites$User$favourites$staff$edges$node$name) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$staff$edges$node$name
    on Query$Favorites$User$favourites$staff$edges$node$name {
  CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<
          Query$Favorites$User$favourites$staff$edges$node$name>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$staff$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node$name(
    Query$Favorites$User$favourites$staff$edges$node$name instance,
    TRes Function(Query$Favorites$User$favourites$staff$edges$node$name) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$name;

  factory CopyWith$Query$Favorites$User$favourites$staff$edges$node$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$name<TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$staff$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$staff$edges$node$name _instance;

  final TRes Function(Query$Favorites$User$favourites$staff$edges$node$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$staff$edges$node$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$name<
        TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$staff$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$staff$edges$node$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$Favorites$User$favourites$studios {
  Query$Favorites$User$favourites$studios({
    this.edges,
    this.$__typename = 'StudioConnection',
  });

  factory Query$Favorites$User$favourites$studios.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$studios(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Favorites$User$favourites$studios$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Favorites$User$favourites$studios$edges?>? edges;

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
    if (!(other is Query$Favorites$User$favourites$studios) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$studios
    on Query$Favorites$User$favourites$studios {
  CopyWith$Query$Favorites$User$favourites$studios<
          Query$Favorites$User$favourites$studios>
      get copyWith => CopyWith$Query$Favorites$User$favourites$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$studios<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$studios(
    Query$Favorites$User$favourites$studios instance,
    TRes Function(Query$Favorites$User$favourites$studios) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$studios;

  factory CopyWith$Query$Favorites$User$favourites$studios.stub(TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$studios;

  TRes call({
    List<Query$Favorites$User$favourites$studios$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Favorites$User$favourites$studios$edges?>? Function(
              Iterable<
                  CopyWith$Query$Favorites$User$favourites$studios$edges<
                      Query$Favorites$User$favourites$studios$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$Favorites$User$favourites$studios<TRes>
    implements CopyWith$Query$Favorites$User$favourites$studios<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$studios(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$studios _instance;

  final TRes Function(Query$Favorites$User$favourites$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$studios(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$Favorites$User$favourites$studios$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$Favorites$User$favourites$studios$edges?>? Function(
                  Iterable<
                      CopyWith$Query$Favorites$User$favourites$studios$edges<
                          Query$Favorites$User$favourites$studios$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$Favorites$User$favourites$studios$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$studios<TRes>
    implements CopyWith$Query$Favorites$User$favourites$studios<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$studios(this._res);

  TRes _res;

  call({
    List<Query$Favorites$User$favourites$studios$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$Favorites$User$favourites$studios$edges {
  Query$Favorites$User$favourites$studios$edges({
    this.favouriteOrder,
    this.node,
    this.$__typename = 'StudioEdge',
  });

  factory Query$Favorites$User$favourites$studios$edges.fromJson(
      Map<String, dynamic> json) {
    final l$favouriteOrder = json['favouriteOrder'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$studios$edges(
      favouriteOrder: (l$favouriteOrder as int?),
      node: l$node == null
          ? null
          : Query$Favorites$User$favourites$studios$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? favouriteOrder;

  final Query$Favorites$User$favourites$studios$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouriteOrder = favouriteOrder;
    _resultData['favouriteOrder'] = l$favouriteOrder;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouriteOrder = favouriteOrder;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favouriteOrder,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Favorites$User$favourites$studios$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouriteOrder = favouriteOrder;
    final lOther$favouriteOrder = other.favouriteOrder;
    if (l$favouriteOrder != lOther$favouriteOrder) {
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

extension UtilityExtension$Query$Favorites$User$favourites$studios$edges
    on Query$Favorites$User$favourites$studios$edges {
  CopyWith$Query$Favorites$User$favourites$studios$edges<
          Query$Favorites$User$favourites$studios$edges>
      get copyWith => CopyWith$Query$Favorites$User$favourites$studios$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$studios$edges<TRes> {
  factory CopyWith$Query$Favorites$User$favourites$studios$edges(
    Query$Favorites$User$favourites$studios$edges instance,
    TRes Function(Query$Favorites$User$favourites$studios$edges) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$studios$edges;

  factory CopyWith$Query$Favorites$User$favourites$studios$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges;

  TRes call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$studios$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Favorites$User$favourites$studios$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Favorites$User$favourites$studios$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$studios$edges<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$studios$edges(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$studios$edges _instance;

  final TRes Function(Query$Favorites$User$favourites$studios$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouriteOrder = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$studios$edges(
        favouriteOrder: favouriteOrder == _undefined
            ? _instance.favouriteOrder
            : (favouriteOrder as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$Favorites$User$favourites$studios$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$Favorites$User$favourites$studios$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$Favorites$User$favourites$studios$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$Favorites$User$favourites$studios$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges<TRes>
    implements CopyWith$Query$Favorites$User$favourites$studios$edges<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges(this._res);

  TRes _res;

  call({
    int? favouriteOrder,
    Query$Favorites$User$favourites$studios$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$Favorites$User$favourites$studios$edges$node<TRes> get node =>
      CopyWith$Query$Favorites$User$favourites$studios$edges$node.stub(_res);
}

class Query$Favorites$User$favourites$studios$edges$node {
  Query$Favorites$User$favourites$studios$edges$node({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
  });

  factory Query$Favorites$User$favourites$studios$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Favorites$User$favourites$studios$edges$node(
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
    if (!(other is Query$Favorites$User$favourites$studios$edges$node) ||
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

extension UtilityExtension$Query$Favorites$User$favourites$studios$edges$node
    on Query$Favorites$User$favourites$studios$edges$node {
  CopyWith$Query$Favorites$User$favourites$studios$edges$node<
          Query$Favorites$User$favourites$studios$edges$node>
      get copyWith =>
          CopyWith$Query$Favorites$User$favourites$studios$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Favorites$User$favourites$studios$edges$node<
    TRes> {
  factory CopyWith$Query$Favorites$User$favourites$studios$edges$node(
    Query$Favorites$User$favourites$studios$edges$node instance,
    TRes Function(Query$Favorites$User$favourites$studios$edges$node) then,
  ) = _CopyWithImpl$Query$Favorites$User$favourites$studios$edges$node;

  factory CopyWith$Query$Favorites$User$favourites$studios$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges$node;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Favorites$User$favourites$studios$edges$node<TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$studios$edges$node<TRes> {
  _CopyWithImpl$Query$Favorites$User$favourites$studios$edges$node(
    this._instance,
    this._then,
  );

  final Query$Favorites$User$favourites$studios$edges$node _instance;

  final TRes Function(Query$Favorites$User$favourites$studios$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Favorites$User$favourites$studios$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges$node<TRes>
    implements
        CopyWith$Query$Favorites$User$favourites$studios$edges$node<TRes> {
  _CopyWithStubImpl$Query$Favorites$User$favourites$studios$edges$node(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$UserList {
  factory Variables$Query$UserList({
    String? name,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      Variables$Query$UserList._({
        if (name != null) r'name': name,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$UserList._(this._$data);

  factory Variables$Query$UserList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
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
    return Variables$Query$UserList._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);
  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);
  List<Enum$MediaListSort?>? get sort =>
      (_$data['sort'] as List<Enum$MediaListSort?>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
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

  CopyWith$Variables$Query$UserList<Variables$Query$UserList> get copyWith =>
      CopyWith$Variables$Query$UserList(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
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
    final l$name = name;
    final l$type = type;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserList<TRes> {
  factory CopyWith$Variables$Query$UserList(
    Variables$Query$UserList instance,
    TRes Function(Variables$Query$UserList) then,
  ) = _CopyWithImpl$Variables$Query$UserList;

  factory CopyWith$Variables$Query$UserList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserList;

  TRes call({
    String? name,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$UserList<TRes>
    implements CopyWith$Variables$Query$UserList<TRes> {
  _CopyWithImpl$Variables$Query$UserList(
    this._instance,
    this._then,
  );

  final Variables$Query$UserList _instance;

  final TRes Function(Variables$Query$UserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$UserList._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaListSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserList<TRes>
    implements CopyWith$Variables$Query$UserList<TRes> {
  _CopyWithStubImpl$Variables$Query$UserList(this._res);

  TRes _res;

  call({
    String? name,
    Enum$MediaType? type,
    List<Enum$MediaListSort?>? sort,
  }) =>
      _res;
}

class Query$UserList {
  Query$UserList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory Query$UserList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return Query$UserList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : Query$UserList$MediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserList$MediaListCollection? MediaListCollection;

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
    if (!(other is Query$UserList) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserList on Query$UserList {
  CopyWith$Query$UserList<Query$UserList> get copyWith =>
      CopyWith$Query$UserList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserList<TRes> {
  factory CopyWith$Query$UserList(
    Query$UserList instance,
    TRes Function(Query$UserList) then,
  ) = _CopyWithImpl$Query$UserList;

  factory CopyWith$Query$UserList.stub(TRes res) =
      _CopyWithStubImpl$Query$UserList;

  TRes call({
    Query$UserList$MediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWith$Query$UserList$MediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImpl$Query$UserList<TRes>
    implements CopyWith$Query$UserList<TRes> {
  _CopyWithImpl$Query$UserList(
    this._instance,
    this._then,
  );

  final Query$UserList _instance;

  final TRes Function(Query$UserList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as Query$UserList$MediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$UserList$MediaListCollection<TRes> get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWith$Query$UserList$MediaListCollection.stub(_then(_instance))
        : CopyWith$Query$UserList$MediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImpl$Query$UserList<TRes>
    implements CopyWith$Query$UserList<TRes> {
  _CopyWithStubImpl$Query$UserList(this._res);

  TRes _res;

  call({
    Query$UserList$MediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$UserList$MediaListCollection<TRes> get MediaListCollection =>
      CopyWith$Query$UserList$MediaListCollection.stub(_res);
}

const documentNodeQueryUserList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
            name: NameNode(value: 'userName'),
            value: VariableNode(name: NameNode(value: 'name')),
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
  fragmentDefinitionBasicMedia,
]);
Query$UserList _parserFn$Query$UserList(Map<String, dynamic> data) =>
    Query$UserList.fromJson(data);
typedef OnQueryComplete$Query$UserList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserList?,
);

class Options$Query$UserList extends graphql.QueryOptions<Query$UserList> {
  Options$Query$UserList({
    String? operationName,
    Variables$Query$UserList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserList? onComplete,
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
                    data == null ? null : _parserFn$Query$UserList(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserList,
          parserFn: _parserFn$Query$UserList,
        );

  final OnQueryComplete$Query$UserList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserList
    extends graphql.WatchQueryOptions<Query$UserList> {
  WatchOptions$Query$UserList({
    String? operationName,
    Variables$Query$UserList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserList? typedOptimisticResult,
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
          document: documentNodeQueryUserList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserList,
        );
}

class FetchMoreOptions$Query$UserList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserList,
        );
}

extension ClientExtension$Query$UserList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserList>> query$UserList(
          [Options$Query$UserList? options]) async =>
      await this.query(options ?? Options$Query$UserList());
  graphql.ObservableQuery<Query$UserList> watchQuery$UserList(
          [WatchOptions$Query$UserList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserList());
  void writeQuery$UserList({
    required Query$UserList data,
    Variables$Query$UserList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserList? readQuery$UserList({
    Variables$Query$UserList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserList> useQuery$UserList(
        [Options$Query$UserList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserList());
graphql.ObservableQuery<Query$UserList> useWatchQuery$UserList(
        [WatchOptions$Query$UserList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserList());

class Query$UserList$Widget extends graphql_flutter.Query<Query$UserList> {
  Query$UserList$Widget({
    widgets.Key? key,
    Options$Query$UserList? options,
    required graphql_flutter.QueryBuilder<Query$UserList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserList(),
          builder: builder,
        );
}

class Query$UserList$MediaListCollection {
  Query$UserList$MediaListCollection({
    this.lists,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$UserList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$$__typename = json['__typename'];
    return Query$UserList$MediaListCollection(
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
    if (!(other is Query$UserList$MediaListCollection) ||
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

extension UtilityExtension$Query$UserList$MediaListCollection
    on Query$UserList$MediaListCollection {
  CopyWith$Query$UserList$MediaListCollection<
          Query$UserList$MediaListCollection>
      get copyWith => CopyWith$Query$UserList$MediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserList$MediaListCollection<TRes> {
  factory CopyWith$Query$UserList$MediaListCollection(
    Query$UserList$MediaListCollection instance,
    TRes Function(Query$UserList$MediaListCollection) then,
  ) = _CopyWithImpl$Query$UserList$MediaListCollection;

  factory CopyWith$Query$UserList$MediaListCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$UserList$MediaListCollection;

  TRes call({
    List<Fragment$ListGroup?>? lists,
    String? $__typename,
  });
  TRes lists(
      Iterable<Fragment$ListGroup?>? Function(
              Iterable<CopyWith$Fragment$ListGroup<Fragment$ListGroup>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserList$MediaListCollection<TRes>
    implements CopyWith$Query$UserList$MediaListCollection<TRes> {
  _CopyWithImpl$Query$UserList$MediaListCollection(
    this._instance,
    this._then,
  );

  final Query$UserList$MediaListCollection _instance;

  final TRes Function(Query$UserList$MediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserList$MediaListCollection(
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

class _CopyWithStubImpl$Query$UserList$MediaListCollection<TRes>
    implements CopyWith$Query$UserList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$UserList$MediaListCollection(this._res);

  TRes _res;

  call({
    List<Fragment$ListGroup?>? lists,
    String? $__typename,
  }) =>
      _res;
  lists(_fn) => _res;
}
