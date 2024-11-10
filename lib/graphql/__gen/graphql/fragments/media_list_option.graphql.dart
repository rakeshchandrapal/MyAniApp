import 'package:gql/ast.dart';

class Fragment$MediaListOptions {
  Fragment$MediaListOptions({
    this.sectionOrder,
    this.customLists,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory Fragment$MediaListOptions.fromJson(Map<String, dynamic> json) {
    final l$sectionOrder = json['sectionOrder'];
    final l$customLists = json['customLists'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaListOptions(
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? sectionOrder;

  final List<String?>? customLists;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sectionOrder = sectionOrder;
    final l$customLists = customLists;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaListOptions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
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

extension UtilityExtension$Fragment$MediaListOptions
    on Fragment$MediaListOptions {
  CopyWith$Fragment$MediaListOptions<Fragment$MediaListOptions> get copyWith =>
      CopyWith$Fragment$MediaListOptions(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaListOptions<TRes> {
  factory CopyWith$Fragment$MediaListOptions(
    Fragment$MediaListOptions instance,
    TRes Function(Fragment$MediaListOptions) then,
  ) = _CopyWithImpl$Fragment$MediaListOptions;

  factory CopyWith$Fragment$MediaListOptions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaListOptions;

  TRes call({
    List<String?>? sectionOrder,
    List<String?>? customLists,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaListOptions<TRes>
    implements CopyWith$Fragment$MediaListOptions<TRes> {
  _CopyWithImpl$Fragment$MediaListOptions(
    this._instance,
    this._then,
  );

  final Fragment$MediaListOptions _instance;

  final TRes Function(Fragment$MediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sectionOrder = _undefined,
    Object? customLists = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaListOptions(
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaListOptions<TRes>
    implements CopyWith$Fragment$MediaListOptions<TRes> {
  _CopyWithStubImpl$Fragment$MediaListOptions(this._res);

  TRes _res;

  call({
    List<String?>? sectionOrder,
    List<String?>? customLists,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaListOptions = FragmentDefinitionNode(
  name: NameNode(value: 'MediaListOptions'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaListTypeOptions'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'sectionOrder'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'customLists'),
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
);
const documentNodeFragmentMediaListOptions = DocumentNode(definitions: [
  fragmentDefinitionMediaListOptions,
]);
