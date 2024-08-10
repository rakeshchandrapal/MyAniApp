// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GThreadFragmentReq> _$gThreadFragmentReqSerializer =
    new _$GThreadFragmentReqSerializer();

class _$GThreadFragmentReqSerializer
    implements StructuredSerializer<GThreadFragmentReq> {
  @override
  final Iterable<Type> types = const [GThreadFragmentReq, _$GThreadFragmentReq];
  @override
  final String wireName = 'GThreadFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GThreadFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GThreadFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GThreadFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GThreadFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GThreadFragmentVars))!
              as _i3.GThreadFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GThreadFragmentReq extends GThreadFragmentReq {
  @override
  final _i3.GThreadFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GThreadFragmentReq(
          [void Function(GThreadFragmentReqBuilder)? updates]) =>
      (new GThreadFragmentReqBuilder()..update(updates))._build();

  _$GThreadFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(vars, r'GThreadFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GThreadFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GThreadFragmentReq', 'idFields');
  }

  @override
  GThreadFragmentReq rebuild(
          void Function(GThreadFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GThreadFragmentReqBuilder toBuilder() =>
      new GThreadFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GThreadFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GThreadFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GThreadFragmentReqBuilder
    implements Builder<GThreadFragmentReq, GThreadFragmentReqBuilder> {
  _$GThreadFragmentReq? _$v;

  _i3.GThreadFragmentVarsBuilder? _vars;
  _i3.GThreadFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GThreadFragmentVarsBuilder();
  set vars(_i3.GThreadFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GThreadFragmentReqBuilder() {
    GThreadFragmentReq._initializeBuilder(this);
  }

  GThreadFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GThreadFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GThreadFragmentReq;
  }

  @override
  void update(void Function(GThreadFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GThreadFragmentReq build() => _build();

  _$GThreadFragmentReq _build() {
    _$GThreadFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GThreadFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GThreadFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GThreadFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GThreadFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
