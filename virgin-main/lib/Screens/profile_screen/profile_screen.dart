import 'package:esim2/constants/goSellSdk.dart';
import 'package:esim2/constants/token.dart';
import 'package:esim2/controller/authController.dart';
import 'package:esim2/controller/home_controller.dart';
import 'package:esim2/service/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import '../../widgets/custom_Text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    AuthController authcontroller = Get.put(AuthController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                controller.temporaryBearer.value.isEmpty
                    ? const Text(
                        "Hello, Traveler",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "Inter",
                            color: Colors.black),
                      )
                    : SizedBox(
                        height: Get.height * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Hello, ${controller.firstname}",
                                  style: const TextStyle(
                                      fontSize: 24.0,
                                      fontFamily: "Inter",
                                      color: Colors.black),
                                ),
                                Text(controller.useremail,
                                    style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: "Inter",
                                        color: Colors.grey)),
                              ],
                            ),
                            Container(
                              height: double.infinity,
                              width: Get.width * 0.3,
                              decoration: const BoxDecoration(
                                  color: Color(0xffD9D8D9),
                                  shape: BoxShape.circle),
                              child: const Icon(
                                Icons.person_outline,
                                color: Color(0xFFe10a0a),
                                size: 60.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                controller.temporaryBearer.value.isNotEmpty
                    ? Card(
                        elevation: 2,
                        color: Colors.white,
                        child: Container(
                          // height: Get.height * 0.3,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      Get.toNamed('/profileeditScreen'),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const ImageIcon(
                                          AssetImage(
                                            "assets/user-edit.png",
                                          ),
                                          color: Colors.black54,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        CustomText(
                                          style: const TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Colors.black),
                                          text: "Edit Profile",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const ImageIcon(
                                        AssetImage(
                                          "assets/History.png",
                                        ),
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      GestureDetector(
                                        onTap: () =>
                                            Get.toNamed('/invoicesScreen'),
                                        child: CustomText(
                                          style: const TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Colors.black),
                                          text: "Invoices",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Get.toNamed('/ProfilePreferencesScreen'),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ImageIcon(
                                          AssetImage(
                                            "assets/setting-2.png",
                                          ),
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text("Preferences",
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: "Inter",
                                                color: Colors.black))
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ImageIcon(
                                        AssetImage(
                                          "assets/language-circle.png",
                                        ),
                                        color: Colors.grey,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text("Change language",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Colors.black))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ch
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: Get.height * 0.15,
                              ),
                              Image.asset(
                                'assets/cardnew.png',
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              CustomText(
                                  text: 'You are not logged in',
                                  style: const TextStyle(
                                      color: Color(0xff131C35),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Inter')),
                              const SizedBox(
                                height: 5.0,
                              ),
                              CustomText(
                                  text: 'Login to see your packages here',
                                  style: const TextStyle(
                                      color: Color(0xff898D9A),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Inter')),
                              const SizedBox(
                                height: 5.0,
                              ),
                              InkWell(
                                onTap: () async {
                                  // await GoSellSdkFlutter.terminateSession();
                                  // startSDK();
                                  // Map<String, dynamic> tapSDKResult =
                                  //     await GoSellSdkFlutter.startPaymentSDK;
                                  // print(tapSDKResult);
                                  Get.toNamed('/auth');
                                },
                                child: Container(
                                  width: Get.width * 0.88,
                                  height: 45,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  child: CustomText(
                                      text: 'Login',
                                      style: const TextStyle(
                                        fontFamily: 'Inter',
                                        color: Color(0xff131C35),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: Get.height * 0.15,
                              ),
                            ],
                          )
                        ],
                      ),
                const SizedBox(
                  height: 18.0,
                ),
                Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Container(
                    // height: Get.height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/messages.png",
                                  ),
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Support",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Inter",
                                        color: Colors.black))
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const ImageIcon(
                                  AssetImage(
                                    "assets/document-text.png",
                                  ),
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      Get.toNamed('/termsandconditions'),
                                  child: const Text("Terms & Conditions",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Colors.black)),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/help.png",
                                  ),
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("FAQs",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Inter",
                                        color: Colors.black))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ch
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                if (controller.temporaryBearer.isNotEmpty)
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      // height: Get.height * 0.3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const ImageIcon(
                                    AssetImage(
                                      "assets/logout.png",
                                    ),
                                    color: Color(0xFFe10a0a),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      await authcontroller.gettoken();
                                      ApiService()
                                          .doLogOut(temporarybearertoken);
                                      GetStorage().erase();
                                      GetStorage().write('isintrodone', true);
                                      Get.offAllNamed('/home');
                                    },
                                    child: const Text("Logout",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "Inter",
                                            color: Color(0xFFe10a0a))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ch
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
