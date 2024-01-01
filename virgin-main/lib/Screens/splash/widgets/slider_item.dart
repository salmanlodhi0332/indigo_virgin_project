import 'package:esim2/Screens/splash/controller/splashcontroller.dart';
import 'package:esim2/widgets/custom_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildSliderItem(String heading, String text, String img) {
  SplashController splashController = Get.find();
  return Stack(
    alignment: Alignment.topCenter,
    children: [
      Image.asset(
        img,
        fit: BoxFit.cover,
        height: Get.height,
        width: Get.width,
      ),
      const SizedBox(height: 20),
      Positioned(
        top: Get.height * 0.32,
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 48,
                    height: 1.17,
                    letterSpacing: -2,
                    color: Color(0xff141416),
                  ),
                  text: heading,
                  align: TextAlign.center,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: heading,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    height: 1.5,
                    color: Color(0xff141416),
                  ),
                  align: TextAlign.center,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: splashController.nextPage,
                  child: Image.asset(
                    "assets/arrow_circle.png",
                    height: 60,
                    width: 60,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
