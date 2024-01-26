import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appSearchContainer extends StatelessWidget {
  const appSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: mySizes.defaultSpace),
  });

  final String text;
  final VoidCallback? onTap;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
            width: myDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(mySizes.md),
            decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? myColors.dark
                        : myColors.light
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(mySizes.cardRadiusLg),
                border: showBorder ? Border.all(color: myColors.grey) : null),
            child: Row(children: [
              Icon(icon,
                  color:
                      dark ? myColors.light : myColors.dark.withOpacity(0.6)),
              const SizedBox(width: mySizes.spaceBtwItems),
              Text(text,
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark
                          ? myColors.white
                          : myColors.dark.withOpacity(0.5))),
            ])),
      ),
    );
  }
}
