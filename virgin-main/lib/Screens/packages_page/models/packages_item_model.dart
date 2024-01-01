import 'package:esim2/utils/image_constant.dart';
import 'package:get/get.dart';

/// This class is used in the [packages_item_widget] screen.
class PackagesItemModel {
  PackagesItemModel({
    this.uSAPackage,
    this.tanzaniaPackage,
    this.gBsOfGBs,
    this.remaining,
    this.duration,
    this.expiresOn,
    this.autoRenewal,
    this.onVar,
    this.id,
  }) {
    uSAPackage = uSAPackage ?? Rx(ImageConstant.imgContainer);
    tanzaniaPackage = tanzaniaPackage ?? Rx("USA Package");
    gBsOfGBs = gBsOfGBs ?? Rx("6GBs of 10GBs remaining");
    remaining = remaining ?? Rx("60% remaining");
    duration = duration ?? Rx("Expires in 24 days");
    expiresOn = expiresOn ?? Rx("expires on 30/11/2023");
    autoRenewal = autoRenewal ?? Rx("Auto-renewal");
    onVar = onVar ?? Rx("ON");
    id = id ?? Rx("");
  }

  Rx<String>? uSAPackage;

  Rx<String>? tanzaniaPackage;

  Rx<String>? gBsOfGBs;

  Rx<String>? remaining;

  Rx<String>? duration;

  Rx<String>? expiresOn;

  Rx<String>? autoRenewal;

  Rx<String>? onVar;

  Rx<String>? id;
}
