import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

import '../core/services/notification_service.dart';

class _NotificationData extends NotificationData {
  _NotificationData(RemoteMessage event) {
    message = event;
  }
}

class NotificationServiceImpl implements NotificationService {
  late FirebaseMessaging _messaging;

  @override
  Future<void> dispose() async {}

  @override
  Future<String?> getToken() {
    return _messaging.getToken();
  }

  @override
  Stream<NotificationData> onMessage() {
    return FirebaseMessaging.onMessage.map<NotificationData>(
        (RemoteMessage event) => _NotificationData(event));
  }

  @override
  Stream<NotificationData> onOpen() {
    return FirebaseMessaging.onMessageOpenedApp.map<NotificationData>(
        (RemoteMessage message) => _NotificationData(message));
  }

  @override
  Future<void> init() async {
    _messaging = FirebaseMessaging.instance;
  }

  @override
  void getMovies(String requestUrl) {
    // TODO: implement getMovies
  }

  @override
  // Future<BuiltList<Moviedetails>?> getmovies() async {
  /* Future<BuiltList<Moviedetails>?> getmoviespop() async {
    // TODO: implement getmovies
    try {
      final String request =
          'https://api.themoviedb.org/3/movie/popular?api_key=dd86d13e65172a24cdaed08b6ed89a54';
      final http.Response response = await http.get(Uri.parse(request));
      final Map<String, dynamic> requestmap =
          await json.decode(response.body) as Map<String, dynamic>;
      print("Req Map");
      print(requestmap);
      final Getmovies? movieResponse = await Getmovies.fromJson(requestmap);
      print("decoded map");
      print(movieResponse);
      return movieResponse!.popular;
    } catch (e) {
      print(e);
      return <Moviedetails>[].toBuiltList();}
    }*/

  Future<BuiltList<Map<String, dynamic>>> getmoviespop() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/popular?api_key=dd86d13e65172a24cdaed08b6ed89a54';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<Map<String, dynamic>> output = [];
    movies.forEach((element) async {
      //   final Map<String, dynamic> tooutput=await json.decode(element) as Map<String, dynamic>;
      output.add(Map.from(element as Map<String, dynamic>));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<Map<String, dynamic>>> getmoviestop() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/top_rated?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US&page=1';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<Map<String, dynamic>> output = [];
    movies.forEach((element) async {
      //   final Map<String, dynamic> tooutput=await json.decode(element) as Map<String, dynamic>;
      output.add(Map.from(element as Map<String, dynamic>));
    });
    return output.toBuiltList();
  }

  Future<BuiltList<Map<String, dynamic>>> getmoviesupcom() async {
    // TODO: implement getmovies
    final String request =
        'https://api.themoviedb.org/3/movie/upcoming?api_key=dd86d13e65172a24cdaed08b6ed89a54&language=en-US&page=1';
    final http.Response response = await http.get(Uri.parse(request));
    final Map<String, dynamic> requestmap =
        await json.decode(response.body) as Map<String, dynamic>;
    List<dynamic> movies = requestmap["results"];
    List<Map<String, dynamic>> output = [];
    movies.forEach((element) async {
      //   final Map<String, dynamic> tooutput=await json.decode(element) as Map<String, dynamic>;
      output.add(Map.from(element as Map<String, dynamic>));
    });
    return output.toBuiltList();
  }
}
