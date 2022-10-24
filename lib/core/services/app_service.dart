import 'package:built_collection/built_collection.dart';
import 'package:movies/model/moviedetails.dart';

abstract class AppService {
  Future<void> init();

  Future<void> dispose();
  Future<BuiltList<Map<String, dynamic>>> getmoviesupcom();
  Future<BuiltList<Map<String, dynamic>>> getmoviespop();
}
