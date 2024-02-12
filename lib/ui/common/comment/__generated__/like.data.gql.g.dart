// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLikesData> _$gLikesDataSerializer = new _$GLikesDataSerializer();
Serializer<GLikesData_Page> _$gLikesDataPageSerializer =
    new _$GLikesData_PageSerializer();
Serializer<GLikesData_Page_pageInfo> _$gLikesDataPagePageInfoSerializer =
    new _$GLikesData_Page_pageInfoSerializer();
Serializer<GLikesData_Page_likes> _$gLikesDataPageLikesSerializer =
    new _$GLikesData_Page_likesSerializer();
Serializer<GLikesData_Page_likes_avatar> _$gLikesDataPageLikesAvatarSerializer =
    new _$GLikesData_Page_likes_avatarSerializer();

class _$GLikesDataSerializer implements StructuredSerializer<GLikesData> {
  @override
  final Iterable<Type> types = const [GLikesData, _$GLikesData];
  @override
  final String wireName = 'GLikesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLikesData_Page)));
    }
    return result;
  }

  @override
  GLikesData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLikesData_Page))!
              as GLikesData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikesData_PageSerializer
    implements StructuredSerializer<GLikesData_Page> {
  @override
  final Iterable<Type> types = const [GLikesData_Page, _$GLikesData_Page];
  @override
  final String wireName = 'GLikesData_Page';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLikesData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLikesData_Page_pageInfo)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GLikesData_Page_likes)])));
    }
    return result;
  }

  @override
  GLikesData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesData_PageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLikesData_Page_pageInfo))!
              as GLikesData_Page_pageInfo);
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GLikesData_Page_likes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikesData_Page_pageInfoSerializer
    implements StructuredSerializer<GLikesData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GLikesData_Page_pageInfo,
    _$GLikesData_Page_pageInfo
  ];
  @override
  final String wireName = 'GLikesData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikesData_Page_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLikesData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesData_Page_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikesData_Page_likesSerializer
    implements StructuredSerializer<GLikesData_Page_likes> {
  @override
  final Iterable<Type> types = const [
    GLikesData_Page_likes,
    _$GLikesData_Page_likes
  ];
  @override
  final String wireName = 'GLikesData_Page_likes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikesData_Page_likes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.donatorTier;
    if (value != null) {
      result
        ..add('donatorTier')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.donatorBadge;
    if (value != null) {
      result
        ..add('donatorBadge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorRoles;
    if (value != null) {
      result
        ..add('moderatorRoles')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(_i4.GModRole)])));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLikesData_Page_likes_avatar)));
    }
    return result;
  }

  @override
  GLikesData_Page_likes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesData_Page_likesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'donatorTier':
          result.donatorTier = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'donatorBadge':
          result.donatorBadge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorRoles':
          result.moderatorRoles.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(_i4.GModRole)
              ]))! as BuiltList<Object?>);
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLikesData_Page_likes_avatar))!
              as GLikesData_Page_likes_avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$GLikesData_Page_likes_avatarSerializer
    implements StructuredSerializer<GLikesData_Page_likes_avatar> {
  @override
  final Iterable<Type> types = const [
    GLikesData_Page_likes_avatar,
    _$GLikesData_Page_likes_avatar
  ];
  @override
  final String wireName = 'GLikesData_Page_likes_avatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLikesData_Page_likes_avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLikesData_Page_likes_avatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLikesData_Page_likes_avatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLikesData extends GLikesData {
  @override
  final String G__typename;
  @override
  final GLikesData_Page? Page;

  factory _$GLikesData([void Function(GLikesDataBuilder)? updates]) =>
      (new GLikesDataBuilder()..update(updates))._build();

  _$GLikesData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikesData', 'G__typename');
  }

  @override
  GLikesData rebuild(void Function(GLikesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesDataBuilder toBuilder() => new GLikesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GLikesDataBuilder implements Builder<GLikesData, GLikesDataBuilder> {
  _$GLikesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikesData_PageBuilder? _Page;
  GLikesData_PageBuilder get Page =>
      _$this._Page ??= new GLikesData_PageBuilder();
  set Page(GLikesData_PageBuilder? Page) => _$this._Page = Page;

  GLikesDataBuilder() {
    GLikesData._initializeBuilder(this);
  }

  GLikesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesData;
  }

  @override
  void update(void Function(GLikesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesData build() => _build();

  _$GLikesData _build() {
    _$GLikesData _$result;
    try {
      _$result = _$v ??
          new _$GLikesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLikesData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLikesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikesData_Page extends GLikesData_Page {
  @override
  final String G__typename;
  @override
  final GLikesData_Page_pageInfo? pageInfo;
  @override
  final BuiltList<GLikesData_Page_likes?>? likes;

  factory _$GLikesData_Page([void Function(GLikesData_PageBuilder)? updates]) =>
      (new GLikesData_PageBuilder()..update(updates))._build();

  _$GLikesData_Page._({required this.G__typename, this.pageInfo, this.likes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikesData_Page', 'G__typename');
  }

  @override
  GLikesData_Page rebuild(void Function(GLikesData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesData_PageBuilder toBuilder() =>
      new GLikesData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesData_Page &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        likes == other.likes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesData_Page')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('likes', likes))
        .toString();
  }
}

class GLikesData_PageBuilder
    implements Builder<GLikesData_Page, GLikesData_PageBuilder> {
  _$GLikesData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLikesData_Page_pageInfoBuilder? _pageInfo;
  GLikesData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GLikesData_Page_pageInfoBuilder();
  set pageInfo(GLikesData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GLikesData_Page_likes?>? _likes;
  ListBuilder<GLikesData_Page_likes?> get likes =>
      _$this._likes ??= new ListBuilder<GLikesData_Page_likes?>();
  set likes(ListBuilder<GLikesData_Page_likes?>? likes) =>
      _$this._likes = likes;

  GLikesData_PageBuilder() {
    GLikesData_Page._initializeBuilder(this);
  }

  GLikesData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _likes = $v.likes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesData_Page;
  }

  @override
  void update(void Function(GLikesData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesData_Page build() => _build();

  _$GLikesData_Page _build() {
    _$GLikesData_Page _$result;
    try {
      _$result = _$v ??
          new _$GLikesData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLikesData_Page', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              likes: _likes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'likes';
        _likes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLikesData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikesData_Page_pageInfo extends GLikesData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GLikesData_Page_pageInfo(
          [void Function(GLikesData_Page_pageInfoBuilder)? updates]) =>
      (new GLikesData_Page_pageInfoBuilder()..update(updates))._build();

  _$GLikesData_Page_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikesData_Page_pageInfo', 'G__typename');
  }

  @override
  GLikesData_Page_pageInfo rebuild(
          void Function(GLikesData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesData_Page_pageInfoBuilder toBuilder() =>
      new GLikesData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesData_Page_pageInfo &&
        G__typename == other.G__typename &&
        currentPage == other.currentPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GLikesData_Page_pageInfoBuilder
    implements
        Builder<GLikesData_Page_pageInfo, GLikesData_Page_pageInfoBuilder> {
  _$GLikesData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GLikesData_Page_pageInfoBuilder() {
    GLikesData_Page_pageInfo._initializeBuilder(this);
  }

  GLikesData_Page_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _currentPage = $v.currentPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesData_Page_pageInfo;
  }

  @override
  void update(void Function(GLikesData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesData_Page_pageInfo build() => _build();

  _$GLikesData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GLikesData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLikesData_Page_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GLikesData_Page_likes extends GLikesData_Page_likes {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String name;
  @override
  final int? donatorTier;
  @override
  final String? donatorBadge;
  @override
  final BuiltList<_i4.GModRole?>? moderatorRoles;
  @override
  final GLikesData_Page_likes_avatar? avatar;

  factory _$GLikesData_Page_likes(
          [void Function(GLikesData_Page_likesBuilder)? updates]) =>
      (new GLikesData_Page_likesBuilder()..update(updates))._build();

  _$GLikesData_Page_likes._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.donatorTier,
      this.donatorBadge,
      this.moderatorRoles,
      this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikesData_Page_likes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GLikesData_Page_likes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GLikesData_Page_likes', 'name');
  }

  @override
  GLikesData_Page_likes rebuild(
          void Function(GLikesData_Page_likesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesData_Page_likesBuilder toBuilder() =>
      new GLikesData_Page_likesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesData_Page_likes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        donatorTier == other.donatorTier &&
        donatorBadge == other.donatorBadge &&
        moderatorRoles == other.moderatorRoles &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, donatorTier.hashCode);
    _$hash = $jc(_$hash, donatorBadge.hashCode);
    _$hash = $jc(_$hash, moderatorRoles.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesData_Page_likes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('donatorTier', donatorTier)
          ..add('donatorBadge', donatorBadge)
          ..add('moderatorRoles', moderatorRoles)
          ..add('avatar', avatar))
        .toString();
  }
}

class GLikesData_Page_likesBuilder
    implements Builder<GLikesData_Page_likes, GLikesData_Page_likesBuilder> {
  _$GLikesData_Page_likes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _donatorTier;
  int? get donatorTier => _$this._donatorTier;
  set donatorTier(int? donatorTier) => _$this._donatorTier = donatorTier;

  String? _donatorBadge;
  String? get donatorBadge => _$this._donatorBadge;
  set donatorBadge(String? donatorBadge) => _$this._donatorBadge = donatorBadge;

  ListBuilder<_i4.GModRole?>? _moderatorRoles;
  ListBuilder<_i4.GModRole?> get moderatorRoles =>
      _$this._moderatorRoles ??= new ListBuilder<_i4.GModRole?>();
  set moderatorRoles(ListBuilder<_i4.GModRole?>? moderatorRoles) =>
      _$this._moderatorRoles = moderatorRoles;

  GLikesData_Page_likes_avatarBuilder? _avatar;
  GLikesData_Page_likes_avatarBuilder get avatar =>
      _$this._avatar ??= new GLikesData_Page_likes_avatarBuilder();
  set avatar(GLikesData_Page_likes_avatarBuilder? avatar) =>
      _$this._avatar = avatar;

  GLikesData_Page_likesBuilder() {
    GLikesData_Page_likes._initializeBuilder(this);
  }

  GLikesData_Page_likesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _donatorTier = $v.donatorTier;
      _donatorBadge = $v.donatorBadge;
      _moderatorRoles = $v.moderatorRoles?.toBuilder();
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesData_Page_likes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesData_Page_likes;
  }

  @override
  void update(void Function(GLikesData_Page_likesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesData_Page_likes build() => _build();

  _$GLikesData_Page_likes _build() {
    _$GLikesData_Page_likes _$result;
    try {
      _$result = _$v ??
          new _$GLikesData_Page_likes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLikesData_Page_likes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GLikesData_Page_likes', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GLikesData_Page_likes', 'name'),
              donatorTier: donatorTier,
              donatorBadge: donatorBadge,
              moderatorRoles: _moderatorRoles?.build(),
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moderatorRoles';
        _moderatorRoles?.build();
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLikesData_Page_likes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLikesData_Page_likes_avatar extends GLikesData_Page_likes_avatar {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GLikesData_Page_likes_avatar(
          [void Function(GLikesData_Page_likes_avatarBuilder)? updates]) =>
      (new GLikesData_Page_likes_avatarBuilder()..update(updates))._build();

  _$GLikesData_Page_likes_avatar._({required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLikesData_Page_likes_avatar', 'G__typename');
  }

  @override
  GLikesData_Page_likes_avatar rebuild(
          void Function(GLikesData_Page_likes_avatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLikesData_Page_likes_avatarBuilder toBuilder() =>
      new GLikesData_Page_likes_avatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLikesData_Page_likes_avatar &&
        G__typename == other.G__typename &&
        large == other.large;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLikesData_Page_likes_avatar')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GLikesData_Page_likes_avatarBuilder
    implements
        Builder<GLikesData_Page_likes_avatar,
            GLikesData_Page_likes_avatarBuilder> {
  _$GLikesData_Page_likes_avatar? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GLikesData_Page_likes_avatarBuilder() {
    GLikesData_Page_likes_avatar._initializeBuilder(this);
  }

  GLikesData_Page_likes_avatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLikesData_Page_likes_avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLikesData_Page_likes_avatar;
  }

  @override
  void update(void Function(GLikesData_Page_likes_avatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLikesData_Page_likes_avatar build() => _build();

  _$GLikesData_Page_likes_avatar _build() {
    final _$result = _$v ??
        new _$GLikesData_Page_likes_avatar._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLikesData_Page_likes_avatar', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
