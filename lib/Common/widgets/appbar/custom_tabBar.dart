import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.

  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]

  const appTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? myColors.black : myColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: myColors.primary,
        labelColor: dark ? myColors.white : myColors.primary,
        unselectedLabelColor: myColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(myDeviceUtils.getAppBarHeight());
}
