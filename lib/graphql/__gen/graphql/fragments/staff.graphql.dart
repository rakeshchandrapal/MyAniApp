import 'package:gql/ast.dart';

class Fragment$StaffFragment {
  Fragment$StaffFragment({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Fragment$StaffFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffFragment(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$StaffFragment$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$StaffFragment$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$StaffFragment$name? name;

  final Fragment$StaffFragment$image? image;

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
    if (!(other is Fragment$StaffFragment) ||
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

extension UtilityExtension$Fragment$StaffFragment on Fragment$StaffFragment {
  CopyWith$Fragment$StaffFragment<Fragment$StaffFragment> get copyWith =>
      CopyWith$Fragment$StaffFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StaffFragment<TRes> {
  factory CopyWith$Fragment$StaffFragment(
    Fragment$StaffFragment instance,
    TRes Function(Fragment$StaffFragment) then,
  ) = _CopyWithImpl$Fragment$StaffFragment;

  factory CopyWith$Fragment$StaffFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffFragment;

  TRes call({
    int? id,
    Fragment$StaffFragment$name? name,
    Fragment$StaffFragment$image? image,
    String? $__typename,
  });
  CopyWith$Fragment$StaffFragment$name<TRes> get name;
  CopyWith$Fragment$StaffFragment$image<TRes> get image;
}

class _CopyWithImpl$Fragment$StaffFragment<TRes>
    implements CopyWith$Fragment$StaffFragment<TRes> {
  _CopyWithImpl$Fragment$StaffFragment(
    this._instance,
    this._then,
  );

  final Fragment$StaffFragment _instance;

  final TRes Function(Fragment$StaffFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$StaffFragment$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$StaffFragment$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StaffFragment$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$StaffFragment$name.stub(_then(_instance))
        : CopyWith$Fragment$StaffFragment$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$StaffFragment$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$StaffFragment$image.stub(_then(_instance))
        : CopyWith$Fragment$StaffFragment$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$StaffFragment<TRes>
    implements CopyWith$Fragment$StaffFragment<TRes> {
  _CopyWithStubImpl$Fragment$StaffFragment(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$StaffFragment$name? name,
    Fragment$StaffFragment$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StaffFragment$name<TRes> get name =>
      CopyWith$Fragment$StaffFragment$name.stub(_res);

  CopyWith$Fragment$StaffFragment$image<TRes> get image =>
      CopyWith$Fragment$StaffFragment$image.stub(_res);
}

const fragmentDefinitionStaffFragment = FragmentDefinitionNode(
  name: NameNode(value: 'StaffFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Staff'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentStaffFragment = DocumentNode(definitions: [
  fragmentDefinitionStaffFragment,
]);

class Fragment$StaffFragment$name {
  Fragment$StaffFragment$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$StaffFragment$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffFragment$name(
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
    if (!(other is Fragment$StaffFragment$name) ||
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

extension UtilityExtension$Fragment$StaffFragment$name
    on Fragment$StaffFragment$name {
  CopyWith$Fragment$StaffFragment$name<Fragment$StaffFragment$name>
      get copyWith => CopyWith$Fragment$StaffFragment$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$StaffFragment$name<TRes> {
  factory CopyWith$Fragment$StaffFragment$name(
    Fragment$StaffFragment$name instance,
    TRes Function(Fragment$StaffFragment$name) then,
  ) = _CopyWithImpl$Fragment$StaffFragment$name;

  factory CopyWith$Fragment$StaffFragment$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffFragment$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StaffFragment$name<TRes>
    implements CopyWith$Fragment$StaffFragment$name<TRes> {
  _CopyWithImpl$Fragment$StaffFragment$name(
    this._instance,
    this._then,
  );

  final Fragment$StaffFragment$name _instance;

  final TRes Function(Fragment$StaffFragment$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffFragment$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$StaffFragment$name<TRes>
    implements CopyWith$Fragment$StaffFragment$name<TRes> {
  _CopyWithStubImpl$Fragment$StaffFragment$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$StaffFragment$image {
  Fragment$StaffFragment$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$StaffFragment$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffFragment$image(
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
    if (!(other is Fragment$StaffFragment$image) ||
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

extension UtilityExtension$Fragment$StaffFragment$image
    on Fragment$StaffFragment$image {
  CopyWith$Fragment$StaffFragment$image<Fragment$StaffFragment$image>
      get copyWith => CopyWith$Fragment$StaffFragment$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$StaffFragment$image<TRes> {
  factory CopyWith$Fragment$StaffFragment$image(
    Fragment$StaffFragment$image instance,
    TRes Function(Fragment$StaffFragment$image) then,
  ) = _CopyWithImpl$Fragment$StaffFragment$image;

  factory CopyWith$Fragment$StaffFragment$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffFragment$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StaffFragment$image<TRes>
    implements CopyWith$Fragment$StaffFragment$image<TRes> {
  _CopyWithImpl$Fragment$StaffFragment$image(
    this._instance,
    this._then,
  );

  final Fragment$StaffFragment$image _instance;

  final TRes Function(Fragment$StaffFragment$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffFragment$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$StaffFragment$image<TRes>
    implements CopyWith$Fragment$StaffFragment$image<TRes> {
  _CopyWithStubImpl$Fragment$StaffFragment$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
