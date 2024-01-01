import 'package:esim2/controller/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class NewUserScreen extends StatefulWidget {
  const NewUserScreen({super.key});

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  bool isloading = false;
  AuthController controller = Get.find();

  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void signup() async {
    setState(() {
      isloading = true;
    });
    controller.signUp(firstnamecontroller.text, lastnamecontroller.text);
    // controller.handleSignUpwithEmailPass(
    //     emailcontroller.text, passcontroller.text);
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isloading = false;
      });
      // Get.toNamed('/traveler_container_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: Get.height * 0.45,
                  width: Get.width,
                  child: Image.asset(
                    "assets/bg4.jpg",
                    fit: BoxFit.cover,
                  )),
              Container(
                height: Get.height * 0.55,
                width: Get.width,
                color: const Color(0xFF161F38),
                child: Container(
                  height: Get.height * 0.55,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Complete your profile',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Color(0xFF131C35),
                                fontSize: 34,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const Text('First Name',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF131C35),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 3.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter First Name';
                              }
                              return null;
                            },
                            controller: firstnamecontroller,
                            decoration: InputDecoration(
                              hintText: 'First Name',
                              hintStyle: const TextStyle(color: Colors.grey),
                              filled: false,
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey), // Grey border color
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey), // Grey border color
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                              // fillColor: Colors.grey[200], // Grey background color
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          const Text('Last name',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF131C35),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 3.0,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Last Name';
                              }
                              return null;
                            },
                            controller: lastnamecontroller,
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                              hintStyle: const TextStyle(
                                  color: Colors.grey), // Hint text color
                              filled: false,
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey), // Grey border color
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey), // Grey border color
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey), // Grey border color
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                              // fillColor: Colors.grey[200], // Grey background color
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    12.0), // Border radius of 12.0
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          isloading == true
                              ? Container(
                                  // width: double.infinity,
                                  alignment: Alignment.center,
                                  height: 45,
                                  child: const CircularProgressIndicator(
                                    color: Color(0xFFE10A0A),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    signup();
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
                                    child: Text('Next',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ),
                          const SizedBox(
                            height: 32.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
