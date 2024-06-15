// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_editor.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMediaEntryVars> _$gMediaEntryVarsSerializer =
    new _$GMediaEntryVarsSerializer();
Serializer<GSaveMediaListEntryVars> _$gSaveMediaListEntryVarsSerializer =
    new _$GSaveMediaListEntryVarsSerializer();
Serializer<GDeleteMediaListEntryVars> _$gDeleteMediaListEntryVarsSerializer =
    new _$GDeleteMediaListEntryVarsSerializer();

class _$GMediaEntryVarsSerializer
    implements StructuredSerializer<GMediaEntryVars> {
  @override
  final Iterable<Type> types = const [GMediaEntryVars, _$GMediaEntryVars];
  @override
  final String wireName = 'GMediaEntryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GMediaEntryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GMediaEntryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMediaEntryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GSaveMediaListEntryVarsSerializer
    implements StructuredSerializer<GSaveMediaListEntryVars> {
  @override
  final Iterable<Type> types = const [
    GSaveMediaListEntryVars,
    _$GSaveMediaListEntryVars
  ];
  @override
  final String wireName = 'GSaveMediaListEntryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSaveMediaListEntryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mediaId;
    if (value != null) {
      result
        ..add('mediaId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaListStatus)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.scoreRaw;
    if (value != null) {
      result
        ..add('scoreRaw')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progressVolumes;
    if (value != null) {
      result
        ..add('progressVolumes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.repeat;
    if (value != null) {
      result
        ..add('repeat')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.private;
    if (value != null) {
      result
        ..add('private')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hiddenFromStatusLists;
    if (value != null) {
      result
        ..add('hiddenFromStatusLists')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customLists;
    if (value != null) {
      result
        ..add('customLists')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(String)])));
    }
    value = object.advancedScores;
    if (value != null) {
      result
        ..add('advancedScores')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(double)])));
    }
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GFuzzyDateInput)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GFuzzyDateInput)));
    }
    return result;
  }

  @override
  GSaveMediaListEntryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSaveMediaListEntryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'mediaId':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaListStatus))
              as _i2.GMediaListStatus?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'scoreRaw':
          result.scoreRaw = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'progressVolumes':
          result.progressVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repeat':
          result.repeat = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hiddenFromStatusLists':
          result.hiddenFromStatusLists = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'customLists':
          result.customLists.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(String)]))!
              as BuiltList<Object?>);
          break;
        case 'advancedScores':
          result.advancedScores.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(double)]))!
              as BuiltList<Object?>);
          break;
        case 'startedAt':
          result.startedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GFuzzyDateInput))!
              as _i2.GFuzzyDateInput);
          break;
        case 'completedAt':
          result.completedAt.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GFuzzyDateInput))!
              as _i2.GFuzzyDateInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteMediaListEntryVarsSerializer
    implements StructuredSerializer<GDeleteMediaListEntryVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteMediaListEntryVars,
    _$GDeleteMediaListEntryVars
  ];
  @override
  final String wireName = 'GDeleteMediaListEntryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteMediaListEntryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GDeleteMediaListEntryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteMediaListEntryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMediaEntryVars extends GMediaEntryVars {
  @override
  final int? mediaId;
  @override
  final int? userId;

  factory _$GMediaEntryVars([void Function(GMediaEntryVarsBuilder)? updates]) =>
      (new GMediaEntryVarsBuilder()..update(updates))._build();

  _$GMediaEntryVars._({this.mediaId, this.userId}) : super._();

  @override
  GMediaEntryVars rebuild(void Function(GMediaEntryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMediaEntryVarsBuilder toBuilder() =>
      new GMediaEntryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMediaEntryVars &&
        mediaId == other.mediaId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GMediaEntryVars')
          ..add('mediaId', mediaId)
          ..add('userId', userId))
        .toString();
  }
}

class GMediaEntryVarsBuilder
    implements Builder<GMediaEntryVars, GMediaEntryVarsBuilder> {
  _$GMediaEntryVars? _$v;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  GMediaEntryVarsBuilder();

  GMediaEntryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mediaId = $v.mediaId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMediaEntryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMediaEntryVars;
  }

  @override
  void update(void Function(GMediaEntryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GMediaEntryVars build() => _build();

  _$GMediaEntryVars _build() {
    final _$result =
        _$v ?? new _$GMediaEntryVars._(mediaId: mediaId, userId: userId);
    replace(_$result);
    return _$result;
  }
}

class _$GSaveMediaListEntryVars extends GSaveMediaListEntryVars {
  @override
  final int? id;
  @override
  final int? mediaId;
  @override
  final _i2.GMediaListStatus? status;
  @override
  final double? score;
  @override
  final int? scoreRaw;
  @override
  final int? progress;
  @override
  final int? progressVolumes;
  @override
  final int? repeat;
  @override
  final int? priority;
  @override
  final bool? private;
  @override
  final String? notes;
  @override
  final bool? hiddenFromStatusLists;
  @override
  final BuiltList<String?>? customLists;
  @override
  final BuiltList<double?>? advancedScores;
  @override
  final _i2.GFuzzyDateInput? startedAt;
  @override
  final _i2.GFuzzyDateInput? completedAt;

  factory _$GSaveMediaListEntryVars(
          [void Function(GSaveMediaListEntryVarsBuilder)? updates]) =>
      (new GSaveMediaListEntryVarsBuilder()..update(updates))._build();

  _$GSaveMediaListEntryVars._(
      {this.id,
      this.mediaId,
      this.status,
      this.score,
      this.scoreRaw,
      this.progress,
      this.progressVolumes,
      this.repeat,
      this.priority,
      this.private,
      this.notes,
      this.hiddenFromStatusLists,
      this.customLists,
      this.advancedScores,
      this.startedAt,
      this.completedAt})
      : super._();

  @override
  GSaveMediaListEntryVars rebuild(
          void Function(GSaveMediaListEntryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSaveMediaListEntryVarsBuilder toBuilder() =>
      new GSaveMediaListEntryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSaveMediaListEntryVars &&
        id == other.id &&
        mediaId == other.mediaId &&
        status == other.status &&
        score == other.score &&
        scoreRaw == other.scoreRaw &&
        progress == other.progress &&
        progressVolumes == other.progressVolumes &&
        repeat == other.repeat &&
        priority == other.priority &&
        private == other.private &&
        notes == other.notes &&
        hiddenFromStatusLists == other.hiddenFromStatusLists &&
        customLists == other.customLists &&
        advancedScores == other.advancedScores &&
        startedAt == other.startedAt &&
        completedAt == other.completedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, mediaId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jc(_$hash, scoreRaw.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, progressVolumes.hashCode);
    _$hash = $jc(_$hash, repeat.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, private.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, hiddenFromStatusLists.hashCode);
    _$hash = $jc(_$hash, customLists.hashCode);
    _$hash = $jc(_$hash, advancedScores.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, completedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GSaveMediaListEntryVars')
          ..add('id', id)
          ..add('mediaId', mediaId)
          ..add('status', status)
          ..add('score', score)
          ..add('scoreRaw', scoreRaw)
          ..add('progress', progress)
          ..add('progressVolumes', progressVolumes)
          ..add('repeat', repeat)
          ..add('priority', priority)
          ..add('private', private)
          ..add('notes', notes)
          ..add('hiddenFromStatusLists', hiddenFromStatusLists)
          ..add('customLists', customLists)
          ..add('advancedScores', advancedScores)
          ..add('startedAt', startedAt)
          ..add('completedAt', completedAt))
        .toString();
  }
}

class GSaveMediaListEntryVarsBuilder
    implements
        Builder<GSaveMediaListEntryVars, GSaveMediaListEntryVarsBuilder> {
  _$GSaveMediaListEntryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _mediaId;
  int? get mediaId => _$this._mediaId;
  set mediaId(int? mediaId) => _$this._mediaId = mediaId;

  _i2.GMediaListStatus? _status;
  _i2.GMediaListStatus? get status => _$this._status;
  set status(_i2.GMediaListStatus? status) => _$this._status = status;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _scoreRaw;
  int? get scoreRaw => _$this._scoreRaw;
  set scoreRaw(int? scoreRaw) => _$this._scoreRaw = scoreRaw;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  int? _progressVolumes;
  int? get progressVolumes => _$this._progressVolumes;
  set progressVolumes(int? progressVolumes) =>
      _$this._progressVolumes = progressVolumes;

  int? _repeat;
  int? get repeat => _$this._repeat;
  set repeat(int? repeat) => _$this._repeat = repeat;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  bool? _private;
  bool? get private => _$this._private;
  set private(bool? private) => _$this._private = private;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  bool? _hiddenFromStatusLists;
  bool? get hiddenFromStatusLists => _$this._hiddenFromStatusLists;
  set hiddenFromStatusLists(bool? hiddenFromStatusLists) =>
      _$this._hiddenFromStatusLists = hiddenFromStatusLists;

  ListBuilder<String?>? _customLists;
  ListBuilder<String?> get customLists =>
      _$this._customLists ??= new ListBuilder<String?>();
  set customLists(ListBuilder<String?>? customLists) =>
      _$this._customLists = customLists;

  ListBuilder<double?>? _advancedScores;
  ListBuilder<double?> get advancedScores =>
      _$this._advancedScores ??= new ListBuilder<double?>();
  set advancedScores(ListBuilder<double?>? advancedScores) =>
      _$this._advancedScores = advancedScores;

  _i2.GFuzzyDateInputBuilder? _startedAt;
  _i2.GFuzzyDateInputBuilder get startedAt =>
      _$this._startedAt ??= new _i2.GFuzzyDateInputBuilder();
  set startedAt(_i2.GFuzzyDateInputBuilder? startedAt) =>
      _$this._startedAt = startedAt;

  _i2.GFuzzyDateInputBuilder? _completedAt;
  _i2.GFuzzyDateInputBuilder get completedAt =>
      _$this._completedAt ??= new _i2.GFuzzyDateInputBuilder();
  set completedAt(_i2.GFuzzyDateInputBuilder? completedAt) =>
      _$this._completedAt = completedAt;

  GSaveMediaListEntryVarsBuilder();

  GSaveMediaListEntryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _mediaId = $v.mediaId;
      _status = $v.status;
      _score = $v.score;
      _scoreRaw = $v.scoreRaw;
      _progress = $v.progress;
      _progressVolumes = $v.progressVolumes;
      _repeat = $v.repeat;
      _priority = $v.priority;
      _private = $v.private;
      _notes = $v.notes;
      _hiddenFromStatusLists = $v.hiddenFromStatusLists;
      _customLists = $v.customLists?.toBuilder();
      _advancedScores = $v.advancedScores?.toBuilder();
      _startedAt = $v.startedAt?.toBuilder();
      _completedAt = $v.completedAt?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSaveMediaListEntryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSaveMediaListEntryVars;
  }

  @override
  void update(void Function(GSaveMediaListEntryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GSaveMediaListEntryVars build() => _build();

  _$GSaveMediaListEntryVars _build() {
    _$GSaveMediaListEntryVars _$result;
    try {
      _$result = _$v ??
          new _$GSaveMediaListEntryVars._(
              id: id,
              mediaId: mediaId,
              status: status,
              score: score,
              scoreRaw: scoreRaw,
              progress: progress,
              progressVolumes: progressVolumes,
              repeat: repeat,
              priority: priority,
              private: private,
              notes: notes,
              hiddenFromStatusLists: hiddenFromStatusLists,
              customLists: _customLists?.build(),
              advancedScores: _advancedScores?.build(),
              startedAt: _startedAt?.build(),
              completedAt: _completedAt?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customLists';
        _customLists?.build();
        _$failedField = 'advancedScores';
        _advancedScores?.build();
        _$failedField = 'startedAt';
        _startedAt?.build();
        _$failedField = 'completedAt';
        _completedAt?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GSaveMediaListEntryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteMediaListEntryVars extends GDeleteMediaListEntryVars {
  @override
  final int? id;

  factory _$GDeleteMediaListEntryVars(
          [void Function(GDeleteMediaListEntryVarsBuilder)? updates]) =>
      (new GDeleteMediaListEntryVarsBuilder()..update(updates))._build();

  _$GDeleteMediaListEntryVars._({this.id}) : super._();

  @override
  GDeleteMediaListEntryVars rebuild(
          void Function(GDeleteMediaListEntryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteMediaListEntryVarsBuilder toBuilder() =>
      new GDeleteMediaListEntryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteMediaListEntryVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteMediaListEntryVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteMediaListEntryVarsBuilder
    implements
        Builder<GDeleteMediaListEntryVars, GDeleteMediaListEntryVarsBuilder> {
  _$GDeleteMediaListEntryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteMediaListEntryVarsBuilder();

  GDeleteMediaListEntryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteMediaListEntryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteMediaListEntryVars;
  }

  @override
  void update(void Function(GDeleteMediaListEntryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteMediaListEntryVars build() => _build();

  _$GDeleteMediaListEntryVars _build() {
    final _$result = _$v ?? new _$GDeleteMediaListEntryVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
