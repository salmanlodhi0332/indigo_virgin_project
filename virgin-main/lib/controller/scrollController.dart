import 'package:get/get.dart';

class ScrollControllerGetX extends GetxController {
  var opacity = 1.0.obs;

  void updateOpacity(double offset) {
    if (offset <= 0) {
      opacity.value = 1.0;
    } else if (offset > 0 && offset < 100) {
      // Adjust the offset range as needed
      opacity.value = 1.0 -
          (offset /
              100); // Adjust the divisor for the desired speed of opacity change
    } else {
      opacity.value = 0.0;
    }
  }
}
