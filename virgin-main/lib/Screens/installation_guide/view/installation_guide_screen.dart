import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/installation_guide_controller.dart';

// ignore: use_key_in_widget_constructors
class InstallationGuide extends StatelessWidget {
  final InstallationGuideController controller =
      Get.put(InstallationGuideController());

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
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(22),
        //   ),
        // ),
        title: const Text(
          "Installation Instructions",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DefaultTabController(
            length: 2,
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFe10a0a),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
              child: const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(text: 'QR Code'),
                  Tab(text: 'Manual'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: LinearProgressIndicator(
                  value: controller.currentPage.value /
                      (controller.screens.length - 1),
                  backgroundColor: const Color(0xffE7E8EB),
                  color: const Color(0xFFe10a0a)),
            );
          }),
          const SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              // onPageChanged: controller.changePage,
              children: List.generate(
                controller.screens.length,
                (index) => Center(
                  child: Image.asset(controller
                      .screens[index].imgPath), // Your asset image here
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Obx(() => Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: const Color(0xffE7E8EB),
                  borderRadius: BorderRadius.circular(5.0)),
              margin: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Step ${controller.currentPage.value + 1}',
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: Color(0xff131C35)),
              ))),
          const SizedBox(
            height: 10.0,
          ),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                controller.screens[controller.currentPage.value].title,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff131C35)),
              ),
            );
          }),
          Obx(() {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                controller.screens[controller.currentPage.value].description,
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff898D9A)),
              ),
            );
          }),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Obx(() {
              if (controller.currentPage.value > 0) {
                return Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          controller.goBack(controller.currentPage.value - 1);
                          controller
                              .currentPage(controller.currentPage.value - 1);

                          // if (controller.screens.length + 1 <
                          //     controller.currentPage.value) {
                          //   controller.goBack(controller.currentPage.value + 1);
                          // }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          padding: const EdgeInsets.all(13),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE10A0A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Go Back',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (controller.currentPage.value + 1 <
                              controller.screens.length) {
                            controller
                                .changePage(controller.currentPage.value + 1);
                          } else {
                            Get.back();
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          padding: const EdgeInsets.all(13),
                          decoration: ShapeDecoration(
                            color: const Color(0xFFE10A0A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Continue',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                        ),
                      ),
                    )
                  ],
                );
              }
              return GestureDetector(
                onTap: () {
                  if (controller.currentPage.value + 1 <
                      controller.screens.length) {
                    controller.changePage(controller.currentPage.value + 1);
                  }
                  if (controller.currentPage.value + 1 ==
                      controller.screens.length) {
                    print("Done");
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 45,
                  padding: const EdgeInsets.all(13),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE10A0A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Continue',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              );
            }),
          ),
          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}
