// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPageInfoData> _$gPageInfoDataSerializer =
    new _$GPageInfoDataSerializer();

class _$GPageInfoDataSerializer implements StructuredSerializer<GPageInfoData> {
  @override
  final Iterable<Type> types = const [GPageInfoData, _$GPageInfoData];
  @override
  final String wireName = 'GPageInfoData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageInfoData object,
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
  GPageInfoData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageInfoDataBuilder();

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

class _$GPageInfoData extends GPageInfoData {
  @override
  final String G__typename;
  @override
  final int? currentPage;
  @override
  final bool? hasNextPage;

  factory _$GPageInfoData([void Function(GPageInfoDataBuilder)? updates]) =>
      (new GPageInfoDataBuilder()..update(updates))._build();

  _$GPageInfoData._(
      {required this.G__typename, this.currentPage, this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageInfoData', 'G__typename');
  }

  @override
  GPageInfoData rebuild(void Function(GPageInfoDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageInfoDataBuilder toBuilder() => new GPageInfoDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageInfoData &&
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
    return (newBuiltValueToStringHelper(r'GPageInfoData')
          ..add('G__typename', G__typename)
          ..add('currentPage', currentPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GPageInfoDataBuilder
    implements Builder<GPageInfoData, GPageInfoDataBuilder> {
  _$GPageInfoData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GPageInfoDataBuilder() {
    GPageInfoData._initializeBuilder(this);
  }

  GPageInfoDataBuilder get _$this {
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
  void replace(GPageInfoData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageInfoData;
  }

  @override
  void update(void Function(GPageInfoDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageInfoData build() => _build();

  _$GPageInfoData _build() {
    final _$result = _$v ??
        new _$GPageInfoData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPageInfoData', 'G__typename'),
            currentPage: currentPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
