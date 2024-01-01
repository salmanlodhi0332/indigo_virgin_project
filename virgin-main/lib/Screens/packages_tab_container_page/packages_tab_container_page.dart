import 'package:esim2/theme/app_decoration.dart';
import 'package:esim2/theme/custom_button_style.dart';
import 'package:esim2/theme/custom_text_style.dart';
import 'package:esim2/theme/theme_helper.dart';
import 'package:esim2/utils/image_constant.dart';
import 'package:esim2/utils/size_utils.dart';
import 'package:esim2/widgets/app_bar/appbar_title.dart';
import 'package:esim2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:esim2/widgets/app_bar/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../widgets/custom_elevated_button.dart';
import '../packages_page/packages_page.dart';
import 'controller/packages_tab_container_controller.dart';
import 'models/packages_tab_container_model.dart';
import 'package:flutter/material.dart';

class PackagesTabContainerPage extends StatelessWidget {
  PackagesTabContainerPage({Key? key})
      : super(
          key: key,
        );

  PackagesTabContainerController controller =
      Get.put(PackagesTabContainerController(PackagesTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16.v),
              _buildAppBar(),
              SizedBox(height: 16.v),
              Expanded(
                child: SizedBox(
                  height: 770.v,
                  width: double.maxFinite,
                  child: Column(
                    // alignment: Alignment.bottomCenter,
                    children: [
                      _buildScreen(),
                      SizedBox(
                        height: 16.v,
                      ),
                      Expanded(
                        // margin: EdgeInsets.only(top: 10.v),
                        // height: 558.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            PackagesPage(packages: [
                              'assets/State=Error, SIM=1.png',
                              'assets/State=Default, SIM=2.png',
                              'assets/State=Default, SIM=2.png',
                              'assets/State=Error, SIM=1.png',
                            ]),
                            PackagesPage(packages: [
                              'assets/State=Default, SIM=2.png',
                            ]),
                            PackagesPage(packages: [
                              'assets/Package Card.png',
                              'assets/Package Card.png',
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Hello, Sami".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAvatarsAvatar,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildScreen() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomElevatedButton(
                  height: 43.v,
                  width: 147.h,
                  text: "Data Packages".tr,
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumInterOnPrimaryMedium,
                ),
                CustomElevatedButton(
                  height: 43.v,
                  width: 79.h,
                  text: "eSIMs".tr,
                  margin: EdgeInsets.only(left: 16.h),
                  buttonStyle: CustomButtonStyles.fillOnPrimaryTL21,
                  buttonTextStyle: CustomTextStyles.bodyLargeInterGray900,
                ),
              ],
            ),
            SizedBox(height: 37.v),
            Container(
              height: 25.v,
              width: 308.h,
              child: TabBar(
                dividerColor: Colors.transparent,
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: appTheme.gray900,
                unselectedLabelColor: appTheme.blueGray40001,
                tabs: [
                  Tab(
                    child: Text(
                      "Active",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Queued",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Expired",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
