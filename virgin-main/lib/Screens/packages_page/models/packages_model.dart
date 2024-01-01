import 'package:get/get.dart';
import '../../../utils/image_constant.dart';
import 'packages_item_model.dart';

/// This class defines the variables used in the [packages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PackagesModel {
  Rx<List<PackagesItemModel>> packagesItemList = Rx([
    PackagesItemModel(
        uSAPackage: ImageConstant.imgContainer.obs,
        tanzaniaPackage: "USA Package".obs,
        gBsOfGBs: "6GBs of 10GBs remaining".obs,
        remaining: "60% remaining".obs,
        duration: "Expires in 24 days".obs,
        expiresOn: "expires on 30/11/2023".obs,
        autoRenewal: "Auto-renewal".obs,
        onVar: "ON".obs)
  ]);
}
