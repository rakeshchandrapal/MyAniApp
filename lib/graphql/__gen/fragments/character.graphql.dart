import 'package:gql/ast.dart';

class Fragment$CharacterFragment {
  Fragment$CharacterFragment({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Fragment$CharacterFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterFragment(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$CharacterFragment$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$CharacterFragment$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CharacterFragment$name? name;

  final Fragment$CharacterFragment$image? image;

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
    if (other is! Fragment$CharacterFragment ||
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

extension UtilityExtension$Fragment$CharacterFragment
    on Fragment$CharacterFragment {
  CopyWith$Fragment$CharacterFragment<Fragment$CharacterFragment>
      get copyWith => CopyWith$Fragment$CharacterFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterFragment<TRes> {
  factory CopyWith$Fragment$CharacterFragment(
    Fragment$CharacterFragment instance,
    TRes Function(Fragment$CharacterFragment) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment;

  factory CopyWith$Fragment$CharacterFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment;

  TRes call({
    int? id,
    Fragment$CharacterFragment$name? name,
    Fragment$CharacterFragment$image? image,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterFragment$name<TRes> get name;
  CopyWith$Fragment$CharacterFragment$image<TRes> get image;
}

class _CopyWithImpl$Fragment$CharacterFragment<TRes>
    implements CopyWith$Fragment$CharacterFragment<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment(
    this._instance,
    this._then,
  );

  final Fragment$CharacterFragment _instance;

  final TRes Function(Fragment$CharacterFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$CharacterFragment$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$CharacterFragment$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CharacterFragment$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$CharacterFragment$name.stub(_then(_instance))
        : CopyWith$Fragment$CharacterFragment$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$CharacterFragment$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$CharacterFragment$image.stub(_then(_instance))
        : CopyWith$Fragment$CharacterFragment$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$CharacterFragment<TRes>
    implements CopyWith$Fragment$CharacterFragment<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CharacterFragment$name? name,
    Fragment$CharacterFragment$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CharacterFragment$name<TRes> get name =>
      CopyWith$Fragment$CharacterFragment$name.stub(_res);

  CopyWith$Fragment$CharacterFragment$image<TRes> get image =>
      CopyWith$Fragment$CharacterFragment$image.stub(_res);
}

const fragmentDefinitionCharacterFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
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
const documentNodeFragmentCharacterFragment = DocumentNode(definitions: [
  fragmentDefinitionCharacterFragment,
]);

class Fragment$CharacterFragment$name {
  Fragment$CharacterFragment$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Fragment$CharacterFragment$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterFragment$name(
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
    if (other is! Fragment$CharacterFragment$name ||
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

extension UtilityExtension$Fragment$CharacterFragment$name
    on Fragment$CharacterFragment$name {
  CopyWith$Fragment$CharacterFragment$name<Fragment$CharacterFragment$name>
      get copyWith => CopyWith$Fragment$CharacterFragment$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterFragment$name<TRes> {
  factory CopyWith$Fragment$CharacterFragment$name(
    Fragment$CharacterFragment$name instance,
    TRes Function(Fragment$CharacterFragment$name) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment$name;

  factory CopyWith$Fragment$CharacterFragment$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterFragment$name<TRes>
    implements CopyWith$Fragment$CharacterFragment$name<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment$name(
    this._instance,
    this._then,
  );

  final Fragment$CharacterFragment$name _instance;

  final TRes Function(Fragment$CharacterFragment$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterFragment$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterFragment$name<TRes>
    implements CopyWith$Fragment$CharacterFragment$name<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CharacterFragment$image {
  Fragment$CharacterFragment$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Fragment$CharacterFragment$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterFragment$image(
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
    if (other is! Fragment$CharacterFragment$image ||
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

extension UtilityExtension$Fragment$CharacterFragment$image
    on Fragment$CharacterFragment$image {
  CopyWith$Fragment$CharacterFragment$image<Fragment$CharacterFragment$image>
      get copyWith => CopyWith$Fragment$CharacterFragment$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterFragment$image<TRes> {
  factory CopyWith$Fragment$CharacterFragment$image(
    Fragment$CharacterFragment$image instance,
    TRes Function(Fragment$CharacterFragment$image) then,
  ) = _CopyWithImpl$Fragment$CharacterFragment$image;

  factory CopyWith$Fragment$CharacterFragment$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterFragment$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterFragment$image<TRes>
    implements CopyWith$Fragment$CharacterFragment$image<TRes> {
  _CopyWithImpl$Fragment$CharacterFragment$image(
    this._instance,
    this._then,
  );

  final Fragment$CharacterFragment$image _instance;

  final TRes Function(Fragment$CharacterFragment$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterFragment$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterFragment$image<TRes>
    implements CopyWith$Fragment$CharacterFragment$image<TRes> {
  _CopyWithStubImpl$Fragment$CharacterFragment$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
