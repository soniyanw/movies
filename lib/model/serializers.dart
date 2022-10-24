library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movies/model/getmovies.dart';

import 'app_state.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppState, Getmovies])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
