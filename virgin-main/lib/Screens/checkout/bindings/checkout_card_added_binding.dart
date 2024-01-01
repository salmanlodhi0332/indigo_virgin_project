import '../controller/checkout_card_added_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutCardAddedScreen.
///
/// This class ensures that the CheckoutCardAddedController is created when the
/// CheckoutCardAddedScreen is first loaded.
class CheckoutCardAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutCardAddedController());
  }
}