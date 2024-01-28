import 'package:flutter/material.dart';
import 'package:tsports/Utils/constants/colors.dart';

class myElevatedButtonTheme {
  myElevatedButtonTheme._();

  // light theme for elevated button
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: myColors.primary,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    side: const BorderSide(color: myColors.primary),
    padding: const EdgeInsets.symmetric(
      vertical: 18,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));

  // Dark Theme for elevated button
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: myColors.primary,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    side: const BorderSide(color: myColors.primary),
    padding: const EdgeInsets.symmetric(
      vertical: 18,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));
}
