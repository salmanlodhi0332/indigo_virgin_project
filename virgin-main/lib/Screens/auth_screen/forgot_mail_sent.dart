import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotMailSentScreen extends StatelessWidget {
  const ForgotMailSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    bool isloading = false;

    return Scaffold(
      body: Column(
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/mail.png"),
                      const Text(
                        'Check your email',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 34,
                            color: Color(0xff131C35),
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'We sent you an email at nisreen@gmail.com\nClick on the link in the email to login.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Color.fromARGB(255, 118, 121, 129),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/forgotpassScreen');
                        },
                        child: Container(
                          width: 120,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: const Color(0xFFE10A0A)),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Resent link',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFE10A0A),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAllNamed('/auth');
                          // login();
                        },
                        child: Container(
                          width: 120,
                          height: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9CECE),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Go to login',
                              style: GoogleFonts.inter(
                                color: const Color(0xFFE10A0A),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
