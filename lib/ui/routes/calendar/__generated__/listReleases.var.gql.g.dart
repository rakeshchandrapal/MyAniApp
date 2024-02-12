// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listReleases.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GReleasesListVars> _$gReleasesListVarsSerializer =
    new _$GReleasesListVarsSerializer();

class _$GReleasesListVarsSerializer
    implements StructuredSerializer<GReleasesListVars> {
  @override
  final Iterable<Type> types = const [GReleasesListVars, _$GReleasesListVars];
  @override
  final String wireName = 'GReleasesListVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GReleasesListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GReleasesListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GReleasesListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GReleasesListVars extends GReleasesListVars {
  @override
  final int? page;

  factory _$GReleasesListVars(
          [void Function(GReleasesListVarsBuilder)? updates]) =>
      (new GReleasesListVarsBuilder()..update(updates))._build();

  _$GReleasesListVars._({this.page}) : super._();

  @override
  GReleasesListVars rebuild(void Function(GReleasesListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GReleasesListVarsBuilder toBuilder() =>
      new GReleasesListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GReleasesListVars && page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GReleasesListVars')
          ..add('page', page))
        .toString();
  }
}

class GReleasesListVarsBuilder
    implements Builder<GReleasesListVars, GReleasesListVarsBuilder> {
  _$GReleasesListVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  GReleasesListVarsBuilder();

  GReleasesListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GReleasesListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GReleasesListVars;
  }

  @override
  void update(void Function(GReleasesListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GReleasesListVars build() => _build();

  _$GReleasesListVars _build() {
    final _$result = _$v ?? new _$GReleasesListVars._(page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
