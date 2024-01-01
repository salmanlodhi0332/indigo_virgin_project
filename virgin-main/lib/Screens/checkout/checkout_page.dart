import 'package:bot_toast/bot_toast.dart';
import 'package:esim2/constants/goSellSdk.dart';
import 'package:esim2/main.dart';
import 'package:esim2/service/ApiService.dart';
import 'package:esim2/widgets/custom_Text.dart';
import 'package:get/get.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import '../../Models/destination_detail_model.dart' as dt;
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../utils/image_constant.dart';
import '../../utils/size_utils.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/checkout_card_added_controller.dart';
import 'package:flutter/material.dart';
import 'package:esim2/widgets/app_bar/appbar_leading_image.dart';
import 'package:esim2/widgets/app_bar/appbar_subtitle.dart';
import 'package:esim2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:esim2/widgets/app_bar/custom_app_bar.dart';
import 'package:esim2/widgets/custom_elevated_button.dart';
import 'package:esim2/widgets/custom_outlined_button.dart';
import 'package:esim2/widgets/custom_radio_button.dart';
import 'package:esim2/widgets/custom_switch.dart';
import 'package:esim2/widgets/custom_text_form_field.dart';

class CheckoutCardScreen extends StatelessWidget {
  final String imgUrl;
  final String text;
  final double price;
  final dt.DataBundle bundle;
  const CheckoutCardScreen(
      {Key? key,
      required this.text,
      required this.price,
      required this.imgUrl,
      required this.bundle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckoutCardAddedController controller =
        Get.put(CheckoutCardAddedController());
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFe10a0a),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
        title: CustomText(
            text: "Secure Checkout",
            style: const TextStyle(color: Colors.white, fontFamily: "Inter")),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVuesaxLinearHelp,
              margin: EdgeInsets.only(left: 16.h, right: 16.h))
        ],
      ),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 24.v),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                  image: DecorationImage(
                                      image: NetworkImage(imgUrl),
                                      fit: BoxFit.cover)),
                              foregroundDecoration:
                                  AppDecoration.gradientBlackToBlack.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Container(
                                  width: 361.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 15.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                      image: DecorationImage(
                                          image: NetworkImage(imgUrl),
                                          fit: BoxFit.cover)),
                                  foregroundDecoration: AppDecoration
                                      .gradientBlackToBlack900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 41.v),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        // CustomImageView(
                                        //     // imagePath:
                                        //     //     ImageConstant.imgFlags067United,
                                        //     height: 24.adaptSize,
                                        //     width: 24.adaptSize),
                                        SizedBox(height: 1.v),
                                        Text(text.tr,
                                            style: CustomTextStyles
                                                .titleLargeInterOnPrimarySemiBold),
                                        SizedBox(height: 3.v),
                                        Opacity(
                                            opacity: 0.8,
                                            child: Text("10Gbs 30 days".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimary))
                                      ]))),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Select Payment Method".tr,
                                      style:
                                          CustomTextStyles.titleSmallInter))),
                          SizedBox(height: 8.v),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 13.v),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(() => CustomRadioButton(
                                        text: "Apple Pay".tr,
                                        value: "Apple Pay".tr,
                                        groupValue: controller.radioGroup.value,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        })),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgApple,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          SizedBox(height: 16.v),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 14.v),
                              decoration: AppDecoration.outlineGray200.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Obx(() => CustomRadioButton(
                                        text: "Add a new card".tr,
                                        value: "Add a new card".tr,
                                        groupValue: controller.radioGroup.value,
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        })),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVuesaxLinearCard,
                                        height: 18.adaptSize,
                                        width: 18.adaptSize)
                                  ])),
                          // _buildSelectorRow4(),
                          SizedBox(height: 24.v),
                          // _buildTextField(),
                          // SizedBox(height: 24.v),

                          // SizedBox(
                          //     height: 400.v,
                          //     width: double.maxFinite,
                          //     child: Stack(
                          //         alignment: Alignment.bottomCenter,
                          //         children: [
                          //           // _buildAutoRenew(),
                          //           // _buildCheckbox(),
                          //           GestureDetector(
                          //               onTap: () {
                          //                 startSDK();
                          //                 // Get.toNamed(
                          //                 //     '/checkout_card_added_screen');
                          //               },
                          //               child: _buildCtas()),
                          //           // _buildKeyboard()
                          //         ])),
                          SizedBox(height: 16.v)
                        ]))))
          ])),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: 64.v),
          padding: EdgeInsets.all(12.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.customBorderTL12),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                decoration: AppDecoration.fillOnPrimary,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("Total Price".tr,
                          style: CustomTextStyles.titleMediumInterMedium)),
                  const Spacer(),
                  Text("$price Points".tr,
                      style: CustomTextStyles.titleMediumInter),
                  CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearArrowDown,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 8.h))
                ])),
            SizedBox(height: 8.v),
            CustomElevatedButton(
                onPressed: () async {
                  startSDK(bundle);
                  Map<Object?, Object?> tapSDKResult =
                      await GoSellSdkFlutter.startPaymentSDK;
                  // if (tapSDKResult != null) {
                  if (tapSDKResult['sdk_result'] == 'SUCCESS') {
                    ApiService()
                        .createOrder(dataBundleId: bundle.name!, price: price);
                    logger.d(tapSDKResult);
                    Get.offAllNamed('/home');
                    BotToast.showText(text: 'Purchase Completed');
                  } else {
                    BotToast.showText(text: 'Purchase Not Completed');
                  }

                  // }
                },
                height: 48.v,
                text: "${bundle.price!.value} Points Buy".tr,
                buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimary),
            SizedBox(height: 12.v)
          ])),
    ));
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 15.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 8.v),
              CustomAppBar(
                  height: 20.v,
                  leadingWidth: 34.h,
                  leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
                      margin: EdgeInsets.only(left: 16.h, bottom: 1.v)),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "Secure Checkout".tr),
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgVuesaxLinearHelp,
                        margin: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 1.v))
                  ])
            ]));
  }

  /// Section Widget
  Widget _buildCountry() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgAlaska), fit: BoxFit.cover)),
        foregroundDecoration: AppDecoration.gradientBlackToBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            width: 361.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder10,
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgAlaska),
                    fit: BoxFit.cover)),
            foregroundDecoration: AppDecoration.gradientBlackToBlack900
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 41.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFlags067United,
                      height: 24.adaptSize,
                      width: 24.adaptSize),
                  SizedBox(height: 1.v),
                  Text("USA".tr,
                      style: CustomTextStyles.titleLargeInterOnPrimarySemiBold),
                  SizedBox(height: 3.v),
                  Opacity(
                      opacity: 0.8,
                      child: Text("10Gbs 30 days".tr,
                          style: CustomTextStyles.labelLargeOnPrimary))
                ])));
  }

  /// Section Widget
  // Widget _buildSelectorRow1() {
  //   CheckoutCardAddedController controller = Get.find();
  //   return ;
  // }

  /// Section Widget
  Widget _buildSelectorRow2() {
    CheckoutCardAddedController controller = Get.find();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.outlineGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                  child: CustomRadioButton(
                      text: "Card Ending in 6029".tr,
                      value: "Msg Card Ending in 6029".tr,
                      groupValue: controller.radioGroup1.value,
                      onChange: (value) {
                        controller.radioGroup1.value = value;
                      }))),
              const Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgSecondMethod,
                  height: 24.v,
                  width: 34.h),
              CustomImageView(
                  imagePath: ImageConstant.imgVuesaxLinearMore,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 12.h, top: 3.v, bottom: 3.v))
            ]));
  }

  /// Section Widget
  Widget _buildSelectorRow3() {
    CheckoutCardAddedController controller = Get.find();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(vertical: 4.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Obx(() => Padding(
                      padding:
                          EdgeInsets.only(left: 11.h, top: 10.v, bottom: 9.v),
                      child: CustomRadioButton(
                          text: "Virgin red points".tr,
                          value: "Virgin red points".tr,
                          groupValue: controller.radioGroup2.value,
                          onChange: (value) {
                            controller.radioGroup2.value = value;
                          })))),
              CustomImageView(
                  imagePath: ImageConstant.imgVirginRedLogo,
                  height: 37.v,
                  width: 43.h,
                  margin: EdgeInsets.only(left: 6.h, bottom: 1.v))
            ]));
  }

  /// Section Widget
  Widget _buildSelectorRow4() {
    CheckoutCardAddedController controller = Get.find();
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 14.v),
        decoration: AppDecoration.outlineGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Obx(() => CustomRadioButton(
              text: "Add a new card".tr,
              value: "Add a new card".tr,
              groupValue: controller.radioGroup3.value,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                controller.radioGroup3.value = value;
              })),
          CustomImageView(
              imagePath: ImageConstant.imgVuesaxLinearCard,
              height: 18.adaptSize,
              width: 18.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildTextField() {
    CheckoutCardAddedController controller = Get.find();
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_apply_promotions".tr,
              style: CustomTextStyles.labelMediumGray90011),
          SizedBox(height: 6.v),
          CustomTextFormField(
              controller: controller.promoCodeController,
              hintText: "msg_enter_your_promo".tr,
              hintStyle: CustomTextStyles.titleMediumInterBluegray10001,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 13.h, vertical: 12.v))
        ]));
  }

  /// Section Widget
  Widget _buildAutoRenew() {
    CheckoutCardAddedController controller = Get.find();
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
            decoration: AppDecoration.outlineGray2001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVuesaxLinearRefreshCircle,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                        child: Text("lbl_auto_renew".tr,
                            style: CustomTextStyles.titleSmallInter)),
                    CustomOutlinedButton(
                        width: 42.h,
                        text: "lbl_new".tr.toUpperCase(),
                        margin: EdgeInsets.only(left: 8.h))
                  ]),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(right: 10.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => CustomSwitch(
                                margin: EdgeInsets.only(top: 4.v, bottom: 9.v),
                                value: controller.isSelectedSwitch.value,
                                onChange: (value) {
                                  controller.isSelectedSwitch.value = value;
                                })),
                            Expanded(
                                child: Container(
                                    width: 258.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text("msg_automatically_renew".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumInterGray90014
                                            .copyWith(height: 1.50))))
                          ])),
                  SizedBox(height: 11.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_add_monthly_limit2".tr,
                            style: CustomTextStyles.labelMediumGray900),
                        TextSpan(
                            text: "lbl_optional".tr,
                            style: CustomTextStyles.bodySmallInter)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 4.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 13.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("msg_add_your_monthly".tr,
                                    style: CustomTextStyles
                                        .titleSmallInterBluegray40001)),
                            Padding(
                                padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                                child: Text("lbl_usd".tr,
                                    style: CustomTextStyles
                                        .bodyMediumInterGray900))
                          ])),
                  SizedBox(height: 12.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 11.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_renew_upon".tr.toUpperCase(),
                                style:
                                    CustomTextStyles.labelLargeBluegray40001),
                            SizedBox(height: 6.v),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 3.v),
                                      child: Text("lbl_period_expiry".tr,
                                          style: CustomTextStyles
                                              .bodyMediumInterGray90015)),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgVuesaxLinearArrowDown,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize)
                                ])
                          ]))
                ])));
  }

  /// Section Widget
  Widget _buildCheckbox() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 84.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 337.h,
                      margin: EdgeInsets.only(left: 24.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_by_completing_this2".tr,
                                style:
                                    CustomTextStyles.titleSmallInterGray90001),
                            TextSpan(
                                text: "Terms_and_conditions".tr,
                                style: CustomTextStyles
                                    .titleSmallInterIndigoA400
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left))),
              SizedBox(height: 16.v),
              SizedBox(
                  width: 361.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_this_esim_works2".tr,
                            style: CustomTextStyles.titleSmallInterGray90001),
                        TextSpan(
                            text: "msg_check_your_device".tr,
                            style: CustomTextStyles.titleSmallInterIndigoA400
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left))
            ])));
  }

  /// Section Widget
  Widget _buildCtas() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 64.v),
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.outlineBlack9001
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  decoration: AppDecoration.fillOnPrimary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("Total Price".tr,
                                style:
                                    CustomTextStyles.titleMediumInterMedium)),
                        Spacer(),
                        Text("XXX Points".tr,
                            style: CustomTextStyles.titleMediumInter),
                        CustomImageView(
                            imagePath: ImageConstant.imgVuesaxLinearArrowDown,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 8.h))
                      ])),
              SizedBox(height: 8.v),
              CustomElevatedButton(
                  onPressed: () => Get.toNamed('/cardaddScreen'),
                  height: 48.v,
                  text: "XXX Points Buy".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                  buttonTextStyle: CustomTextStyles.titleMediumInterOnPrimary),
              SizedBox(height: 12.v)
            ])));
  }

  /// Section Widget
  // Widget _buildKeyboard() {
  //   return Align(
  //       alignment: Alignment.bottomCenter,
  //       child: Container(
  //           padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
  //           decoration: AppDecoration.fillBlueGray,
  //           child: Column(mainAxisSize: MainAxisSize.min, children: [
  //             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //               Container(
  //                   width: 32.h,
  //                   padding: EdgeInsets.all(7.h),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_q".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 5.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_w".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_e".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_r".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_t".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_y".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding: EdgeInsets.all(7.h),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_u".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_i".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding: EdgeInsets.all(7.h),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_o".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_p".tr, style: theme.textTheme.titleLarge))
  //             ]),
  //             SizedBox(height: 12.v),
  //             Padding(
  //                 padding: EdgeInsets.symmetric(horizontal: 18.h),
  //                 child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: [
  //                       Container(
  //                           width: 32.h,
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 8.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_a".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 5.h),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 8.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_s".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 6.h),
  //                           padding: EdgeInsets.all(7.h),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_d".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 5.h),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 9.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_f".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 6.h),
  //                           padding: EdgeInsets.all(7.h),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_g".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 5.h),
  //                           padding: EdgeInsets.all(7.h),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_h".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 6.h),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 9.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_j".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 5.h),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 8.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_k".tr,
  //                               style: theme.textTheme.titleLarge)),
  //                       Container(
  //                           width: 32.h,
  //                           margin: EdgeInsets.only(left: 6.h),
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 9.h, vertical: 7.v),
  //                           decoration: AppDecoration.outlineBluegray400
  //                               .copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder4),
  //                           child: Text("lbl_l".tr,
  //                               style: theme.textTheme.titleLarge))
  //                     ])),
  //             SizedBox(height: 12.v),
  //             Row(mainAxisAlignment: MainAxisAlignment.center, children: [
  //               CustomImageView(
  //                   imagePath: ImageConstant.imgShift,
  //                   height: 42.adaptSize,
  //                   width: 42.adaptSize),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 14.h),
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_z".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 6.h),
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_x".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 5.h),
  //                   padding: EdgeInsets.all(7.h),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_c".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 6.h),
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_v".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 5.h),
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_b".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 6.h),
  //                   padding: EdgeInsets.all(7.h),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_n".tr, style: theme.textTheme.titleLarge)),
  //               Container(
  //                   width: 32.h,
  //                   margin: EdgeInsets.only(left: 6.h),
  //                   padding:
  //                       EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.v),
  //                   decoration: AppDecoration.outlineBluegray400.copyWith(
  //                       borderRadius: BorderRadiusStyle.roundedBorder4),
  //                   child: Text("lbl_m".tr, style: theme.textTheme.titleLarge)),
  //               CustomImageView(
  //                   imagePath: ImageConstant.imgDelete,
  //                   height: 42.adaptSize,
  //                   width: 42.adaptSize,
  //                   margin: EdgeInsets.only(left: 13.h))
  //             ]),
  //             SizedBox(height: 12.v),
  //             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //               SizedBox(
  //                   height: 42.v,
  //                   width: 87.h,
  //                   child: Stack(alignment: Alignment.center, children: [
  //                     CustomImageView(
  //                         imagePath: ImageConstant.imgRectangle,
  //                         height: 42.v,
  //                         width: 87.h,
  //                         radius: BorderRadius.circular(4.h),
  //                         alignment: Alignment.center),
  //                     Align(
  //                         alignment: Alignment.center,
  //                         child: Text("lbl_123".tr,
  //                             textAlign: TextAlign.center,
  //                             style: theme.textTheme.bodyLarge))
  //                   ])),
  //               SizedBox(
  //                   height: 42.v,
  //                   width: 182.h,
  //                   child: Stack(alignment: Alignment.center, children: [
  //                     CustomImageView(
  //                         imagePath: ImageConstant.imgRectangleWhiteA700,
  //                         height: 42.v,
  //                         width: 182.h,
  //                         radius: BorderRadius.circular(4.h),
  //                         alignment: Alignment.center),
  //                     Align(
  //                         alignment: Alignment.center,
  //                         child: Text("lbl_space".tr,
  //                             textAlign: TextAlign.center,
  //                             style: theme.textTheme.bodyLarge))
  //                   ])),
  //               SizedBox(
  //                   height: 42.v,
  //                   width: 88.h,
  //                   child: Stack(alignment: Alignment.center, children: [
  //                     CustomImageView(
  //                         imagePath: ImageConstant.imgRectangle,
  //                         height: 42.v,
  //                         width: 88.h,
  //                         radius: BorderRadius.circular(4.h),
  //                         alignment: Alignment.center),
  //                     Align(
  //                         alignment: Alignment.center,
  //                         child: Text("lbl_search".tr,
  //                             textAlign: TextAlign.center,
  //                             style: theme.textTheme.bodyLarge))
  //                   ]))
  //             ]),
  //             SizedBox(height: 28.v),
  //             Padding(
  //                 padding: EdgeInsets.only(left: 22.h, right: 27.h),
  //                 child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       CustomImageView(
  //                           imagePath: ImageConstant.imgEmoji,
  //                           height: 27.adaptSize,
  //                           width: 27.adaptSize),
  //                       CustomImageView(
  //                           imagePath: ImageConstant.imgDictation,
  //                           height: 25.v,
  //                           width: 15.h)
  //                     ])),
  //             SizedBox(height: 16.v)
  //           ])));
  // }
}
