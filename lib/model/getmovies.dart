import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/moviedetails.dart';
import 'package:movies/model/serializers.dart';

part 'getmovies.g.dart';

abstract class Getmovies implements Built<Getmovies, GetmoviesBuilder> {
  Getmovies._();
  factory Getmovies([void Function(GetmoviesBuilder) updates]) = _$Getmovies;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Getmovies.serializer, this)
        as Map<String, dynamic>;
  }

  static Getmovies fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Getmovies.serializer, json)!;
  }

  static Serializer<Getmovies> get serializer => _$getmoviesSerializer;
  BuiltList<Map<String, dynamic>>? get popular;

  BuiltList<Map<String, dynamic>>? get toprated;
  BuiltList<Map<String, dynamic>>? get upcoming;
}
