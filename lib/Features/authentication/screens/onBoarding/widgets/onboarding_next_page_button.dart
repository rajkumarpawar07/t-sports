import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tsports/Features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:tsports/Utils/Device/device_utility.dart';
import 'package:tsports/Utils/Helpers/helper_functions.dart';
import 'package:tsports/Utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tsports/Utils/constants/sizes.dart';

class OnBoardingNextPageButton extends StatelessWidget {
  const OnBoardingNextPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    return Positioned(
        right: mySizes.defaultSpace,
        bottom: myDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? myColors.primary : myColors.dark),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
