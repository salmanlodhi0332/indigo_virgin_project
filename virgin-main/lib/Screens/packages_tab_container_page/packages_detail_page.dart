import 'package:esim2/controller/eSimController.dart';
import 'package:get/get.dart';
import 'controller/packages_tab_container_controller.dart';
import 'models/packages_tab_container_model.dart';
import 'package:flutter/material.dart';

class PackagesDetailScreen extends StatelessWidget {
  const PackagesDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ESimController simController = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFe10a0a),
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
          "USA Package",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      height: Get.height * 0.25,
                      width: Get.width * 0.43,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: Get.height * 0.1,
                              width: Get.height * 0.1,
                              child: const Stack(
                                children: [
                                  SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: CircularProgressIndicator(
                                      value: 0.45,
                                      color: Colors.grey,
                                      backgroundColor: Color(0xffE6E8F2),
                                      // color: Colors.grey,

                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xff131C35)),

                                      // valueColor: ,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '5 GB',
                                          style: TextStyle(
                                              height: 0,
                                              fontSize: 16.0,
                                              fontFamily: 'Inter',
                                              color: Color(0xff131C35),
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'left',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  )
                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   child: Column(

                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const Text(
                              '5 GBs of 10Gbs\nRemaining',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0,
                                  fontSize: 14.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff131C35),
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              '50% REMAINING',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),

                      // ch
                    ),
                  ),
                  Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Container(
                      height: Get.height * 0.25,
                      width: Get.width * 0.43,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: Get.height * 0.1,
                              width: Get.height * 0.1,
                              child: const Stack(
                                children: [
                                  SizedBox(
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: CircularProgressIndicator(
                                      value: 0.45,
                                      color: Colors.grey,
                                      backgroundColor: Color(0xffE6E8F2),
                                      // color: Colors.grey,

                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xff131C35)),

                                      // valueColor: ,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '24 days',
                                          style: TextStyle(
                                              height: 0,
                                              fontSize: 16.0,
                                              fontFamily: 'Inter',
                                              color: Color(0xff131C35),
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          'left',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  )
                                  // Align(
                                  //   alignment: Alignment.center,
                                  //   child: Column(

                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const Text(
                              '24 of 30 days',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  height: 0,
                                  fontSize: 14.0,
                                  fontFamily: 'Inter',
                                  color: Color(0xff131C35),
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              'EXPIRES ON 30/11/2023',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),

                      // ch
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
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
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            'Package details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 0,
                                fontSize: 21.0,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Color(0xff131C35)),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/SIM Cards.png",
                                ),
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text("eSim",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Obx(() {
                                    return Text(simController.name.value,
                                        style: const TextStyle(
                                            fontSize: 18.0,
                                            fontFamily: "Inter",
                                            color: Color(0xff131C35)));
                                  }),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              IconButton(
                                  onPressed: () =>
                                      Get.toNamed('/esimdetailScreen'),
                                  icon: const Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff131C35),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/notification-status.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("status",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Active",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/message-text.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("PLAN TYPE",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Data only",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/activity.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("ACTIVATION",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Activated on 12/11/2023",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/arrow-swap-horizontal.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("NETWORK",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Verizon",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/World.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("COVERAGE",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("USA and 32 other countries",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xff131C35),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Auto renewal',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 0,
                                    fontSize: 21.0,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff131C35)),
                              ),
                              Text(
                                'Settings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 0,
                                    fontSize: 16.0,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFe10a0a)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/refresh-circle.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("AUTO RENEWAL",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("On",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/calendar.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("EXPIRE UNTIL",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("12/11/2023",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0, right: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment Method',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 0,
                                    fontSize: 21.0,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff131C35)),
                              ),
                              Text(
                                'Settings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    height: 0,
                                    fontSize: 16.0,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFe10a0a)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/Card.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("CARD",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Card ending in #6029",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  "assets/History.png",
                                ),
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("HISTORY",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("View Invoices",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
