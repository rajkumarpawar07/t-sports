import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';

class appCartCounterIcon extends StatelessWidget {
  const appCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
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
              color: isDark ? myColors.primary : Colors.black),
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
