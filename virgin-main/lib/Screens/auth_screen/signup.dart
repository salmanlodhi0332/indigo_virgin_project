import 'package:esim2/controller/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/dismisskeyboard.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

bool isloading = false;
RxBool isactive = false.obs;

TextEditingController emailcontroller = TextEditingController();
TextEditingController passcontroller = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  AuthController controller = Get.find();
  RxBool isshowpass = true.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: Get.height * 0.4,
                  width: Get.width,
                  child: Image.asset(
                    "assets/bg4.jpg",
                    fit: BoxFit.cover,
                  )),
              Container(
                height: Get.height * 0.6,
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'SignUp',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    color: Color(0xFF131C35),
                                    fontSize: 34,
                                    fontWeight: FontWeight.w700),
                              ),
                              GestureDetector(
                                onTap: () => Get.offAllNamed('/auth'),
                                child: const Text('Existing User ?',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFE10A0A),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
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
                          const Text('Password',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF131C35),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Obx(() {
                            return TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                } else if (value.length < 8) {
                                  return 'Password should not be less than 8 alphabets';
                                }
                                return null;
                              },
                              onChanged: (str) {
                                if (str.length >= 8 &&
                                    emailcontroller.text.isNotEmpty) {
                                  isactive(true);
                                } else {
                                  isactive(false);
                                }
                              },
                              controller: passcontroller,
                              obscureText: isshowpass.value,
                              decoration: InputDecoration(
                                hintText: 'Enter password',
                                // labelText: 'Enter your password',
                                suffixIcon: IconButton(
                                    onPressed: () =>
                                        isshowpass(!isshowpass.value),
                                    icon: Icon(
                                      !isshowpass.value
                                          ? Icons.remove_red_eye_outlined
                                          : Icons.remove_red_eye_rounded,
                                      color: const Color(0xff131C35),
                                    )),
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
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(
                                      12.0), // Border radius of 12.0
                                ),
                              ),
                            );
                          }),
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
                              : Obx(() {
                                  return GestureDetector(
                                    onTap: () {
                                      if (formKey.currentState!.validate()) {
                                        dismissKeyBoard(context);
                                        controller.temporaryemail =
                                            emailcontroller.text;
                                        controller.temporarypassword =
                                            passcontroller.text;
                                        emailcontroller.clear();
                                        passcontroller.clear();
                                        Get.toNamed('/newuser');
                                      }
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 45,
                                      padding: const EdgeInsets.all(13),
                                      decoration: ShapeDecoration(
                                        color: isactive.value
                                            ? const Color(0xFFE10A0A)
                                            : Colors.grey,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                  );
                                }),
                          // const SizedBox(
                          //   height: 32.0,
                          // ),
                          // SizedBox(
                          //   width: double.infinity,
                          //   height: 15,
                          //   child: Row(
                          //     mainAxisSize: MainAxisSize.min,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       Expanded(
                          //         child: Container(
                          //           height: 2,
                          //           color: const Color(0xFF898D9A),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 10.0,
                          //       ),
                          //       const Text(
                          //         'or',
                          //         style: TextStyle(
                          //           color: Color(0xFF898D9A),
                          //           fontSize: 12,
                          //           // fontFamily: 'Inter',
                          //           fontWeight: FontWeight.w500,
                          //           height: 0,
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 10.0,
                          //       ),
                          //       Expanded(
                          //         child: Container(
                          //           height: 2,
                          //           color: const Color(0xFF898D9A),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 24.0,
                          // ),
                          // GestureDetector(
                          //   onTap: () {
                          //     controller.handleFacebookSignIn();
                          //   },
                          //   child: SizedBox(
                          //       width: double.infinity,
                          //       height: 50,
                          //       child: Image.asset(
                          //           "assets/continue-facebook.png",
                          //           fit: BoxFit.fill)),
                          // ),
                          // const SizedBox(
                          //   height: 10.0,
                          // ),
                          // GestureDetector(
                          //   onTap: () {
                          //     controller.handleGoogleSignIn();
                          //   },
                          //   child: SizedBox(
                          //       width: double.infinity,
                          //       height: 50,
                          //       child: Image.asset("assets/continue-google.png",
                          //           fit: BoxFit.fill)),
                          // ),
                          // const SizedBox(
                          //   height: 10.0,
                          // ),
                          // GestureDetector(
                          //   onTap: () {
                          //     controller.handleAppleSignIn();
                          //   },
                          //   child: SizedBox(
                          //       width: double.infinity,
                          //       height: 50,
                          //       child: Image.asset("assets/continue-apple.png",
                          //           fit: BoxFit.fill)),
                          // ),
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
