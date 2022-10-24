// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getmovies.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Getmovies> _$getmoviesSerializer = new _$GetmoviesSerializer();

class _$GetmoviesSerializer implements StructuredSerializer<Getmovies> {
  @override
  final Iterable<Type> types = const [Getmovies, _$Getmovies];
  @override
  final String wireName = 'Getmovies';

  @override
  Iterable<Object?> serialize(Serializers serializers, Getmovies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.popular;
    if (value != null) {
      result
        ..add('popular')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Map, const [const FullType(String), const FullType(dynamic)])
            ])));
    }
    value = object.toprated;
    if (value != null) {
      result
        ..add('toprated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Map, const [const FullType(String), const FullType(dynamic)])
            ])));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  Map, const [const FullType(String), const FullType(dynamic)])
            ])));
    }
    return result;
  }

  @override
  Getmovies deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetmoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'popular':
          result.popular.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Map,
                    const [const FullType(String), const FullType(dynamic)])
              ]))! as BuiltList<Object?>);
          break;
        case 'toprated':
          result.toprated.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Map,
                    const [const FullType(String), const FullType(dynamic)])
              ]))! as BuiltList<Object?>);
          break;
        case 'upcoming':
          result.upcoming.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(Map,
                    const [const FullType(String), const FullType(dynamic)])
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Getmovies extends Getmovies {
  @override
  final BuiltList<Map<String, dynamic>>? popular;
  @override
  final BuiltList<Map<String, dynamic>>? toprated;
  @override
  final BuiltList<Map<String, dynamic>>? upcoming;

  factory _$Getmovies([void Function(GetmoviesBuilder)? updates]) =>
      (new GetmoviesBuilder()..update(updates))._build();

  _$Getmovies._({this.popular, this.toprated, this.upcoming}) : super._();

  @override
  Getmovies rebuild(void Function(GetmoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetmoviesBuilder toBuilder() => new GetmoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Getmovies &&
        popular == other.popular &&
        toprated == other.toprated &&
        upcoming == other.upcoming;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, popular.hashCode), toprated.hashCode), upcoming.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Getmovies')
          ..add('popular', popular)
          ..add('toprated', toprated)
          ..add('upcoming', upcoming))
        .toString();
  }
}

class GetmoviesBuilder implements Builder<Getmovies, GetmoviesBuilder> {
  _$Getmovies? _$v;

  ListBuilder<Map<String, dynamic>>? _popular;
  ListBuilder<Map<String, dynamic>> get popular =>
      _$this._popular ??= new ListBuilder<Map<String, dynamic>>();
  set popular(ListBuilder<Map<String, dynamic>>? popular) =>
      _$this._popular = popular;

  ListBuilder<Map<String, dynamic>>? _toprated;
  ListBuilder<Map<String, dynamic>> get toprated =>
      _$this._toprated ??= new ListBuilder<Map<String, dynamic>>();
  set toprated(ListBuilder<Map<String, dynamic>>? toprated) =>
      _$this._toprated = toprated;

  ListBuilder<Map<String, dynamic>>? _upcoming;
  ListBuilder<Map<String, dynamic>> get upcoming =>
      _$this._upcoming ??= new ListBuilder<Map<String, dynamic>>();
  set upcoming(ListBuilder<Map<String, dynamic>>? upcoming) =>
      _$this._upcoming = upcoming;

  GetmoviesBuilder();

  GetmoviesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _popular = $v.popular?.toBuilder();
      _toprated = $v.toprated?.toBuilder();
      _upcoming = $v.upcoming?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Getmovies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Getmovies;
  }

  @override
  void update(void Function(GetmoviesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Getmovies build() => _build();

  _$Getmovies _build() {
    _$Getmovies _$result;
    try {
      _$result = _$v ??
          new _$Getmovies._(
              popular: _popular?.build(),
              toprated: _toprated?.build(),
              upcoming: _upcoming?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'popular';
        _popular?.build();
        _$failedField = 'toprated';
        _toprated?.build();
        _$failedField = 'upcoming';
        _upcoming?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Getmovies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
