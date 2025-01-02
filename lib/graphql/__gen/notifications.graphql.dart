import 'fragments/media.graphql.dart';
import 'fragments/page_info.graphql.dart';
import 'fragments/user.graphql.dart';
import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Variables$Query$Notifications {
  factory Variables$Query$Notifications({
    int? page,
    List<Enum$NotificationType?>? types,
    bool? reset,
  }) =>
      Variables$Query$Notifications._({
        if (page != null) r'page': page,
        if (types != null) r'types': types,
        if (reset != null) r'reset': reset,
      });

  Variables$Query$Notifications._(this._$data);

  factory Variables$Query$Notifications.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('types')) {
      final l$types = data['types'];
      result$data['types'] = (l$types as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$NotificationType((e as String)))
          .toList();
    }
    if (data.containsKey('reset')) {
      final l$reset = data['reset'];
      result$data['reset'] = (l$reset as bool?);
    }
    return Variables$Query$Notifications._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  List<Enum$NotificationType?>? get types =>
      (_$data['types'] as List<Enum$NotificationType?>?);

  bool? get reset => (_$data['reset'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('types')) {
      final l$types = types;
      result$data['types'] = l$types
          ?.map((e) => e == null ? null : toJson$Enum$NotificationType(e))
          .toList();
    }
    if (_$data.containsKey('reset')) {
      final l$reset = reset;
      result$data['reset'] = l$reset;
    }
    return result$data;
  }

  CopyWith$Variables$Query$Notifications<Variables$Query$Notifications>
      get copyWith => CopyWith$Variables$Query$Notifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Notifications ||
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
    final l$types = types;
    final lOther$types = other.types;
    if (_$data.containsKey('types') != other._$data.containsKey('types')) {
      return false;
    }
    if (l$types != null && lOther$types != null) {
      if (l$types.length != lOther$types.length) {
        return false;
      }
      for (int i = 0; i < l$types.length; i++) {
        final l$types$entry = l$types[i];
        final lOther$types$entry = lOther$types[i];
        if (l$types$entry != lOther$types$entry) {
          return false;
        }
      }
    } else if (l$types != lOther$types) {
      return false;
    }
    final l$reset = reset;
    final lOther$reset = other.reset;
    if (_$data.containsKey('reset') != other._$data.containsKey('reset')) {
      return false;
    }
    if (l$reset != lOther$reset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$types = types;
    final l$reset = reset;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('types')
          ? l$types == null
              ? null
              : Object.hashAll(l$types.map((v) => v))
          : const {},
      _$data.containsKey('reset') ? l$reset : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$Notifications<TRes> {
  factory CopyWith$Variables$Query$Notifications(
    Variables$Query$Notifications instance,
    TRes Function(Variables$Query$Notifications) then,
  ) = _CopyWithImpl$Variables$Query$Notifications;

  factory CopyWith$Variables$Query$Notifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Notifications;

  TRes call({
    int? page,
    List<Enum$NotificationType?>? types,
    bool? reset,
  });
}

class _CopyWithImpl$Variables$Query$Notifications<TRes>
    implements CopyWith$Variables$Query$Notifications<TRes> {
  _CopyWithImpl$Variables$Query$Notifications(
    this._instance,
    this._then,
  );

  final Variables$Query$Notifications _instance;

  final TRes Function(Variables$Query$Notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? types = _undefined,
    Object? reset = _undefined,
  }) =>
      _then(Variables$Query$Notifications._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (types != _undefined)
          'types': (types as List<Enum$NotificationType?>?),
        if (reset != _undefined) 'reset': (reset as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Notifications<TRes>
    implements CopyWith$Variables$Query$Notifications<TRes> {
  _CopyWithStubImpl$Variables$Query$Notifications(this._res);

  TRes _res;

  call({
    int? page,
    List<Enum$NotificationType?>? types,
    bool? reset,
  }) =>
      _res;
}

class Query$Notifications {
  Query$Notifications({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Notifications.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Notifications(
      Page: l$Page == null
          ? null
          : Query$Notifications$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Notifications$Page? Page;

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
    if (other is! Query$Notifications || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Notifications on Query$Notifications {
  CopyWith$Query$Notifications<Query$Notifications> get copyWith =>
      CopyWith$Query$Notifications(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notifications<TRes> {
  factory CopyWith$Query$Notifications(
    Query$Notifications instance,
    TRes Function(Query$Notifications) then,
  ) = _CopyWithImpl$Query$Notifications;

  factory CopyWith$Query$Notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications;

  TRes call({
    Query$Notifications$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Notifications<TRes>
    implements CopyWith$Query$Notifications<TRes> {
  _CopyWithImpl$Query$Notifications(
    this._instance,
    this._then,
  );

  final Query$Notifications _instance;

  final TRes Function(Query$Notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Notifications$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Notifications$Page.stub(_then(_instance))
        : CopyWith$Query$Notifications$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Notifications<TRes>
    implements CopyWith$Query$Notifications<TRes> {
  _CopyWithStubImpl$Query$Notifications(this._res);

  TRes _res;

  call({
    Query$Notifications$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page<TRes> get Page =>
      CopyWith$Query$Notifications$Page.stub(_res);
}

const documentNodeQueryNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Notifications'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'types')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: true)),
        directives: [],
      ),
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
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '50'),
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
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'types')),
              ),
              ArgumentNode(
                name: NameNode(value: 'resetNotificationCount'),
                value: VariableNode(name: NameNode(value: 'reset')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'AiringNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'episode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contexts'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'FollowingNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityMessageNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityMentionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplyNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplySubscribedNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ActivityReplyLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'activityId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentMentionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentReplyNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentSubscribedNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadCommentLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'commentId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'ThreadLikeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'thread'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'user'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'UserFragment'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'RelatedMediaAdditionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
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
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'MediaDataChangeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
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
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'MediaMergeNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'media'),
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
                    name: NameNode(value: 'deletedMediaTitles'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
                  name: NameNode(value: 'MediaDeletionNotification'),
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
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'context'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deletedMediaTitle'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reason'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdAt'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionUserFragment,
]);

class Query$Notifications$Page {
  Query$Notifications$Page({
    this.pageInfo,
    this.notifications,
    this.$__typename = 'Page',
  });

  factory Query$Notifications$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$notifications = json['notifications'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Notifications$Page$notifications.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$Notifications$Page$notifications?>? notifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notifications$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
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

extension UtilityExtension$Query$Notifications$Page
    on Query$Notifications$Page {
  CopyWith$Query$Notifications$Page<Query$Notifications$Page> get copyWith =>
      CopyWith$Query$Notifications$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Notifications$Page<TRes> {
  factory CopyWith$Query$Notifications$Page(
    Query$Notifications$Page instance,
    TRes Function(Query$Notifications$Page) then,
  ) = _CopyWithImpl$Query$Notifications$Page;

  factory CopyWith$Query$Notifications$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$Notifications$Page$notifications?>? notifications,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes notifications(
      Iterable<Query$Notifications$Page$notifications?>? Function(
              Iterable<
                  CopyWith$Query$Notifications$Page$notifications<
                      Query$Notifications$Page$notifications>?>?)
          _fn);
}

class _CopyWithImpl$Query$Notifications$Page<TRes>
    implements CopyWith$Query$Notifications$Page<TRes> {
  _CopyWithImpl$Query$Notifications$Page(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page _instance;

  final TRes Function(Query$Notifications$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? notifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications as List<Query$Notifications$Page$notifications?>?),
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

  TRes notifications(
          Iterable<Query$Notifications$Page$notifications?>? Function(
                  Iterable<
                      CopyWith$Query$Notifications$Page$notifications<
                          Query$Notifications$Page$notifications>?>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) => e == null
              ? null
              : CopyWith$Query$Notifications$Page$notifications(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Notifications$Page<TRes>
    implements CopyWith$Query$Notifications$Page<TRes> {
  _CopyWithStubImpl$Query$Notifications$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$Notifications$Page$notifications?>? notifications,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  notifications(_fn) => _res;
}

class Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications({required this.$__typename});

  factory Query$Notifications$Page$notifications.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "AiringNotification":
        return Query$Notifications$Page$notifications$$AiringNotification
            .fromJson(json);

      case "FollowingNotification":
        return Query$Notifications$Page$notifications$$FollowingNotification
            .fromJson(json);

      case "ActivityMessageNotification":
        return Query$Notifications$Page$notifications$$ActivityMessageNotification
            .fromJson(json);

      case "ActivityMentionNotification":
        return Query$Notifications$Page$notifications$$ActivityMentionNotification
            .fromJson(json);

      case "ActivityReplyNotification":
        return Query$Notifications$Page$notifications$$ActivityReplyNotification
            .fromJson(json);

      case "ActivityReplySubscribedNotification":
        return Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification
            .fromJson(json);

      case "ActivityLikeNotification":
        return Query$Notifications$Page$notifications$$ActivityLikeNotification
            .fromJson(json);

      case "ActivityReplyLikeNotification":
        return Query$Notifications$Page$notifications$$ActivityReplyLikeNotification
            .fromJson(json);

      case "ThreadCommentMentionNotification":
        return Query$Notifications$Page$notifications$$ThreadCommentMentionNotification
            .fromJson(json);

      case "ThreadCommentReplyNotification":
        return Query$Notifications$Page$notifications$$ThreadCommentReplyNotification
            .fromJson(json);

      case "ThreadCommentSubscribedNotification":
        return Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification
            .fromJson(json);

      case "ThreadCommentLikeNotification":
        return Query$Notifications$Page$notifications$$ThreadCommentLikeNotification
            .fromJson(json);

      case "ThreadLikeNotification":
        return Query$Notifications$Page$notifications$$ThreadLikeNotification
            .fromJson(json);

      case "RelatedMediaAdditionNotification":
        return Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification
            .fromJson(json);

      case "MediaDataChangeNotification":
        return Query$Notifications$Page$notifications$$MediaDataChangeNotification
            .fromJson(json);

      case "MediaMergeNotification":
        return Query$Notifications$Page$notifications$$MediaMergeNotification
            .fromJson(json);

      case "MediaDeletionNotification":
        return Query$Notifications$Page$notifications$$MediaDeletionNotification
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$Notifications$Page$notifications(
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
    if (other is! Query$Notifications$Page$notifications ||
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

extension UtilityExtension$Query$Notifications$Page$notifications
    on Query$Notifications$Page$notifications {
  CopyWith$Query$Notifications$Page$notifications<
          Query$Notifications$Page$notifications>
      get copyWith => CopyWith$Query$Notifications$Page$notifications(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$Notifications$Page$notifications$$AiringNotification)
        airingNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$FollowingNotification)
        followingNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityMessageNotification)
        activityMessageNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityMentionNotification)
        activityMentionNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityReplyNotification)
        activityReplyNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification)
        activityReplySubscribedNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityLikeNotification)
        activityLikeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ActivityReplyLikeNotification)
        activityReplyLikeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentMentionNotification)
        threadCommentMentionNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentReplyNotification)
        threadCommentReplyNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification)
        threadCommentSubscribedNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentLikeNotification)
        threadCommentLikeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$ThreadLikeNotification)
        threadLikeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification)
        relatedMediaAdditionNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$MediaDataChangeNotification)
        mediaDataChangeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$MediaMergeNotification)
        mediaMergeNotification,
    required _T Function(
            Query$Notifications$Page$notifications$$MediaDeletionNotification)
        mediaDeletionNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AiringNotification":
        return airingNotification(
            this as Query$Notifications$Page$notifications$$AiringNotification);

      case "FollowingNotification":
        return followingNotification(this
            as Query$Notifications$Page$notifications$$FollowingNotification);

      case "ActivityMessageNotification":
        return activityMessageNotification(this
            as Query$Notifications$Page$notifications$$ActivityMessageNotification);

      case "ActivityMentionNotification":
        return activityMentionNotification(this
            as Query$Notifications$Page$notifications$$ActivityMentionNotification);

      case "ActivityReplyNotification":
        return activityReplyNotification(this
            as Query$Notifications$Page$notifications$$ActivityReplyNotification);

      case "ActivityReplySubscribedNotification":
        return activityReplySubscribedNotification(this
            as Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification);

      case "ActivityLikeNotification":
        return activityLikeNotification(this
            as Query$Notifications$Page$notifications$$ActivityLikeNotification);

      case "ActivityReplyLikeNotification":
        return activityReplyLikeNotification(this
            as Query$Notifications$Page$notifications$$ActivityReplyLikeNotification);

      case "ThreadCommentMentionNotification":
        return threadCommentMentionNotification(this
            as Query$Notifications$Page$notifications$$ThreadCommentMentionNotification);

      case "ThreadCommentReplyNotification":
        return threadCommentReplyNotification(this
            as Query$Notifications$Page$notifications$$ThreadCommentReplyNotification);

      case "ThreadCommentSubscribedNotification":
        return threadCommentSubscribedNotification(this
            as Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification);

      case "ThreadCommentLikeNotification":
        return threadCommentLikeNotification(this
            as Query$Notifications$Page$notifications$$ThreadCommentLikeNotification);

      case "ThreadLikeNotification":
        return threadLikeNotification(this
            as Query$Notifications$Page$notifications$$ThreadLikeNotification);

      case "RelatedMediaAdditionNotification":
        return relatedMediaAdditionNotification(this
            as Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification);

      case "MediaDataChangeNotification":
        return mediaDataChangeNotification(this
            as Query$Notifications$Page$notifications$$MediaDataChangeNotification);

      case "MediaMergeNotification":
        return mediaMergeNotification(this
            as Query$Notifications$Page$notifications$$MediaMergeNotification);

      case "MediaDeletionNotification":
        return mediaDeletionNotification(this
            as Query$Notifications$Page$notifications$$MediaDeletionNotification);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$Notifications$Page$notifications$$AiringNotification)?
        airingNotification,
    _T Function(Query$Notifications$Page$notifications$$FollowingNotification)?
        followingNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityMessageNotification)?
        activityMessageNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityMentionNotification)?
        activityMentionNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityReplyNotification)?
        activityReplyNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification)?
        activityReplySubscribedNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityLikeNotification)?
        activityLikeNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ActivityReplyLikeNotification)?
        activityReplyLikeNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentMentionNotification)?
        threadCommentMentionNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentReplyNotification)?
        threadCommentReplyNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification)?
        threadCommentSubscribedNotification,
    _T Function(
            Query$Notifications$Page$notifications$$ThreadCommentLikeNotification)?
        threadCommentLikeNotification,
    _T Function(Query$Notifications$Page$notifications$$ThreadLikeNotification)?
        threadLikeNotification,
    _T Function(
            Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification)?
        relatedMediaAdditionNotification,
    _T Function(
            Query$Notifications$Page$notifications$$MediaDataChangeNotification)?
        mediaDataChangeNotification,
    _T Function(Query$Notifications$Page$notifications$$MediaMergeNotification)?
        mediaMergeNotification,
    _T Function(
            Query$Notifications$Page$notifications$$MediaDeletionNotification)?
        mediaDeletionNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AiringNotification":
        if (airingNotification != null) {
          return airingNotification(this
              as Query$Notifications$Page$notifications$$AiringNotification);
        } else {
          return orElse();
        }

      case "FollowingNotification":
        if (followingNotification != null) {
          return followingNotification(this
              as Query$Notifications$Page$notifications$$FollowingNotification);
        } else {
          return orElse();
        }

      case "ActivityMessageNotification":
        if (activityMessageNotification != null) {
          return activityMessageNotification(this
              as Query$Notifications$Page$notifications$$ActivityMessageNotification);
        } else {
          return orElse();
        }

      case "ActivityMentionNotification":
        if (activityMentionNotification != null) {
          return activityMentionNotification(this
              as Query$Notifications$Page$notifications$$ActivityMentionNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyNotification":
        if (activityReplyNotification != null) {
          return activityReplyNotification(this
              as Query$Notifications$Page$notifications$$ActivityReplyNotification);
        } else {
          return orElse();
        }

      case "ActivityReplySubscribedNotification":
        if (activityReplySubscribedNotification != null) {
          return activityReplySubscribedNotification(this
              as Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification);
        } else {
          return orElse();
        }

      case "ActivityLikeNotification":
        if (activityLikeNotification != null) {
          return activityLikeNotification(this
              as Query$Notifications$Page$notifications$$ActivityLikeNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyLikeNotification":
        if (activityReplyLikeNotification != null) {
          return activityReplyLikeNotification(this
              as Query$Notifications$Page$notifications$$ActivityReplyLikeNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentMentionNotification":
        if (threadCommentMentionNotification != null) {
          return threadCommentMentionNotification(this
              as Query$Notifications$Page$notifications$$ThreadCommentMentionNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentReplyNotification":
        if (threadCommentReplyNotification != null) {
          return threadCommentReplyNotification(this
              as Query$Notifications$Page$notifications$$ThreadCommentReplyNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentSubscribedNotification":
        if (threadCommentSubscribedNotification != null) {
          return threadCommentSubscribedNotification(this
              as Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentLikeNotification":
        if (threadCommentLikeNotification != null) {
          return threadCommentLikeNotification(this
              as Query$Notifications$Page$notifications$$ThreadCommentLikeNotification);
        } else {
          return orElse();
        }

      case "ThreadLikeNotification":
        if (threadLikeNotification != null) {
          return threadLikeNotification(this
              as Query$Notifications$Page$notifications$$ThreadLikeNotification);
        } else {
          return orElse();
        }

      case "RelatedMediaAdditionNotification":
        if (relatedMediaAdditionNotification != null) {
          return relatedMediaAdditionNotification(this
              as Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification);
        } else {
          return orElse();
        }

      case "MediaDataChangeNotification":
        if (mediaDataChangeNotification != null) {
          return mediaDataChangeNotification(this
              as Query$Notifications$Page$notifications$$MediaDataChangeNotification);
        } else {
          return orElse();
        }

      case "MediaMergeNotification":
        if (mediaMergeNotification != null) {
          return mediaMergeNotification(this
              as Query$Notifications$Page$notifications$$MediaMergeNotification);
        } else {
          return orElse();
        }

      case "MediaDeletionNotification":
        if (mediaDeletionNotification != null) {
          return mediaDeletionNotification(this
              as Query$Notifications$Page$notifications$$MediaDeletionNotification);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$Notifications$Page$notifications<TRes> {
  factory CopyWith$Query$Notifications$Page$notifications(
    Query$Notifications$Page$notifications instance,
    TRes Function(Query$Notifications$Page$notifications) then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications;

  factory CopyWith$Query$Notifications$Page$notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$Notifications$Page$notifications<TRes>
    implements CopyWith$Query$Notifications$Page$notifications<TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications _instance;

  final TRes Function(Query$Notifications$Page$notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$Notifications$Page$notifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications<TRes>
    implements CopyWith$Query$Notifications$Page$notifications<TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$Notifications$Page$notifications$$AiringNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$AiringNotification({
    required this.id,
    this.type,
    required this.episode,
    this.contexts,
    this.media,
    this.createdAt,
    this.$__typename = 'AiringNotification',
  });

  factory Query$Notifications$Page$notifications$$AiringNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$episode = json['episode'];
    final l$contexts = json['contexts'];
    final l$media = json['media'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$AiringNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      episode: (l$episode as int),
      contexts:
          (l$contexts as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final int episode;

  final List<String?>? contexts;

  final Fragment$MediaFragment? media;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$contexts = contexts;
    _resultData['contexts'] = l$contexts?.map((e) => e).toList();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$episode = episode;
    final l$contexts = contexts;
    final l$media = media;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$episode,
      l$contexts == null ? null : Object.hashAll(l$contexts.map((v) => v)),
      l$media,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Notifications$Page$notifications$$AiringNotification ||
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
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$contexts = contexts;
    final lOther$contexts = other.contexts;
    if (l$contexts != null && lOther$contexts != null) {
      if (l$contexts.length != lOther$contexts.length) {
        return false;
      }
      for (int i = 0; i < l$contexts.length; i++) {
        final l$contexts$entry = l$contexts[i];
        final lOther$contexts$entry = lOther$contexts[i];
        if (l$contexts$entry != lOther$contexts$entry) {
          return false;
        }
      }
    } else if (l$contexts != lOther$contexts) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$AiringNotification
    on Query$Notifications$Page$notifications$$AiringNotification {
  CopyWith$Query$Notifications$Page$notifications$$AiringNotification<
          Query$Notifications$Page$notifications$$AiringNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$AiringNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$AiringNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$AiringNotification(
    Query$Notifications$Page$notifications$$AiringNotification instance,
    TRes Function(Query$Notifications$Page$notifications$$AiringNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$AiringNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$AiringNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$AiringNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    int? episode,
    List<String?>? contexts,
    Fragment$MediaFragment? media,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$AiringNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$AiringNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$AiringNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$AiringNotification _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$AiringNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? episode = _undefined,
    Object? contexts = _undefined,
    Object? media = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$AiringNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        contexts: contexts == _undefined
            ? _instance.contexts
            : (contexts as List<String?>?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$AiringNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$AiringNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$AiringNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    int? episode,
    List<String?>? contexts,
    Fragment$MediaFragment? media,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$FollowingNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$FollowingNotification({
    required this.id,
    this.type,
    this.context,
    this.user,
    this.createdAt,
    this.$__typename = 'FollowingNotification',
  });

  factory Query$Notifications$Page$notifications$$FollowingNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$FollowingNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$FollowingNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$FollowingNotification
    on Query$Notifications$Page$notifications$$FollowingNotification {
  CopyWith$Query$Notifications$Page$notifications$$FollowingNotification<
          Query$Notifications$Page$notifications$$FollowingNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$FollowingNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$FollowingNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$FollowingNotification(
    Query$Notifications$Page$notifications$$FollowingNotification instance,
    TRes Function(Query$Notifications$Page$notifications$$FollowingNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$FollowingNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$FollowingNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$FollowingNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$FollowingNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$FollowingNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$FollowingNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$FollowingNotification _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$FollowingNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$FollowingNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$FollowingNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$FollowingNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$FollowingNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityMessageNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityMessageNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityMessageNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityMessageNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityMessageNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityMessageNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityMessageNotification
    on Query$Notifications$Page$notifications$$ActivityMessageNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification<
          Query$Notifications$Page$notifications$$ActivityMessageNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification(
    Query$Notifications$Page$notifications$$ActivityMessageNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityMessageNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityMessageNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ActivityMessageNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$ActivityMessageNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityMessageNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMessageNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityMentionNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityMentionNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityMentionNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityMentionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityMentionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityMentionNotification
    on Query$Notifications$Page$notifications$$ActivityMentionNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification<
          Query$Notifications$Page$notifications$$ActivityMentionNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification(
    Query$Notifications$Page$notifications$$ActivityMentionNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityMentionNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityMentionNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ActivityMentionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$ActivityMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityMentionNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityReplyNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityReplyNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplyNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityReplyNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityReplyNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityReplyNotification
    on Query$Notifications$Page$notifications$$ActivityReplyNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification<
          Query$Notifications$Page$notifications$$ActivityReplyNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification(
    Query$Notifications$Page$notifications$$ActivityReplyNotification instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityReplyNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityReplyNotification
      _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$ActivityReplyNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$ActivityReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplyNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplySubscribedNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification
    on Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
          Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
    Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplySubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityLikeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityLikeNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityLikeNotification
    on Query$Notifications$Page$notifications$$ActivityLikeNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification<
          Query$Notifications$Page$notifications$$ActivityLikeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification(
    Query$Notifications$Page$notifications$$ActivityLikeNotification instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityLikeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityLikeNotification
      _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$ActivityLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$ActivityLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ActivityReplyLikeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ActivityReplyLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.activityId,
    this.user,
    this.createdAt,
    this.$__typename = 'ActivityReplyLikeNotification',
  });

  factory Query$Notifications$Page$notifications$$ActivityReplyLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int activityId;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$activityId = activityId;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$activityId,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ActivityReplyLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification
    on Query$Notifications$Page$notifications$$ActivityReplyLikeNotification {
  CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
          Query$Notifications$Page$notifications$$ActivityReplyLikeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
    Query$Notifications$Page$notifications$$ActivityReplyLikeNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ActivityReplyLikeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ActivityReplyLikeNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ActivityReplyLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ActivityReplyLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? activityId,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadCommentMentionNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ThreadCommentMentionNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentMentionNotification',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int commentId;

  final Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread?
      thread;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentMentionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification
    on Query$Notifications$Page$notifications$$ThreadCommentMentionNotification {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
    Query$Notifications$Page$notifications$$ThreadCommentMentionNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentMentionNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
      TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentMentionNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
              .stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread {
  Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
    on Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
    Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentMentionNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notifications$Page$notifications$$ThreadCommentReplyNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ThreadCommentReplyNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentReplyNotification',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int commentId;

  final Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread?
      thread;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentReplyNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification
    on Query$Notifications$Page$notifications$$ThreadCommentReplyNotification {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
    Query$Notifications$Page$notifications$$ThreadCommentReplyNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentReplyNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
      TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentReplyNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
              .stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread {
  Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
    on Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
    Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentReplyNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentSubscribedNotification',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int commentId;

  final Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
      thread;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification
    on Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
    Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
      TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
              .stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread {
  Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
    on Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
    Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notifications$Page$notifications$$ThreadCommentLikeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ThreadCommentLikeNotification({
    required this.id,
    this.type,
    this.context,
    required this.commentId,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadCommentLikeNotification',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$commentId = json['commentId'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      commentId: (l$commentId as int),
      thread: l$thread == null
          ? null
          : Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final int commentId;

  final Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread?
      thread;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$commentId = commentId;
    _resultData['commentId'] = l$commentId;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$commentId = commentId;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$commentId,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$commentId = commentId;
    final lOther$commentId = other.commentId;
    if (l$commentId != lOther$commentId) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification
    on Query$Notifications$Page$notifications$$ThreadCommentLikeNotification {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
    Query$Notifications$Page$notifications$$ThreadCommentLikeNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentLikeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
      TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentLikeNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? commentId = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        commentId: commentId == _undefined || commentId == null
            ? _instance.commentId
            : (commentId as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    int? commentId,
    Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
              .stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread {
  Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
    on Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread {
  CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
    Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadCommentLikeNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notifications$Page$notifications$$ThreadLikeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$ThreadLikeNotification({
    required this.id,
    this.type,
    this.context,
    this.thread,
    this.user,
    this.createdAt,
    this.$__typename = 'ThreadLikeNotification',
  });

  factory Query$Notifications$Page$notifications$$ThreadLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadLikeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      thread: l$thread == null
          ? null
          : Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final Query$Notifications$Page$notifications$$ThreadLikeNotification$thread?
      thread;

  final Fragment$UserFragment? user;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$thread = thread;
    final l$user = user;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$thread,
      l$user,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadLikeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadLikeNotification
    on Query$Notifications$Page$notifications$$ThreadLikeNotification {
  CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification<
          Query$Notifications$Page$notifications$$ThreadLikeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification(
    Query$Notifications$Page$notifications$$ThreadLikeNotification instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadLikeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Query$Notifications$Page$notifications$$ThreadLikeNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
      TRes> get thread;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadLikeNotification
      _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$ThreadLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$ThreadLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$Notifications$Page$notifications$$ThreadLikeNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Query$Notifications$Page$notifications$$ThreadLikeNotification$thread?
        thread,
    Fragment$UserFragment? user,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
              .stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$ThreadLikeNotification$thread {
  Query$Notifications$Page$notifications$$ThreadLikeNotification$thread({
    required this.id,
    this.title,
    this.$__typename = 'Thread',
  });

  factory Query$Notifications$Page$notifications$$ThreadLikeNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
      id: (l$id as int),
      title: (l$title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$ThreadLikeNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
    on Query$Notifications$Page$notifications$$ThreadLikeNotification$thread {
  CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
          Query$Notifications$Page$notifications$$ThreadLikeNotification$thread>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
    Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$ThreadLikeNotification$thread)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread;

  factory CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$ThreadLikeNotification$thread
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$ThreadLikeNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined ? _instance.title : (title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$ThreadLikeNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.createdAt,
    this.$__typename = 'RelatedMediaAdditionNotification',
  });

  factory Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final Fragment$MediaFragment? media;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification
    on Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification {
  CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
          Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
    Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$RelatedMediaAdditionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$MediaDataChangeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$MediaDataChangeNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDataChangeNotification',
  });

  factory Query$Notifications$Page$notifications$$MediaDataChangeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$MediaDataChangeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final Fragment$MediaFragment? media;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$MediaDataChangeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$MediaDataChangeNotification
    on Query$Notifications$Page$notifications$$MediaDataChangeNotification {
  CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
          Query$Notifications$Page$notifications$$MediaDataChangeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification(
    Query$Notifications$Page$notifications$$MediaDataChangeNotification
        instance,
    TRes Function(
            Query$Notifications$Page$notifications$$MediaDataChangeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$MediaDataChangeNotification
      _instance;

  final TRes Function(
          Query$Notifications$Page$notifications$$MediaDataChangeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$MediaDataChangeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaDataChangeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDataChangeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$MediaMergeNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$MediaMergeNotification({
    required this.id,
    this.type,
    this.context,
    this.media,
    this.deletedMediaTitles,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaMergeNotification',
  });

  factory Query$Notifications$Page$notifications$$MediaMergeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$media = json['media'];
    final l$deletedMediaTitles = json['deletedMediaTitles'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$MediaMergeNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      deletedMediaTitles: (l$deletedMediaTitles as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final Fragment$MediaFragment? media;

  final List<String?>? deletedMediaTitles;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$deletedMediaTitles = deletedMediaTitles;
    _resultData['deletedMediaTitles'] =
        l$deletedMediaTitles?.map((e) => e).toList();
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$media = media;
    final l$deletedMediaTitles = deletedMediaTitles;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$media,
      l$deletedMediaTitles == null
          ? null
          : Object.hashAll(l$deletedMediaTitles.map((v) => v)),
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$MediaMergeNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$deletedMediaTitles = deletedMediaTitles;
    final lOther$deletedMediaTitles = other.deletedMediaTitles;
    if (l$deletedMediaTitles != null && lOther$deletedMediaTitles != null) {
      if (l$deletedMediaTitles.length != lOther$deletedMediaTitles.length) {
        return false;
      }
      for (int i = 0; i < l$deletedMediaTitles.length; i++) {
        final l$deletedMediaTitles$entry = l$deletedMediaTitles[i];
        final lOther$deletedMediaTitles$entry = lOther$deletedMediaTitles[i];
        if (l$deletedMediaTitles$entry != lOther$deletedMediaTitles$entry) {
          return false;
        }
      }
    } else if (l$deletedMediaTitles != lOther$deletedMediaTitles) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$MediaMergeNotification
    on Query$Notifications$Page$notifications$$MediaMergeNotification {
  CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification<
          Query$Notifications$Page$notifications$$MediaMergeNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification(
    Query$Notifications$Page$notifications$$MediaMergeNotification instance,
    TRes Function(
            Query$Notifications$Page$notifications$$MediaMergeNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$MediaMergeNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaMergeNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    List<String?>? deletedMediaTitles,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$MediaMergeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$MediaMergeNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$MediaMergeNotification
      _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$MediaMergeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? media = _undefined,
    Object? deletedMediaTitles = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$MediaMergeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        deletedMediaTitles: deletedMediaTitles == _undefined
            ? _instance.deletedMediaTitles
            : (deletedMediaTitles as List<String?>?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaMergeNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaMergeNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaMergeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    Fragment$MediaFragment? media,
    List<String?>? deletedMediaTitles,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$Notifications$Page$notifications$$MediaDeletionNotification
    implements Query$Notifications$Page$notifications {
  Query$Notifications$Page$notifications$$MediaDeletionNotification({
    required this.id,
    this.type,
    this.context,
    this.deletedMediaTitle,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDeletionNotification',
  });

  factory Query$Notifications$Page$notifications$$MediaDeletionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$deletedMediaTitle = json['deletedMediaTitle'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$Notifications$Page$notifications$$MediaDeletionNotification(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      context: (l$context as String?),
      deletedMediaTitle: (l$deletedMediaTitle as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$NotificationType? type;

  final String? context;

  final String? deletedMediaTitle;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$deletedMediaTitle = deletedMediaTitle;
    _resultData['deletedMediaTitle'] = l$deletedMediaTitle;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$context = context;
    final l$deletedMediaTitle = deletedMediaTitle;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$context,
      l$deletedMediaTitle,
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$Notifications$Page$notifications$$MediaDeletionNotification ||
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
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$deletedMediaTitle = deletedMediaTitle;
    final lOther$deletedMediaTitle = other.deletedMediaTitle;
    if (l$deletedMediaTitle != lOther$deletedMediaTitle) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Query$Notifications$Page$notifications$$MediaDeletionNotification
    on Query$Notifications$Page$notifications$$MediaDeletionNotification {
  CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification<
          Query$Notifications$Page$notifications$$MediaDeletionNotification>
      get copyWith =>
          CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification<
    TRes> {
  factory CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification(
    Query$Notifications$Page$notifications$$MediaDeletionNotification instance,
    TRes Function(
            Query$Notifications$Page$notifications$$MediaDeletionNotification)
        then,
  ) = _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification;

  factory CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification;

  TRes call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    String? deletedMediaTitle,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification<
            TRes> {
  _CopyWithImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification(
    this._instance,
    this._then,
  );

  final Query$Notifications$Page$notifications$$MediaDeletionNotification
      _instance;

  final TRes Function(
      Query$Notifications$Page$notifications$$MediaDeletionNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? deletedMediaTitle = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Notifications$Page$notifications$$MediaDeletionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        deletedMediaTitle: deletedMediaTitle == _undefined
            ? _instance.deletedMediaTitle
            : (deletedMediaTitle as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification<
        TRes>
    implements
        CopyWith$Query$Notifications$Page$notifications$$MediaDeletionNotification<
            TRes> {
  _CopyWithStubImpl$Query$Notifications$Page$notifications$$MediaDeletionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$NotificationType? type,
    String? context,
    String? deletedMediaTitle,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}
