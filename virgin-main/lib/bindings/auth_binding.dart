import 'package:get/get.dart';
import 'package:esim2/controller/authController.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
    // If AuthController has dependencies, you can specify them like this:
    // Get.lazyPut<AuthController>(() => AuthController(apiService: YourApiService()));
  }
}
