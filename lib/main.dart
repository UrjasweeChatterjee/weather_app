import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/app.dart';
import 'package:weather_app/controllers/weather_controller.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   Get.put(WeatherController());

//   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//     print('🔵 Foreground message received: ${message.notification?.title}');
//     SnackBar snackBar = SnackBar(
//       content: Text(message.notification?.body ?? 'No message body'),
//       duration: Duration(seconds: 3),
//     );
//   });

//   FirebaseMessaging.instance.getInitialMessage().then((RemoteMessage? message) {
//     if (message != null) {
//       print(
//           '🟢 App launched from terminated state via notification: ${message.notification?.title}');
//       // Navigate or handle the message accordingly
//     }
//   });
//   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//     print(
//         '🟡 App opened from background via notification: ${message.notification?.title}');
//     // Navigate or handle the message accordingly
//   });

//   runApp(MyApp());
// }

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('✅ Background message received: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put(WeatherController());

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp());
}
