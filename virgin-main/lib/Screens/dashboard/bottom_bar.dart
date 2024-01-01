import 'package:esim2/Screens/home_page/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/bottombarController.dart';
import '../../controller/eSimController.dart';
import '../../controller/home_controller.dart';
import '../../controller/scrollController.dart';
import '../packages_tab_container_page/packages_tab_container_page.dart';
import '../profile_screen/profile_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    List<String> bottomicons = [
      'assets/Home.png',
      'assets/bottomicon3.png',
      'assets/profile.png'
    ];
    Get.put(HomeController());
    final ScrollControllerGetX _scrollControllerGetX =
        Get.put(ScrollControllerGetX());
    BottomNavBarController bottomcontroller = Get.put(BottomNavBarController());
    Get.put(ESimController());
    final List<Widget> screens = [
      const HomeScreen(
        key: PageStorageKey('ScreenOne'),
        // isloggedIn: receivedData != null ? true : false,
      ),
      PackagesTabContainerPage(key: const PageStorageKey('ScreenTwo')),
      const ProfileScreen(key: PageStorageKey('ScreenThree')),
    ];
    return Scaffold(
      body: Obx(() {
        final currentIndex = bottomcontroller.currentIndex.value;
        return screens[currentIndex];
      }),
      bottomNavigationBar: GetX<BottomNavBarController>(
        init: BottomNavBarController(),
        builder: (controller) {
          return BottomNavigationBar(
            selectedFontSize: 0,
            selectedItemColor: const Color(0xFFe10a0a),
            elevation: 0,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.changeTabIndex(index);
            },
            items: List.generate(
              bottomicons.length,
              (index) => BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(bottomicons[index])),
                label: '',
              ),
            ),
          );
        },
      ),
    );
  }
}
