// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_list_option.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaListOptionsData> _$gMediaListOptionsDataSerializer =
    new _$GMediaListOptionsDataSerializer();

class _$GMediaListOptionsDataSerializer
    implements StructuredSerializer<GMediaListOptionsData> {
  @override
  final Iterable<Type> types = const [
    GMediaListOptionsData,
    _$GMediaListOptionsData
  ];
  @override
  final String wireName = 'GMediaListOptionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMediaListOptionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sectionOrder;
    if (value != null) {
      result
        ..add('sectionOrder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    return result;
  }

  @override
  GMediaListOptionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaListOptionsDataBuilder();

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
        case 'sectionOrder':
          result.sectionOrder.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'customLists':
          result.customLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaListOptionsData extends GMediaListOptionsData {
  @override
  final String G__typename;
  @override
  final BuiltList<String?>? sectionOrder;
  @override
  final BuiltList<String?>? customLists;

  factory _$GMediaListOptionsData(
          [void Function(GMediaListOptionsDataBuilder)? updates]) =>
      (new GMediaListOptionsDataBuilder()..update(updates))._build();

  _$GMediaListOptionsData._(
      {required this.G__typename, this.sectionOrder, this.customLists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GMediaListOptionsData', 'G__typename');
  }

  @override
  GMediaListOptionsData rebuild(
          void Function(GMediaListOptionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaListOptionsDataBuilder toBuilder() =>
      new GMediaListOptionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaListOptionsData &&
        G__typename == other.G__typename &&
        sectionOrder == other.sectionOrder &&
        customLists == other.customLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, sectionOrder.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaListOptionsData')
          ..add('G__typename', G__typename)
          ..add('sectionOrder', sectionOrder)
          ..add('customLists', customLists))
        .toString();
  }
}

class GMediaListOptionsDataBuilder
    implements Builder<GMediaListOptionsData, GMediaListOptionsDataBuilder> {
  _$GMediaListOptionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<String?>? _sectionOrder;
  ListBuilder<String?> get sectionOrder =>
      _$this._sectionOrder ??= new ListBuilder<String?>();
  set sectionOrder(ListBuilder<String?>? sectionOrder) =>
      _$this._sectionOrder = sectionOrder;

  ListBuilder<String?>? _customLists;
  ListBuilder<String?> get customLists =>
      _$this._customLists ??= new ListBuilder<String?>();
  set customLists(ListBuilder<String?>? customLists) =>
      _$this._customLists = customLists;

  GMediaListOptionsDataBuilder() {
    GMediaListOptionsData._initializeBuilder(this);
  }

  GMediaListOptionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sectionOrder = $v.sectionOrder?.toBuilder();
      _customLists = $v.customLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaListOptionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaListOptionsData;
  }

  @override
  void update(void Function(GMediaListOptionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaListOptionsData build() => _build();

  _$GMediaListOptionsData _build() {
    _$GMediaListOptionsData _$result;
    try {
      _$result = _$v ??
          new _$GMediaListOptionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GMediaListOptionsData', 'G__typename'),
              sectionOrder: _sectionOrder?.build(),
              customLists: _customLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sectionOrder';
        _sectionOrder?.build();
        _$failedField = 'customLists';
        _customLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GMediaListOptionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
