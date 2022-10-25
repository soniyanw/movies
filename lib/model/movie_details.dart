import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'movie_details.g.dart';

abstract class MovieDetails
    implements Built<MovieDetails, MovieDetailsBuilder> {
  MovieDetails._();
  factory MovieDetails([void Function(MovieDetailsBuilder) updates]) =
      _$MovieDetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(MovieDetails.serializer, this)
        as Map<String, dynamic>;
  }

  static MovieDetails fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MovieDetails.serializer, json)!;
  }

  static Serializer<MovieDetails> get serializer => _$movieDetailsSerializer;
  int? get id;
  String? get poster_path;
  String? get title;
  String? get release_date;
  double? get vote_average;
  String? get backdrop_path;
  String? get overview;
}
