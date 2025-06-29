import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class MessagingService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  Future<void> init() async {
    _fcm.requestPermission();
    _fcm.getToken().then((token) {
      print('🔥 FCM Token: $token');
    });

    await _fcm.subscribeToTopic("weather_test");

    _fcm.requestPermission();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("onMessage: $message");
      SnackBar snackBar = SnackBar(
        content: Text(message.notification?.body ?? 'No message body'),
        duration: Duration(seconds: 3),
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("onMessageOpenedApp: $message");
    });

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((RemoteMessage? message) {
      if (message != null) {
        print(
            '🟢 App opened from terminated state: ${message.notification?.title}');
      }
    });
  }
}
