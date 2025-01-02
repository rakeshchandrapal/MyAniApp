import 'package:gql/ast.dart';

class Fragment$StudioFragment {
  Fragment$StudioFragment({
    required this.id,
    required this.name,
    this.$__typename = 'Studio',
  });

  factory Fragment$StudioFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$StudioFragment(
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
    if (other is! Fragment$StudioFragment || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$StudioFragment on Fragment$StudioFragment {
  CopyWith$Fragment$StudioFragment<Fragment$StudioFragment> get copyWith =>
      CopyWith$Fragment$StudioFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StudioFragment<TRes> {
  factory CopyWith$Fragment$StudioFragment(
    Fragment$StudioFragment instance,
    TRes Function(Fragment$StudioFragment) then,
  ) = _CopyWithImpl$Fragment$StudioFragment;

  factory CopyWith$Fragment$StudioFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StudioFragment;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StudioFragment<TRes>
    implements CopyWith$Fragment$StudioFragment<TRes> {
  _CopyWithImpl$Fragment$StudioFragment(
    this._instance,
    this._then,
  );

  final Fragment$StudioFragment _instance;

  final TRes Function(Fragment$StudioFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StudioFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$StudioFragment<TRes>
    implements CopyWith$Fragment$StudioFragment<TRes> {
  _CopyWithStubImpl$Fragment$StudioFragment(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionStudioFragment = FragmentDefinitionNode(
  name: NameNode(value: 'StudioFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Studio'),
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
);
const documentNodeFragmentStudioFragment = DocumentNode(definitions: [
  fragmentDefinitionStudioFragment,
]);
