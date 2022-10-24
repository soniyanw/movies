// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moviedetails.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Moviedetails> _$moviedetailsSerializer =
    new _$MoviedetailsSerializer();

class _$MoviedetailsSerializer implements StructuredSerializer<Moviedetails> {
  @override
  final Iterable<Type> types = const [Moviedetails, _$Moviedetails];
  @override
  final String wireName = 'Moviedetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, Moviedetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdrop_path,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'original_title',
      serializers.serialize(object.original_title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'poster_path',
      serializers.serialize(object.poster_path,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.release_date,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.vote_average,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.vote_count,
          specifiedType: const FullType(int)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Moviedetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviedetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'backdrop_path':
          result.backdrop_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'poster_path':
          result.poster_path = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'vote_count':
          result.vote_count = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Moviedetails extends Moviedetails {
  @override
  final bool adult;
  @override
  final String backdrop_path;
  @override
  final int id;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final String poster_path;
  @override
  final String release_date;
  @override
  final String title;
  @override
  final double vote_average;
  @override
  final int vote_count;
  @override
  final int page;

  factory _$Moviedetails([void Function(MoviedetailsBuilder)? updates]) =>
      (new MoviedetailsBuilder()..update(updates))._build();

  _$Moviedetails._(
      {required this.adult,
      required this.backdrop_path,
      required this.id,
      required this.original_title,
      required this.overview,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.vote_average,
      required this.vote_count,
      required this.page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(adult, r'Moviedetails', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdrop_path, r'Moviedetails', 'backdrop_path');
    BuiltValueNullFieldError.checkNotNull(id, r'Moviedetails', 'id');
    BuiltValueNullFieldError.checkNotNull(
        original_title, r'Moviedetails', 'original_title');
    BuiltValueNullFieldError.checkNotNull(
        overview, r'Moviedetails', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        poster_path, r'Moviedetails', 'poster_path');
    BuiltValueNullFieldError.checkNotNull(
        release_date, r'Moviedetails', 'release_date');
    BuiltValueNullFieldError.checkNotNull(title, r'Moviedetails', 'title');
    BuiltValueNullFieldError.checkNotNull(
        vote_average, r'Moviedetails', 'vote_average');
    BuiltValueNullFieldError.checkNotNull(
        vote_count, r'Moviedetails', 'vote_count');
    BuiltValueNullFieldError.checkNotNull(page, r'Moviedetails', 'page');
  }

  @override
  Moviedetails rebuild(void Function(MoviedetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviedetailsBuilder toBuilder() => new MoviedetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Moviedetails &&
        adult == other.adult &&
        backdrop_path == other.backdrop_path &&
        id == other.id &&
        original_title == other.original_title &&
        overview == other.overview &&
        poster_path == other.poster_path &&
        release_date == other.release_date &&
        title == other.title &&
        vote_average == other.vote_average &&
        vote_count == other.vote_count &&
        page == other.page;
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
                                        $jc($jc(0, adult.hashCode),
                                            backdrop_path.hashCode),
                                        id.hashCode),
                                    original_title.hashCode),
                                overview.hashCode),
                            poster_path.hashCode),
                        release_date.hashCode),
                    title.hashCode),
                vote_average.hashCode),
            vote_count.hashCode),
        page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Moviedetails')
          ..add('adult', adult)
          ..add('backdrop_path', backdrop_path)
          ..add('id', id)
          ..add('original_title', original_title)
          ..add('overview', overview)
          ..add('poster_path', poster_path)
          ..add('release_date', release_date)
          ..add('title', title)
          ..add('vote_average', vote_average)
          ..add('vote_count', vote_count)
          ..add('page', page))
        .toString();
  }
}

class MoviedetailsBuilder
    implements Builder<Moviedetails, MoviedetailsBuilder> {
  _$Moviedetails? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdrop_path;
  String? get backdrop_path => _$this._backdrop_path;
  set backdrop_path(String? backdrop_path) =>
      _$this._backdrop_path = backdrop_path;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _original_title;
  String? get original_title => _$this._original_title;
  set original_title(String? original_title) =>
      _$this._original_title = original_title;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  String? _poster_path;
  String? get poster_path => _$this._poster_path;
  set poster_path(String? poster_path) => _$this._poster_path = poster_path;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  double? _vote_average;
  double? get vote_average => _$this._vote_average;
  set vote_average(double? vote_average) => _$this._vote_average = vote_average;

  int? _vote_count;
  int? get vote_count => _$this._vote_count;
  set vote_count(int? vote_count) => _$this._vote_count = vote_count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  MoviedetailsBuilder();

  MoviedetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdrop_path = $v.backdrop_path;
      _id = $v.id;
      _original_title = $v.original_title;
      _overview = $v.overview;
      _poster_path = $v.poster_path;
      _release_date = $v.release_date;
      _title = $v.title;
      _vote_average = $v.vote_average;
      _vote_count = $v.vote_count;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Moviedetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Moviedetails;
  }

  @override
  void update(void Function(MoviedetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Moviedetails build() => _build();

  _$Moviedetails _build() {
    final _$result = _$v ??
        new _$Moviedetails._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, r'Moviedetails', 'adult'),
            backdrop_path: BuiltValueNullFieldError.checkNotNull(
                backdrop_path, r'Moviedetails', 'backdrop_path'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'Moviedetails', 'id'),
            original_title: BuiltValueNullFieldError.checkNotNull(
                original_title, r'Moviedetails', 'original_title'),
            overview: BuiltValueNullFieldError.checkNotNull(
                overview, r'Moviedetails', 'overview'),
            poster_path: BuiltValueNullFieldError.checkNotNull(
                poster_path, r'Moviedetails', 'poster_path'),
            release_date: BuiltValueNullFieldError.checkNotNull(
                release_date, r'Moviedetails', 'release_date'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'Moviedetails', 'title'),
            vote_average: BuiltValueNullFieldError.checkNotNull(
                vote_average, r'Moviedetails', 'vote_average'),
            vote_count: BuiltValueNullFieldError.checkNotNull(vote_count, r'Moviedetails', 'vote_count'),
            page: BuiltValueNullFieldError.checkNotNull(page, r'Moviedetails', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
