import 'package:flutter/material.dart';

class myOutLinedButtonTheme {
  myOutLinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ));


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    side: const BorderSide(color: Colors.blue),
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}