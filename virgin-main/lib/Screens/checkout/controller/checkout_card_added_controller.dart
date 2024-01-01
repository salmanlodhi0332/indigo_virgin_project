import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/checkout_card_added_model.dart';

/// A controller class for the CheckoutCardAddedScreen.
///
/// This class manages the state of the CheckoutCardAddedScreen, including the
/// current checkoutCardAddedModelObj
class CheckoutCardAddedController extends GetxController {
  TextEditingController promoCodeController = TextEditingController();

  Rx<CheckoutCardAddedModel> checkoutCardAddedModelObj =
      CheckoutCardAddedModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> radioGroup2 = "".obs;

  Rx<String> radioGroup3 = "".obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    promoCodeController.dispose();
  }

  @override
  void onReady() {
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Get.offNamed(
    //     AppRoutes.travelerContainerScreen,
    //   );
    // });
  }
}
