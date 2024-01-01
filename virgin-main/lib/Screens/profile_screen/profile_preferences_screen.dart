import 'package:esim2/widgets/custom_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePreferencesScreen extends StatelessWidget {
  const ProfilePreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            bottom: Radius.circular(22),
          ),
        ),
        title: const Text(
          "Preferences",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8.0,
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
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/password-check.png",
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
                                text: "Change Password",
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
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/sms-edit.png",
                              ),
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            CustomText(
                              style: const TextStyle(
                                  fontSize: 18.0,
                                  fontFamily: "Inter",
                                  color: Colors.black),
                              text: "Change Email",
                            ),
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
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/trash.png",
                              ),
                              color: Color(0xFFe10a0a),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text("Delete account",
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
    );
  }
}
