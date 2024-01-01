import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../controller/eSimController.dart';

class ESIMDetailPage extends StatelessWidget {
  const ESIMDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ESimController simController = Get.find();
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
        title: Text(
          simController.name.value,
          style: const TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                            'eSim details',
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
                                  const Text("eSim Name",
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
                              GestureDetector(
                                  onTap: () {
                                    simController.updateUserName(context);
                                  },
                                  child: Image.asset('assets/edit.png')),
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
                                  Text("PROFILE STATUS",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Not Installed",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xffE10A0A))),
                                ],
                              ),
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
                                  Text("ACTIVATION DATE",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Text("Activated on 01/11/2023",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: "Inter",
                                          color: Color(0xff131C35))),
                                ],
                              ),
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
                                  Text("eSIM ID",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("981390281932310-",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Color(0xff131C35))),
                                    ],
                                  ),
                                ],
                              ),
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
                                  Text("PIN",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("981390281932310-",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Color(0xff131C35))),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
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
                                  Text("PUK",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("0910239",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Color(0xff131C35))),
                                    ],
                                  ),
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
                                  Text("QR Code",
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontFamily: "Inter",
                                          color: Colors.grey)),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Show QR Code",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: "Inter",
                                              color: Color(0xff131C35))),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 150,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xFFe10a0a),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Show Qr Code",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
              const SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () => Get.toNamed('/instructionManual'),
                child: Container(
                    height: 50,
                    width: Get.width * .9,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF9CECE),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Show Installation Instructions",
                        style: TextStyle(
                            color: Color(0xFFe10a0a),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600),
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
