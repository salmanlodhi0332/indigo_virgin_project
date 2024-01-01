import 'dart:collection';

import 'package:bot_toast/bot_toast.dart';
import 'package:esim2/Models/destination_detail_model.dart';
import 'package:esim2/Models/destination_model.dart';
import 'package:esim2/Models/places_group_model.dart';
import 'package:esim2/Screens/home_page/widget/showPackageDetails.dart';
import 'package:esim2/constants/homeconstants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../service/ApiService.dart';
import '../serviceprovider/countries/geo.dart';

class HomeController extends GetxController {
  Rx<PlacesGroups> placesGroups = PlacesGroups(destinationGroup: []).obs;
  Rx<PlacesGroups> filteredplacesGroups =
      PlacesGroups(destinationGroup: []).obs;
  Rx<Destinations> placesDestinations = Destinations(destinations: []).obs;
  Rx<Destinations> filteredplacesDestinations =
      Destinations(destinations: []).obs;
  Rx<DestinationDetail> destinationdetail =
      DestinationDetail(dataBundles: []).obs;
  RxInt activeid = 0.obs;
  RxDouble activepricing = 0.0.obs;
  DataBundle? activebundle;

  var isLoading = true.obs;
  var isLoadingdetail = true.obs;
  var errorMessage = ''.obs;
  final ApiService _apiService = Get.put(ApiService());
  String useremail = '';
  String firstname = '';
  String lastname = '';
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  Set<Polygon> polygons = HashSet<Polygon>();
  List<LatLng> point = [];
  RxString maptheme = ''.obs;
  RxString temporaryBearer = ''.obs;
  void addPoints() {
    for (var i = 0; i < GeoJson.IN.length; i++) {
      var ltlng = LatLng(GeoJson.IN[i][1], GeoJson.IN[i][0]);
      point.add(ltlng);
    }
  }

  void loadMapTheme(BuildContext context) async {
    try {
      DefaultAssetBundle.of(context)
          .loadString('assets/style.json')
          .then((value) {
        maptheme(value);
      });
    } catch (e) {
      return;
    }
  }

  @override
  void onInit() async {
    super.onInit();
    addPoints();
    // FirebaseCrashlyticsHandler.log("Test Crash");

    List<Polygon> addPolygon = [
      Polygon(
        polygonId: const PolygonId('India'),
        points: point,
        consumeTapEvents: true,
        strokeColor: const Color(0xFFe10a0a),
        strokeWidth: 1,
        fillColor: const Color(0xFFe10a0a),
      ),
    ];
    polygons.addAll(addPolygon);
    var bearer = GetStorage().read("bearertoken");
    if (bearer != null) {
      temporaryBearer(bearer);
    }
    // await ApiService().userInfo();
    // if (await GetStorage().read('useremail') != null) {
    //   useremail = await GetStorage().read('useremail');
    // }
    // if (await GetStorage().read('firstname') != null) {
    //   firstname = await GetStorage().read('firstname');
    //   firstnamecontroller.text = firstname;
    // }
    // if (await GetStorage().read('lastname') != null) {
    //   lastname = await GetStorage().read('lastname');
    //   lastnamecontroller.text = lastname;
    // }
    await fetchDestinationsGroups();
    await fetchDestinations();
  }

  Future<void> fetchDestinationsGroups() async {
    try {
      isLoading.value = true;
      final data = await _apiService.fetchPlacesGroups();
      placesGroups.value = data;
      filteredplacesGroups.value.destinationGroup
          .addAll(placesGroups.value.destinationGroup);
    } catch (e) {
      errorMessage.value = e.toString();
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchDestinations() async {
    try {
      // isLoading.value = true;
      final data = await _apiService.fetchPlacesDestinations();
      placesDestinations.value = data;
      filteredplacesDestinations.value.destinations
          .addAll(placesDestinations.value.destinations);
      print("total places");
      print(placesDestinations.value.destinations.length);
    } catch (e) {
      throw Exception('Error');
      Get.back();
      print("Error from Destinations");
      errorMessage.value = e.toString();
      print(errorMessage.value);
    } finally {
      // isLoading.value = false;
    }
  }

  Future<void> fetchDestinationsDetail(
      String iso, String name, String img) async {
    try {
      print("Running destination details");
      isLoadingdetail.value = true;
      final data = await _apiService.fetchPlacesDestinationDetails(iso);
      print(data.dataBundles!.length);
      activepricing(data.dataBundles!.first.price!.value);
      destinationdetail.value = data;
    } catch (e) {
      Get.back();
      BotToast.showText(
          text: "Error Fetching Details please try again in some time");
      errorMessage.value = e.toString();
      print(e);
    } finally {
      isLoadingdetail.value = false;
    }
  }

  // Search

  void filterDestinations(String query) {
    if (query.isNotEmpty) {
      // For Countries or destoinations
      filteredplacesDestinations.value.destinations = placesDestinations
          .value.destinations
          .where((destination) =>
              destination.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
      // For Regions or destination groups
      filteredplacesGroups.value.destinationGroup = placesGroups
          .value.destinationGroup
          .where((destinationGroup) => destinationGroup.name.name
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    } else {
      filteredplacesDestinations.value.destinations
          .addAll(placesDestinations.value.destinations);
      filteredplacesGroups.value.destinationGroup
          .addAll(placesGroups.value.destinationGroup);
      print("Else Runned");
      print(filteredplacesDestinations.value.destinations.length);
      print(placesDestinations.value.destinations.length);
      // filteredplacesGroups.value.destinationGroup =
      //     placesGroups.value.destinationGroup;
    }
  }

  String temporaryIso = '';
  String temporaryName = '';
  String temporaryImg = '';

  void showPackageDetails(BuildContext context, String iso, String name,
      String img, bool isfromsearch) {
    temporaryIso = iso;
    temporaryIsoconst = iso;
    temporaryImg = img;
    temporaryImgconst = img;
    temporaryName = name;
    temporaryNameconst = name;

    if (!isfromsearch) {
      fetchDestinationsDetail(iso, name, img);
    }
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
            child: ShowPackageDetails(
          img: temporaryImg,
          name: temporaryName,
        ));
      },
    );
  }
}
