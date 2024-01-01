import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_Text.dart';

class InvoicesScreen extends StatelessWidget {
  const InvoicesScreen({super.key});

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
            bottom: Radius.circular(14),
          ),
        ),
        title: const Text(
          "Invoices",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Column(
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
                child: SingleChildScrollView(
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
                                  "assets/calendar-circle.png",
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
                                text: "13/11/2023",
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
                                "assets/calendar-circle.png",
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
                              text: "13/11/2023",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/calendar-circle.png",
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
                              text: "13/11/2023",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/calendar-circle.png",
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
                              text: "13/11/2023",
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/calendar-circle.png",
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
                              text: "13/11/2023",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
        ],
      ),
    );
  }
}
