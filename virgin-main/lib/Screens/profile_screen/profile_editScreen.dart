import 'package:esim2/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    String selectedGender = 'Female'; // Variable to hold selected gender

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
        title: const Text(
          "Edit profile",
          style: TextStyle(color: Colors.white, fontFamily: "Inter"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/Image.png'),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upload picture',
                  style:
                      TextStyle(fontFamily: 'Inter', color: Color(0xFFe10a0a)),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'First Name',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: controller.firstnamecontroller,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: "Inter",
                fontSize: 16,
              ),
              decoration: InputDecoration(
                filled: false,
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                // fillColor: Colors.grey[200], // Grey background color
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Last Name',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: controller.lastnamecontroller,
              style: const TextStyle(
                  color: Colors.black, fontFamily: "Inter", fontSize: 16),
              decoration: InputDecoration(
                filled: false,
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.grey), // Grey border color
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
                // fillColor: Colors.grey[200], // Grey background color
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius:
                      BorderRadius.circular(12.0), // Border radius of 12.0
                ),
              ),
            ),
            const Text(
              'Gender',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedGender,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Inter",
                    fontSize: 16,
                  ),
                  onChanged: (String? newValue) {
                    // Update selected gender when dropdown changes
                    if (newValue != null) {
                      selectedGender = newValue;
                      // You can add additional logic here
                    }
                  },
                  items: <String>['Male', 'Female', 'Other']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
