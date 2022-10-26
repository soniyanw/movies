import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'castcredits.g.dart';

abstract class Castcredits implements Built<Castcredits, CastcreditsBuilder> {
  Castcredits._();
  factory Castcredits([void Function(CastcreditsBuilder) updates]) =
      _$Castcredits;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Castcredits.serializer, this)
        as Map<String, dynamic>;
  }

  static Castcredits fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Castcredits.serializer, json)!;
  }

  static Serializer<Castcredits> get serializer => _$castcreditsSerializer;
  String? get name;
  String? get biography;
  String? get birthday;
  String? get deathday;
  int? get gender;
  String? get imdb_id;
  String? get place_of_birth;
  BuiltList? get moviecredits;
  BuiltList? get tvcredits;
  String? get profile_path;
}
