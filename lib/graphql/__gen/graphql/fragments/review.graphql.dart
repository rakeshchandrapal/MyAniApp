import '../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'user.graphql.dart';

class Fragment$ReviewFragment {
  Fragment$ReviewFragment({
    required this.id,
    this.rating,
    this.ratingAmount,
    this.summary,
    this.media,
    this.user,
    this.$__typename = 'Review',
  });

  factory Fragment$ReviewFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$summary = json['summary'];
    final l$media = json['media'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewFragment(
      id: (l$id as int),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      summary: (l$summary as String?),
      media: l$media == null
          ? null
          : Fragment$ReviewFragment$media.fromJson(
              (l$media as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Fragment$UserFragment.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? rating;

  final int? ratingAmount;

  final String? summary;

  final Fragment$ReviewFragment$media? media;

  final Fragment$UserFragment? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$rating = rating;
    resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    resultData['ratingAmount'] = l$ratingAmount;
    final l$summary = summary;
    resultData['summary'] = l$summary;
    final l$media = media;
    resultData['media'] = l$media?.toJson();
    final l$user = user;
    resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$summary = summary;
    final l$media = media;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$rating,
      l$ratingAmount,
      l$summary,
      l$media,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ReviewFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Fragment$ReviewFragment on Fragment$ReviewFragment {
  CopyWith$Fragment$ReviewFragment<Fragment$ReviewFragment> get copyWith =>
      CopyWith$Fragment$ReviewFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReviewFragment<TRes> {
  factory CopyWith$Fragment$ReviewFragment(
    Fragment$ReviewFragment instance,
    TRes Function(Fragment$ReviewFragment) then,
  ) = _CopyWithImpl$Fragment$ReviewFragment;

  factory CopyWith$Fragment$ReviewFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewFragment;

  TRes call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Fragment$ReviewFragment$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewFragment$media<TRes> get media;
  CopyWith$Fragment$UserFragment<TRes> get user;
}

class _CopyWithImpl$Fragment$ReviewFragment<TRes>
    implements CopyWith$Fragment$ReviewFragment<TRes> {
  _CopyWithImpl$Fragment$ReviewFragment(
    this._instance,
    this._then,
  );

  final Fragment$ReviewFragment _instance;

  final TRes Function(Fragment$ReviewFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? summary = _undefined,
    Object? media = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewFragment(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ReviewFragment$media?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$UserFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$ReviewFragment$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ReviewFragment$media.stub(_then(_instance))
        : CopyWith$Fragment$ReviewFragment$media(
            local$media, (e) => call(media: e));
  }

  @override
  CopyWith$Fragment$UserFragment<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$UserFragment.stub(_then(_instance))
        : CopyWith$Fragment$UserFragment(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewFragment<TRes>
    implements CopyWith$Fragment$ReviewFragment<TRes> {
  _CopyWithStubImpl$Fragment$ReviewFragment(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    int? rating,
    int? ratingAmount,
    String? summary,
    Fragment$ReviewFragment$media? media,
    Fragment$UserFragment? user,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$ReviewFragment$media<TRes> get media =>
      CopyWith$Fragment$ReviewFragment$media.stub(_res);

  @override
  CopyWith$Fragment$UserFragment<TRes> get user =>
      CopyWith$Fragment$UserFragment.stub(_res);
}

const fragmentDefinitionReviewFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ReviewFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
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
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ratingAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'summary'),
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
          name: NameNode(value: 'type'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'bannerImage'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentReviewFragment = DocumentNode(definitions: [
  fragmentDefinitionReviewFragment,
  fragmentDefinitionUserFragment,
]);

class Fragment$ReviewFragment$media {
  Fragment$ReviewFragment$media({
    required this.id,
    this.title,
    this.type,
    this.bannerImage,
    this.$__typename = 'Media',
  });

  factory Fragment$ReviewFragment$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$bannerImage = json['bannerImage'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewFragment$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$ReviewFragment$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      bannerImage: (l$bannerImage as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ReviewFragment$media$title? title;

  final Enum$MediaType? type;

  final String? bannerImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$title = title;
    resultData['title'] = l$title?.toJson();
    final l$type = type;
    resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$bannerImage = bannerImage;
    resultData['bannerImage'] = l$bannerImage;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$bannerImage = bannerImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$bannerImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ReviewFragment$media ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
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

extension UtilityExtension$Fragment$ReviewFragment$media
    on Fragment$ReviewFragment$media {
  CopyWith$Fragment$ReviewFragment$media<Fragment$ReviewFragment$media>
      get copyWith => CopyWith$Fragment$ReviewFragment$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewFragment$media<TRes> {
  factory CopyWith$Fragment$ReviewFragment$media(
    Fragment$ReviewFragment$media instance,
    TRes Function(Fragment$ReviewFragment$media) then,
  ) = _CopyWithImpl$Fragment$ReviewFragment$media;

  factory CopyWith$Fragment$ReviewFragment$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewFragment$media;

  TRes call({
    int? id,
    Fragment$ReviewFragment$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewFragment$media$title<TRes> get title;
}

class _CopyWithImpl$Fragment$ReviewFragment$media<TRes>
    implements CopyWith$Fragment$ReviewFragment$media<TRes> {
  _CopyWithImpl$Fragment$ReviewFragment$media(
    this._instance,
    this._then,
  );

  final Fragment$ReviewFragment$media _instance;

  final TRes Function(Fragment$ReviewFragment$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? bannerImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewFragment$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ReviewFragment$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Fragment$ReviewFragment$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ReviewFragment$media$title.stub(_then(_instance))
        : CopyWith$Fragment$ReviewFragment$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewFragment$media<TRes>
    implements CopyWith$Fragment$ReviewFragment$media<TRes> {
  _CopyWithStubImpl$Fragment$ReviewFragment$media(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    Fragment$ReviewFragment$media$title? title,
    Enum$MediaType? type,
    String? bannerImage,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Fragment$ReviewFragment$media$title<TRes> get title =>
      CopyWith$Fragment$ReviewFragment$media$title.stub(_res);
}

class Fragment$ReviewFragment$media$title {
  Fragment$ReviewFragment$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ReviewFragment$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewFragment$media$title(
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
    if (other is! Fragment$ReviewFragment$media$title ||
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

extension UtilityExtension$Fragment$ReviewFragment$media$title
    on Fragment$ReviewFragment$media$title {
  CopyWith$Fragment$ReviewFragment$media$title<
          Fragment$ReviewFragment$media$title>
      get copyWith => CopyWith$Fragment$ReviewFragment$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewFragment$media$title<TRes> {
  factory CopyWith$Fragment$ReviewFragment$media$title(
    Fragment$ReviewFragment$media$title instance,
    TRes Function(Fragment$ReviewFragment$media$title) then,
  ) = _CopyWithImpl$Fragment$ReviewFragment$media$title;

  factory CopyWith$Fragment$ReviewFragment$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewFragment$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewFragment$media$title<TRes>
    implements CopyWith$Fragment$ReviewFragment$media$title<TRes> {
  _CopyWithImpl$Fragment$ReviewFragment$media$title(
    this._instance,
    this._then,
  );

  final Fragment$ReviewFragment$media$title _instance;

  final TRes Function(Fragment$ReviewFragment$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewFragment$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewFragment$media$title<TRes>
    implements CopyWith$Fragment$ReviewFragment$media$title<TRes> {
  _CopyWithStubImpl$Fragment$ReviewFragment$media$title(this._res);

  final TRes _res;

  @override
  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
