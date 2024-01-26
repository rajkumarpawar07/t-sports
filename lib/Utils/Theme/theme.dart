import 'package:flutter/material.dart';
import 'package:tsports/Utils/Theme/custom_themes/text_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/elevated_button_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/appbar_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/checkbox_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/chip_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/outlined_button_theme.dart';
import 'package:tsports/Utils/Theme/custom_themes/text_field_theme.dart';

class myAppTheme {
  myAppTheme._();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: myTextTheme.lightTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: myAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: myBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: myCheckboxTheme.lightCheckboxTheme,
    chipTheme: myChipTheme.lightChipTheme,
    outlinedButtonTheme: myOutLinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: myTextFormFieldTheme.lightInputDecorationTheme,
  );



  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: myTextTheme.darkTextTheme,
    elevatedButtonTheme: myElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: myAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: myBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: myCheckboxTheme.darkCheckboxTheme,
    chipTheme: myChipTheme.darkChipTheme,
    outlinedButtonTheme: myOutLinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: myTextFormFieldTheme.darkInputDecorationTheme,


  );
}
