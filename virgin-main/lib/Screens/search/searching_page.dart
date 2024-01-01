import 'package:esim2/Screens/packages_tab_container_page/controller/packages_tab_container_controller.dart';
import 'package:esim2/widgets/custom_Text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/databaseController.dart';
import '../../controller/home_controller.dart';
import '../../service/db/db.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final DatabaseController databaseController = Get.put(DatabaseController());
    HomeController homecontroller = Get.find();
    TextEditingController searchtextController = TextEditingController();

    final List<Widget> tabs = [
      const Tab(
        text: 'Countries',
      ),
      const Tab(
        text: 'Regions',
      )
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFe10a0a),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const ImageIcon(
            AssetImage('assets/searchicon.png'),
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(22),
          ),
        ),
        title: TextFormField(
          controller: searchtextController,
          onChanged: (value) {
            databaseController.getSearches(value);
            homecontroller.filterDestinations(value);
            homecontroller.update();
          },
          onFieldSubmitted: (value) {
            databaseController.storeSearch(value);
          },
          style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white),
          decoration: const InputDecoration(
            hintStyle: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white),
            hintText: 'Type in your destination',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.back(),
            child: const ImageIcon(
              AssetImage('assets/Close.png'),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: DefaultTabController(
        length: tabs.length,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              GetBuilder<DatabaseController>(builder: (controller) {
                if (controller.searchResults.isEmpty) {
                  return const SizedBox();
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Recent Searches',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff131C35)),
                    ),
                    CustomText(
                      text: 'Recent Searches',
                      style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xff898D9A)),
                    ),
                  ],
                );
              }),
              const SizedBox(
                height: 15.0,
              ),
              GetBuilder<DatabaseController>(
                builder: (controller) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.searchResults.length > 3
                        ? 3
                        : controller.searchResults.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(
                          Icons.history,
                          color: Color(0xff131C35),
                        ),
                        title: CustomText(
                          text: controller.searchResults[index],
                          style: const TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Color(0xff131C35)),
                        ),
                        trailing: const ImageIcon(
                          AssetImage('assets/Close.png'),
                          color: Color(0xff898D9A),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(
                text: 'All countries',
                style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff131C35)),
              ),
              TabBar(
                dividerColor: Colors.transparent,
                labelPadding: EdgeInsets.zero,
                labelColor: const Color(0xff131C35),
                unselectedLabelStyle: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
                labelStyle: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
                unselectedLabelColor: const Color(0xff131C35).withOpacity(0.5),
                indicatorWeight: 1.5,
                indicatorColor: const Color(0xff131C35),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    child: Text(
                      "Countries",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Regions",
                    ),
                  ),
                ],
              ),
              GetBuilder<HomeController>(builder: (con) {
                return Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8.0,
                          ),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 8.0,
                                );
                              },
                              itemCount: homecontroller
                                  .filteredplacesDestinations
                                  .value
                                  .destinations
                                  .length,
                              itemBuilder: (BuildContext context, int index) {
                                final destination = homecontroller
                                    .filteredplacesDestinations
                                    .value
                                    .destinations[index];
                                return ListTile(
                                  leading: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    destination.flag))),
                                      )),
                                  title: CustomText(
                                    text: destination.name,
                                    style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Color(0xff131C35)),
                                  ),
                                  trailing: const Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Color(0xff898D9A),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8.0,
                          ),
                          Expanded(
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 8.0,
                                );
                              },
                              itemCount: homecontroller.filteredplacesGroups
                                  .value.destinationGroup.length,
                              itemBuilder: (BuildContext context, int index) {
                                final destination = homecontroller
                                    .filteredplacesGroups
                                    .value
                                    .destinationGroup[index];
                                return ListTile(
                                  leading: const Icon(Icons.flag),
                                  title: CustomText(
                                    text: destination.name.name,
                                    style: const TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 17,
                                        color: Color(0xff131C35)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
