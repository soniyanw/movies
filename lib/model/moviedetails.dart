import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'moviedetails.g.dart';

abstract class Moviedetails
    implements Built<Moviedetails, MoviedetailsBuilder> {
  Moviedetails._();
  factory Moviedetails([void Function(MoviedetailsBuilder) updates]) =
      _$Moviedetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Moviedetails.serializer, this)
        as Map<String, dynamic>;
  }

  static Moviedetails fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Moviedetails.serializer, json)!;
  }

  static Serializer<Moviedetails> get serializer => _$moviedetailsSerializer;
  bool get adult;
  String get backdrop_path;
  int get id;
  String get original_title;
  String get overview;
  String get poster_path;
  String get release_date;
  String get title;
  double get vote_average;
  int get vote_count;
  int get page;
}
