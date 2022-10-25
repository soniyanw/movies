// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cast> _$castSerializer = new _$CastSerializer();

class _$CastSerializer implements StructuredSerializer<Cast> {
  @override
  final Iterable<Type> types = const [Cast, _$Cast];
  @override
  final String wireName = 'Cast';

  @override
  Iterable<Object?> serialize(Serializers serializers, Cast object,
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
  Cast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastBuilder();

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
        case 'profile_path':
          result.profile_path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Cast extends Cast {
  @override
  final String? name;
  @override
  final String? profile_path;

  factory _$Cast([void Function(CastBuilder)? updates]) =>
      (new CastBuilder()..update(updates))._build();

  _$Cast._({this.name, this.profile_path}) : super._();

  @override
  Cast rebuild(void Function(CastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastBuilder toBuilder() => new CastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cast &&
        name == other.name &&
        profile_path == other.profile_path;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), profile_path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Cast')
          ..add('name', name)
          ..add('profile_path', profile_path))
        .toString();
  }
}

class CastBuilder implements Builder<Cast, CastBuilder> {
  _$Cast? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _profile_path;
  String? get profile_path => _$this._profile_path;
  set profile_path(String? profile_path) => _$this._profile_path = profile_path;

  CastBuilder();

  CastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _profile_path = $v.profile_path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cast;
  }

  @override
  void update(void Function(CastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Cast build() => _build();

  _$Cast _build() {
    final _$result =
        _$v ?? new _$Cast._(name: name, profile_path: profile_path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
