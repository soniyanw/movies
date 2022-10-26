// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'castcredits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Castcredits> _$castcreditsSerializer = new _$CastcreditsSerializer();

class _$CastcreditsSerializer implements StructuredSerializer<Castcredits> {
  @override
  final Iterable<Type> types = const [Castcredits, _$Castcredits];
  @override
  final String wireName = 'Castcredits';

  @override
  Iterable<Object?> serialize(Serializers serializers, Castcredits object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.biography;
    if (value != null) {
      result
        ..add('biography')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deathday;
    if (value != null) {
      result
        ..add('deathday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imdb_id;
    if (value != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.place_of_birth;
    if (value != null) {
      result
        ..add('place_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moviecredits;
    if (value != null) {
      result
        ..add('moviecredits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    value = object.tvcredits;
    if (value != null) {
      result
        ..add('tvcredits')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    value = object.profile_path;
    if (value != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Castcredits deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastcreditsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'biography':
          result.biography = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deathday':
          result.deathday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imdb_id':
          result.imdb_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'place_of_birth':
          result.place_of_birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moviecredits':
          result.moviecredits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
        case 'tvcredits':
          result.tvcredits.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
        case 'profile_path':
          result.profile_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Castcredits extends Castcredits {
  @override
  final String? name;
  @override
  final String? biography;
  @override
  final String? birthday;
  @override
  final String? deathday;
  @override
  final int? gender;
  @override
  final String? imdb_id;
  @override
  final String? place_of_birth;
  @override
  final BuiltList<dynamic>? moviecredits;
  @override
  final BuiltList<dynamic>? tvcredits;
  @override
  final String? profile_path;

  factory _$Castcredits([void Function(CastcreditsBuilder)? updates]) =>
      (new CastcreditsBuilder()..update(updates))._build();

  _$Castcredits._(
      {this.name,
      this.biography,
      this.birthday,
      this.deathday,
      this.gender,
      this.imdb_id,
      this.place_of_birth,
      this.moviecredits,
      this.tvcredits,
      this.profile_path})
      : super._();

  @override
  Castcredits rebuild(void Function(CastcreditsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastcreditsBuilder toBuilder() => new CastcreditsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Castcredits &&
        name == other.name &&
        biography == other.biography &&
        birthday == other.birthday &&
        deathday == other.deathday &&
        gender == other.gender &&
        imdb_id == other.imdb_id &&
        place_of_birth == other.place_of_birth &&
        moviecredits == other.moviecredits &&
        tvcredits == other.tvcredits &&
        profile_path == other.profile_path;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        biography.hashCode),
                                    birthday.hashCode),
                                deathday.hashCode),
                            gender.hashCode),
                        imdb_id.hashCode),
                    place_of_birth.hashCode),
                moviecredits.hashCode),
            tvcredits.hashCode),
        profile_path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Castcredits')
          ..add('name', name)
          ..add('biography', biography)
          ..add('birthday', birthday)
          ..add('deathday', deathday)
          ..add('gender', gender)
          ..add('imdb_id', imdb_id)
          ..add('place_of_birth', place_of_birth)
          ..add('moviecredits', moviecredits)
          ..add('tvcredits', tvcredits)
          ..add('profile_path', profile_path))
        .toString();
  }
}

class CastcreditsBuilder implements Builder<Castcredits, CastcreditsBuilder> {
  _$Castcredits? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _biography;
  String? get biography => _$this._biography;
  set biography(String? biography) => _$this._biography = biography;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _deathday;
  String? get deathday => _$this._deathday;
  set deathday(String? deathday) => _$this._deathday = deathday;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  String? _imdb_id;
  String? get imdb_id => _$this._imdb_id;
  set imdb_id(String? imdb_id) => _$this._imdb_id = imdb_id;

  String? _place_of_birth;
  String? get place_of_birth => _$this._place_of_birth;
  set place_of_birth(String? place_of_birth) =>
      _$this._place_of_birth = place_of_birth;

  ListBuilder<dynamic>? _moviecredits;
  ListBuilder<dynamic> get moviecredits =>
      _$this._moviecredits ??= new ListBuilder<dynamic>();
  set moviecredits(ListBuilder<dynamic>? moviecredits) =>
      _$this._moviecredits = moviecredits;

  ListBuilder<dynamic>? _tvcredits;
  ListBuilder<dynamic> get tvcredits =>
      _$this._tvcredits ??= new ListBuilder<dynamic>();
  set tvcredits(ListBuilder<dynamic>? tvcredits) =>
      _$this._tvcredits = tvcredits;

  String? _profile_path;
  String? get profile_path => _$this._profile_path;
  set profile_path(String? profile_path) => _$this._profile_path = profile_path;

  CastcreditsBuilder();

  CastcreditsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _biography = $v.biography;
      _birthday = $v.birthday;
      _deathday = $v.deathday;
      _gender = $v.gender;
      _imdb_id = $v.imdb_id;
      _place_of_birth = $v.place_of_birth;
      _moviecredits = $v.moviecredits?.toBuilder();
      _tvcredits = $v.tvcredits?.toBuilder();
      _profile_path = $v.profile_path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Castcredits other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Castcredits;
  }

  @override
  void update(void Function(CastcreditsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Castcredits build() => _build();

  _$Castcredits _build() {
    _$Castcredits _$result;
    try {
      _$result = _$v ??
          new _$Castcredits._(
              name: name,
              biography: biography,
              birthday: birthday,
              deathday: deathday,
              gender: gender,
              imdb_id: imdb_id,
              place_of_birth: place_of_birth,
              moviecredits: _moviecredits?.build(),
              tvcredits: _tvcredits?.build(),
              profile_path: profile_path);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'moviecredits';
        _moviecredits?.build();
        _$failedField = 'tvcredits';
        _tvcredits?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Castcredits', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
