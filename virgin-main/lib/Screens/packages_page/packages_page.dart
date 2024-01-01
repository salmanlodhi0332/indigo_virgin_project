import 'package:esim2/theme/app_decoration.dart';
import 'package:esim2/theme/custom_text_style.dart';
import 'package:esim2/theme/theme_helper.dart';
import 'package:esim2/utils/size_utils.dart';
import 'package:esim2/widgets/custom_icon_button.dart';
import 'package:esim2/widgets/custom_image_view.dart';
import 'package:get/get.dart';
import '../../utils/image_constant.dart';
import 'controller/packages_controller.dart';
import 'models/packages_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class PackagesPage extends StatelessWidget {
  List<String> packages = [];
  PackagesPage({Key? key, required this.packages})
      : super(
          key: key,
        );

  PackagesController controller =
      Get.put(PackagesController(PackagesModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h, right: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildPackages(packages),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                  color: Colors.blueGrey, width: 1.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueGrey),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Text(
                                "Add a new Package",
                                style: TextStyle(
                                    wordSpacing: -0.5,
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontFamily: "Inter"),
                              )
                            ],
                          ),
                        ),

                        SizedBox(height: 16.v),
                        // _buildTanzaniaPackage(),
                        // SizedBox(height: 16.v),
                        // _buildTanzaniaPackage1(),
                        // SizedBox(height: 16.v),
                        // _buildAddNewPackageButton(),
                      ],
                    ),
                    // Container(
                    //   height: 392.v,
                    //   width: 361.h,
                    //   margin: EdgeInsets.only(
                    //     left: 47.h,
                    //     bottom: 480.v,
                    //   ),
                    // ),
                  ),
                  // _buildKeyboard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPackages(List<String> lst) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: lst.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.toNamed('/packagesDetailPage'),
          child: Column(
            children: [
              Image.asset(
                lst[index],
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10.0,
              )
            ],
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTanzaniaPackage() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 190.v,
        width: 361.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup148,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_tanzania_package".tr,
                        style: CustomTextStyles.titleLargeInterOnPrimary,
                      ),
                      SizedBox(height: 21.v),
                      Container(
                        height: 8.v,
                        width: 208.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray200.withOpacity(0.44),
                        ),
                        child: ClipRRect(
                          child: LinearProgressIndicator(
                            value: 1.0,
                            backgroundColor: appTheme.gray200.withOpacity(0.44),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "msg_6gbs_of_10gbs_remaining".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 2.v),
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "lbl_60_remaining".tr.toUpperCase(),
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      Container(
                        height: 8.v,
                        width: 208.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray200.withOpacity(0.44),
                        ),
                        child: ClipRRect(
                          child: LinearProgressIndicator(
                            value: 1.0,
                            backgroundColor: appTheme.gray200.withOpacity(0.44),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "msg_expires_in_24_days".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 3.v),
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "msg_expires_on_30_11_2023".tr.toUpperCase(),
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 47.v,
                    ),
                    child: _buildFrame(
                      autoRenewal: "lbl_auto_renewal".tr,
                      autoRenewalStatus: "lbl_on".tr,
                      simName: "lbl_virgin_esim_2".tr,
                    ),
                  ),
                ],
              ),
            ),
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGray,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgBaseFab,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTanzaniaPackage1() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: 190.v,
        width: 361.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder16,
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup148,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_japan_package".tr,
                        style: CustomTextStyles.titleLargeInterOnPrimary,
                      ),
                      SizedBox(height: 26.v),
                      Container(
                        height: 8.v,
                        width: 208.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray200.withOpacity(0.44),
                        ),
                        child: ClipRRect(
                          child: LinearProgressIndicator(
                            value: 1.0,
                            backgroundColor: appTheme.gray200.withOpacity(0.44),
                          ),
                        ),
                      ),
                      Text(
                        "msg_6gbs_of_10gbs_remaining".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "lbl_60_remaining".tr.toUpperCase(),
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgProgressIndicatorGray200,
                        height: 8.v,
                        width: 208.h,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                      Text(
                        "msg_expires_in_24_days".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: Text(
                          "msg_expires_on_30_11_2023".tr.toUpperCase(),
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 43.v,
                    ),
                    child: _buildFrame(
                      autoRenewal: "lbl_auto_renewal".tr,
                      autoRenewalStatus: "lbl_on".tr,
                      simName: "lbl_virgin_esim_2".tr,
                    ),
                  ),
                ],
              ),
            ),
            CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGray,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgBaseFab,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNewPackageButton() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 94.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img24pxLineDuotoneGray900,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Text(
            "lbl_add_new_package".tr,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumInterMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeyboard() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 32.h,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_q".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_w".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_e".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_r".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_t".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_y".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_u".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_i".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_o".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_p".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_a".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 5.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_s".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_d".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 5.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_f".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_g".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 5.h),
                  padding: EdgeInsets.all(7.h),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_h".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_j".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 5.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_k".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Container(
                  width: 32.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.outlineBluegray400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_l".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShift,
                height: 42.adaptSize,
                width: 42.adaptSize,
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 14.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_z".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_x".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 5.h),
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_c".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_v".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 5.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_b".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.all(7.h),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_n".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Container(
                width: 32.h,
                margin: EdgeInsets.only(left: 6.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Text(
                  "lbl_m".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDelete,
                height: 42.adaptSize,
                width: 42.adaptSize,
                margin: EdgeInsets.only(left: 13.h),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 42.v,
                width: 87.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle,
                      height: 42.v,
                      width: 87.h,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_123".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42.v,
                width: 182.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangleWhiteA700,
                      height: 42.v,
                      width: 182.h,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_space".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42.v,
                width: 88.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle,
                      height: 42.v,
                      width: 88.h,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_search".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 27.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEmoji,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDictation,
                  height: 25.v,
                  width: 15.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String autoRenewal,
    required String autoRenewalStatus,
    required String simName,
  }) {
    return Column(
      children: [
        Opacity(
          opacity: 0.6,
          child: Text(
            autoRenewal,
            style: theme.textTheme.labelMedium!.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.56),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              autoRenewalStatus,
              style: CustomTextStyles.titleSmallInterOnPrimary.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
        ),
        SizedBox(height: 45.v),
        Container(
          width: 117.h,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img24pxLineDuotoneSimCards,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
              Text(
                simName,
                style: CustomTextStyles.labelLargeGray900.copyWith(
                  color: appTheme.gray900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
