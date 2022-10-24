import 'package:built_collection/built_collection.dart';

abstract class AppService {
  Future<void> init();

  Future<void> dispose();
  Future<BuiltList<Map<String, dynamic>>> getmoviesupcom();
  Future<BuiltList<Map<String, dynamic>>> getmoviespop();
  Future<Map<String, dynamic>> getmoviedetails(String movieId);
}
