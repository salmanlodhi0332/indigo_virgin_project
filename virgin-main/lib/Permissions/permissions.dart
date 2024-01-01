import 'package:permission_handler/permission_handler.dart';

class LocationPermissionHandler {
  Future<void> checkAndRequestLocationPermission() async {
    var status = await Permission.location.status;
    if (status.isDenied || status.isRestricted) {
      status = await Permission.location.request();
    }

    switch (status) {
      case PermissionStatus.granted:
        print('Location permission granted');
        break;
      case PermissionStatus.denied:
        print('Location permission denied');
        break;
      case PermissionStatus.permanentlyDenied:
      await Permission.location.request();
        break;
      case PermissionStatus.restricted:
        print('Location services are restricted');
        break;
      default:
        print('Location permission status: $status');
        break;
    }
  }
}
