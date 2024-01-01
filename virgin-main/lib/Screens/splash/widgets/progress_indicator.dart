import 'package:esim2/Screens/splash/controller/splashcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildProgressIndicator() {
  SplashController splashController = Get.find();

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      splashController.pageCount,
      (index) => Obx(
        () => Container(
          padding: const EdgeInsets.all(4.0),
          // width: 16,
          // height: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: splashController.currentPage.value == index
                ? Border.all(width: 1.0, color: Colors.white)
                : null,
            // color: Colors.transparent,
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: splashController.currentPage.value == index
                  ? Colors.white
                  : Colors.grey,
            ),
          ),
        ),
      ),
    ),
  );
}
