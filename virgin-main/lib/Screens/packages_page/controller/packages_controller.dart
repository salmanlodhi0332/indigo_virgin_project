import 'package:get/get.dart';

import '../models/packages_model.dart';

/// A controller class for the PackagesPage.
///
/// This class manages the state of the PackagesPage, including the
/// current packagesModelObj
class PackagesController extends GetxController {
  PackagesController(this.packagesModelObj);

  Rx<PackagesModel> packagesModelObj;
}
