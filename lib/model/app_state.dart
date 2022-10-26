import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/model/currentmovie_details.dart';
import 'package:movies/model/movie_details.dart';

import 'serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;

  AppState._();

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppState.serializer, this)
        as Map<String, dynamic>?;
  }

  static AppState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppState.serializer, json);
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;

  static void _initializeBuilder(AppStateBuilder b) {}

  BuiltList<MovieDetails>? get popular;
  BuiltList<MovieDetails>? get toprated;
  BuiltList<MovieDetails>? get upcoming;
  MovieDetails? get currentmovie_tv;
  CurrentmovieDetails? get currentmoviedetails;
  String? get movieid;
  BuiltList<Cast>? get castlist;
  int? get seats;
  int? get currentcastid;
  Castcredits? get castcredits;
  BuiltList<MovieDetails> get currentcast_movies;
  BuiltList<MovieDetails> get current_tvs;
}
