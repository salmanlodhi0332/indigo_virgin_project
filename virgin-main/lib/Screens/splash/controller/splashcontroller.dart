import 'package:esim2/Permissions/notifications.dart';
import 'package:esim2/Permissions/permissions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Permissions/analytics.dart';

class SplashController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);
  final int pageCount = 3;
  final RxInt currentPage = 0.obs;
  RxBool showText = true.obs; // To control the visibility of the text

  void nextPage() async {
    if (currentPage.value < pageCount - 1) {
      currentPage.value++;
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
    } else {
       await PushNotification().registerNotification();
      await LocationPermissionHandler().checkAndRequestLocationPermission();
       await AnalyticsTrackingPermissionHandler().requestTrackingPermission();
      Get.offAllNamed('/home');
    }
    showText(false);
  }

  // Function to toggle the opacity value periodically
  void startFlickering() {
    Future.delayed(const Duration(milliseconds: 100), () {
      showText(!showText.value);
    });
    // Timer.periodic(Duration(milliseconds: 500), (timer) {
    //   opacity.value = opacity.value == 1.0 ? 0.0 : 1.0;
    // });
  }
}
