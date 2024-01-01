import 'package:esim2/utils/size_utils.dart';
import 'package:get/get.dart';

import '../../../theme/custom_button_style.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../utils/image_constant.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/packages_controller.dart';
import '../models/packages_item_model.dart';
import 'package:flutter/material.dart';
import 'package:esim2/widgets/custom_elevated_button.dart';
import 'package:esim2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PackagesItemWidget extends StatelessWidget {
  PackagesItemWidget(
    this.packagesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PackagesItemModel packagesItemModelObj;

  var controller = Get.find<PackagesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: packagesItemModelObj.uSAPackage!.value,
              height: 190.v,
              width: 361.h,
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 172.v,
              width: 345.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                packagesItemModelObj.tanzaniaPackage!.value,
                                style:
                                    CustomTextStyles.titleLargeInterOnPrimary,
                              ),
                            ),
                            SizedBox(height: 21.v),
                            Container(
                              height: 8.v,
                              width: 209.h,
                              decoration: BoxDecoration(
                                color: appTheme.black900.withOpacity(0.41),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 1.0,
                                  backgroundColor:
                                      appTheme.black900.withOpacity(0.41),
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Obx(
                              () => Text(
                                packagesItemModelObj.gBsOfGBs!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Opacity(
                              opacity: 0.6,
                              child: Obx(
                                () => Text(
                                  packagesItemModelObj.remaining!.value,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 26.v),
                            Container(
                              height: 8.v,
                              width: 209.h,
                              decoration: BoxDecoration(
                                color: appTheme.black900.withOpacity(0.41),
                              ),
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 1.0,
                                  backgroundColor:
                                      appTheme.black900.withOpacity(0.41),
                                ),
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Obx(
                              () => Text(
                                packagesItemModelObj.duration!.value,
                                style: theme.textTheme.labelLarge,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Opacity(
                              opacity: 0.6,
                              child: Obx(
                                () => Text(
                                  packagesItemModelObj.expiresOn!.value,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 47.v,
                          ),
                          child: Column(
                            children: [
                              Opacity(
                                opacity: 0.6,
                                child: Obx(
                                  () => Text(
                                    packagesItemModelObj.autoRenewal!.value,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Obx(
                                    () => Text(
                                      packagesItemModelObj.onVar!.value,
                                      style: CustomTextStyles
                                          .titleSmallInterOnPrimary,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 46.v),
                              CustomElevatedButton(
                                width: 116.h,
                                text: "lbl_virgin_esim_1".tr,
                                leftIcon: Container(
                                  margin: EdgeInsets.only(right: 6.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant
                                        .img24pxLineDuotoneSimCards,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                  ),
                                ),
                                buttonStyle: CustomButtonStyles.fillOnPrimary,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeGray900,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBaseFab,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
