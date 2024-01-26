import 'package:flutter/cupertino.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class mySpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: mySizes.appBarHeight,
    left: mySizes.defaultSpace,
    bottom: mySizes.defaultSpace,
    right: mySizes.defaultSpace,
  );
}
