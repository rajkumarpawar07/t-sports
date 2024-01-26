import 'package:flutter/cupertino.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appShoadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: myColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalProductShadow = BoxShadow(
      color: myColors.darkGrey.withOpacity(8.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow
}
