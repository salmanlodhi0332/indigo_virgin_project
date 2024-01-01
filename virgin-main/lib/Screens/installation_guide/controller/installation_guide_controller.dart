import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/installation_guide_model.dart';

class InstallationGuideController extends GetxController {
  final PageController pageController = PageController(initialPage: 0);

  List<InstallationGuideModel> screens = [
    InstallationGuideModel(
        id: 1,
        title: "Scan QR Code",
        imgPath: "assets/installation1.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever."),
    InstallationGuideModel(
        id: 2,
        title: "Click on Continue",
        imgPath: "assets/installation2.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever."),
    InstallationGuideModel(
        id: 3,
        title: "Click on Done",
        imgPath: "assets/installation3.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever."),
    InstallationGuideModel(
        id: 4,
        title: "Select a default line",
        imgPath: "assets/installation4.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever."),
    InstallationGuideModel(
        id: 5,
        title: "Select default plan to use with iMessage & FaceTime",
        imgPath: "assets/installation5.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever."),
    InstallationGuideModel(
        id: 3,
        title: "Select a default line to use cellular data",
        imgPath: "assets/installation6.png",
        description:
            "Most eSIMs can be installed once, so don’t delete your eSIM to avoid losing it forever.")
  ];
  var currentPage = 0.obs;

  void changePage(int index) {
    if (currentPage.value < screens.length) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
      currentPage.value = index;
    }
  }

  void goBack(int index) {
    pageController.previousPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
    if (currentPage.value > screens.length) {
      pageController.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease);
      currentPage.value = index;
    }
  }
}
