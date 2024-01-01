import 'package:bot_toast/bot_toast.dart';
import 'package:esim2/controller/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    TextEditingController emailcontroller = TextEditingController();
    bool isloading = false;
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                        const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF131C35),
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        const Text('Email address',
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
                              return 'Please enter email Address';
                            } else if (!value.contains('@') ||
                                !value.contains('.')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            hintText: 'Enter email',
                            // labelText: 'Enter your email address',

                            hintStyle: const TextStyle(
                                color: Colors.grey), // Hint text color
                            labelStyle: const TextStyle(
                                color: Colors.grey), // Label text color
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
                              borderSide: const BorderSide(color: Colors.grey),
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
                                  BotToast.showText(
                                      text: "Not implemented yet");
                                  // if (formKey.currentState!.validate()) {
                                  //   controller
                                  //       .resetpassword(emailcontroller.text);
                                  // }
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
                          height: 12.0,
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
                                  Get.back();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 45,
                                  padding: const EdgeInsets.all(13),
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFFF9CECE),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text('Go back',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        color: const Color(0xFFE10A0A),
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
    );
  }
}
