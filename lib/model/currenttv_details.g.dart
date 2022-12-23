// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currenttv_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrenttvDetails> _$currenttvDetailsSerializer =
    new _$CurrenttvDetailsSerializer();

class _$CurrenttvDetailsSerializer
    implements StructuredSerializer<CurrenttvDetails> {
  @override
  final Iterable<Type> types = const [CurrenttvDetails, _$CurrenttvDetails];
  @override
  final String wireName = 'CurrenttvDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrenttvDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.first_air_date;
    if (value != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last_air_date;
    if (value != null) {
      result
        ..add('last_air_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number_of_episodes;
    if (value != null) {
      result
        ..add('number_of_episodes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.number_of_seasons;
    if (value != null) {
      result
        ..add('number_of_seasons')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.original_name;
    if (value != null) {
      result
        ..add('original_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.backdrop_path;
    if (value != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vote_average;
    if (value != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.vote_count;
    if (value != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CurrenttvDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrenttvDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first_air_date':
          result.first_air_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_air_date':
          result.last_air_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_episodes':
          result.number_of_episodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'number_of_seasons':
          result.number_of_seasons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'original_name':
          result.original_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrenttvDetails extends CurrenttvDetails {
  @override
  final String? first_air_date;
  @override
  final String? last_air_date;
  @override
  final int? number_of_episodes;
  @override
  final int? number_of_seasons;
  @override
  final String? original_name;
  @override
  final String? overview;
  @override
  final String? backdrop_path;
  @override
  final double? vote_average;
  @override
  final double? vote_count;
  @override
  final String? type;
  @override
  final int? id;

  factory _$CurrenttvDetails(
          [void Function(CurrenttvDetailsBuilder)? updates]) =>
      (new CurrenttvDetailsBuilder()..update(updates))._build();

  _$CurrenttvDetails._(
      {this.first_air_date,
      this.last_air_date,
      this.number_of_episodes,
      this.number_of_seasons,
      this.original_name,
      this.overview,
      this.backdrop_path,
      this.vote_average,
      this.vote_count,
      this.type,
      this.id})
      : super._();

  @override
  CurrenttvDetails rebuild(void Function(CurrenttvDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrenttvDetailsBuilder toBuilder() =>
      new CurrenttvDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrenttvDetails &&
        first_air_date == other.first_air_date &&
        last_air_date == other.last_air_date &&
        number_of_episodes == other.number_of_episodes &&
        number_of_seasons == other.number_of_seasons &&
        original_name == other.original_name &&
        overview == other.overview &&
        backdrop_path == other.backdrop_path &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count &&
        type == other.type &&
        id == other.id;
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
                                    $jc(
                                        $jc($jc(0, first_air_date.hashCode),
                                            last_air_date.hashCode),
                                        number_of_episodes.hashCode),
                                    number_of_seasons.hashCode),
                                original_name.hashCode),
                            overview.hashCode),
                        backdrop_path.hashCode),
                    vote_average.hashCode),
                vote_count.hashCode),
            type.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrenttvDetails')
          ..add('first_air_date', first_air_date)
          ..add('last_air_date', last_air_date)
          ..add('number_of_episodes', number_of_episodes)
          ..add('number_of_seasons', number_of_seasons)
          ..add('original_name', original_name)
          ..add('overview', overview)
          ..add('backdrop_path', backdrop_path)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count)
          ..add('type', type)
          ..add('id', id))
        .toString();
  }
}

class CurrenttvDetailsBuilder
    implements Builder<CurrenttvDetails, CurrenttvDetailsBuilder> {
  _$CurrenttvDetails? _$v;

  String? _first_air_date;
  String? get first_air_date => _$this._first_air_date;
  set first_air_date(String? first_air_date) =>
      _$this._first_air_date = first_air_date;

  String? _last_air_date;
  String? get last_air_date => _$this._last_air_date;
  set last_air_date(String? last_air_date) =>
      _$this._last_air_date = last_air_date;

  int? _number_of_episodes;
  int? get number_of_episodes => _$this._number_of_episodes;
  set number_of_episodes(int? number_of_episodes) =>
      _$this._number_of_episodes = number_of_episodes;

  int? _number_of_seasons;
  int? get number_of_seasons => _$this._number_of_seasons;
  set number_of_seasons(int? number_of_seasons) =>
      _$this._number_of_seasons = number_of_seasons;

  String? _original_name;
  String? get original_name => _$this._original_name;
  set original_name(String? original_name) =>
      _$this._original_name = original_name;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  double? _vote_average;
  double? get vote_average => _$this._vote_average;
  set vote_average(double? vote_average) => _$this._vote_average = vote_average;

  double? _vote_count;
  double? get vote_count => _$this._vote_count;
  set vote_count(double? vote_count) => _$this._vote_count = vote_count;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CurrenttvDetailsBuilder();

  CurrenttvDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _first_air_date = $v.first_air_date;
      _last_air_date = $v.last_air_date;
      _number_of_episodes = $v.number_of_episodes;
      _number_of_seasons = $v.number_of_seasons;
      _original_name = $v.original_name;
      _overview = $v.overview;
      _backdrop_path = $v.backdrop_path;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _type = $v.type;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrenttvDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrenttvDetails;
  }

  @override
  void update(void Function(CurrenttvDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrenttvDetails build() => _build();

  _$CurrenttvDetails _build() {
    final _$result = _$v ??
        new _$CurrenttvDetails._(
            first_air_date: first_air_date,
            last_air_date: last_air_date,
            number_of_episodes: number_of_episodes,
            number_of_seasons: number_of_seasons,
            original_name: original_name,
            overview: overview,
            backdrop_path: backdrop_path,
            vote_average: vote_average,
            vote_count: vote_count,
            type: type,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
