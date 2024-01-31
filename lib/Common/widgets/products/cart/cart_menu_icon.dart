import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Features/shop/screens/Cart/CartScreen.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appCartCounterIcon extends StatelessWidget {
  const appCartCounterIcon({
    super.key,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
    required this.onPressed,
  });

  final Color? iconColor, counterBgColor, counterTextColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: () => Get.to(() => CartScreen()),
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color:
                  counterBgColor ?? (isDark ? myColors.primary : Colors.black)),
          child: Center(
              child: Text(
            "2",
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: Colors.white, fontSizeFactor: 0.8),
          )),
        ),
      ),
    ]);
  }
}
