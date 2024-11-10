import '../schema.graphql.dart';
import 'fuzzy_date.graphql.dart';
import 'media.graphql.dart';
import 'media_entry.graphql.dart';
import 'package:gql/ast.dart';

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
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaFragment,
]);
