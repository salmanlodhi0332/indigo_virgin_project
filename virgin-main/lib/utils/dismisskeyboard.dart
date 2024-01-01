import 'package:flutter/material.dart';

void dismissKeyBoard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
