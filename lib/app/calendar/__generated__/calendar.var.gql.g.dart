// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCalendarScheduleVars> _$gCalendarScheduleVarsSerializer =
    new _$GCalendarScheduleVarsSerializer();

class _$GCalendarScheduleVarsSerializer
    implements StructuredSerializer<GCalendarScheduleVars> {
  @override
  final Iterable<Type> types = const [
    GCalendarScheduleVars,
    _$GCalendarScheduleVars
  ];
  @override
  final String wireName = 'GCalendarScheduleVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCalendarScheduleVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.start;
    if (value != null) {
      result
        ..add('start')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.end;
    if (value != null) {
      result
        ..add('end')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GCalendarScheduleVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCalendarScheduleVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCalendarScheduleVars extends GCalendarScheduleVars {
  @override
  final int? start;
  @override
  final int? end;

  factory _$GCalendarScheduleVars(
          [void Function(GCalendarScheduleVarsBuilder)? updates]) =>
      (new GCalendarScheduleVarsBuilder()..update(updates))._build();

  _$GCalendarScheduleVars._({this.start, this.end}) : super._();

  @override
  GCalendarScheduleVars rebuild(
          void Function(GCalendarScheduleVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCalendarScheduleVarsBuilder toBuilder() =>
      new GCalendarScheduleVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCalendarScheduleVars &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCalendarScheduleVars')
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class GCalendarScheduleVarsBuilder
    implements Builder<GCalendarScheduleVars, GCalendarScheduleVarsBuilder> {
  _$GCalendarScheduleVars? _$v;

  int? _start;
  int? get start => _$this._start;
  set start(int? start) => _$this._start = start;

  int? _end;
  int? get end => _$this._end;
  set end(int? end) => _$this._end = end;

  GCalendarScheduleVarsBuilder();

  GCalendarScheduleVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCalendarScheduleVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCalendarScheduleVars;
  }

  @override
  void update(void Function(GCalendarScheduleVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCalendarScheduleVars build() => _build();

  _$GCalendarScheduleVars _build() {
    final _$result =
        _$v ?? new _$GCalendarScheduleVars._(start: start, end: end);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
