import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAnalyticsHandler {
  static late final FirebaseAnalytics _analytics;
  static void initializeanalytics(FirebaseApp app) {
    _analytics = FirebaseAnalytics.instanceFor(app: app);
  }
  static FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  static Future<void> logEvent(String eventName, Map<String, dynamic> parameters) async {
    await _analytics.logEvent(
      name: eventName,
      parameters: parameters,
    );
  }

}
