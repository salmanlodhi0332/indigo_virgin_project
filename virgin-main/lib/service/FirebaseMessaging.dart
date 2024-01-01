import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingHandler {
  static FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;

  static Future<String?> getToken() async {
    return await firebaseMessaging.getToken();
  }

  static void initializeFirebaseMessaging() {
    firebaseMessaging.getToken().then((token) {
      print("Token: $token");
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("Received message: ${message.notification!.title}");
      // Handle the incoming message, e.g., show a notification
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print(
          "Message opened from terminated state: ${message.notification!.title}");
      // Handle the message when the app is opened from terminated state
    });
  }
}
