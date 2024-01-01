import 'package:cached_network_image/cached_network_image.dart';
import 'package:esim2/main.dart';
import 'package:esim2/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../constants/homeconstants.dart';
import '../../controller/home_controller.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  final bool isloggedIn;
  const HomeScreen({super.key, this.isloggedIn = false});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.find();
  // final ScrollControllerGetX _scrollControllerGetX = Get.find();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    controller.loadMapTheme(context);
    super.initState();

    // _scrollController.addListener(() {
    //   _scrollControllerGetX.updateOpacity(_scrollController.offset);
    //   print("Hello Worl");
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //    logger.d(temporaryNameconst);
    // logger.d(temporaryImgconst);
    //   logger.d(temporaryIsoconst);
    //   if (temporaryNameconst != '' && temporaryImgconst != '' && temporaryIsoconst != '') {
    //   controller.showPackageDetails(context, controller.temporaryIso,
    //        controller.temporaryName, controller.temporaryImg, true);
    //       temporaryIsoconst = '';
    //      temporaryImgconst = '';
    //     temporaryNameconst = '';
    //     }
    //  });
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              SizedBox(
                height: Get.height * 0.65,
                width: double.infinity,
                child:
                    // Stack(
                    //   alignment: Alignment.topCenter,
                    //   children: [

                    GoogleMap(
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  mapType: MapType.normal,
                  polygons: controller.polygons,
                  initialCameraPosition: const CameraPosition(
                      target: LatLng(30.3753, 69.3451), zoom: 2.5),
                  onMapCreated: (GoogleMapController mapcontroller) {
                    mapcontroller.setMapStyle(controller.maptheme.value);
                    // _controller.complete(controller);
                  },
                ),
              ),
              const Expanded(child: SizedBox())
              // SizedBox(RR
            ],
          ),
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * 0.6,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.07,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/search');
                        },
                        child: Container(
                          height: 72,
                          width: 227,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(
                                  color: const Color(0xFFe10a0a), width: 0.8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/search.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Stay connected in',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff898D9A)),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Destination',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff131C35)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                    color: Colors.white
                    // .withOpacity(_scrollControllerGetX.opacity.value)
                    ,
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Explore',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffce6e6)),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Color(0xffe10a0a),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Obx(() {
                        if (controller
                            .placesGroups.value.destinationGroup.isEmpty) {
                          return const CircularProgressIndicator(
                            color: Color(0xffe10a0a),
                          );
                        }
                        return SizedBox(
                          height: 160,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.placesGroups.value
                                .destinationGroup.first.destinations.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10.0);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.showPackageDetails(
                                      context,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup
                                          .first
                                          .destinations[index]
                                          .iso,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup[0]
                                          .destinations[index]
                                          .name,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup[0]
                                          .destinations[index]
                                          .image,
                                      false);
                                },
                                child: Container(
                                  height: 150,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: const Alignment(0.00, -1.00),
                                      end: const Alignment(0, 1),
                                      colors: [
                                        Colors.black.withOpacity(0),
                                        Colors.black
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(), fit: BoxFit.cover)
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: CachedNetworkImage(
                                            imageUrl: controller
                                                .placesGroups
                                                .value
                                                .destinationGroup
                                                .first
                                                .destinations[index]
                                                .image,
                                            fit: BoxFit.cover,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                Shimmer.fromColors(
                                              baseColor:
                                                  Colors.grey.withOpacity(0.3),
                                              highlightColor:
                                                  Colors.grey.withOpacity(0.1),
                                              child: SizedBox(
                                                height: Get.height * 0.18,
                                                width: Get.width * 0.25,
                                                child: Container(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            errorWidget: (context, url,
                                                    error) =>
                                                const Icon(Icons
                                                    .error), // Widget to display in case of error
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 20,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                child: SvgPicture.network(
                                                  controller
                                                      .placesGroups
                                                      .value
                                                      .destinationGroup
                                                      .first
                                                      .destinations[index]
                                                      .flag,
                                                  placeholderBuilder: (BuildContext
                                                          context) =>
                                                      const CircularProgressIndicator(),
                                                  width: 25,
                                                  height: 25,
                                                )
                                                // Container(
                                                //   height: 25,
                                                //   width: 25,
                                                //   decoration: BoxDecoration(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               4.0),
                                                //       image: DecorationImage(
                                                //           image: NetworkImage(
                                                //               controller
                                                //                   .placesGroups
                                                //                   .value
                                                //                   .destinationGroup
                                                //                   .first
                                                //                   .destinations[
                                                //                       index]
                                                //                   .flag),
                                                //           fit: BoxFit.fill)),
                                                // ),
                                                ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              controller
                                                  .placesGroups
                                                  .value
                                                  .destinationGroup
                                                  .first
                                                  .destinations[index]
                                                  .name,
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 21,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'from US \$8.20',
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Recommended for you',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Obx(() {
                        if (controller
                            .placesGroups.value.destinationGroup.isEmpty) {
                          return const CircularProgressIndicator(
                            color: Color(0xffe10a0a),
                          );
                        }
                        return SizedBox(
                          height: 160,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.placesGroups.value
                                .destinationGroup[1].destinations.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10.0);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.showPackageDetails(
                                      context,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup[1]
                                          .destinations[index]
                                          .iso,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup[1]
                                          .destinations[index]
                                          .name,
                                      controller
                                          .placesGroups
                                          .value
                                          .destinationGroup[1]
                                          .destinations[index]
                                          .image,
                                      false);
                                },
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: const Alignment(0.00, -1.00),
                                      end: const Alignment(0, 1),
                                      colors: [
                                        Colors.black.withOpacity(0),
                                        Colors.black
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(16.0),
                                    // image: DecorationImage(
                                    //     image: NetworkImage(), fit: BoxFit.cover)
                                  ),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: SizedBox(
                                          height: double.infinity,
                                          width: double.infinity,
                                          child: CachedNetworkImage(
                                            imageUrl: controller
                                                .placesGroups
                                                .value
                                                .destinationGroup[1]
                                                .destinations[index]
                                                .image,
                                            fit: BoxFit.cover,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                Shimmer.fromColors(
                                              baseColor:
                                                  Colors.grey.withOpacity(0.3),
                                              highlightColor:
                                                  Colors.grey.withOpacity(0.1),
                                              child: SizedBox(
                                                height: Get.height * 0.18,
                                                width: Get.width * 0.25,
                                                child: Container(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            errorWidget: (context, url,
                                                    error) =>
                                                const Icon(Icons
                                                    .error), // Widget to display in case of error
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 20,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              controller
                                                  .placesGroups
                                                  .value
                                                  .destinationGroup[1]
                                                  .destinations[index]
                                                  .name,
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 21,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'from US \$7.20',
                                              style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.white
                                                      .withOpacity(0.7)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Trending places',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Obx(() {
                        if (controller
                            .placesGroups.value.destinationGroup.isEmpty) {
                          return const CircularProgressIndicator(
                            color: Color(0xffe10a0a),
                          );
                        }
                        return ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 3,
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 10.0);
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                controller.showPackageDetails(
                                    context,
                                    controller
                                        .placesGroups
                                        .value
                                        .destinationGroup[2]
                                        .destinations[index]
                                        .iso,
                                    controller
                                        .placesGroups
                                        .value
                                        .destinationGroup[2]
                                        .destinations[index]
                                        .name,
                                    controller
                                        .placesGroups
                                        .value
                                        .destinationGroup[2]
                                        .destinations[index]
                                        .image,
                                    false);
                              },
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: const Alignment(0.00, -1.00),
                                    end: const Alignment(0, 1),
                                    colors: [
                                      Colors.black.withOpacity(0),
                                      Colors.black
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: SizedBox(
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: CachedNetworkImage(
                                          imageUrl: controller
                                              .placesGroups
                                              .value
                                              .destinationGroup[2]
                                              .destinations[index]
                                              .image,
                                          fit: BoxFit.cover,
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              Shimmer.fromColors(
                                            baseColor:
                                                Colors.grey.withOpacity(0.3),
                                            highlightColor:
                                                Colors.grey.withOpacity(0.1),
                                            child: SizedBox(
                                              height: Get.height * 0.18,
                                              width: Get.width * 0.25,
                                              child: Container(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons
                                                  .error), // Widget to display in case of error
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: SizedBox(
                                        height: double.infinity,
                                        width: double.infinity,
                                        child: Image.network(
                                          controller
                                              .placesGroups
                                              .value
                                              .destinationGroup[2]
                                              .destinations[index]
                                              .image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 20,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        controller
                                                            .placesGroups
                                                            .value
                                                            .destinationGroup[2]
                                                            .destinations[index]
                                                            .flag),
                                                    fit: BoxFit.fill)),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            controller
                                                .placesGroups
                                                .value
                                                .destinationGroup[2]
                                                .destinations[index]
                                                .name,
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 21,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'from US \$5.10',
                                            style: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Colors.white
                                                    .withOpacity(0.7)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Explore By Region',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: 21,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Obx(() {
                        if (controller
                            .placesGroups.value.destinationGroup.isEmpty) {
                          return const CircularProgressIndicator(
                            color: Color(0xffe10a0a),
                          );
                        }
                        return SizedBox(
                          height: 160,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.filteredplacesGroups.value
                                .destinationGroup.length,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(width: 10.0);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              final destination = controller
                                  .filteredplacesGroups
                                  .value
                                  .destinationGroup[index];
                              return GestureDetector(
                                onTap: () {
                                  // controller.showPackageDetails(
                                  //     context,
                                  //     controller
                                  //         .placesGroups
                                  //         .value
                                  //         .destinationGroup[2]
                                  //         .destinations[index]
                                  //         .iso,
                                  //     controller
                                  //         .placesGroups
                                  //         .value
                                  //         .destinationGroup[1]
                                  //         .destinations[index]
                                  //         .name,
                                  //     controller
                                  //         .placesGroups
                                  //         .value
                                  //         .destinationGroup[1]
                                  //         .destinations[index]
                                  //         .image);
                                },
                                child: Container(
                                  height: 150,
                                  width: 160,
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0, bottom: 18.0),
                                  decoration: BoxDecoration(
                                    color: index == 0
                                        ? const Color(0xffe10a0a)
                                        : appTheme.gray900,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Icon(
                                        Icons.flag,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        destination.name.name,
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'from US \$8.20',
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color:
                                                Colors.white.withOpacity(0.7)),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
