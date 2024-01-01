import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String text;
  TextAlign? align;
  final TextStyle? style;
  CustomText({super.key, required this.text, required this.style, this.align});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      style: style,
      textAlign: align,
    );
  }
}
