import 'package:esim2/Screens/packages_tab_container_page/models/packages_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';

/// A controller class for the PackagesTabContainerPage.
///
/// This class manages the state of the PackagesTabContainerPage, including the
/// current packagesTabContainerModelObj
class PackagesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  PackagesTabContainerController(this.packagesTabContainerModelObj);

  Rx<PackagesTabContainerModel> packagesTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}


class SearchtabController extends GetxController
    with GetSingleTickerProviderStateMixin {

  late TabController searchController =
      Get.put(TabController(vsync: this, length: 3));
}

