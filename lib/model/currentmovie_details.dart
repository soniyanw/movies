import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'currentmovie_details.g.dart';

abstract class CurrentmovieDetails
    implements Built<CurrentmovieDetails, CurrentmovieDetailsBuilder> {
  CurrentmovieDetails._();
  factory CurrentmovieDetails(
          [void Function(CurrentmovieDetailsBuilder) updates]) =
      _$CurrentmovieDetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CurrentmovieDetails.serializer, this)
        as Map<String, dynamic>;
  }

  static CurrentmovieDetails fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CurrentmovieDetails.serializer, json)!;
  }

  static Serializer<CurrentmovieDetails> get serializer =>
      _$currentmovieDetailsSerializer;
  String? get original_title;
  String? get status;
  int? get runtime;
  String? get release_date;
  int? get budget;
  int? get revenue;
  String? get imdb_id;
  double? get vote_average;
}
