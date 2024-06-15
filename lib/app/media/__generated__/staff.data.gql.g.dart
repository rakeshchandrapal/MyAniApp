// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaStaffData> _$gMediaStaffDataSerializer =
    new _$GMediaStaffDataSerializer();
Serializer<GMediaStaffData_Media> _$gMediaStaffDataMediaSerializer =
    new _$GMediaStaffData_MediaSerializer();
Serializer<GMediaStaffData_Media_staff> _$gMediaStaffDataMediaStaffSerializer =
    new _$GMediaStaffData_Media_staffSerializer();
Serializer<GMediaStaffData_Media_staff_pageInfo>
    _$gMediaStaffDataMediaStaffPageInfoSerializer =
    new _$GMediaStaffData_Media_staff_pageInfoSerializer();
Serializer<GMediaStaffData_Media_staff_edges>
    _$gMediaStaffDataMediaStaffEdgesSerializer =
    new _$GMediaStaffData_Media_staff_edgesSerializer();
Serializer<GMediaStaffData_Media_staff_edges_node>
    _$gMediaStaffDataMediaStaffEdgesNodeSerializer =
    new _$GMediaStaffData_Media_staff_edges_nodeSerializer();
Serializer<GMediaStaffData_Media_staff_edges_node_name>
    _$gMediaStaffDataMediaStaffEdgesNodeNameSerializer =
    new _$GMediaStaffData_Media_staff_edges_node_nameSerializer();
Serializer<GMediaStaffData_Media_staff_edges_node_image>
    _$gMediaStaffDataMediaStaffEdgesNodeImageSerializer =
    new _$GMediaStaffData_Media_staff_edges_node_imageSerializer();

class _$GMediaStaffDataSerializer
    implements StructuredSerializer<GMediaStaffData> {
  @override
  final Iterable<Type> types = const [GMediaStaffData, _$GMediaStaffData];
  @override
  final String wireName = 'GMediaStaffData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaStaffData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Media;
    if (value != null) {
      result
        ..add('Media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaStaffData_Media)));
    }
    return result;
  }

  @override
  GMediaStaffData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffDataBuilder();

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
        case 'Media':
          result.Media.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaStaffData_Media))!
              as GMediaStaffData_Media);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_MediaSerializer
    implements StructuredSerializer<GMediaStaffData_Media> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media,
    _$GMediaStaffData_Media
  ];
  @override
  final String wireName = 'GMediaStaffData_Media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaStaffData_Media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.staff;
    if (value != null) {
      result
        ..add('staff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GMediaStaffData_Media_staff)));
    }
    return result;
  }

  @override
  GMediaStaffData_Media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_MediaBuilder();

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
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GMediaStaffData_Media_staff))!
              as GMediaStaffData_Media_staff);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_Media_staffSerializer
    implements StructuredSerializer<GMediaStaffData_Media_staff> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff,
    _$GMediaStaffData_Media_staff
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaStaffData_Media_staff object,
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
            specifiedType:
                const FullType(GMediaStaffData_Media_staff_pageInfo)));
    }
    value = object.edges;
    if (value != null) {
      result
        ..add('edges')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(GMediaStaffData_Media_staff_edges)
            ])));
    }
    return result;
  }

  @override
  GMediaStaffData_Media_staff deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staffBuilder();

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
                  specifiedType:
                      const FullType(GMediaStaffData_Media_staff_pageInfo))!
              as GMediaStaffData_Media_staff_pageInfo);
          break;
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GMediaStaffData_Media_staff_edges)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_Media_staff_pageInfoSerializer
    implements StructuredSerializer<GMediaStaffData_Media_staff_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff_pageInfo,
    _$GMediaStaffData_Media_staff_pageInfo
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaStaffData_Media_staff_pageInfo object,
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
  GMediaStaffData_Media_staff_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staff_pageInfoBuilder();

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

class _$GMediaStaffData_Media_staff_edgesSerializer
    implements StructuredSerializer<GMediaStaffData_Media_staff_edges> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff_edges,
    _$GMediaStaffData_Media_staff_edges
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaStaffData_Media_staff_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.node;
    if (value != null) {
      result
        ..add('node')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaStaffData_Media_staff_edges_node)));
    }
    return result;
  }

  @override
  GMediaStaffData_Media_staff_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staff_edgesBuilder();

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
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMediaStaffData_Media_staff_edges_node))!
              as GMediaStaffData_Media_staff_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_Media_staff_edges_nodeSerializer
    implements StructuredSerializer<GMediaStaffData_Media_staff_edges_node> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff_edges_node,
    _$GMediaStaffData_Media_staff_edges_node
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaStaffData_Media_staff_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaStaffData_Media_staff_edges_node_name)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMediaStaffData_Media_staff_edges_node_image)));
    }
    return result;
  }

  @override
  GMediaStaffData_Media_staff_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staff_edges_nodeBuilder();

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
          result.name.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaStaffData_Media_staff_edges_node_name))!
              as GMediaStaffData_Media_staff_edges_node_name);
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GMediaStaffData_Media_staff_edges_node_image))!
              as GMediaStaffData_Media_staff_edges_node_image);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_Media_staff_edges_node_nameSerializer
    implements
        StructuredSerializer<GMediaStaffData_Media_staff_edges_node_name> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff_edges_node_name,
    _$GMediaStaffData_Media_staff_edges_node_name
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff_edges_node_name';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaStaffData_Media_staff_edges_node_name object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.userPreferred;
    if (value != null) {
      result
        ..add('userPreferred')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GMediaStaffData_Media_staff_edges_node_name deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staff_edges_node_nameBuilder();

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
        case 'userPreferred':
          result.userPreferred = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaStaffData_Media_staff_edges_node_imageSerializer
    implements
        StructuredSerializer<GMediaStaffData_Media_staff_edges_node_image> {
  @override
  final Iterable<Type> types = const [
    GMediaStaffData_Media_staff_edges_node_image,
    _$GMediaStaffData_Media_staff_edges_node_image
  ];
  @override
  final String wireName = 'GMediaStaffData_Media_staff_edges_node_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GMediaStaffData_Media_staff_edges_node_image object,
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
  GMediaStaffData_Media_staff_edges_node_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaStaffData_Media_staff_edges_node_imageBuilder();

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

class _$GMediaStaffData extends GMediaStaffData {
  @override
  final String G__typename;
  @override
  final GMediaStaffData_Media? Media;

  factory _$GMediaStaffData([void Function(GMediaStaffDataBuilder)? updates]) =>
      (new GMediaStaffDataBuilder()..update(updates))._build();

  _$GMediaStaffData._({required this.G__typename, this.Media}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData', 'G__typename');
  }

  @override
  GMediaStaffData rebuild(void Function(GMediaStaffDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffDataBuilder toBuilder() =>
      new GMediaStaffDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData &&
        G__typename == other.G__typename &&
        Media == other.Media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaStaffData')
          ..add('G__typename', G__typename)
          ..add('Media', Media))
        .toString();
  }
}

class GMediaStaffDataBuilder
    implements Builder<GMediaStaffData, GMediaStaffDataBuilder> {
  _$GMediaStaffData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaStaffData_MediaBuilder? _Media;
  GMediaStaffData_MediaBuilder get Media =>
      _$this._Media ??= new GMediaStaffData_MediaBuilder();
  set Media(GMediaStaffData_MediaBuilder? Media) => _$this._Media = Media;

  GMediaStaffDataBuilder() {
    GMediaStaffData._initializeBuilder(this);
  }

  GMediaStaffDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Media = $v.Media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData;
  }

  @override
  void update(void Function(GMediaStaffDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData build() => _build();

  _$GMediaStaffData _build() {
    _$GMediaStaffData _$result;
    try {
      _$result = _$v ??
          new _$GMediaStaffData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaStaffData', 'G__typename'),
              Media: _Media?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Media';
        _Media?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaStaffData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media extends GMediaStaffData_Media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaStaffData_Media_staff? staff;

  factory _$GMediaStaffData_Media(
          [void Function(GMediaStaffData_MediaBuilder)? updates]) =>
      (new GMediaStaffData_MediaBuilder()..update(updates))._build();

  _$GMediaStaffData_Media._(
      {required this.G__typename, required this.id, this.staff})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData_Media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GMediaStaffData_Media', 'id');
  }

  @override
  GMediaStaffData_Media rebuild(
          void Function(GMediaStaffData_MediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_MediaBuilder toBuilder() =>
      new GMediaStaffData_MediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media &&
        G__typename == other.G__typename &&
        id == other.id &&
        staff == other.staff;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, staff.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaStaffData_Media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('staff', staff))
        .toString();
  }
}

class GMediaStaffData_MediaBuilder
    implements Builder<GMediaStaffData_Media, GMediaStaffData_MediaBuilder> {
  _$GMediaStaffData_Media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaStaffData_Media_staffBuilder? _staff;
  GMediaStaffData_Media_staffBuilder get staff =>
      _$this._staff ??= new GMediaStaffData_Media_staffBuilder();
  set staff(GMediaStaffData_Media_staffBuilder? staff) => _$this._staff = staff;

  GMediaStaffData_MediaBuilder() {
    GMediaStaffData_Media._initializeBuilder(this);
  }

  GMediaStaffData_MediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _staff = $v.staff?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media;
  }

  @override
  void update(void Function(GMediaStaffData_MediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media build() => _build();

  _$GMediaStaffData_Media _build() {
    _$GMediaStaffData_Media _$result;
    try {
      _$result = _$v ??
          new _$GMediaStaffData_Media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaStaffData_Media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaStaffData_Media', 'id'),
              staff: _staff?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'staff';
        _staff?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaStaffData_Media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff extends GMediaStaffData_Media_staff {
  @override
  final String G__typename;
  @override
  final GMediaStaffData_Media_staff_pageInfo? pageInfo;
  @override
  final BuiltList<GMediaStaffData_Media_staff_edges?>? edges;

  factory _$GMediaStaffData_Media_staff(
          [void Function(GMediaStaffData_Media_staffBuilder)? updates]) =>
      (new GMediaStaffData_Media_staffBuilder()..update(updates))._build();

  _$GMediaStaffData_Media_staff._(
      {required this.G__typename, this.pageInfo, this.edges})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData_Media_staff', 'G__typename');
  }

  @override
  GMediaStaffData_Media_staff rebuild(
          void Function(GMediaStaffData_Media_staffBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staffBuilder toBuilder() =>
      new GMediaStaffData_Media_staffBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff &&
        G__typename == other.G__typename &&
        pageInfo == other.pageInfo &&
        edges == other.edges;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, edges.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaStaffData_Media_staff')
          ..add('G__typename', G__typename)
          ..add('pageInfo', pageInfo)
          ..add('edges', edges))
        .toString();
  }
}

class GMediaStaffData_Media_staffBuilder
    implements
        Builder<GMediaStaffData_Media_staff,
            GMediaStaffData_Media_staffBuilder> {
  _$GMediaStaffData_Media_staff? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GMediaStaffData_Media_staff_pageInfoBuilder? _pageInfo;
  GMediaStaffData_Media_staff_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GMediaStaffData_Media_staff_pageInfoBuilder();
  set pageInfo(GMediaStaffData_Media_staff_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  ListBuilder<GMediaStaffData_Media_staff_edges?>? _edges;
  ListBuilder<GMediaStaffData_Media_staff_edges?> get edges =>
      _$this._edges ??= new ListBuilder<GMediaStaffData_Media_staff_edges?>();
  set edges(ListBuilder<GMediaStaffData_Media_staff_edges?>? edges) =>
      _$this._edges = edges;

  GMediaStaffData_Media_staffBuilder() {
    GMediaStaffData_Media_staff._initializeBuilder(this);
  }

  GMediaStaffData_Media_staffBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pageInfo = $v.pageInfo?.toBuilder();
      _edges = $v.edges?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media_staff other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff;
  }

  @override
  void update(void Function(GMediaStaffData_Media_staffBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff build() => _build();

  _$GMediaStaffData_Media_staff _build() {
    _$GMediaStaffData_Media_staff _$result;
    try {
      _$result = _$v ??
          new _$GMediaStaffData_Media_staff._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaStaffData_Media_staff', 'G__typename'),
              pageInfo: _pageInfo?.build(),
              edges: _edges?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'edges';
        _edges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaStaffData_Media_staff', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff_pageInfo
    extends GMediaStaffData_Media_staff_pageInfo {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GMediaStaffData_Media_staff_pageInfo(
          [void Function(GMediaStaffData_Media_staff_pageInfoBuilder)?
              updates]) =>
      (new GMediaStaffData_Media_staff_pageInfoBuilder()..update(updates))
          ._build();

  _$GMediaStaffData_Media_staff_pageInfo._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData_Media_staff_pageInfo', 'G__typename');
  }

  @override
  GMediaStaffData_Media_staff_pageInfo rebuild(
          void Function(GMediaStaffData_Media_staff_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staff_pageInfoBuilder toBuilder() =>
      new GMediaStaffData_Media_staff_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff_pageInfo &&
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
    return (newBuiltValueToStringHelper(r'GMediaStaffData_Media_staff_pageInfo')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GMediaStaffData_Media_staff_pageInfoBuilder
    implements
        Builder<GMediaStaffData_Media_staff_pageInfo,
            GMediaStaffData_Media_staff_pageInfoBuilder> {
  _$GMediaStaffData_Media_staff_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GMediaStaffData_Media_staff_pageInfoBuilder() {
    GMediaStaffData_Media_staff_pageInfo._initializeBuilder(this);
  }

  GMediaStaffData_Media_staff_pageInfoBuilder get _$this {
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
  void replace(GMediaStaffData_Media_staff_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff_pageInfo;
  }

  @override
  void update(
      void Function(GMediaStaffData_Media_staff_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff_pageInfo build() => _build();

  _$GMediaStaffData_Media_staff_pageInfo _build() {
    final _$result = _$v ??
        new _$GMediaStaffData_Media_staff_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaStaffData_Media_staff_pageInfo', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff_edges
    extends GMediaStaffData_Media_staff_edges {
  @override
  final String G__typename;
  @override
  final String? role;
  @override
  final GMediaStaffData_Media_staff_edges_node? node;

  factory _$GMediaStaffData_Media_staff_edges(
          [void Function(GMediaStaffData_Media_staff_edgesBuilder)? updates]) =>
      (new GMediaStaffData_Media_staff_edgesBuilder()..update(updates))
          ._build();

  _$GMediaStaffData_Media_staff_edges._(
      {required this.G__typename, this.role, this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData_Media_staff_edges', 'G__typename');
  }

  @override
  GMediaStaffData_Media_staff_edges rebuild(
          void Function(GMediaStaffData_Media_staff_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staff_edgesBuilder toBuilder() =>
      new GMediaStaffData_Media_staff_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff_edges &&
        G__typename == other.G__typename &&
        role == other.role &&
        node == other.node;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, node.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaStaffData_Media_staff_edges')
          ..add('G__typename', G__typename)
          ..add('role', role)
          ..add('node', node))
        .toString();
  }
}

class GMediaStaffData_Media_staff_edgesBuilder
    implements
        Builder<GMediaStaffData_Media_staff_edges,
            GMediaStaffData_Media_staff_edgesBuilder> {
  _$GMediaStaffData_Media_staff_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  GMediaStaffData_Media_staff_edges_nodeBuilder? _node;
  GMediaStaffData_Media_staff_edges_nodeBuilder get node =>
      _$this._node ??= new GMediaStaffData_Media_staff_edges_nodeBuilder();
  set node(GMediaStaffData_Media_staff_edges_nodeBuilder? node) =>
      _$this._node = node;

  GMediaStaffData_Media_staff_edgesBuilder() {
    GMediaStaffData_Media_staff_edges._initializeBuilder(this);
  }

  GMediaStaffData_Media_staff_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _role = $v.role;
      _node = $v.node?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media_staff_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff_edges;
  }

  @override
  void update(
      void Function(GMediaStaffData_Media_staff_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff_edges build() => _build();

  _$GMediaStaffData_Media_staff_edges _build() {
    _$GMediaStaffData_Media_staff_edges _$result;
    try {
      _$result = _$v ??
          new _$GMediaStaffData_Media_staff_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaStaffData_Media_staff_edges', 'G__typename'),
              role: role,
              node: _node?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        _node?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaStaffData_Media_staff_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff_edges_node
    extends GMediaStaffData_Media_staff_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GMediaStaffData_Media_staff_edges_node_name? name;
  @override
  final GMediaStaffData_Media_staff_edges_node_image? image;

  factory _$GMediaStaffData_Media_staff_edges_node(
          [void Function(GMediaStaffData_Media_staff_edges_nodeBuilder)?
              updates]) =>
      (new GMediaStaffData_Media_staff_edges_nodeBuilder()..update(updates))
          ._build();

  _$GMediaStaffData_Media_staff_edges_node._(
      {required this.G__typename, required this.id, this.name, this.image})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaStaffData_Media_staff_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GMediaStaffData_Media_staff_edges_node', 'id');
  }

  @override
  GMediaStaffData_Media_staff_edges_node rebuild(
          void Function(GMediaStaffData_Media_staff_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staff_edges_nodeBuilder toBuilder() =>
      new GMediaStaffData_Media_staff_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaStaffData_Media_staff_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GMediaStaffData_Media_staff_edges_nodeBuilder
    implements
        Builder<GMediaStaffData_Media_staff_edges_node,
            GMediaStaffData_Media_staff_edges_nodeBuilder> {
  _$GMediaStaffData_Media_staff_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GMediaStaffData_Media_staff_edges_node_nameBuilder? _name;
  GMediaStaffData_Media_staff_edges_node_nameBuilder get name =>
      _$this._name ??= new GMediaStaffData_Media_staff_edges_node_nameBuilder();
  set name(GMediaStaffData_Media_staff_edges_node_nameBuilder? name) =>
      _$this._name = name;

  GMediaStaffData_Media_staff_edges_node_imageBuilder? _image;
  GMediaStaffData_Media_staff_edges_node_imageBuilder get image =>
      _$this._image ??=
          new GMediaStaffData_Media_staff_edges_node_imageBuilder();
  set image(GMediaStaffData_Media_staff_edges_node_imageBuilder? image) =>
      _$this._image = image;

  GMediaStaffData_Media_staff_edges_nodeBuilder() {
    GMediaStaffData_Media_staff_edges_node._initializeBuilder(this);
  }

  GMediaStaffData_Media_staff_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name?.toBuilder();
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media_staff_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff_edges_node;
  }

  @override
  void update(
      void Function(GMediaStaffData_Media_staff_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff_edges_node build() => _build();

  _$GMediaStaffData_Media_staff_edges_node _build() {
    _$GMediaStaffData_Media_staff_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GMediaStaffData_Media_staff_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GMediaStaffData_Media_staff_edges_node', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GMediaStaffData_Media_staff_edges_node', 'id'),
              name: _name?.build(),
              image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaStaffData_Media_staff_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff_edges_node_name
    extends GMediaStaffData_Media_staff_edges_node_name {
  @override
  final String G__typename;
  @override
  final String? userPreferred;

  factory _$GMediaStaffData_Media_staff_edges_node_name(
          [void Function(GMediaStaffData_Media_staff_edges_node_nameBuilder)?
              updates]) =>
      (new GMediaStaffData_Media_staff_edges_node_nameBuilder()
            ..update(updates))
          ._build();

  _$GMediaStaffData_Media_staff_edges_node_name._(
      {required this.G__typename, this.userPreferred})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaStaffData_Media_staff_edges_node_name', 'G__typename');
  }

  @override
  GMediaStaffData_Media_staff_edges_node_name rebuild(
          void Function(GMediaStaffData_Media_staff_edges_node_nameBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staff_edges_node_nameBuilder toBuilder() =>
      new GMediaStaffData_Media_staff_edges_node_nameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff_edges_node_name &&
        G__typename == other.G__typename &&
        userPreferred == other.userPreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, userPreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GMediaStaffData_Media_staff_edges_node_name')
          ..add('G__typename', G__typename)
          ..add('userPreferred', userPreferred))
        .toString();
  }
}

class GMediaStaffData_Media_staff_edges_node_nameBuilder
    implements
        Builder<GMediaStaffData_Media_staff_edges_node_name,
            GMediaStaffData_Media_staff_edges_node_nameBuilder> {
  _$GMediaStaffData_Media_staff_edges_node_name? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _userPreferred;
  String? get userPreferred => _$this._userPreferred;
  set userPreferred(String? userPreferred) =>
      _$this._userPreferred = userPreferred;

  GMediaStaffData_Media_staff_edges_node_nameBuilder() {
    GMediaStaffData_Media_staff_edges_node_name._initializeBuilder(this);
  }

  GMediaStaffData_Media_staff_edges_node_nameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _userPreferred = $v.userPreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media_staff_edges_node_name other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff_edges_node_name;
  }

  @override
  void update(
      void Function(GMediaStaffData_Media_staff_edges_node_nameBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff_edges_node_name build() => _build();

  _$GMediaStaffData_Media_staff_edges_node_name _build() {
    final _$result = _$v ??
        new _$GMediaStaffData_Media_staff_edges_node_name._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaStaffData_Media_staff_edges_node_name', 'G__typename'),
            userPreferred: userPreferred);
    replace(_$result);
    return _$result;
  }
}

class _$GMediaStaffData_Media_staff_edges_node_image
    extends GMediaStaffData_Media_staff_edges_node_image {
  @override
  final String G__typename;
  @override
  final String? large;

  factory _$GMediaStaffData_Media_staff_edges_node_image(
          [void Function(GMediaStaffData_Media_staff_edges_node_imageBuilder)?
              updates]) =>
      (new GMediaStaffData_Media_staff_edges_node_imageBuilder()
            ..update(updates))
          ._build();

  _$GMediaStaffData_Media_staff_edges_node_image._(
      {required this.G__typename, this.large})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GMediaStaffData_Media_staff_edges_node_image', 'G__typename');
  }

  @override
  GMediaStaffData_Media_staff_edges_node_image rebuild(
          void Function(GMediaStaffData_Media_staff_edges_node_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaStaffData_Media_staff_edges_node_imageBuilder toBuilder() =>
      new GMediaStaffData_Media_staff_edges_node_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaStaffData_Media_staff_edges_node_image &&
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
    return (newBuiltValueToStringHelper(
            r'GMediaStaffData_Media_staff_edges_node_image')
          ..add('G__typename', G__typename)
          ..add('large', large))
        .toString();
  }
}

class GMediaStaffData_Media_staff_edges_node_imageBuilder
    implements
        Builder<GMediaStaffData_Media_staff_edges_node_image,
            GMediaStaffData_Media_staff_edges_node_imageBuilder> {
  _$GMediaStaffData_Media_staff_edges_node_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  GMediaStaffData_Media_staff_edges_node_imageBuilder() {
    GMediaStaffData_Media_staff_edges_node_image._initializeBuilder(this);
  }

  GMediaStaffData_Media_staff_edges_node_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaStaffData_Media_staff_edges_node_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaStaffData_Media_staff_edges_node_image;
  }

  @override
  void update(
      void Function(GMediaStaffData_Media_staff_edges_node_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaStaffData_Media_staff_edges_node_image build() => _build();

  _$GMediaStaffData_Media_staff_edges_node_image _build() {
    final _$result = _$v ??
        new _$GMediaStaffData_Media_staff_edges_node_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GMediaStaffData_Media_staff_edges_node_image', 'G__typename'),
            large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
