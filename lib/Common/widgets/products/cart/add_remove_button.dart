import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Common/widgets/appbar/appbar.dart';
import 'package:tsports/Common/widgets/icons/circular_icon.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:tsports/Utils/constants/image_strings.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class appProductQuantityWithAddRemove extends StatelessWidget {
  const appProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = myHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        appCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: mySizes.md,
          color: isDark ? myColors.white : myColors.black,
          backgroundColor: isDark ? myColors.darkerGrey : myColors.light,
        ),
        SizedBox(
          width: mySizes.spaceBtwItems,
        ),
        Text(
          "2",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: mySizes.spaceBtwItems,
        ),
        appCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: mySizes.md,
          color: myColors.white,
          backgroundColor: myColors.primary,
        ),
      ],
    );
  }
}
