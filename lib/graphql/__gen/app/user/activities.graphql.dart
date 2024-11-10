import '../../graphql/fragments/list_activity.graphql.dart';
import '../../graphql/fragments/media.graphql.dart';
import '../../graphql/fragments/message_activity.graphql.dart';
import '../../graphql/fragments/page_info.graphql.dart';
import '../../graphql/fragments/text_activity.graphql.dart';
import '../../graphql/fragments/user.graphql.dart';
import '../../graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$UserActivities {
  factory Variables$Query$UserActivities({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      Variables$Query$UserActivities._({
        if (userId != null) r'userId': userId,
        if (activityType != null) r'activityType': activityType,
        if (page != null) r'page': page,
      });

  Variables$Query$UserActivities._(this._$data);

  factory Variables$Query$UserActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('activityType')) {
      final l$activityType = data['activityType'];
      result$data['activityType'] = l$activityType == null
          ? null
          : fromJson$Enum$ActivityType((l$activityType as String));
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$UserActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  Enum$ActivityType? get activityType =>
      (_$data['activityType'] as Enum$ActivityType?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('activityType')) {
      final l$activityType = activityType;
      result$data['activityType'] = l$activityType == null
          ? null
          : toJson$Enum$ActivityType(l$activityType);
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserActivities<Variables$Query$UserActivities>
      get copyWith => CopyWith$Variables$Query$UserActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserActivities) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$activityType = activityType;
    final lOther$activityType = other.activityType;
    if (_$data.containsKey('activityType') !=
        other._$data.containsKey('activityType')) {
      return false;
    }
    if (l$activityType != lOther$activityType) {
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
    final l$userId = userId;
    final l$activityType = activityType;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('activityType') ? l$activityType : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserActivities<TRes> {
  factory CopyWith$Variables$Query$UserActivities(
    Variables$Query$UserActivities instance,
    TRes Function(Variables$Query$UserActivities) then,
  ) = _CopyWithImpl$Variables$Query$UserActivities;

  factory CopyWith$Variables$Query$UserActivities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserActivities;

  TRes call({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$UserActivities<TRes>
    implements CopyWith$Variables$Query$UserActivities<TRes> {
  _CopyWithImpl$Variables$Query$UserActivities(
    this._instance,
    this._then,
  );

  final Variables$Query$UserActivities _instance;

  final TRes Function(Variables$Query$UserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? activityType = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$UserActivities._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (activityType != _undefined)
          'activityType': (activityType as Enum$ActivityType?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserActivities<TRes>
    implements CopyWith$Variables$Query$UserActivities<TRes> {
  _CopyWithStubImpl$Variables$Query$UserActivities(this._res);

  TRes _res;

  call({
    int? userId,
    Enum$ActivityType? activityType,
    int? page,
  }) =>
      _res;
}

class Query$UserActivities {
  Query$UserActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$UserActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities(
      Page: l$Page == null
          ? null
          : Query$UserActivities$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserActivities$Page? Page;

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
    if (!(other is Query$UserActivities) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserActivities on Query$UserActivities {
  CopyWith$Query$UserActivities<Query$UserActivities> get copyWith =>
      CopyWith$Query$UserActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserActivities<TRes> {
  factory CopyWith$Query$UserActivities(
    Query$UserActivities instance,
    TRes Function(Query$UserActivities) then,
  ) = _CopyWithImpl$Query$UserActivities;

  factory CopyWith$Query$UserActivities.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities;

  TRes call({
    Query$UserActivities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$UserActivities<TRes>
    implements CopyWith$Query$UserActivities<TRes> {
  _CopyWithImpl$Query$UserActivities(
    this._instance,
    this._then,
  );

  final Query$UserActivities _instance;

  final TRes Function(Query$UserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$UserActivities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$UserActivities$Page.stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities<TRes>
    implements CopyWith$Query$UserActivities<TRes> {
  _CopyWithStubImpl$Query$UserActivities(this._res);

  TRes _res;

  call({
    Query$UserActivities$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page<TRes> get Page =>
      CopyWith$Query$UserActivities$Page.stub(_res);
}

const documentNodeQueryUserActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserActivities'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityType')),
        type: NamedTypeNode(
          name: NameNode(value: 'ActivityType'),
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
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '25'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'activityType')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'PINNED')),
                  EnumValueNode(name: NameNode(value: 'ID_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'TextActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TextActivity'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'ListActivity'),
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
              InlineFragmentNode(
                typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                  name: NameNode(value: 'MessageActivity'),
                  isNonNull: false,
                )),
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MessageActivity'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionTextActivity,
  fragmentDefinitionUserFragment,
  fragmentDefinitionListActivity,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionMessageActivity,
]);

class Query$UserActivities$Page {
  Query$UserActivities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$UserActivities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserActivities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$UserActivities$Page$activities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserActivities$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtension$Query$UserActivities$Page
    on Query$UserActivities$Page {
  CopyWith$Query$UserActivities$Page<Query$UserActivities$Page> get copyWith =>
      CopyWith$Query$UserActivities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserActivities$Page<TRes> {
  factory CopyWith$Query$UserActivities$Page(
    Query$UserActivities$Page instance,
    TRes Function(Query$UserActivities$Page) then,
  ) = _CopyWithImpl$Query$UserActivities$Page;

  factory CopyWith$Query$UserActivities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserActivities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$UserActivities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$UserActivities$Page$activities<
                      Query$UserActivities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserActivities$Page<TRes>
    implements CopyWith$Query$UserActivities$Page<TRes> {
  _CopyWithImpl$Query$UserActivities$Page(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page _instance;

  final TRes Function(Query$UserActivities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$UserActivities$Page$activities?>?),
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

  TRes activities(
          Iterable<Query$UserActivities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$UserActivities$Page$activities<
                          Query$UserActivities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$UserActivities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserActivities$Page<TRes>
    implements CopyWith$Query$UserActivities$Page<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$UserActivities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  activities(_fn) => _res;
}

class Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities({required this.$__typename});

  factory Query$UserActivities$Page$activities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "TextActivity":
        return Query$UserActivities$Page$activities$$TextActivity.fromJson(
            json);

      case "ListActivity":
        return Query$UserActivities$Page$activities$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Query$UserActivities$Page$activities$$MessageActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Query$UserActivities$Page$activities(
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
    if (!(other is Query$UserActivities$Page$activities) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities
    on Query$UserActivities$Page$activities {
  CopyWith$Query$UserActivities$Page$activities<
          Query$UserActivities$Page$activities>
      get copyWith => CopyWith$Query$UserActivities$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$UserActivities$Page$activities$$TextActivity)
        textActivity,
    required _T Function(Query$UserActivities$Page$activities$$ListActivity)
        listActivity,
    required _T Function(Query$UserActivities$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        return textActivity(
            this as Query$UserActivities$Page$activities$$TextActivity);

      case "ListActivity":
        return listActivity(
            this as Query$UserActivities$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$UserActivities$Page$activities$$MessageActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$UserActivities$Page$activities$$TextActivity)?
        textActivity,
    _T Function(Query$UserActivities$Page$activities$$ListActivity)?
        listActivity,
    _T Function(Query$UserActivities$Page$activities$$MessageActivity)?
        messageActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$UserActivities$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$UserActivities$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$UserActivities$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$UserActivities$Page$activities<TRes> {
  factory CopyWith$Query$UserActivities$Page$activities(
    Query$UserActivities$Page$activities instance,
    TRes Function(Query$UserActivities$Page$activities) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities;

  factory CopyWith$Query$UserActivities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$UserActivities$Page$activities<TRes>
    implements CopyWith$Query$UserActivities$Page$activities<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities _instance;

  final TRes Function(Query$UserActivities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$UserActivities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities<TRes>
    implements CopyWith$Query$UserActivities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$UserActivities$Page$activities$$TextActivity
    implements Fragment$TextActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$TextActivity({
    required this.id,
    this.userId,
    this.type,
    required this.replyCount,
    this.text,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.$__typename = 'TextActivity',
  });

  factory Query$UserActivities$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$replyCount = json['replyCount'];
    final l$text = json['text'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$TextActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      replyCount: (l$replyCount as int),
      text: (l$text as String?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final int replyCount;

  final String? text;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$replyCount = replyCount;
    final l$text = text;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$replyCount,
      l$text,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserActivities$Page$activities$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$UserActivities$Page$activities$$TextActivity
    on Query$UserActivities$Page$activities$$TextActivity {
  CopyWith$Query$UserActivities$Page$activities$$TextActivity<
          Query$UserActivities$Page$activities$$TextActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$TextActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity(
    Query$UserActivities$Page$activities$$TextActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? replyCount = _undefined,
    Object? text = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        text: text == _undefined ? _instance.text : (text as String?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
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

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    int? replyCount,
    String? text,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

class Query$UserActivities$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$ListActivity({
    required this.id,
    this.userId,
    this.type,
    this.status,
    this.progress,
    required this.replyCount,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.user,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$UserActivities$Page$activities$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$progress = json['progress'];
    final l$replyCount = json['replyCount'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity(
      id: (l$id as int),
      userId: (l$userId as int?),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      status: (l$status as String?),
      progress: (l$progress as String?),
      replyCount: (l$replyCount as int),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? userId;

  final Enum$ActivityType? type;

  final String? status;

  final String? progress;

  final int replyCount;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final Fragment$UserFragment? user;

  final Fragment$MediaFragment? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$status = status;
    _resultData['status'] = l$status;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$type = type;
    final l$status = status;
    final l$progress = progress;
    final l$replyCount = replyCount;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$type,
      l$status,
      l$progress,
      l$replyCount,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserActivities$Page$activities$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity
    on Query$UserActivities$Page$activities$$ListActivity {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity<
          Query$UserActivities$Page$activities$$ListActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity(
    Query$UserActivities$Page$activities$$ListActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity;

  TRes call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get user;
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? progress = _undefined,
    Object? replyCount = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        status: status == _undefined ? _instance.status : (status as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
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

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    int? userId,
    Enum$ActivityType? type,
    String? status,
    String? progress,
    int? replyCount,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    Fragment$UserFragment? user,
    Fragment$MediaFragment? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Query$UserActivities$Page$activities$$MessageActivity
    implements Fragment$MessageActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$MessageActivity({
    required this.id,
    this.type,
    this.message,
    required this.replyCount,
    this.isPrivate,
    this.isLocked,
    this.isSubscribed,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.userId,
    this.messenger,
    this.recipient,
    this.$__typename = 'MessageActivity',
  });

  factory Query$UserActivities$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$message = json['message'];
    final l$replyCount = json['replyCount'];
    final l$isPrivate = json['isPrivate'];
    final l$isLocked = json['isLocked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$userId = json['userId'];
    final l$messenger = json['messenger'];
    final l$recipient = json['recipient'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$MessageActivity(
      id: (l$id as int),
      type: l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String)),
      message: (l$message as String?),
      replyCount: (l$replyCount as int),
      isPrivate: (l$isPrivate as bool?),
      isLocked: (l$isLocked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      userId: (l$userId as int?),
      messenger: l$messenger == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Fragment$UserFragment.fromJson(
              (l$recipient as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$ActivityType? type;

  final String? message;

  final int replyCount;

  final bool? isPrivate;

  final bool? isLocked;

  final bool? isSubscribed;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final int? userId;

  final Fragment$UserFragment? messenger;

  final Fragment$UserFragment? recipient;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ActivityType(l$type);
    final l$message = message;
    _resultData['message'] = l$message;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$isLocked = isLocked;
    _resultData['isLocked'] = l$isLocked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$message = message;
    final l$replyCount = replyCount;
    final l$isPrivate = isPrivate;
    final l$isLocked = isLocked;
    final l$isSubscribed = isSubscribed;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$userId = userId;
    final l$messenger = messenger;
    final l$recipient = recipient;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$message,
      l$replyCount,
      l$isPrivate,
      l$isLocked,
      l$isSubscribed,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$userId,
      l$messenger,
      l$recipient,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserActivities$Page$activities$$MessageActivity) ||
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
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
      return false;
    }
    final l$isLocked = isLocked;
    final lOther$isLocked = other.isLocked;
    if (l$isLocked != lOther$isLocked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity
    on Query$UserActivities$Page$activities$$MessageActivity {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity<
          Query$UserActivities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity(
    Query$UserActivities$Page$activities$$MessageActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity;

  TRes call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$UserFragment? messenger,
    Fragment$UserFragment? recipient,
    String? $__typename,
  });
  CopyWith$Fragment$UserFragment<TRes> get messenger;
  CopyWith$Fragment$UserFragment<TRes> get recipient;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? message = _undefined,
    Object? replyCount = _undefined,
    Object? isPrivate = _undefined,
    Object? isLocked = _undefined,
    Object? isSubscribed = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? userId = _undefined,
    Object? messenger = _undefined,
    Object? recipient = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type:
            type == _undefined ? _instance.type : (type as Enum$ActivityType?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        isLocked:
            isLocked == _undefined ? _instance.isLocked : (isLocked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        userId: userId == _undefined ? _instance.userId : (userId as int?),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as Fragment$UserFragment?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserFragment<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$messenger, (e) => call(messenger: e));
  }

  CopyWith$Fragment$UserFragment<TRes> get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Enum$ActivityType? type,
    String? message,
    int? replyCount,
    bool? isPrivate,
    bool? isLocked,
    bool? isSubscribed,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    int? userId,
    Fragment$UserFragment? messenger,
    Fragment$UserFragment? recipient,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserFragment<TRes> get messenger =>
      CopyWith$Fragment$UserFragment.stub(_res);

  CopyWith$Fragment$UserFragment<TRes> get recipient =>
      CopyWith$Fragment$UserFragment.stub(_res);
}
