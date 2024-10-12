import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$MediaFragment {
  Fragment$MediaFragment({
    required this.id,
    this.type,
    this.isAdult,
    this.genres,
    this.format,
    this.description,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$isAdult = json['isAdult'];
    final l$genres = json['genres'];
    final l$format = json['format'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      isAdult: (l$isAdult as bool?),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      description: (l$description as String?),
      title: l$title == null
          ? null
          : Fragment$MediaFragment$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaFragment$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final bool? isAdult;

  final List<String?>? genres;

  final Enum$MediaFormat? format;

  final String? description;

  final Fragment$MediaFragment$title? title;

  final Fragment$MediaFragment$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$type = type;
    resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$isAdult = isAdult;
    resultData['isAdult'] = l$isAdult;
    final l$genres = genres;
    resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$format = format;
    resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$description = description;
    resultData['description'] = l$description;
    final l$title = title;
    resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$isAdult = isAdult;
    final l$genres = genres;
    final l$format = format;
    final l$description = description;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$isAdult,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$format,
      l$description,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaFragment ||
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
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$MediaFragment on Fragment$MediaFragment {
  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment> get copyWith =>
      CopyWith$Fragment$MediaFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaFragment<TRes> {
  factory CopyWith$Fragment$MediaFragment(
    Fragment$MediaFragment instance,
    TRes Function(Fragment$MediaFragment) then,
  ) = _CopyWithImpl$Fragment$MediaFragment;

  factory CopyWith$Fragment$MediaFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment;

  TRes call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaFragment$title? title,
    Fragment$MediaFragment$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment$title<TRes> get title;
  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithImpl$Fragment$MediaFragment(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment _instance;

  final TRes Function(Fragment$MediaFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? isAdult = _undefined,
    Object? genres = _undefined,
    Object? format = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaFragment$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaFragment$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$MediaFragment$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaFragment$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment$title(
            local$title, (e) => call(title: e));
  }

  @override
  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaFragment$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaFragment<TRes>
    implements CopyWith$Fragment$MediaFragment<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Enum$MediaType? type,
    bool? isAdult,
    List<String?>? genres,
    Enum$MediaFormat? format,
    String? description,
    Fragment$MediaFragment$title? title,
    Fragment$MediaFragment$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$MediaFragment$title<TRes> get title =>
      CopyWith$Fragment$MediaFragment$title.stub(_res);

  @override
  CopyWith$Fragment$MediaFragment$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaFragment$coverImage.stub(_res);
}

const fragmentDefinitionMediaFragment = FragmentDefinitionNode(
  name: NameNode(value: 'MediaFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'isAdult'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'format'),
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
          value: BooleanValueNode(value: false),
        )
      ],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'extraLarge'),
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
const documentNodeFragmentMediaFragment = DocumentNode(definitions: [
  fragmentDefinitionMediaFragment,
]);

class Fragment$MediaFragment$title {
  Fragment$MediaFragment$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaFragment$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
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
    if (other is! Fragment$MediaFragment$title ||
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

extension UtilityExtension$Fragment$MediaFragment$title
    on Fragment$MediaFragment$title {
  CopyWith$Fragment$MediaFragment$title<Fragment$MediaFragment$title>
      get copyWith => CopyWith$Fragment$MediaFragment$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFragment$title<TRes> {
  factory CopyWith$Fragment$MediaFragment$title(
    Fragment$MediaFragment$title instance,
    TRes Function(Fragment$MediaFragment$title) then,
  ) = _CopyWithImpl$Fragment$MediaFragment$title;

  factory CopyWith$Fragment$MediaFragment$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFragment$title<TRes>
    implements CopyWith$Fragment$MediaFragment$title<TRes> {
  _CopyWithImpl$Fragment$MediaFragment$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment$title _instance;

  final TRes Function(Fragment$MediaFragment$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFragment$title<TRes>
    implements CopyWith$Fragment$MediaFragment$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment$title(this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaFragment$coverImage {
  Fragment$MediaFragment$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaFragment$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaFragment$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaFragment$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Fragment$MediaFragment$coverImage
    on Fragment$MediaFragment$coverImage {
  CopyWith$Fragment$MediaFragment$coverImage<Fragment$MediaFragment$coverImage>
      get copyWith => CopyWith$Fragment$MediaFragment$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  factory CopyWith$Fragment$MediaFragment$coverImage(
    Fragment$MediaFragment$coverImage instance,
    TRes Function(Fragment$MediaFragment$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaFragment$coverImage;

  factory CopyWith$Fragment$MediaFragment$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaFragment$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaFragment$coverImage<TRes>
    implements CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaFragment$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaFragment$coverImage _instance;

  final TRes Function(Fragment$MediaFragment$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaFragment$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaFragment$coverImage<TRes>
    implements CopyWith$Fragment$MediaFragment$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaFragment$coverImage(this._res);

  final TRes _res;

  @override
  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}
