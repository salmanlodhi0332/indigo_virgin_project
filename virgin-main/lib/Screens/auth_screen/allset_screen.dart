import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCompletedScreen extends StatelessWidget {
  const ProfileCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/profiledone.png'),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'All set',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF131C35),
                          fontSize: 34,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'You’ll be signed in to your account momentarily. If nothing happens, click continue.',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF898D9A),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, left: 24, right: 24),
        child: GestureDetector(
          onTap: () {
            Get.offAllNamed('/home');
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
            child: Text('Continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
          ),
        ),
      ),
    );
  }
}
