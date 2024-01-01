import 'package:bot_toast/bot_toast.dart';
import 'package:esim2/Screens/checkout/checkout_page.dart';
import 'package:esim2/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowPackageDetails extends StatelessWidget {
  final String name;
  final String img;
  const ShowPackageDetails({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    HomeController homecontroller = Get.find();
    return Obx(() {
      if (homecontroller.isLoadingdetail.value) {
        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xFFe10a0a),
          ),
        );
      }

      return Container(
        height: Get.height * 0.85,
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: Get.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      child: Image.network(
                        img,
                        fit: BoxFit.cover,
                        height: Get.height * 0.25,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              image: DecorationImage(
                                  image: NetworkImage(img), fit: BoxFit.fill)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          name,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Text(
                      'Select a data package:',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Select best value package:',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/World.png",
                          color: const Color(0xffe10a0a),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Tanzania & 78 other countries',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xffe10a0a)),
                        ),
                      ],
                    ),
                    for (int i = 0;
                        i <
                            homecontroller
                                .destinationdetail.value.dataBundles!.length;
                        i++)
                      Container(
                        width: double.infinity,
                        height: 48,
                        margin: const EdgeInsets.only(top: 10.0),
                        padding: const EdgeInsets.all(12),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFE7E8EB)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: Radio(
                                value:
                                    homecontroller.activeid.value == i ? 0 : 1,
                                groupValue: 0,
                                onChanged: (value) {
                                  homecontroller.activebundle = homecontroller
                                      .destinationdetail.value.dataBundles![i];
                                  homecontroller.activeid(i);
                                  homecontroller.activepricing(homecontroller
                                      .destinationdetail
                                      .value
                                      .dataBundles![i]
                                      .price!
                                      .value);
                                },
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 24,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${homecontroller.destinationdetail.value.dataBundles![i].description!.substring(0, 20)}...',
                                      style: const TextStyle(
                                        color: Color(0xFF131C35),
                                        fontSize: 14,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        height: 0.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '${homecontroller.destinationdetail.value.dataBundles![i].price!.currency!.name}  ${homecontroller.destinationdetail.value.dataBundles![i].price!.currency!.symbol}${homecontroller.destinationdetail.value.dataBundles![i].price!.value.toString()}',
                                    style: const TextStyle(
                                      color: Color(0xFF131C35),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Africa Regional data package:',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/World.png",
                          color: const Color(0xffe10a0a),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          '${homecontroller.destinationdetail.value.dataBundles!.first.coverageCountries!.first.name} & ${homecontroller.destinationdetail.value.dataBundles!.first.coverageCountries!.length} others',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: const Color(0xffe10a0a)),
                        ),
                        Expanded(
                            child: Text(
                          'Starting from US \$8.70',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Information',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color(0xff131C35)),
                    ),
                    const SizedBox(
                      height: 10.0,
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
                    const SizedBox(
                      height: 5,
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
                              "assets/activity.png",
                            ),
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: Get.width * 0.72,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("ACTIVATION POLICY",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: "Inter",
                                        color: Colors.grey)),
                                Text(
                                    "The validity period starts when the eSIM connects to any supported networks.",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Inter",
                                        color: Color(0xff131C35))),
                              ],
                            ),
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
                              "assets/arrow-swap-horizontal.png",
                            ),
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: Get.width * 0.72,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Network",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: "Inter",
                                        color: Colors.grey)),
                                Text("NTT Docomo,  T-Mobile",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Inter",
                                        color: Color(0xff131C35))),
                              ],
                            ),
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
                    const SizedBox(
                      height: 5.0,
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
                          SizedBox(
                            width: Get.width * 0.72,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("eSIM",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: "Inter",
                                        color: Colors.grey)),
                                Text(
                                    "You’ll get a free eSIM with this package.",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Inter",
                                        color: Color(0xff131C35))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 20.0,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    var id = GetStorage().read("bearertoken");
                    print(id);
                    if (id == null) {
                      Get.toNamed('/auth', arguments: [true]);
                    } else {
                      if (homecontroller.activebundle != null) {
                        Get.to(CheckoutCardScreen(
                          text: name,
                          price: homecontroller.activepricing.value,
                          imgUrl: img,
                          bundle: homecontroller.activebundle!,
                        ));
                      } else {
                        BotToast.showText(text: 'Please select a bundle');
                      }
                      // Get.toNamed('/CheckoutCardAddedScreen');
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
                    child: Text('US \$${homecontroller.activepricing} - BUY',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
              ),
              Container(
                height: 10,
                color: Colors.white,
              )
            ],
          ),
        ),
      );
    });
  }
}
