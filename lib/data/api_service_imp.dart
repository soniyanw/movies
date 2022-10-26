import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:http/http.dart' as http;
import 'package:movies/core/services/api_service.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/model/currentmovie_details.dart';
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
    return output.toBuiltList();
  }

  /*DecorationImage getimage(String httpimg) {
    try {
      return DecorationImage(
        image: NetworkImage(
          "https://image.tmdb.org/t/p/w500/" + httpimg.toString(),
        ),
        fit: BoxFit.cover,
      );
    } on Exception catch (e) {
      print(e);
      return DecorationImage(image: AssetImage('assets/noimage.jpeg'));
    }
  }*/

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
