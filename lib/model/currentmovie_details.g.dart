// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currentmovie_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentmovieDetails> _$currentmovieDetailsSerializer =
    new _$CurrentmovieDetailsSerializer();

class _$CurrentmovieDetailsSerializer
    implements StructuredSerializer<CurrentmovieDetails> {
  @override
  final Iterable<Type> types = const [
    CurrentmovieDetails,
    _$CurrentmovieDetails
  ];
  @override
  final String wireName = 'CurrentmovieDetails';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CurrentmovieDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.original_title;
    if (value != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.runtime;
    if (value != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.release_date;
    if (value != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.revenue;
    if (value != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.imdb_id;
    if (value != null) {
      result
        ..add('imdb_id')
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
    return result;
  }

  @override
  CurrentmovieDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentmovieDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'original_title':
          result.original_title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'release_date':
          result.release_date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'imdb_id':
          result.imdb_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vote_average':
          result.vote_average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentmovieDetails extends CurrentmovieDetails {
  @override
  final String? original_title;
  @override
  final String? status;
  @override
  final int? runtime;
  @override
  final String? release_date;
  @override
  final int? budget;
  @override
  final int? revenue;
  @override
  final String? imdb_id;
  @override
  final double? vote_average;

  factory _$CurrentmovieDetails(
          [void Function(CurrentmovieDetailsBuilder)? updates]) =>
      (new CurrentmovieDetailsBuilder()..update(updates))._build();

  _$CurrentmovieDetails._(
      {this.original_title,
      this.status,
      this.runtime,
      this.release_date,
      this.budget,
      this.revenue,
      this.imdb_id,
      this.vote_average})
      : super._();

  @override
  CurrentmovieDetails rebuild(
          void Function(CurrentmovieDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentmovieDetailsBuilder toBuilder() =>
      new CurrentmovieDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentmovieDetails &&
        original_title == other.original_title &&
        status == other.status &&
        runtime == other.runtime &&
        release_date == other.release_date &&
        budget == other.budget &&
        revenue == other.revenue &&
        imdb_id == other.imdb_id &&
        vote_average == other.vote_average;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, original_title.hashCode),
                                status.hashCode),
                            runtime.hashCode),
                        release_date.hashCode),
                    budget.hashCode),
                revenue.hashCode),
            imdb_id.hashCode),
        vote_average.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentmovieDetails')
          ..add('original_title', original_title)
          ..add('status', status)
          ..add('runtime', runtime)
          ..add('release_date', release_date)
          ..add('budget', budget)
          ..add('revenue', revenue)
          ..add('imdb_id', imdb_id)
          ..add('vote_average', vote_average))
        .toString();
  }
}

class CurrentmovieDetailsBuilder
    implements Builder<CurrentmovieDetails, CurrentmovieDetailsBuilder> {
  _$CurrentmovieDetails? _$v;

  String? _original_title;
  String? get original_title => _$this._original_title;
  set original_title(String? original_title) =>
      _$this._original_title = original_title;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  String? _release_date;
  String? get release_date => _$this._release_date;
  set release_date(String? release_date) => _$this._release_date = release_date;

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  String? _imdb_id;
  String? get imdb_id => _$this._imdb_id;
  set imdb_id(String? imdb_id) => _$this._imdb_id = imdb_id;

  double? _vote_average;
  double? get vote_average => _$this._vote_average;
  set vote_average(double? vote_average) => _$this._vote_average = vote_average;

  CurrentmovieDetailsBuilder();

  CurrentmovieDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _original_title = $v.original_title;
      _status = $v.status;
      _runtime = $v.runtime;
      _release_date = $v.release_date;
      _budget = $v.budget;
      _revenue = $v.revenue;
      _imdb_id = $v.imdb_id;
      _vote_average = $v.vote_average;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentmovieDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentmovieDetails;
  }

  @override
  void update(void Function(CurrentmovieDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentmovieDetails build() => _build();

  _$CurrentmovieDetails _build() {
    final _$result = _$v ??
        new _$CurrentmovieDetails._(
            original_title: original_title,
            status: status,
            runtime: runtime,
            release_date: release_date,
            budget: budget,
            revenue: revenue,
            imdb_id: imdb_id,
            vote_average: vote_average);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
