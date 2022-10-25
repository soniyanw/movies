// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.popular;
    if (value != null) {
      result
        ..add('popular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MovieDetails)])));
    }
    value = object.toprated;
    if (value != null) {
      result
        ..add('toprated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MovieDetails)])));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MovieDetails)])));
    }
    value = object.currentmovie;
    if (value != null) {
      result
        ..add('currentmovie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MovieDetails)));
    }
    value = object.currentmoviedetails;
    if (value != null) {
      result
        ..add('currentmoviedetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CurrentmovieDetails)));
    }
    value = object.movieid;
    if (value != null) {
      result
        ..add('movieid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.castlist;
    if (value != null) {
      result
        ..add('castlist')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Cast)])));
    }
    value = object.seats;
    if (value != null) {
      result
        ..add('seats')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popular':
          result.popular.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDetails)]))!
              as BuiltList<Object?>);
          break;
        case 'toprated':
          result.toprated.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDetails)]))!
              as BuiltList<Object?>);
          break;
        case 'upcoming':
          result.upcoming.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieDetails)]))!
              as BuiltList<Object?>);
          break;
        case 'currentmovie':
          result.currentmovie.replace(serializers.deserialize(value,
              specifiedType: const FullType(MovieDetails))! as MovieDetails);
          break;
        case 'currentmoviedetails':
          result.currentmoviedetails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CurrentmovieDetails))!
              as CurrentmovieDetails);
          break;
        case 'movieid':
          result.movieid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'castlist':
          result.castlist.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cast)]))!
              as BuiltList<Object?>);
          break;
        case 'seats':
          result.seats = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<MovieDetails>? popular;
  @override
  final BuiltList<MovieDetails>? toprated;
  @override
  final BuiltList<MovieDetails>? upcoming;
  @override
  final MovieDetails? currentmovie;
  @override
  final CurrentmovieDetails? currentmoviedetails;
  @override
  final String? movieid;
  @override
  final BuiltList<Cast>? castlist;
  @override
  final int? seats;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {this.popular,
      this.toprated,
      this.upcoming,
      this.currentmovie,
      this.currentmoviedetails,
      this.movieid,
      this.castlist,
      this.seats})
      : super._();

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        popular == other.popular &&
        toprated == other.toprated &&
        upcoming == other.upcoming &&
        currentmovie == other.currentmovie &&
        currentmoviedetails == other.currentmoviedetails &&
        movieid == other.movieid &&
        castlist == other.castlist &&
        seats == other.seats;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, popular.hashCode), toprated.hashCode),
                            upcoming.hashCode),
                        currentmovie.hashCode),
                    currentmoviedetails.hashCode),
                movieid.hashCode),
            castlist.hashCode),
        seats.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('popular', popular)
          ..add('toprated', toprated)
          ..add('upcoming', upcoming)
          ..add('currentmovie', currentmovie)
          ..add('currentmoviedetails', currentmoviedetails)
          ..add('movieid', movieid)
          ..add('castlist', castlist)
          ..add('seats', seats))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<MovieDetails>? _popular;
  ListBuilder<MovieDetails> get popular =>
      _$this._popular ??= new ListBuilder<MovieDetails>();
  set popular(ListBuilder<MovieDetails>? popular) => _$this._popular = popular;

  ListBuilder<MovieDetails>? _toprated;
  ListBuilder<MovieDetails> get toprated =>
      _$this._toprated ??= new ListBuilder<MovieDetails>();
  set toprated(ListBuilder<MovieDetails>? toprated) =>
      _$this._toprated = toprated;

  ListBuilder<MovieDetails>? _upcoming;
  ListBuilder<MovieDetails> get upcoming =>
      _$this._upcoming ??= new ListBuilder<MovieDetails>();
  set upcoming(ListBuilder<MovieDetails>? upcoming) =>
      _$this._upcoming = upcoming;

  MovieDetailsBuilder? _currentmovie;
  MovieDetailsBuilder get currentmovie =>
      _$this._currentmovie ??= new MovieDetailsBuilder();
  set currentmovie(MovieDetailsBuilder? currentmovie) =>
      _$this._currentmovie = currentmovie;

  CurrentmovieDetailsBuilder? _currentmoviedetails;
  CurrentmovieDetailsBuilder get currentmoviedetails =>
      _$this._currentmoviedetails ??= new CurrentmovieDetailsBuilder();
  set currentmoviedetails(CurrentmovieDetailsBuilder? currentmoviedetails) =>
      _$this._currentmoviedetails = currentmoviedetails;

  String? _movieid;
  String? get movieid => _$this._movieid;
  set movieid(String? movieid) => _$this._movieid = movieid;

  ListBuilder<Cast>? _castlist;
  ListBuilder<Cast> get castlist =>
      _$this._castlist ??= new ListBuilder<Cast>();
  set castlist(ListBuilder<Cast>? castlist) => _$this._castlist = castlist;

  int? _seats;
  int? get seats => _$this._seats;
  set seats(int? seats) => _$this._seats = seats;

  AppStateBuilder() {
    AppState._initializeBuilder(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popular = $v.popular?.toBuilder();
      _toprated = $v.toprated?.toBuilder();
      _upcoming = $v.upcoming?.toBuilder();
      _currentmovie = $v.currentmovie?.toBuilder();
      _currentmoviedetails = $v.currentmoviedetails?.toBuilder();
      _movieid = $v.movieid;
      _castlist = $v.castlist?.toBuilder();
      _seats = $v.seats;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              popular: _popular?.build(),
              toprated: _toprated?.build(),
              upcoming: _upcoming?.build(),
              currentmovie: _currentmovie?.build(),
              currentmoviedetails: _currentmoviedetails?.build(),
              movieid: movieid,
              castlist: _castlist?.build(),
              seats: seats);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popular';
        _popular?.build();
        _$failedField = 'toprated';
        _toprated?.build();
        _$failedField = 'upcoming';
        _upcoming?.build();
        _$failedField = 'currentmovie';
        _currentmovie?.build();
        _$failedField = 'currentmoviedetails';
        _currentmoviedetails?.build();

        _$failedField = 'castlist';
        _castlist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
