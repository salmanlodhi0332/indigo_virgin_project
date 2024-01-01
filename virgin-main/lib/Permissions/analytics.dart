import 'dart:io';
import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:permission_handler/permission_handler.dart';

class AnalyticsTrackingPermissionHandler {
  Future<void> requestTrackingPermission() async {
    if (Platform.isIOS) {
      final status = await AppTrackingTransparency.trackingAuthorizationStatus;
      if (status == TrackingStatus.notDetermined) {
        await AppTrackingTransparency.requestTrackingAuthorization();
      }
    } else if (Platform.isAndroid) {
      await Permission.appTrackingTransparency.request();
    }

    final newStatus = await AppTrackingTransparency.trackingAuthorizationStatus;
    if (newStatus == TrackingStatus.authorized) {
      print('User granted permission for tracking');
    } else {
      print('User denied or restricted permission for tracking');
    }
  }
}
