// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetails> _$movieDetailsSerializer =
    new _$MovieDetailsSerializer();

class _$MovieDetailsSerializer implements StructuredSerializer<MovieDetails> {
  @override
  final Iterable<Type> types = const [MovieDetails, _$MovieDetails];
  @override
  final String wireName = 'MovieDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.poster_path;
    if (value != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.release_date;
    if (value != null) {
      result
        ..add('release_date')
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
    value = object.backdrop_path;
    if (value != null) {
      result
        ..add('backdrop_path')
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.first_air_date;
    if (value != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsBuilder();

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
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_air_date':
          result.first_air_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDetails extends MovieDetails {
  @override
  final int? id;
  @override
  final String? poster_path;
  @override
  final String? title;
  @override
  final String? release_date;
  @override
  final double? vote_average;
  @override
  final String? backdrop_path;
  @override
  final String? overview;
  @override
  final String? name;
  @override
  final String? first_air_date;

  factory _$MovieDetails([void Function(MovieDetailsBuilder)? updates]) =>
      (new MovieDetailsBuilder()..update(updates))._build();

  _$MovieDetails._(
      {this.id,
      this.poster_path,
      this.title,
      this.release_date,
      this.vote_average,
      this.backdrop_path,
      this.overview,
      this.name,
      this.first_air_date})
      : super._();

  @override
  MovieDetails rebuild(void Function(MovieDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsBuilder toBuilder() => new MovieDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetails &&
        id == other.id &&
        poster_path == other.poster_path &&
        title == other.title &&
        release_date == other.release_date &&
        vote_average == other.vote_average &&
        backdrop_path == other.backdrop_path &&
        overview == other.overview &&
        name == other.name &&
        first_air_date == other.first_air_date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, id.hashCode), poster_path.hashCode),
                                title.hashCode),
                            release_date.hashCode),
                        vote_average.hashCode),
                    backdrop_path.hashCode),
                overview.hashCode),
            name.hashCode),
        first_air_date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MovieDetails')
          ..add('id', id)
          ..add('poster_path', poster_path)
          ..add('title', title)
          ..add('release_date', release_date)
          ..add('vote_average', vote_average)
          ..add('backdrop_path', backdrop_path)
          ..add('overview', overview)
          ..add('name', name)
          ..add('first_air_date', first_air_date))
        .toString();
  }
}

class MovieDetailsBuilder
    implements Builder<MovieDetails, MovieDetailsBuilder> {
  _$MovieDetails? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  double? _vote_average;
  double? get vote_average => _$this._vote_average;
  set vote_average(double? vote_average) => _$this._vote_average = vote_average;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _first_air_date;
  String? get first_air_date => _$this._first_air_date;
  set first_air_date(String? first_air_date) =>
      _$this._first_air_date = first_air_date;

  MovieDetailsBuilder();

  MovieDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _poster_path = $v.poster_path;
      _title = $v.title;
      _release_date = $v.release_date;
      _vote_average = $v.vote_average;
      _backdrop_path = $v.backdrop_path;
      _overview = $v.overview;
      _name = $v.name;
      _first_air_date = $v.first_air_date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetails;
  }

  @override
  void update(void Function(MovieDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MovieDetails build() => _build();

  _$MovieDetails _build() {
    final _$result = _$v ??
        new _$MovieDetails._(
            id: id,
            poster_path: poster_path,
            title: title,
            release_date: release_date,
            vote_average: vote_average,
            backdrop_path: backdrop_path,
            overview: overview,
            name: name,
            first_air_date: first_air_date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
