import 'package:built_collection/built_collection.dart';
import 'package:movies/core/services/app_service.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/model/currentmovie_details.dart';
import 'package:movies/model/movie_details.dart';

abstract class APIService extends AppService {
  Future<BuiltList<MovieDetails>> getmoviesupcom();
  Future<BuiltList<MovieDetails>> getmoviespop();
  Future<BuiltList<Cast>> getcastdetails(String movieId);
  Future<BuiltList<MovieDetails>> getmoviestop();
  Future<CurrentmovieDetails> getmoviedetails(String movieId);
  Future<Castcredits> getcastdetails_and_credits(int castid);
  Future<BuiltList<MovieDetails>> getcast_movies(int castid);
  Future<BuiltList<MovieDetails>> getcast_tvs(int castid);
}
