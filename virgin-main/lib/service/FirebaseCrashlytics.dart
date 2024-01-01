import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class FirebaseCrashlyticsHandler {
  static void initializeCrashlytics() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    await FirebaseCrashlytics.instance
        .setUserIdentifier('user123'); // Set a user identifier if needed
    print("Test crash");
    // Other optional configurations can be added here
    log("Testing Log");
  }

  static void reportError(dynamic exception, dynamic stackTrace) {
    FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  }

  static void log(String message) {
    FirebaseCrashlytics.instance.log(message);
  }

  static void crashApp() {
    FirebaseCrashlytics.instance.crash();
  }
}
