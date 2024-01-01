import 'package:esim2/Screens/splash/controller/splashcontroller.dart';
import 'package:esim2/Screens/splash/widgets/progress_indicator.dart';
import 'package:esim2/Screens/splash/widgets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:permission_handler/permission_handler.dart';

class IntroScreens extends StatelessWidget {
  const IntroScreens({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: splashController.pageController,
            onPageChanged: (index) {
              splashController.showText(false);
              splashController.currentPage.value = index;
              Future.delayed(const Duration(milliseconds: 300), () {
                splashController.showText(true);
              });
            },
            children: [
              buildSliderItem(
                  'Always stay connected',
                  'Stay connected wherever you are with Virgin Next!',
                  'assets/bg1.jpg'),
              buildSliderItem(
                  'Safe and easy',
                  'Safest and easiest solution for your connectivity needs abroad',
                  'assets/bg2.jpg'),
              buildSliderItem(
                  'Stay in touch',
                  'We’d like to stay in touch with you, so please allow the notifications',
                  'assets/bg3.jpg'),
            ],
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: GestureDetector(
              onTap: () async {
                var notificationStatus = await Permission.notification.status;
                //  var locationStatus = await Permission.location.status;
                // var trackingStatus =
                //     await Permission.appTrackingTransparency.status;
                if ((
                        // trackingStatus.isGranted &&
                        notificationStatus.isGranted
                    //&& locationStatus.isGranted
                    )) {
                  GetStorage().write('isintrodone', true);
                  Get.toNamed('/home');
                } else {
                  splashController.pageController
                      .animateToPage(2,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease)
                      .then((value) {
                    splashController.nextPage();
                    GetStorage().write('isintrodone', true);
                  });
                }
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            child: buildProgressIndicator(),
          ),
        ],
      ),
    );

    // IntroductionScreen(
    //   pages: pages,
    //   onDone: () {
    //     // Implement action when done button is pressed
    //   },
    //   onSkip: () {
    //     // Implement action when skip button is pressed
    //   },
    //   showSkipButton: true,
    //   skip: const Text('Skip'),
    //   done: const Text('Done'),
    //   next: const Icon(Icons.arrow_forward),

    //   dotsDecorator: DotsDecorator(
    //     size: const Size.square(10.0),
    //     activeSize: const Size(20.0, 10.0),
    //     activeColor: Colors.blue,
    //     color: Colors.black26,
    //     spacing: const EdgeInsets.symmetric(horizontal: 3.0),
    //     activeShape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(25.0),
    //     ),
    //   ),
    // );
  }
}
