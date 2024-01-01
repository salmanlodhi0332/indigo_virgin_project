import 'package:adjust_sdk/adjust.dart';
import 'package:esim2/service/ApiService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lokalise_flutter_sdk/lokalise_flutter_sdk.dart';
import 'package:esim2/Permissions/Adjust%20SDK/adjust_init.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  AppLifecycleState? state;
  bool isLoading = true;

  void initState() {
    super.initState();
    ApiService().registerDevice();
    //! ********* Lokalise update on changes from web *********
    Lokalise.instance.update().then(
          (_) => isLoading = false,
          onError: (error) => isLoading = false,
        );
    //! ********* This Observer is for Adjust SDK **********
    WidgetsBinding.instance.addObserver(this);
    //! ********* This Function is for Adjust SDK init **********
    initPlatformState();
    Future.delayed(const Duration(seconds: 2), () {
      var id = GetStorage().read("bearertoken");
      if (id != null) {
        Get.offAllNamed('/home');
      } else {
        var inintrodone = GetStorage().read("isintrodone");
        if (inintrodone != null) {
          Get.offAllNamed('/home');
        } else {
          Get.offAllNamed('/intro');
        }
      }
    });
  }

  @override
  void dispose() {
    //! ********* This Observer is for Adjust SDK **********
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  //! ********* This Function is for Adjust SDK **********
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.resumed:
        Adjust.onResume();
        break;
      case AppLifecycleState.paused:
        Adjust.onPause();
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe10a0a),
      body: Center(
        child: Image.asset("assets/brand.png"),
      ),
    );
  }
}
