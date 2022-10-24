import 'package:built_collection/built_collection.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'app_service.dart';

abstract class NotificationData {
  late RemoteMessage message;
}

abstract class NotificationService implements AppService {
  Future<String?> getToken();

  Stream<NotificationData> onMessage();

  Stream<NotificationData> onOpen();
  Future<BuiltList<Map<String, dynamic>>> getmoviespop();
  Future<BuiltList<Map<String, dynamic>>> getmoviesupcom();
}
