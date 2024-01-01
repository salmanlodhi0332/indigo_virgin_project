import 'package:firebase_performance/firebase_performance.dart';

class FirebasePerformanceHandler {
  static final FirebasePerformance _performance = FirebasePerformance.instance;

  static void startTrace(String traceName) {
    final Trace myTrace = _performance.newTrace(traceName);
    myTrace.start();

    // Simulate some work or delay for testing purposes
    // Replace this with your actual code logic
    Future.delayed(Duration(seconds: 2), () {
      myTrace.stop();
      print('Trace $traceName completed.');
    });
  }
}
