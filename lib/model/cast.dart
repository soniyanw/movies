import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/serializers.dart';

part 'cast.g.dart';

abstract class Cast implements Built<Cast, CastBuilder> {
  Cast._();
  factory Cast([void Function(CastBuilder) updates]) = _$Cast;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Cast.serializer, this)
        as Map<String, dynamic>;
  }

  static Cast fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Cast.serializer, json)!;
  }

  static Serializer<Cast> get serializer => _$castSerializer;
  String? get name;
  String? get profile_path;
  int? get id;
}
