import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'currenttv_details.g.dart';

abstract class CurrenttvDetails
    implements Built<CurrenttvDetails, CurrenttvDetailsBuilder> {
  CurrenttvDetails._();
  factory CurrenttvDetails([void Function(CurrenttvDetailsBuilder) updates]) =
      _$CurrenttvDetails;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(CurrenttvDetails.serializer, this)
        as Map<String, dynamic>;
  }

  static CurrenttvDetails fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CurrenttvDetails.serializer, json)!;
  }

  static Serializer<CurrenttvDetails> get serializer =>
      _$currenttvDetailsSerializer;
  String? get first_air_date;
  String? get last_air_date;
  int? get number_of_episodes;
  int? get number_of_seasons;
  String? get original_name;
  String? get overview;
  String? get backdrop_path;
  double? get vote_average;
  double? get vote_count;
  String? get type;
  int? get id;
}
