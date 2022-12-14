import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart' as http;
import 'package:movies/core/services/api_service.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/model/currentmovie_details.dart';
import 'package:movies/model/currenttv_details.dart';
import 'package:movies/model/movie_details.dart';

class APIServiceImp implements APIService {
  Future<BuiltList<MovieDetails>> getmoviespop() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/popular?api_key=dd86d13e65172a24cdaed08b6ed89a54';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<MovieDetails> output = [];
    movies.forEach((element) async {
      output.add(MovieDetails.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<MovieDetails>> getmoviestop() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/top_rated?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US&page=1';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<MovieDetails> output = [];
    movies.forEach((element) async {
      output.add(MovieDetails.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<MovieDetails>> getmoviesupcom() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/upcoming?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US&page=1';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<MovieDetails> output = [];
    movies.forEach((element) async {
      output.add(MovieDetails.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<CurrentmovieDetails> getmoviedetails(String movieId) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/movie/" +
        movieId +
        "?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    CurrentmovieDetails output;
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    output = await CurrentmovieDetails.fromJson(requestmap);
    return output;
  }

  Future<CurrenttvDetails> gettvdetails(String tvid) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/tv/" +
        tvid +
        "?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    CurrenttvDetails output;
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    output = await CurrenttvDetails.fromJson(requestmap);
    print(output);
    return output;
  }

  Future<BuiltList<Cast>> getcastdetails(String movieId) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/movie/" +
        movieId.toString() +
        "/credits?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> casts = requestmap["cast"];
    List<Cast> output = [];
    casts.forEach((element) async {
      output.add(Cast.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<Cast>> getcastdetails_tv(String tvid) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/tv/" +
        tvid.toString() +
        "/credits?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));

    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;

    List<dynamic> casts = requestmap["cast"];

    List<Cast> output = [];

    casts.forEach((element) async {
      output.add(Cast.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<Castcredits> getcastdetails_and_credits(int castid) async {
    print(castid);
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/person/" +
        castid.toString() +
        "?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    Castcredits output;
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    output = await Castcredits.fromJson(requestmap);
    return output;
  }

  Future<BuiltList<MovieDetails>> getcast_movies(int castid) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/person/" +
        castid.toString() +
        "/movie_credits?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["cast"];
    List<MovieDetails> output = [];
    movies.forEach((element) async {
      output.add(MovieDetails.fromJson(element));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<MovieDetails>> getcast_tvs(int castid) async {
    // TODO: implement getmovies
    final String request = "https://api.themoviedb.org/3/person/" +
        castid.toString() +
        "/tv_credits?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US";
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["cast"];
    List<MovieDetails> output = [];
    movies.forEach((element) async {
      output.add(MovieDetails.fromJson(element));
    });
    print(output);
    return output.toBuiltList();
  }

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
}
