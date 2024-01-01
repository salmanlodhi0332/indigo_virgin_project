import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotification {
  late final FirebaseMessaging messaging;
  Future<void> registerNotification() async {
    messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');
    } else {
      print('User declined or has not accepted permission');
    }
  }
}
